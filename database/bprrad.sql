/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bprrad

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 04/11/2024 18:10:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('NY83QIRmX9x11KSeYbgYv1r3Zj3MictTo5Zq7lFh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXBUQVlUUEVlNkNzcjN5TGZjaUljMnVZa2tSbGNvUzEzUnlib3E1ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wZW5nZ3VuYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730718396);
INSERT INTO `sessions` VALUES ('svNJ1FkIBN1U1bMku22koMyCiQvdbR7TCsqO2626', 24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoickxaeWZwd04wOVBIMXAzMTVrMFBZUzI5aGJSV2Q3Y0t3ajgweUd5SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VzZXIvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjQ7czo5OiJ1c2VyX25hbWUiO3M6MTY6IlRyaXNuYSBBbmdncmFpbmkiO30=', 1730718550);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@email.com', NULL, '$2y$12$fVNkpbFeQqblU0ZvA05yK.Z5bckFGvUgCR6OiVdUCovEeWk4aIocy', 'admin', NULL, '2024-11-01 08:42:02', '2024-11-01 08:42:02');
INSERT INTO `users` VALUES (2, 'Prof. Shea Corwin', 'deanna.mosciski@example.org', '2024-11-01 12:22:32', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'ozELgcmVF0', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (3, 'Jayden Prohaska', 'thelma.bechtelar@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', '1zoDycNjxk', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (4, 'Katelynn Zulauf', 'hayley.rodriguez@example.com', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'Xk7umZNlx9', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (5, 'Lisette Aufderhar', 'utreutel@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'tVtPVeVZ3F', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (6, 'Laisha Quigley', 'tlesch@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'EuVT3QCb5X', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (7, 'Prof. Nicholaus Mayert DDS', 'brook.lind@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'fjGuXpr88S', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (8, 'Ms. Janet Collins Jr.', 'pamela.gorczany@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'vBa0t3us75', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (9, 'Miss Cara Boehm', 'brain.mosciski@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'vliRwTk5hy', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (10, 'Nora Becker DDS', 'skling@example.com', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'U81MMU9md8', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (11, 'Connor O\'Kon', 'milan32@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', '2o4fZe0VDs', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (12, 'Linnea Bradtke MD', 'kerluke.catherine@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'Y7V1BuPPvj', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (13, 'Prof. Murl Koepp III', 'bret.boyer@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'rXMAqcW8UM', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (14, 'Dr. Joe Hintz Jr.', 'lang.piper@example.com', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', '387c5kSIkp', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (15, 'Sydnee Kling', 'brook12@example.com', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', '7gvoV3epcN', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (16, 'Briana McGlynn', 'melody03@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'NvPz1qBq6Z', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (17, 'Clark Legros IV', 'schamberger.marley@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'WbxPaXTV7d', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (18, 'Janet Casper', 'stephen71@example.org', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'KGs5nmqJWL', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (19, 'Dr. Ismael Rosenbaum', 'fbeahan@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'mJnIG5RF2b', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (20, 'Mariam Bahringer', 'chandler39@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', 'CrVTTm43dT', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (21, 'Prof. Saul Lehner', 'abigail65@example.net', '2024-11-01 12:22:33', '$2y$12$qdDCa2JBbJ8xD/Sl5OARFOA1/7kpaPq1lVD0XNU0d7u1.vdxJnDEy', 'user', '42NxeYhPFK', '2024-11-01 12:22:33', '2024-11-01 12:22:33');
INSERT INTO `users` VALUES (22, 'Aqsa Jimmy', 'aqsa@email.com', NULL, '$2y$12$EVL5ibj5cQl091pzNfQXwet7bvGeuVUVnrQzJiJ4VPEP/Gou4LKhe', 'admin', NULL, '2024-11-04 11:00:17', '2024-11-04 11:00:17');
INSERT INTO `users` VALUES (23, 'Rehan', 'rehan@email.com', NULL, '$2y$12$mTqFVG3A8heFJEDgYPaE/.Z6xzaarEfoVU/HaxTscsYmNAZXQ.EDe', 'admin', NULL, '2024-11-04 11:04:13', '2024-11-04 11:04:13');
INSERT INTO `users` VALUES (24, 'Trisna Anggraini', 'trisna@email.com', NULL, '$2y$12$LPnTLUMarZnoVtAny9MUo.yPrWiJd0onLev47D.OujamwLJpDgCs.', 'user', NULL, '2024-11-04 11:08:00', '2024-11-04 11:08:00');

SET FOREIGN_KEY_CHECKS = 1;
