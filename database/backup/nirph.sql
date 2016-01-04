/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : nirph

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 09/23/2015 06:24:23 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_email_unique` (`email`),
  UNIQUE KEY `contact_mobile_unique` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `contact`
-- ----------------------------
BEGIN;
INSERT INTO `contact` VALUES ('1', 'Riaan Venter', 'rianna@nirph.com', '+27 (0) 55 6666 777', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', '04 July', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Liezel ', 'liezel@nirph.com', '+27 (0) 55 6666 888', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', '05 May', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Mariëtte Fouché', 'dfsd@nirph.com', '+27 (0) 55 6666 999', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Louis Venter', 'asdf@nirph.com', '+27 (0) 55 6666 000', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Andre Fourie', 'fasd@nirph.com', '+27 (0) 55 6666 111', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Tjaart Viljoen', 'sdfas@nirph.com', '+27 (0) 55 6666 222', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Cecilia Makebe', 'sfd@nirph.com', '+27 (0) 55 6666 333', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Gerard Brown', 'sss@nirph.com', '+27 (0) 55 6666 444', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Rodney Addo', 'rodney@nirph.com', '+27 (0) 73 1000 685', 'The Brand House\nBlock B no 12\nCapricorn road\nPaulshof\nSandton', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1'), ('2014_10_12_100000_create_password_resets_table', '1'), ('2015_09_22_192505_create_contact_table', '1');
COMMIT;

-- ----------------------------
--  Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'Rodney Addo', 'rodney.addo@gmail.com', '$2y$10$MBBTZdR6ks1ocKLJaXYyce/n4PZY8ENOlplkSuBI5nxtOu27BWoXW', null, '2015-09-22 19:36:33', '2015-09-22 19:36:33'), ('2', 'Joana Addo', 'joanaa@iburst.co.za', '$2y$10$.j1eLlQ0aFCBUU0K4BbfK.kmicYYPsklh3M/SVrAAXM/0T5xi5g1e', 'dJvs96jQoj1dnclX748MAMzjI5efcbFqA8lKETBVOnE4CBTplqqZ6aE2FxfM', '2015-09-22 19:55:57', '2015-09-22 20:04:20');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
