/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 127.0.0.1:3306
 Source Schema         : gudang

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 20/06/2022 16:30:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
BEGIN;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (23, 4, 'product_code', 'text', 'Kode Parfume', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (24, 4, 'name', 'text', 'Nama Parfume', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (25, 4, 'unit', 'text', 'Satuan', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (26, 4, 'qty', 'number', 'Stok', 0, 1, 1, 0, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 5);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (30, 5, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (31, 5, 'type', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"in\",\"options\":{\"in\":\"IN\",\"out\":\"OUT\"}}', 5);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (32, 5, 'qty', 'number', 'Qty', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (33, 5, 'last_stock', 'text', 'Stok Terakhir', 0, 1, 1, 0, 0, 1, '{}', 7);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (34, 5, 'created_at', 'timestamp', 'Tanggal', 0, 1, 1, 1, 0, 1, '{}', 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (36, 5, 'product_stock_belongsto_product_relationship', 'relationship', 'Nama Produk', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"product\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (48, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (49, 24, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (50, 24, 'qty', 'number', 'Qty', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 4);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (51, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (52, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (53, 24, 'purchase_order_belongsto_product_relationship', 'relationship', 'product', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"product\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (54, 24, 'suplier', 'text', 'Suplier', 0, 1, 1, 1, 1, 1, '{}', 5);
COMMIT;

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
BEGIN;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (4, 'product', 'product', 'Product', 'Products', 'voyager-megaphone', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-07 10:11:23', '2022-06-11 05:48:58');
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (5, 'product_stock', 'product-stock', 'Product Stock', 'Product Stocks', 'voyager-bag', 'App\\ProductStock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-07 10:29:21', '2021-01-08 05:34:42');
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (24, 'purchase_order', 'purchase-order', 'Purchase Order', 'Purchase Orders', 'voyager-shop', 'App\\PurchaseOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-15 16:11:06', '2022-06-20 09:26:25');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
BEGIN;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-07 10:02:04', '2021-01-07 10:02:04', 'voyager.dashboard', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2021-01-07 10:02:04', '2022-06-15 15:53:40', 'voyager.media.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2021-01-07 10:02:04', '2022-06-15 15:53:40', 'voyager.users.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2021-01-07 10:02:04', '2022-06-15 15:53:40', 'voyager.roles.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-01-07 10:02:04', '2022-06-15 15:53:40', NULL, NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-01-07 10:02:04', '2021-01-07 10:12:33', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-01-07 10:02:04', '2021-01-07 10:12:33', 'voyager.database.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-01-07 10:02:04', '2021-01-07 10:12:33', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-01-07 10:02:04', '2021-01-07 10:12:33', 'voyager.bread.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-01-07 10:02:04', '2022-06-15 15:53:40', 'voyager.settings.index', NULL);
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (12, 1, 'Products', '', '_self', 'voyager-megaphone', '#000000', NULL, 2, '2021-01-07 10:11:23', '2021-01-07 10:13:46', 'voyager.product.index', 'null');
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (13, 1, 'Product Stocks', '', '_self', 'voyager-bag', '#000000', NULL, 3, '2021-01-07 10:29:21', '2021-01-07 10:32:24', 'voyager.product-stock.index', 'null');
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (17, 1, 'Purchase Orders', '', '_self', 'voyager-shop', '#000000', NULL, 4, '2022-06-15 16:11:06', '2022-06-15 16:13:57', 'voyager.purchase-order.index', 'null');
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'admin', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23, '2019_08_19_000000_create_failed_jobs_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
BEGIN;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (2, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (3, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (4, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (5, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (6, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (7, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (8, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (9, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (10, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (11, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (11, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (12, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (12, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (13, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (13, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (14, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (14, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (15, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (15, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (16, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (16, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (17, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (17, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (18, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (18, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (19, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (19, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (20, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (20, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (21, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (21, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (22, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (22, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (23, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (23, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (24, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (24, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (25, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (25, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (26, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (27, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (27, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (27, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (27, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (28, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (28, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (28, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (28, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (29, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (29, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (29, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (30, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (30, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (30, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (31, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (31, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (31, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (32, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (32, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (32, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (32, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (33, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (33, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (33, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (33, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (34, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (34, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (34, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (35, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (35, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (35, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (36, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (36, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (36, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (52, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (52, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (52, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (52, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (53, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (53, 2);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (53, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (53, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (54, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (54, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (54, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (55, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (55, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (55, 4);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (56, 1);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (56, 3);
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (56, 4);
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (1, 'browse_admin', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (2, 'browse_bread', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (3, 'browse_database', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (4, 'browse_media', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (5, 'browse_compass', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (6, 'browse_menus', 'menus', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (7, 'read_menus', 'menus', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (8, 'edit_menus', 'menus', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (9, 'add_menus', 'menus', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (10, 'delete_menus', 'menus', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (11, 'browse_roles', 'roles', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (12, 'read_roles', 'roles', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (13, 'edit_roles', 'roles', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (14, 'add_roles', 'roles', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (15, 'delete_roles', 'roles', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (16, 'browse_users', 'users', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (17, 'read_users', 'users', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (18, 'edit_users', 'users', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (19, 'add_users', 'users', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (20, 'delete_users', 'users', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (21, 'browse_settings', 'settings', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (22, 'read_settings', 'settings', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (23, 'edit_settings', 'settings', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (24, 'add_settings', 'settings', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (25, 'delete_settings', 'settings', '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (26, 'browse_hooks', NULL, '2021-01-07 10:02:04', '2021-01-07 10:02:04');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (27, 'browse_product', 'product', '2021-01-07 10:11:23', '2021-01-07 10:11:23');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (28, 'read_product', 'product', '2021-01-07 10:11:23', '2021-01-07 10:11:23');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (29, 'edit_product', 'product', '2021-01-07 10:11:23', '2021-01-07 10:11:23');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (30, 'add_product', 'product', '2021-01-07 10:11:23', '2021-01-07 10:11:23');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (31, 'delete_product', 'product', '2021-01-07 10:11:23', '2021-01-07 10:11:23');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (32, 'browse_product_stock', 'product_stock', '2021-01-07 10:29:21', '2021-01-07 10:29:21');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (33, 'read_product_stock', 'product_stock', '2021-01-07 10:29:21', '2021-01-07 10:29:21');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (34, 'edit_product_stock', 'product_stock', '2021-01-07 10:29:21', '2021-01-07 10:29:21');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (35, 'add_product_stock', 'product_stock', '2021-01-07 10:29:21', '2021-01-07 10:29:21');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (36, 'delete_product_stock', 'product_stock', '2021-01-07 10:29:21', '2021-01-07 10:29:21');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (52, 'browse_purchase_order', 'purchase_order', '2022-06-15 16:11:06', '2022-06-15 16:11:06');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (53, 'read_purchase_order', 'purchase_order', '2022-06-15 16:11:06', '2022-06-15 16:11:06');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (54, 'edit_purchase_order', 'purchase_order', '2022-06-15 16:11:06', '2022-06-15 16:11:06');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (55, 'add_purchase_order', 'purchase_order', '2022-06-15 16:11:06', '2022-06-15 16:11:06');
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (56, 'delete_purchase_order', 'purchase_order', '2022-06-15 16:11:06', '2022-06-15 16:11:06');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (6, 'BRG', 'BERAS LAHAP 5 KG', 'SAK', 33, '2021-01-07 10:26:09', '2022-06-15 16:22:03');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (7, 'MSA', 'MINYAK SOVIA', 'JERIGEN', 37, '2021-01-07 10:26:30', '2021-01-08 05:35:06');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (8, 'GUL', 'GULA KEBONAGUNG', 'KG', 4, '2021-01-07 10:26:56', '2021-01-07 10:26:56');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (9, 'TPP', 'TEPUNG SYAZA NELONGSO', 'PCS', 55, '2021-01-07 10:27:27', '2021-01-07 10:27:27');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (10, 'CAP', 'TORABIKA CAPUCINO', 'RTG', 31, '2021-01-07 10:28:24', '2022-06-15 16:23:47');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (11, 'BRG', 'BERAS LAHAP', 'SAK', 40, '2021-01-08 02:37:31', '2021-01-08 02:37:31');
INSERT INTO `product` (`id`, `product_code`, `name`, `unit`, `qty`, `created_at`, `updated_at`) VALUES (12, '123444', 'ZARA', 'ml', 50, '2022-06-20 09:22:59', '2022-06-20 09:27:14');
COMMIT;

-- ----------------------------
-- Table structure for product_stock
-- ----------------------------
DROP TABLE IF EXISTS `product_stock`;
CREATE TABLE `product_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `last_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_stock
-- ----------------------------
BEGIN;
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (1, 6, 'in', 120, 120, '2021-01-07 10:26:09', '2021-01-07 10:26:09');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (2, 7, 'in', 0, 0, '2021-01-07 10:26:30', '2021-01-07 10:26:30');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (3, 8, 'in', 4, 4, '2021-01-07 10:26:56', '2021-01-07 10:26:56');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (4, 9, 'in', 55, 55, '2021-01-07 10:27:27', '2021-01-07 10:27:27');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (5, 10, 'in', 1, 1, '2021-01-07 10:28:24', '2021-01-07 10:28:24');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (9, 7, 'in', 5, 5, '2021-01-07 11:11:34', '2021-01-07 11:11:34');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (10, 7, 'in', 50, 55, '2021-01-07 11:11:50', '2021-01-07 11:11:50');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (11, 7, 'out', 20, 35, '2021-01-07 11:12:05', '2021-01-07 11:12:05');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (12, 11, 'in', 20, 40, '2021-01-08 02:37:31', '2021-01-08 02:37:31');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (13, 7, 'in', 2, 37, '2021-01-08 05:35:06', '2021-01-08 05:35:06');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (14, 6, 'in', 9, 129, '2021-01-08 07:34:27', '2021-01-08 07:34:27');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (15, 6, 'in', 2, 131, '2022-06-15 16:19:56', '2022-06-15 16:19:56');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (16, 6, 'in', 2, 133, '2022-06-15 16:21:35', '2022-06-15 16:21:35');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (17, 6, 'out', 100, 33, '2022-06-15 16:22:03', '2022-06-15 16:22:03');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (18, 10, 'out', 20, -19, '2022-06-15 16:22:43', '2022-06-15 16:22:43');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (19, 10, 'in', 50, 31, '2022-06-15 16:23:47', '2022-06-15 16:23:47');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (20, 12, 'in', 10, 20, '2022-06-20 09:22:59', '2022-06-20 09:22:59');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (21, 12, 'in', 20, 40, '2022-06-20 09:23:52', '2022-06-20 09:23:52');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (22, 12, 'in', 5, 45, '2022-06-20 09:24:31', '2022-06-20 09:24:31');
INSERT INTO `product_stock` (`id`, `product_id`, `type`, `qty`, `last_stock`, `created_at`, `updated_at`) VALUES (23, 12, 'in', 5, 50, '2022-06-20 09:27:14', '2022-06-20 09:27:14');
COMMIT;

-- ----------------------------
-- Table structure for purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `suplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------
BEGIN;
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (1, 6, 2, '2022-06-15 16:19:56', '2022-06-15 16:19:56', NULL);
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (2, 6, 2, '2022-06-15 16:21:35', '2022-06-15 16:21:35', NULL);
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (3, 10, 50, '2022-06-15 16:23:47', '2022-06-15 16:23:47', NULL);
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (4, 12, 20, '2022-06-20 09:23:52', '2022-06-20 09:23:52', NULL);
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (5, 12, 5, '2022-06-20 09:24:31', '2022-06-20 09:24:31', NULL);
INSERT INTO `purchase_order` (`id`, `product_id`, `qty`, `created_at`, `updated_at`, `suplier`) VALUES (6, 12, 5, '2022-06-20 09:27:14', '2022-06-20 09:27:14', 'zara');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (1, 'Developer', 'Developer', '2021-01-07 10:02:04', '2021-01-07 11:46:46');
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (2, 'Manager', 'Manager', '2021-01-07 10:02:04', '2021-01-07 11:20:53');
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (3, 'SuperAdmin', 'SuperAdmin', '2021-01-07 11:45:14', '2022-06-15 15:27:11');
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (4, 'Admin Gudang', 'Admin Gudang', '2022-06-15 15:26:46', '2022-06-15 15:33:16');
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (3, 'site.logo', 'Site Logo', 'settings/June2022/9Xo8RqpdSUHOFw7KnDAt.jpg', '', 'image', 3, 'Site');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (6, 'admin.title', 'Admin Title', 'Stok Gudang', '', 'text', 1, 'Admin');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (7, 'admin.description', 'Admin Description', 'Welcome to InParfume Fragrance', '', 'text', 2, 'Admin');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (9, 'admin.icon_image', 'Admin Icon Image', 'settings/June2022/LnqBUeGkdbCZf0qWwQ87.jpg', '', 'image', 4, 'Admin');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
COMMIT;

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (1, 1, 'Developer', 'developer@gudang.com', 'users/January2021/yFZap41IhQIE03pxDpCR.jpg', NULL, '$2y$10$6XDEBkWevMYisCmatm0P0eNCUmRd5Lex7i5FFWwsR.I55IFfDiChK', NULL, '{\"locale\":\"en\"}', '2021-01-07 10:02:21', '2021-01-07 11:47:07');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (2, 2, 'Manager', 'manager@gudang.com', 'users/default.png', NULL, '$2y$10$hEVjmKeZtU5BWSPYHfBcwObrHtb.6AuKb0kDloDu46lzDajTS.rl2', 'D6OYts0G9P0Ma5efssvKYOxyKGCJ64jBGx53MSwUZEKm1WmgnQJF7b7XrQ6l', '{\"locale\":\"en\"}', '2021-01-07 11:21:29', '2021-01-07 11:21:29');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (3, 3, 'SuperAdmin', 'superadmin@gudang.com', 'users/January2021/dfqk9Kv2O9Vd1qMUdsKs.jpg', NULL, '$2y$10$Q.e4oIMTupCg/sXnWIjX7.U32JgbQR7VwOj8fIZYf4itm2muI1QdG', 'pYMSHifOPnIfzKEFBPSGUmKyTgYKz3ArCAv3Jw44vLzn1BHo5oTsVhnSgd2u', '{\"locale\":\"en\"}', '2021-01-07 11:46:27', '2022-06-15 15:29:14');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (5, 4, 'Admin Gudang 2', 'admin2@gudang.com', 'users/default.png', NULL, '$2y$10$lGotsNbfy3TMEsAH3bBFdOw/Ov6VmbxXYOejk2KEzEWAKRAWZmNl.', NULL, '{\"locale\":\"en\"}', '2022-06-11 10:35:15', '2022-06-15 15:28:40');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (6, 4, 'Admin Gudang 3', 'admin3@gudang.com', 'users/default.png', NULL, '$2y$10$pkBev7ls5TQ.eyt1aqyYO.I2BwNb.Cx4yWsp.8yks9wRCrleGhIGm', NULL, '{\"locale\":\"en\"}', '2022-06-11 10:35:41', '2022-06-15 15:29:27');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (7, 4, 'Admin Gudang 1', 'admin1@gudang.com', 'users/default.png', NULL, '$2y$10$hzlTUUoG9w1s8wx4UY3ATe/wjfhV.KLlWIlNTffYpY8..uS9yipee', NULL, '{\"locale\":\"en\"}', '2022-06-15 15:29:50', '2022-06-15 15:29:50');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
