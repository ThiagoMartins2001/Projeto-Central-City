-- Dumping database: creawork
CREATE DATABASE IF NOT EXISTS creawork;
SET NAMES utf8mb4;
USE creawork;

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `whitelist` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(50) NOT NULL DEFAULT 0,
  `chars` int(10) NOT NULL DEFAULT 1,
  `gems` int(20) NOT NULL DEFAULT 0,
  `discord` varchar(50) NOT NULL DEFAULT '0',
  `license` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `license` (`license`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `accounts` VALUES ('1', '1', '0', '2', '5081', '0', '09dda1ae3be63b9cc0822954d47483339ef574e7');
INSERT INTO `accounts` VALUES ('2', '1', '0', '3', '99718', '0', 'fa81b3b77111a18525a1510ff78076fba773babb');
INSERT INTO `accounts` VALUES ('3', '1', '0', '2', '0', '0', '3d9e4ec82f31f77c0daaf7c37a05e74fd7eadd36');
INSERT INTO `accounts` VALUES ('4', '1', '0', '1', '0', '0', '529407eb0ad6549beaf21673d5179786d7b9f200');
INSERT INTO `accounts` VALUES ('5', '1', '0', '1', '0', '0', '24ff53fee4a15d81aa746c3aaa53e631526379bd');
INSERT INTO `accounts` VALUES ('6', '1', '0', '1', '0', '0', '80b7c4399551ae34d8e0677bbed64d384515d1b3');
INSERT INTO `accounts` VALUES ('7', '1', '0', '1', '0', '0', '82138ee946a41a6b726e06852ff30e39f2069a63');
INSERT INTO `accounts` VALUES ('8', '1', '0', '1', '0', '0', '9c717175e274299ca4e037b5a6eedf1f897d03a0');
INSERT INTO `accounts` VALUES ('9', '1', '0', '1', '0', '0', '49b23a9ba54b1c064d21ba195b2a97b573877576');
INSERT INTO `accounts` VALUES ('10', '1', '0', '1', '10', '0', '54e286a344b7c1849133c2de7cebb523aa127ea0');
INSERT INTO `accounts` VALUES ('11', '1', '0', '1', '0', '0', 'fa44bd9c261121a0c1bc1211a35db2c458afd3e6');
INSERT INTO `accounts` VALUES ('12', '1', '0', '2', '80', '0', '8518c8521276146fd3da01cf061720416fa0ee43');
INSERT INTO `accounts` VALUES ('13', '1', '0', '1', '0', '0', 'd707b93d32d884e8315f67247b4ce1247fb36a3c');
INSERT INTO `accounts` VALUES ('14', '0', '0', '1', '0', '0', '9beccf9e3a3583c67d8f9f771c8d1a3357fc1542');
INSERT INTO `accounts` VALUES ('15', '1', '0', '1', '0', '0', '122e5bda4e790eb67f7d2ce141b68cb6148a129d');
INSERT INTO `accounts` VALUES ('16', '1', '0', '1', '0', '0', 'c572f22e88403ef04185b229caa6adb160384c82');
INSERT INTO `accounts` VALUES ('17', '1', '0', '1', '0', '0', '97b9bd698a26c21f9afc13667709f2833ab5794a');
INSERT INTO `accounts` VALUES ('18', '1', '0', '1', '0', '0', '5408b1f4046e0ecb007f031422b12362d2d0171f');
INSERT INTO `accounts` VALUES ('19', '1', '0', '1', '0', '0', '49186ee5c2aee4fb729d34172ba582bfd31326fc');
INSERT INTO `accounts` VALUES ('20', '1', '0', '1', '0', '0', 'b838bf31af02d8ef959a3945bbae2fb02d4a2f48');
INSERT INTO `accounts` VALUES ('21', '1', '0', '1', '0', '0', '0fd2a5469208110e86645c2943a2f78a063e85fa');
INSERT INTO `accounts` VALUES ('22', '1', '0', '1', '0', '0', 'f5ac4f0d273cf932418d8f3178d33bdb32750155');
INSERT INTO `accounts` VALUES ('23', '1', '0', '1', '80', '0', 'b8e3fabe1ca7a169caa6b075ab60156060d7152a');
INSERT INTO `accounts` VALUES ('24', '1', '0', '1', '80', '0', 'd7d5738a108ec0434bde38d3a0831a040f1813d9');
INSERT INTO `accounts` VALUES ('25', '1', '0', '1', '0', '0', '59ffc39bb3a46684b76c0064079a257d67176281');
INSERT INTO `accounts` VALUES ('26', '1', '0', '1', '0', '0', 'aeba3d0133efa437ae16e5f401772555595e51cf');
INSERT INTO `accounts` VALUES ('27', '1', '0', '1', '0', '0', '4305297ee5b2eaf88a45ca190a773cc356acdbc4');
INSERT INTO `accounts` VALUES ('28', '1', '0', '1', '0', '0', 'b347511f84698c04e57a91730839fd8b858ab8e8');
INSERT INTO `accounts` VALUES ('29', '1', '0', '1', '0', '0', '253d39c97bd9445aeb9c940db89f1036289f9ea8');
INSERT INTO `accounts` VALUES ('30', '1', '0', '1', '0', '0', '7e60b3c953fa9e5b930025608b21e6d0646fa373');
INSERT INTO `accounts` VALUES ('31', '1', '0', '1', '0', '0', 'c7ef85252a9609210bab0facbf7c377d442e3c60');
INSERT INTO `accounts` VALUES ('32', '1', '0', '1', '0', '0', 'f20f0c3e560b60590641c503cdade61b1af6fcfd');
INSERT INTO `accounts` VALUES ('33', '1', '0', '1', '0', '0', 'ff7bd7e82e20180302a542224c7c1b03c2d75764');
INSERT INTO `accounts` VALUES ('34', '1', '0', '1', '0', '0', 'e735f19bb8d3deedc77e0689f049b706009c971c');
INSERT INTO `accounts` VALUES ('35', '1', '0', '1', '0', '0', '5043610189d561312d1f25dcf04a945db0a3df38');
INSERT INTO `accounts` VALUES ('36', '1', '0', '1', '0', '0', 'cc7ea2f067109242fba84588bcee986b260bac7e');
INSERT INTO `accounts` VALUES ('37', '1', '0', '1', '0', '0', '0662a3f02cf3521b2cf8ce3a0925008b7a65becc');
INSERT INTO `accounts` VALUES ('38', '1', '0', '1', '0', '0', 'd779518c667add4ccd859d4e676973ef18ae7840');
INSERT INTO `accounts` VALUES ('39', '1', '0', '1', '0', '0', '4d6eeeb65c4b876b67a46557d8f3dab3f5c947f8');
INSERT INTO `accounts` VALUES ('40', '1', '0', '1', '0', '0', '85e4f87b2ded45c3c399debfcf44bb10314232e3');
INSERT INTO `accounts` VALUES ('41', '1', '0', '1', '0', '0', '41c698963c9bfee44bcbf6a30f8eef8ede3d1e01');
INSERT INTO `accounts` VALUES ('42', '1', '0', '1', '0', '0', '818ed586aa1382beadb181eb1b41f827057c15ba');
INSERT INTO `accounts` VALUES ('43', '1', '0', '1', '0', '0', '4a9a2060f7e8759b76092091d56a6cb5e82709c8');
INSERT INTO `accounts` VALUES ('44', '1', '0', '1', '0', '0', '4e4bd8cabe4d60438212bdcd5da85eacf2c71e52');
INSERT INTO `accounts` VALUES ('45', '0', '0', '1', '0', '0', 'a5efe64d41aa6b6e59d3848d11a9e7ba8cc078ee');
INSERT INTO `accounts` VALUES ('46', '1', '0', '1', '0', '0', 'c93d1b275a0f46baee443b7de19771c165b4c57d');
INSERT INTO `accounts` VALUES ('47', '0', '0', '1', '0', '0', 'd3b434f10f4b9eb9c92204378954dd3ad4db2f25');
INSERT INTO `accounts` VALUES ('48', '1', '0', '1', '0', '0', '6d7111eb46ce3a2477b92ce6fb82ea27e6d22e86');
INSERT INTO `accounts` VALUES ('49', '1', '0', '1', '0', '0', 'b6e88d25ebe739bc6b2a0aff54d924cd40f6e834');
INSERT INTO `accounts` VALUES ('50', '1', '0', '1', '0', '0', 'c6198f177c8ba3e1af9533fb2520372b240509b6');
INSERT INTO `accounts` VALUES ('51', '1', '0', '1', '0', '0', '893a8c3995df1ccf3538fc83717c329024caec14');
INSERT INTO `accounts` VALUES ('52', '1', '0', '1', '0', '0', '1858c7f484d8ae15a37cfbaa01f3894e444c47eb');
INSERT INTO `accounts` VALUES ('53', '1', '0', '1', '0', '0', '7c753da78d9e4b6a568aa2d4ecf82821474b993f');
INSERT INTO `accounts` VALUES ('54', '1', '0', '1', '0', '0', 'd48efc4b4f5e5c51ba4068bbd168b581ee995fa9');
INSERT INTO `accounts` VALUES ('55', '1', '0', '1', '0', '0', '5f95d660bbb4b553da088bf92fe0596824e8a26b');
INSERT INTO `accounts` VALUES ('56', '1', '0', '1', '0', '0', 'ea4adc65836b485ff29da73669c93d738364130d');
INSERT INTO `accounts` VALUES ('57', '1', '0', '1', '0', '0', 'b9530a2389cba1724927505699944baf43b33e7a');
INSERT INTO `accounts` VALUES ('58', '1', '0', '1', '0', '0', '9d93ccea182d407fa89983b56b3dacf1574c66b1');
INSERT INTO `accounts` VALUES ('59', '1', '0', '1', '0', '0', '84631b15afa347b7ec78e53133c255d1f104b764');
INSERT INTO `accounts` VALUES ('60', '1', '0', '1', '0', '0', '0b6a1a97224cc3eb750e350a722c38f57a61022b');
INSERT INTO `accounts` VALUES ('61', '1', '0', '1', '0', '0', '865f47a125dd59a07ce4d61b8684bb2f0999de55');
INSERT INTO `accounts` VALUES ('62', '1', '0', '1', '0', '0', '4d8f74b1a9245815d8629fdf3f82f656f407ca4f');
INSERT INTO `accounts` VALUES ('63', '1', '0', '1', '0', '0', 'c3abdc7edd78b961525d8c6569cf45807d09511f');
INSERT INTO `accounts` VALUES ('64', '1', '0', '1', '0', '0', '125fd13c29b23c5b34ccd19af07a2754bd8786c9');
INSERT INTO `accounts` VALUES ('65', '1', '0', '1', '0', '0', '379bcf67d3509fdaa12f5918aece40fcb3d35eab');
INSERT INTO `accounts` VALUES ('66', '1', '0', '1', '0', '0', 'f9f02ebbfcb090fcb03628aacff3dec1d0f1689b');
INSERT INTO `accounts` VALUES ('67', '1', '0', '1', '0', '0', 'c2543283934fcd41087ac7b8bbd6f43f21fcf2a1');
INSERT INTO `accounts` VALUES ('68', '1', '0', '1', '0', '0', '2397bcee9b4eb5f38635a9d61723b41cf9dcb8e1');
INSERT INTO `accounts` VALUES ('69', '1', '0', '1', '0', '0', '8cf8bf49c7632d733bab6883d647537deee82290');
INSERT INTO `accounts` VALUES ('70', '1', '0', '1', '0', '0', '1ba288d7f804023cb611c79d0aea8cfa5ecc6ae2');

DROP TABLE IF EXISTS `banneds`;
CREATE TABLE `banneds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) NOT NULL,
  `time` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `banneds` VALUES ('1', '122e5bda4e790eb67f7d2ce141b68cb6148a129d', '1742671992');

DROP TABLE IF EXISTS `big_phone_accounts`;
CREATE TABLE `big_phone_accounts` (
  `id` int(11) NOT NULL,
  `app` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` date DEFAULT current_timestamp(),
  `gender` varchar(50) DEFAULT NULL,
  `interested` varchar(50) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `passions` text DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `verify` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_calls`;
CREATE TABLE `big_phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_chats`;
CREATE TABLE `big_phone_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_chats_users`;
CREATE TABLE `big_phone_chats_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_comments`;
CREATE TABLE `big_phone_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_contacts`;
CREATE TABLE `big_phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_followers`;
CREATE TABLE `big_phone_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_likes`;
CREATE TABLE `big_phone_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_messages`;
CREATE TABLE `big_phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_chat` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `read` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `big_phone_messages` (`id_chat`) USING BTREE,
  CONSTRAINT `big_phone_messages` FOREIGN KEY (`id_chat`) REFERENCES `big_phone_chats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_messages_app`;
CREATE TABLE `big_phone_messages_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `read` tinyint(4) NOT NULL DEFAULT 0,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_posts`;
CREATE TABLE `big_phone_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `filter` varchar(255) DEFAULT NULL,
  `hashtags` text DEFAULT NULL,
  `mentions` text DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_settings`;
CREATE TABLE `big_phone_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `option` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_stories`;
CREATE TABLE `big_phone_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `filter` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `big_phone_tinder_likes`;
CREATE TABLE `big_phone_tinder_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_liked` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `centralcart_scheduler`;
CREATE TABLE `centralcart_scheduler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `command` varchar(255) NOT NULL,
  `params` text DEFAULT NULL,
  `execute_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT 'Individuo',
  `name2` varchar(50) DEFAULT 'Indigente',
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `prison` int(10) NOT NULL,
  `bank` int(20) NOT NULL DEFAULT 0,
  `medicplan` int(20) NOT NULL DEFAULT 0,
  `blood` int(1) NOT NULL DEFAULT 1,
  `fines` int(20) NOT NULL DEFAULT 0,
  `tracking` int(30) NOT NULL DEFAULT 0,
  `spending` int(20) NOT NULL DEFAULT 0,
  `cardlimit` int(20) NOT NULL DEFAULT 0,
  `cardpassword` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `created` int(20) NOT NULL DEFAULT 0,
  `paypal` int(11) DEFAULT 0,
  `age` int(11) DEFAULT 20,
  `time` int(11) DEFAULT 0,
  `x` double DEFAULT 0,
  `y` double DEFAULT 0,
  `z` double DEFAULT 0,
  `heading` double DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `characters` VALUES ('1', '09dda1ae3be63b9cc0822954d47483339ef574e7', '511-983', 'Attila', 'Pena', 'M', '0', '1566402', '0', '3', '0', '0', '1800', '543', '9677', '0', '0', '0', '18', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('2', 'fa81b3b77111a18525a1510ff78076fba773babb', '222-222', 'Thiago', 'Martins', 'M', '0', '1351476', '0', '3', '0', '0', '0', '0', '1234', '0', '0', '0', '23', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('3', '529407eb0ad6549beaf21673d5179786d7b9f200', '977-060', 'Shelby', 'Nuu', 'M', '0', '1461622', '1742599524', '3', '0', '0', '1845', '155', '1575', '0', '0', '0', '23', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('4', '3d9e4ec82f31f77c0daaf7c37a05e74fd7eadd36', '660-013', 'Braga', 'Not', 'M', '0', '238235', '0', '1', '0', '0', '0', '2375', '7777', '0', '0', '0', '19', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('5', '80b7c4399551ae34d8e0677bbed64d384515d1b3', '801-509', 'Erick', 'Andre', 'M', '0', '279605', '0', '2', '0', '0', '1985', '15', '8621', '0', '0', '0', '29', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('6', '24ff53fee4a15d81aa746c3aaa53e631526379bd', '652-096', 'Gracce', 'Shelby', 'F', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '25', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('7', '82138ee946a41a6b726e06852ff30e39f2069a63', '761-671', 'Tata', 'Love', 'F', '0', '3940', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('8', '9c717175e274299ca4e037b5a6eedf1f897d03a0', '107-913', 'Victor', 'Gagaryn', 'M', '0', '224719', '0', '4', '0', '0', '1980', '20', '2727', '0', '0', '0', '27', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('9', '49b23a9ba54b1c064d21ba195b2a97b573877576', '670-873', 'Sertaneijo', 'Silva', 'M', '0', '30970', '0', '4', '0', '0', '0', '0', '1425', '0', '0', '0', '21', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('10', '54e286a344b7c1849133c2de7cebb523aa127ea0', '710-198', 'Connor', 'Dygeras', 'M', '0', '154152', '0', '4', '0', '0', '0', '0', '7777', '0', '0', '0', '18', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('11', 'fa44bd9c261121a0c1bc1211a35db2c458afd3e6', '279-177', 'Carlos', 'Villar', 'M', '0', '93920', '0', '1', '0', '0', '1430', '570', '1903', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('12', 'd707b93d32d884e8315f67247b4ce1247fb36a3c', '160-369', 'Moonie', 'Mistery', 'F', '0', '126969', '0', '2', '0', '0', '0', '0', '5469', '0', '0', '0', '27', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('13', '122e5bda4e790eb67f7d2ce141b68cb6148a129d', '178-145', 'Chefin', 'Silveira', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('14', 'c572f22e88403ef04185b229caa6adb160384c82', '602-098', 'King', 'Xt', 'M', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('15', '97b9bd698a26c21f9afc13667709f2833ab5794a', '214-186', 'Lasconne', 'Seven', 'M', '0', '27636', '0', '4', '0', '0', '394', '1606', '1012', '0', '0', '0', '28', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('16', '8518c8521276146fd3da01cf061720416fa0ee43', '110-522', 'Nicolas', 'Prado', 'M', '0', '256670', '0', '3', '0', '0', '0', '2000', '6969', '0', '0', '0', '26', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('17', '5408b1f4046e0ecb007f031422b12362d2d0171f', '672-394', 'Teaga', 'Koovaks', 'M', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('18', '0fd2a5469208110e86645c2943a2f78a063e85fa', '938-801', 'Japa', 'Vitor', 'M', '0', '26754', '0', '4', '0', '0', '0', '2000', '1212', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('19', 'f5ac4f0d273cf932418d8f3178d33bdb32750155', '192-880', 'Pablito', 'Escobar', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('20', 'b8e3fabe1ca7a169caa6b075ab60156060d7152a', '539-378', 'Yuri', 'Falcao', 'M', '0', '218888', '0', '1', '0', '0', '260', '1740', '2731', '0', '0', '0', '21', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('21', 'd7d5738a108ec0434bde38d3a0831a040f1813d9', '683-211', 'Breno', 'Silva', 'M', '0', '204383', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('22', '4305297ee5b2eaf88a45ca190a773cc356acdbc4', '690-212', 'Individuo', 'Indigente', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '1', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('23', '59ffc39bb3a46684b76c0064079a257d67176281', '035-545', 'Rosa', 'Original', 'F', '0', '203468', '0', '4', '0', '0', '0', '0', '1425', '0', '0', '0', '21', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('24', '4305297ee5b2eaf88a45ca190a773cc356acdbc4', '506-241', 'Meliodas', 'Gaviria', 'M', '0', '5295', '0', '1', '0', '0', '0', '0', '7414', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('25', 'b347511f84698c04e57a91730839fd8b858ab8e8', '159-538', 'Bruno', 'Simao', 'M', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '33', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('26', '253d39c97bd9445aeb9c940db89f1036289f9ea8', '679-147', 'Betim', 'Martins', 'M', '0', '5000', '0', '1', '0', '0', '310', '1690', '3132', '0', '0', '0', '30', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('27', '7e60b3c953fa9e5b930025608b21e6d0646fa373', '382-884', 'Nazare', 'Adams', 'F', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('28', 'c7ef85252a9609210bab0facbf7c377d442e3c60', '386-899', 'Brian', 'Nury', 'M', '0', '1180', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('29', 'f20f0c3e560b60590641c503cdade61b1af6fcfd', '752-212', 'Maya', 'Dellacruz', 'F', '0', '2990', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('30', 'e735f19bb8d3deedc77e0689f049b706009c971c', '877-879', 'Dani', 'Costa', 'M', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('31', 'aeba3d0133efa437ae16e5f401772555595e51cf', '173-535', 'Yumi', 'Park', 'F', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('32', '5043610189d561312d1f25dcf04a945db0a3df38', '165-012', 'Cleiton', 'Rasta', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('33', 'cc7ea2f067109242fba84588bcee986b260bac7e', '251-738', 'Dj', 'Souza', 'M', '0', '4015', '0', '4', '0', '0', '1600', '400', '2601', '0', '0', '0', '37', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('34', '24ff53fee4a15d81aa746c3aaa53e631526379bd', '095-697', 'Gracce', 'Shelby', 'F', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('35', '0662a3f02cf3521b2cf8ce3a0925008b7a65becc', '150-632', 'Kaique', 'Silva', 'M', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('36', 'd779518c667add4ccd859d4e676973ef18ae7840', '244-689', 'Myllinha', 'Orsi', 'F', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('37', '85e4f87b2ded45c3c399debfcf44bb10314232e3', '779-113', 'Rubi', 'Beckeer', 'F', '0', '49720', '0', '1', '0', '0', '1150', '850', '2025', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('38', '41c698963c9bfee44bcbf6a30f8eef8ede3d1e01', '990-830', 'Gugu', 'Love', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('39', '4a9a2060f7e8759b76092091d56a6cb5e82709c8', '612-694', 'Vitin', 'Love', 'M', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '19', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('40', '4e4bd8cabe4d60438212bdcd5da85eacf2c71e52', '290-102', 'Evandro', 'Lambert', 'M', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('41', '8518c8521276146fd3da01cf061720416fa0ee43', '846-224', 'Nicolas', 'Adm', 'M', '0', '17114', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '26', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('42', '6d7111eb46ce3a2477b92ce6fb82ea27e6d22e86', '021-347', 'Lebron', 'Jordan', 'M', '0', '4695', '0', '1', '0', '0', '2000', '0', '1577', '0', '0', '0', '20', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('43', 'b6e88d25ebe739bc6b2a0aff54d924cd40f6e834', '163-594', 'Alice', 'Delacruz', 'F', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '28', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('44', 'c6198f177c8ba3e1af9533fb2520372b240509b6', '496-749', 'Ms', 'Legit', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '28', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('45', '893a8c3995df1ccf3538fc83717c329024caec14', '986-090', 'Cabelinho', 'Silva', 'M', '0', '8802', '0', '1', '0', '0', '0', '0', '9324', '0', '0', '0', '26', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('46', '1858c7f484d8ae15a37cfbaa01f3894e444c47eb', '975-168', 'Kylo', 'Banks', 'M', '0', '8070', '0', '4', '0', '0', '0', '0', '1327', '0', '0', '0', '24', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('47', '7c753da78d9e4b6a568aa2d4ecf82821474b993f', '869-725', 'Rariel', 'Diaz', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('48', 'd48efc4b4f5e5c51ba4068bbd168b581ee995fa9', '319-864', 'Boris', 'Helio', 'M', '0', '1700', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('49', 'ea4adc65836b485ff29da73669c93d738364130d', '263-971', 'Higor', 'Beckeer', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('50', 'b9530a2389cba1724927505699944baf43b33e7a', '075-087', 'Lagarticho', 'Escobar', 'M', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('51', '9d93ccea182d407fa89983b56b3dacf1574c66b1', '902-455', 'Dark', 'Pandapng', 'F', '0', '3500', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('52', '84631b15afa347b7ec78e53133c255d1f104b764', '352-917', 'Sasha', 'Vick', 'F', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('53', '0b6a1a97224cc3eb750e350a722c38f57a61022b', '828-858', 'Victor', 'Oconner', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('54', '4d8f74b1a9245815d8629fdf3f82f656f407ca4f', '686-858', 'Relikia', 'Dnobre', 'M', '0', '4070', '0', '2', '0', '0', '1424', '576', '5454', '0', '0', '0', '23', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('55', 'c3abdc7edd78b961525d8c6569cf45807d09511f', '574-803', 'Higor', 'Lopes', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('56', '125fd13c29b23c5b34ccd19af07a2754bd8786c9', '691-363', 'Black', 'Shelby', 'M', '0', '5000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('57', '379bcf67d3509fdaa12f5918aece40fcb3d35eab', '908-000', 'Dark', 'Dusete', 'M', '0', '3000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('58', '1ba288d7f804023cb611c79d0aea8cfa5ecc6ae2', '592-316', 'Borges', 'Walker', 'M', '0', '5000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0');

DROP TABLE IF EXISTS `chests`;
CREATE TABLE `chests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Permission` varchar(50) DEFAULT NULL,
  `Weight` int(10) NOT NULL DEFAULT 500,
  `Slots` int(20) NOT NULL DEFAULT 50,
  `Logs` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `chests` VALUES ('3', 'Paramedic', 'Paramedic', '5000', '50', '1');
INSERT INTO `chests` VALUES ('4', 'AutoExotic', 'AutoExotic', '5000', '50', '1');
INSERT INTO `chests` VALUES ('5', 'Ballas', 'Ballas', '500', '50', '1');
INSERT INTO `chests` VALUES ('6', 'KoiSushi', 'KoiSushi', '1000', '50', '1');
INSERT INTO `chests` VALUES ('7', 'DigitalDen', 'DigitalDen', '500', '50', '1');
INSERT INTO `chests` VALUES ('8', 'Prf', 'Prf', '5000', '50', '1');
INSERT INTO `chests` VALUES ('10', 'Paramedic-2', 'Paramedic-2', '500', '50', '0');

DROP TABLE IF EXISTS `dependents`;
CREATE TABLE `dependents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Dependent` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `electrician`;
CREATE TABLE `electrician` (
  `id` char(50) DEFAULT NULL,
  `profiledata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `electrician` VALUES ('1', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":4,"xp":2000,"identifier":1,"name":"Attila"}');
INSERT INTO `electrician` VALUES ('2', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":2,"xp":0,"name":"Thiago"}');
INSERT INTO `electrician` VALUES ('3', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":2,"xp":1000,"identifier":3,"name":"Shelby"}');
INSERT INTO `electrician` VALUES ('4', '{"name":"Braga","xp":0,"identifier":4,"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('5', '{"level":3,"identifier":5,"name":"Erick","xp":1250,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('6', '{"level":1,"xp":0,"name":"Gracy","identifier":6,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('7', '{"identifier":7,"level":1,"xp":0,"name":"Tata","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('8', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":1,"xp":0,"identifier":8,"name":"Victor"}');
INSERT INTO `electrician` VALUES ('9', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":2,"xp":0,"identifier":9,"name":"Sertaneijo"}');
INSERT INTO `electrician` VALUES ('10', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Connor","level":1,"identifier":10}');
INSERT INTO `electrician` VALUES ('11', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":3,"identifier":11,"name":"Carlos","xp":0}');
INSERT INTO `electrician` VALUES ('12', '{"identifier":12,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Moonie","xp":0,"level":1}');
INSERT INTO `electrician` VALUES ('13', '{"level":1,"identifier":13,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Chefin","xp":0}');
INSERT INTO `electrician` VALUES ('14', '{"name":"King","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"level":1,"identifier":14}');
INSERT INTO `electrician` VALUES ('15', '{"name":"Lasconne","level":1,"xp":0,"identifier":15,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('16', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Nicolas","level":1,"identifier":16}');
INSERT INTO `electrician` VALUES ('17', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":1,"xp":0,"identifier":17,"name":"Individuo"}');
INSERT INTO `electrician` VALUES ('18', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":18,"level":1,"name":"Japa"}');
INSERT INTO `electrician` VALUES ('19', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"name":"Individuo","level":1,"identifier":19}');
INSERT INTO `electrician` VALUES ('20', '{"name":"Yuri","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"level":1,"identifier":20}');
INSERT INTO `electrician` VALUES ('21', '{"xp":0,"level":1,"identifier":21,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Breno"}');
INSERT INTO `electrician` VALUES ('22', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":1,"identifier":22,"name":"Individuo","xp":0}');
INSERT INTO `electrician` VALUES ('23', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":5,"xp":1000,"identifier":23,"name":"Rosa"}');
INSERT INTO `electrician` VALUES ('24', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"level":1,"name":"Meliodas","identifier":24}');
INSERT INTO `electrician` VALUES ('25', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":1,"identifier":25,"name":"Individuo","xp":0}');
INSERT INTO `electrician` VALUES ('26', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"identifier":26,"name":"Betim"}');
INSERT INTO `electrician` VALUES ('27', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"identifier":27,"name":"Individuo"}');
INSERT INTO `electrician` VALUES ('28', '{"name":"Brian","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"level":1,"identifier":28}');
INSERT INTO `electrician` VALUES ('29', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":29,"level":1,"name":"Maya"}');
INSERT INTO `electrician` VALUES ('30', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":30,"level":1,"name":"Dani"}');
INSERT INTO `electrician` VALUES ('31', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":31,"level":1,"name":"Yumi"}');
INSERT INTO `electrician` VALUES ('32', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"identifier":32,"name":"Individuo"}');
INSERT INTO `electrician` VALUES ('33', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Dj","level":1,"identifier":33}');
INSERT INTO `electrician` VALUES ('34', '{"level":1,"identifier":34,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Gracce","xp":0}');
INSERT INTO `electrician` VALUES ('35', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":35,"level":1,"name":"Individuo"}');
INSERT INTO `electrician` VALUES ('36', '{"level":1,"identifier":36,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo","xp":0}');
INSERT INTO `electrician` VALUES ('37', '{"xp":0,"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Rubi","identifier":37}');
INSERT INTO `electrician` VALUES ('38', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Gugu","level":1,"identifier":38}');
INSERT INTO `electrician` VALUES ('39', '{"identifier":39,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo","xp":0,"level":1}');
INSERT INTO `electrician` VALUES ('40', '{"identifier":40,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo","xp":0,"level":1}');
INSERT INTO `electrician` VALUES ('41', '{"level":1,"identifier":41,"name":"Nicolas","xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('42', '{"name":"Lebron","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","xp":0,"identifier":42,"level":1}');
INSERT INTO `electrician` VALUES ('43', '{"level":1,"identifier":43,"name":"Alice","xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('44', '{"xp":0,"level":1,"identifier":44,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo"}');
INSERT INTO `electrician` VALUES ('45', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Cabelinho","level":1,"identifier":45}');
INSERT INTO `electrician` VALUES ('46', '{"xp":0,"identifier":46,"level":1,"name":"Kylo","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('47', '{"xp":0,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo","level":1,"identifier":47}');
INSERT INTO `electrician` VALUES ('48', '{"xp":0,"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Boris","identifier":48}');
INSERT INTO `electrician` VALUES ('49', '{"xp":0,"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","name":"Individuo","identifier":49}');
INSERT INTO `electrician` VALUES ('50', '{"name":"Individuo","xp":0,"identifier":50,"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('51', '{"level":1,"identifier":51,"xp":0,"name":"Individuo","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('52', '{"level":1,"identifier":52,"xp":0,"name":"Individuo","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('53', '{"level":1,"identifier":53,"xp":0,"name":"Individuo","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('54', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":54,"xp":0,"name":"Relikia"}');
INSERT INTO `electrician` VALUES ('55', '{"level":1,"identifier":55,"xp":0,"name":"Individuo","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('56', '{"level":1,"identifier":56,"xp":0,"name":"Black","avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png"}');
INSERT INTO `electrician` VALUES ('57', '{"level":1,"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","identifier":57,"xp":0,"name":"Dark"}');
INSERT INTO `electrician` VALUES ('58', '{"avatar":"https://cdn-icons-png.flaticon.com/512/8847/8847419.png","level":1,"xp":0,"identifier":58,"name":"Individuo"}');

DROP TABLE IF EXISTS `entitydata`;
CREATE TABLE `entitydata` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`dkey`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `entitydata` VALUES ('12:mobm23:74TKX128', '{"wheel":{"type":3},"colors":{"smoke":[255,255,255],"pearly":64,"xenon":false,"colorType":[0,112],"secondary":[0,86,73],"primary":[0,86,73],"neon":[0,160,255],"wheelColor":0},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":-1,"18":1,"19":-1,"23":28,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":7,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}}}');
INSERT INTO `entitydata` VALUES ('16:mobm23:11EAR273', '{"colors":{"pearly":5,"wheelColor":0,"primary":[0,0,0],"secondary":[0,0,0],"xenon":false,"smoke":[255,255,255],"neon":false,"colorType":[0,112]},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":27,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":4,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheel":{"type":3},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259}}}');
INSERT INTO `entitydata` VALUES ('16:nissanr33tb:85XPO898', '{"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":43,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":4,"42":-1,"43":-1,"44":-1,"45":-1,"46":0,"48":-1,"49":-1,"0":0,"95":1,"96":true},"colors":{"primary":[34,2,2],"xenon":false,"colorType":[147,0],"pearly":35,"wheelColor":37,"neon":false,"smoke":[255,22,0],"secondary":[235,229,229]},"wheel":{"type":0},"wheelAngular":{"y":{"1":0.05000000074505,"2":-0.03999999910593,"3":0.03999999910593,"4":0.0,"5":0.0,"0":-0.05000000074505},"x":{"1":0.81000000238418,"2":-0.81000000238418,"3":0.81000000238418,"4":0.0,"5":0.0,"0":-0.81000000238418}}}');
INSERT INTO `entitydata` VALUES ('1:1200:74JYP186', '{"colors":{"pearly":73,"smoke":[255,255,255],"secondary":[8,8,8],"primary":[13,13,13],"colorType":[55,112],"xenon":false,"neon":false,"wheelColor":156},"wheel":{"type":6},"wheelAngular":{"y":{"1":-0.00000100012516,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.00229716533794,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":-0.00127094238996}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":-1,"18":1,"19":-1,"23":36,"24":36,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":3,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":-1,"49":-1,"0":-1,"95":1,"96":false}}');
INSERT INTO `entitydata` VALUES ('1:amarok eb s:05CIZ217', '{"colors":{"pearly":134,"smoke":[255,255,255],"secondary":[255,255,255],"xenon":false,"colorType":[134,134],"primary":[140,49,49],"neon":false,"wheelColor":134},"wheel":{"type":0},"wheelAngular":{"y":{"1":0.03484789282083,"2":0.0,"3":0.0004230919294,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.88903874158859,"2":-0.89006674289703,"3":0.88903874158859,"4":0.0,"5":0.0,"0":-0.88988894224166}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"18":false,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":2,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":-1,"49":-1,"0":-1,"95":false,"96":false}}');
INSERT INTO `entitydata` VALUES ('1:astra:61INU456', '{"wheel":{"type":0},"colors":{"pearly":73,"flashLightColor":"#014FB7","wheelColor":0,"secondary":[5,5,5],"xenon":1,"colorType":[134,134],"primary":[3,3,3],"neon":false,"smoke":[255,255,255]},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.66111665964126,"2":-0.65895849466323,"3":0.66051959991455,"4":0.0,"5":0.0,"0":-0.6624316573143}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":13,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":4,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":1,"96":false}}');
INSERT INTO `entitydata` VALUES ('1:g7cross:61ZNY671', '{"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"18":false,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"x":{"1":0.76481992006301,"2":-0.80954056978225,"3":0.80947744846343,"4":0.0,"5":0.0,"0":-0.76478022336959},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}},"wheel":{"type":1},"colors":{"smoke":[255,255,255],"primary":[5,0,8],"secondary":[105,113,135],"wheelColor":88,"pearly":81,"colorType":[142,25],"xenon":false,"neon":false}}');
INSERT INTO `entitydata` VALUES ('1:mobm23:34AUW544', '{"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":50,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":1,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":true},"colors":{"neon":[0,0,0],"flashLightColor":"#014FB7","pearly":75,"smoke":[255,255,255],"primary":[10,10,10],"xenon":1,"secondary":[8,8,8],"wheelColor":0,"colorType":[112,112]},"wheelAngular":{"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259}},"wheel":{"type":0}}');
INSERT INTO `entitydata` VALUES ('1:penumbra:06UZF111', '{"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":-1,"13":-1,"14":0,"15":-1,"16":-1,"18":false,"19":-1,"23":0,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":0,"48":-1,"49":-1,"0":-1,"95":false,"96":true},"wheel":{"type":0},"colors":{"neon":[40,255,0],"primary":[86,143,0],"colorType":[92,92],"pearly":92,"wheelColor":92,"xenon":false,"smoke":[255,255,255],"secondary":[16,3,114]},"wheelAngular":{"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.68999999761581,"2":-0.66000002622604,"3":0.66000002622604,"4":0.0,"5":0.0,"0":-0.68999999761581}}}');
INSERT INTO `entitydata` VALUES ('20:mobm23:02GFX087', '{"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259}},"wheel":{"type":1},"colors":{"primary":[2,10,69],"pearly":64,"smoke":[255,255,255],"colorType":[12,112],"wheelColor":13,"xenon":false,"secondary":[2,18,54],"neon":false},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":5,"15":3,"16":-1,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":1,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":true}}');
INSERT INTO `entitydata` VALUES ('21:gtr nismo:47IKP237', '{"wheelAngular":{"y":{"1":0.10000000149011,"2":-0.10000000149011,"3":0.10000000149011,"4":0.0,"5":0.0,"0":-0.10000000149011},"x":{"1":0.87000000476837,"2":-0.89999997615814,"3":0.89999997615814,"4":0.0,"5":0.0,"0":-0.87000000476837}},"colors":{"primary":[0,20,51],"wheelColor":37,"secondary":[28,30,33],"pearly":63,"xenon":false,"smoke":[255,255,255],"neon":false,"colorType":[0,2]},"wheel":{"type":0},"mods":{"1":-1,"2":-1,"3":-1,"4":0,"5":1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":10,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":1,"42":-1,"43":-1,"44":-1,"45":-1,"46":2,"48":-1,"49":-1,"0":4,"95":false,"96":false}}');
INSERT INTO `entitydata` VALUES ('23:club:40LYV010', '{"colors":{"secondary":[0,0,0],"neon":[55,255,0],"colorType":[12,0],"wheelColor":0,"pearly":5,"xenon":255,"smoke":[255,255,255],"primary":[45,69,123]},"wheel":{"type":7},"wheelAngular":{"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.74000000953674,"2":-0.73000001907348,"3":0.73000001907348,"4":0.0,"5":0.0,"0":-0.74000000953674}},"mods":{"1":3,"2":3,"3":0,"4":6,"5":1,"6":-1,"7":-1,"8":-1,"10":1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":29,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":11,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":1,"96":true}}');
INSERT INTO `entitydata` VALUES ('23:rhinehart:38AQM461', '{"colors":{"flashLightColor":"#014FB7","secondary":[131,1,1],"neon":[255,255,255],"wheelColor":0,"primary":[234,7,237],"pearly":18,"smoke":[255,255,255],"colorType":[0,0],"xenon":1},"wheel":{"type":0},"mods":{"1":2,"2":2,"3":5,"4":4,"5":-1,"6":-1,"7":3,"8":-1,"10":1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":5,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":11,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":2,"95":false,"96":false},"wheelAngular":{"x":{"1":0.78278446197509,"2":-0.78408449888229,"3":0.78408545255661,"4":0.0,"5":0.0,"0":-0.78278350830078},"y":{"1":0.00000103660238,"2":0.00000101888281,"3":0.00000101888281,"4":0.0,"5":0.0,"0":0.00000103660238}}}');
INSERT INTO `entitydata` VALUES ('23:rhinehart:56IVL050', '{"wheelAngular":{"x":{"1":0.78278446197509,"2":-0.78408449888229,"3":0.78408545255661,"4":0.0,"5":0.0,"0":-0.78278350830078},"y":{"1":0.00000103660238,"2":0.00000101888281,"3":0.00000101888281,"4":0.0,"5":0.0,"0":0.00000103660238}},"colors":{"pearly":28,"wheelColor":19,"neon":[0,255,26],"smoke":[255,255,255],"primary":[252,252,253],"xenon":false,"secondary":[255,255,255],"colorType":[64,0]},"wheel":{"type":7},"mods":{"1":0,"2":0,"3":5,"4":5,"5":-1,"6":-1,"7":3,"8":-1,"10":1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":25,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":false}}');
INSERT INTO `entitydata` VALUES ('23:sultanrs:53XZU428', '{"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.76365602016448,"2":-0.77338397502899,"3":0.77338397502899,"4":0.0,"5":0.0,"0":-0.76365602016448}},"mods":{"1":-1,"2":-1,"3":2,"4":1,"5":-1,"6":-1,"7":6,"8":3,"10":1,"11":4,"12":2,"13":3,"14":1,"15":3,"16":4,"18":1,"19":-1,"23":8,"24":-1,"25":-1,"27":-1,"28":19,"29":3,"30":5,"31":0,"32":8,"33":6,"35":0,"42":-1,"43":-1,"44":0,"45":-1,"46":0,"48":7,"49":-1,"0":-1,"95":false,"96":true},"colors":{"pearly":4,"secondary":[0,0,0],"xenon":255,"colorType":[0,64],"primary":[5,5,5],"wheelColor":35,"neon":[255,0,255],"smoke":[20,0,255]},"wheel":{"type":0}}');
INSERT INTO `entitydata` VALUES ('23:youga2:01MOH451', '{"wheel":{"type":0},"mods":{"1":-1,"2":-1,"3":0,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":0,"11":-1,"12":-1,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":2,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":0,"48":11,"49":-1,"0":0,"95":false,"96":true},"colors":{"wheelColor":112,"smoke":[255,255,255],"colorType":[107,68],"pearly":4,"primary":[207,192,165],"neon":false,"xenon":false,"secondary":[62,98,122]},"wheelAngular":{"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.8847569823265,"2":-0.90486097335815,"3":0.90486097335815,"4":0.0,"5":0.0,"0":-0.8847569823265}}}');
INSERT INTO `entitydata` VALUES ('2:2f2frx7:01LNZ369', '{"wheelAngular":{"x":{"1":0.78401827812194,"2":-0.76917397975921,"3":0.76917397975921,"4":0.0,"5":0.0,"0":-0.78401827812194},"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":-1,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":0,"48":-1,"49":-1,"0":-1,"95":false,"96":true},"wheel":{"type":0},"colors":{"secondary":[50,6,66],"xenon":false,"primary":[179,185,201],"wheelColor":0,"colorType":[112,145],"smoke":[255,255,255],"neon":[255,0,1],"pearly":0}}');
INSERT INTO `entitydata` VALUES ('2:type-r:03OXT957', '{"colors":{"pearly":2,"wheelColor":2,"primary":[252,252,252],"neon":false,"secondary":[0,0,0],"smoke":[255,255,255],"xenon":255,"colorType":[2,2]},"mods":{"1":0,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":2,"13":2,"14":-1,"15":0,"16":-1,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":3,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheel":{"type":0},"wheelAngular":{"x":{"1":0.80080527067184,"2":-0.80080527067184,"3":0.80080527067184,"4":0.0,"5":0.0,"0":-0.80080527067184},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}}}');
INSERT INTO `entitydata` VALUES ('2:zentorno:13IOE157', '{"wheel":{"type":7},"colors":{"smoke":[255,255,255],"primary":[5,5,5],"xenon":false,"colorType":[12,88],"pearly":5,"secondary":[245,137,15],"neon":false,"wheelColor":88},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":-1,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":2,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"x":{"1":0.83312821388244,"2":-0.86032742261886,"3":0.86181008815765,"4":0.0,"5":0.0,"0":-0.83098542690277},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}}}');
INSERT INTO `entitydata` VALUES ('37:brioso3:67SUM728', '{"wheel":{"type":0},"colors":{"secondary":[246,4,182],"wheelColor":0,"primary":[205,10,169],"pearly":6,"neon":false,"smoke":[255,255,255],"xenon":false,"colorType":[68,68]},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":4,"16":-1,"18":false,"19":-1,"23":7,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"x":{"1":0.70335036516189,"2":-0.70334964990615,"3":0.70335036516189,"4":0.0,"5":0.0,"0":-0.70334964990615},"y":{"1":9.376012144457491e-7,"2":9.376012144457491e-7,"3":9.376012144457491e-7,"4":0.0,"5":0.0,"0":9.376012144457491e-7}}}');
INSERT INTO `entitydata` VALUES ('3:eclipse:20AVS400', '{"wheel":{"type":5},"colors":{"secondary":[132,1,1],"xenon":12,"flashLightColor":"#4210B4","neon":[255,255,255],"primary":[77,77,77],"pearly":6,"smoke":[255,255,255],"colorType":[2,2],"wheelColor":0},"mods":{"1":9,"2":4,"3":2,"4":3,"5":1,"6":0,"7":2,"8":-1,"10":1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":14,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":1,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":1,"95":1,"96":false},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.74982237815856,"2":-0.75263148546218,"3":0.75037193298339,"4":0.0,"5":0.0,"0":-0.75242459774017}}}');
INSERT INTO `entitydata` VALUES ('3:ferrari:06WPN655', '{"wheel":{"type":0},"colors":{"secondary":[122,0,0],"xenon":12,"flashLightColor":"#4210B4","neon":false,"primary":[110,7,7],"pearly":27,"smoke":[255,255,255],"colorType":[2,2],"wheelColor":2},"mods":{"1":2,"2":1,"3":-1,"4":0,"5":1,"6":-1,"7":2,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":false,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":1,"42":-1,"43":-1,"44":-1,"45":-1,"46":2,"48":-1,"49":-1,"0":2,"95":false,"96":false},"wheelAngular":{"y":{"1":0.00000104159119,"2":0.00000100622014,"3":0.00000100442798,"4":0.0,"5":0.0,"0":0.00000102177477},"x":{"1":0.85379463434219,"2":-0.77620142698287,"3":0.81823742389678,"4":0.0,"5":0.0,"0":-0.83347308635711}}}');
INSERT INTO `entitydata` VALUES ('3:g7cross:67DWE858', '{"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheel":{"type":8},"colors":{"neon":false,"xenon":false,"colorType":[142,25],"wheelColor":88,"primary":[0,10,10],"pearly":81,"smoke":[255,255,255],"secondary":[105,113,135]},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.76481992006301,"2":-0.80954056978225,"3":0.80947744846343,"4":0.0,"5":0.0,"0":-0.76478022336959}}}');
INSERT INTO `entitydata` VALUES ('3:phantom:39IZA584', '{"colors":{"smoke":[255,255,255],"primary":[5,5,5],"colorType":[72,0],"pearly":54,"neon":false,"wheelColor":156,"xenon":255,"secondary":[8,8,8]},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":-0.0,"0":0.0},"x":{"1":1.06111967563629,"2":-0.84817314147949,"3":0.84817314147949,"4":-0.84817314147949,"5":0.84817314147949,"0":-1.06111967563629}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"18":false,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":0,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheel":{"type":8}}');
INSERT INTO `entitydata` VALUES ('3:xreagstore:56MIW851', '{"colors":{"neon":false,"pearly":86,"secondary":[0,1,8],"primary":[255,255,255],"colorType":[141,141],"xenon":false,"smoke":[255,255,255],"wheelColor":3},"wheel":{"type":6},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":0,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":4,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":-1,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"y":{"1":-9.993449339162908e-7,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.01388120278716,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0}}}');
INSERT INTO `entitydata` VALUES ('41:calico:24YKW973', '{"wheel":{"type":5},"mods":{"1":26,"2":6,"3":23,"4":8,"5":6,"6":-1,"7":19,"8":-1,"10":10,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":-1,"18":1,"19":-1,"23":14,"24":-1,"25":-1,"27":-1,"28":-1,"29":1,"30":-1,"31":2,"32":14,"33":12,"35":0,"42":-1,"43":2,"44":-1,"45":-1,"46":1,"48":7,"49":-1,"0":21,"95":false,"96":true},"colors":{"wheelColor":15,"neon":false,"colorType":[111,111],"pearly":5,"primary":[0,0,0],"smoke":[0,0,0],"xenon":false,"secondary":[168,0,0]},"wheelAngular":{"y":{"1":9.412869985681027e-7,"2":9.412869985681027e-7,"3":9.412869985681027e-7,"4":0.0,"5":0.0,"0":9.412869985681027e-7},"x":{"1":0.73346841335296,"2":-0.73346757888793,"3":0.73346841335296,"4":0.0,"5":0.0,"0":-0.73346757888793}}}');
INSERT INTO `entitydata` VALUES ('4:pariah:78ANT406', '{"wheel":{"type":7},"wheelAngular":{"x":{"1":0.72633248567581,"2":-0.76040852069854,"3":0.76002287864685,"4":0.0,"5":0.0,"0":-0.72599095106124},"y":{"1":0.00208998634479,"2":-0.00263002654537,"3":0.00177306961268,"4":0.0,"5":0.0,"0":-0.00133098312653}},"mods":{"1":2,"2":1,"3":1,"4":-1,"5":-1,"6":-1,"7":8,"8":-1,"10":0,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":-1,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":4,"49":-1,"0":7,"95":false,"96":false},"colors":{"smoke":[255,28,0],"primary":[230,0,0],"colorType":[120,32],"wheelColor":28,"secondary":[250,0,0],"pearly":70,"xenon":false,"neon":[0,0,0]}}');
INSERT INTO `entitydata` VALUES ('4:rhinehart:48FFE426', '{"wheel":{"type":0},"wheelAngular":{"x":{"1":0.78278446197509,"2":-0.78408449888229,"3":0.78408545255661,"4":0.0,"5":0.0,"0":-0.78278350830078},"y":{"1":0.00000103660238,"2":0.00000101888281,"3":0.00000101888281,"4":0.0,"5":0.0,"0":0.00000103660238}},"mods":{"1":7,"2":4,"3":8,"4":3,"5":-1,"6":0,"7":6,"8":-1,"10":10,"11":3,"12":2,"13":2,"14":-1,"15":-1,"16":4,"18":1,"19":-1,"23":0,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":2,"48":0,"49":-1,"0":-1,"95":1,"96":true},"colors":{"smoke":[255,255,255],"primary":[6,85,254],"colorType":[0,0],"wheelColor":15,"secondary":[255,229,229],"pearly":73,"xenon":false,"neon":[41,0,255]}}');
INSERT INTO `entitydata` VALUES ('4:youga2:99EEF369', '{"wheel":{"type":8},"wheelAngular":{"x":{"1":0.8847569823265,"2":-0.90486097335815,"3":0.90486097335815,"4":0.0,"5":0.0,"0":-0.8847569823265},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":0,"15":-1,"16":-1,"18":1,"19":-1,"23":20,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":3,"49":-1,"0":0,"95":false,"96":true},"colors":{"smoke":[0,0,0],"secondary":[8,8,8],"xenon":8,"wheelColor":27,"primary":[255,20,20],"colorType":[12,68],"flashLightColor":"#F70000","pearly":4,"neon":[255,17,0]}}');
INSERT INTO `entitydata` VALUES ('8:mobm23:42XUZ696', '{"colors":{"flashLightColor":"#014FB7","pearly":0,"secondary":[6,23,70],"primary":[6,23,70],"smoke":[255,255,255],"neon":[16,0,255],"xenon":1,"wheelColor":0,"colorType":[112,112]},"wheel":{"type":7},"wheelAngular":{"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259},"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":1,"16":4,"18":1,"19":-1,"23":0,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":10,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":true}}');
INSERT INTO `entitydata` VALUES ('8:motosamu:40VIP574', '{"colors":{"flashLightColor":"#014FB7","pearly":156,"secondary":[252,252,252],"primary":[250,250,250],"smoke":[255,255,255],"neon":false,"xenon":1,"wheelColor":156,"colorType":[134,134]},"wheel":{"type":6},"wheelAngular":{"x":{"1":9.313225746154786e-10,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"y":{"1":-0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0}},"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"18":false,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":4,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":-1,"49":-1,"0":-1,"95":false,"96":false}}');
INSERT INTO `entitydata` VALUES ('9:mobm23:86QXD044', '{"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":-1,"15":3,"16":4,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":11,"42":-1,"43":-1,"44":-1,"45":-1,"46":1,"48":-1,"49":-1,"0":-1,"95":false,"96":true},"wheelAngular":{"y":{"1":0.0,"2":0.0,"3":0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.85476779937744,"2":-0.84757369756698,"3":0.84365981817245,"4":0.0,"5":0.0,"0":-0.85894501209259}},"wheel":{"type":3},"colors":{"wheelColor":54,"xenon":2,"smoke":[255,255,255],"neon":[0,231,255],"pearly":42,"colorType":[112,112],"secondary":[26,113,130],"primary":[26,113,130],"flashLightColor":"#006B92"}}');
INSERT INTO `entitydata` VALUES ('9:youga2:51WMH387', '{"wheel":{"type":1},"colors":{"pearly":4,"primary":[207,192,165],"colorType":[107,68],"smoke":[255,255,255],"neon":false,"wheelColor":112,"xenon":false,"secondary":[179,20,20]},"mods":{"1":-1,"2":-1,"3":0,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"10":-1,"11":3,"12":2,"13":2,"14":4,"15":3,"16":4,"18":1,"19":-1,"23":-1,"24":-1,"25":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"35":0,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"48":6,"49":-1,"0":-1,"95":false,"96":false},"wheelAngular":{"y":{"1":-0.0,"2":0.0,"3":-0.0,"4":0.0,"5":0.0,"0":0.0},"x":{"1":0.8847569823265,"2":-0.90486097335815,"3":0.90486097335815,"4":0.0,"5":0.0,"0":-0.8847569823265}}}');
INSERT INTO `entitydata` VALUES ('Chest:AutoExotic', '{"1":{"item":"lead","amount":40},"11":{"item":"techtrash","amount":1},"12":{"item":"vape-1741998739","amount":1},"22":{"item":"backpackg","amount":1},"4":{"item":"metalscrap","amount":41},"17":{"item":"rope-1742163121","amount":1},"19":{"item":"receipt-16-1742183338-500-pintura","amount":1},"26":{"item":"sushi-1742105976","amount":7},"8":{"item":"rubber","amount":30},"7":{"item":"glass","amount":74},"6":{"item":"plastic","amount":251},"23":{"item":"backpackp","amount":1},"13":{"item":"vape-1741998739","amount":1},"16":{"item":"paymentterminal-1742000932","amount":1},"21":{"item":"dmvdocs-16-{\"1\":\"A\"}-[]-[]","amount":1},"9":{"item":"sulfuric","amount":3},"18":{"item":"dollars2","amount":30000},"14":{"item":"aluminum","amount":4},"2":{"item":"ironfragment","amount":46},"3":{"item":"aluminum","amount":13}}');
INSERT INTO `entitydata` VALUES ('Chest:Ballas', '{"6":{"item":"c4","amount":1},"11":{"item":"rope-1742148636","amount":1}}');
INSERT INTO `entitydata` VALUES ('Chest:KoiShui', '{"1":{"item":"foodingredient-1741998616","amount":1},"2":{"item":"foodingredient-1741998634","amount":1},"7":{"item":"codfish","amount":1},"8":{"item":"horsefish","amount":191},"6":{"item":"shrimp","amount":1}}');
INSERT INTO `entitydata` VALUES ('Chest:KoiSushi', '{"47":{"item":"orange","amount":4},"4":{"item":"orange","amount":10},"6":{"item":"tange","amount":10},"1":{"item":"orange","amount":10},"2":{"item":"orange","amount":10},"50":{"item":"horsefish","amount":1},"13":{"item":"acerola","amount":10},"14":{"amount":8,"item":"foodingredient-1742865639"},"7":{"item":"tange","amount":10},"45":{"item":"goldenfish","amount":2},"12":{"item":"acerola","amount":10},"11":{"item":"acerola","amount":10},"26":{"item":"fishfillet","amount":152},"3":{"item":"orange","amount":10},"9":{"item":"tange","amount":10},"8":{"item":"tange","amount":10},"46":{"item":"acerola","amount":6},"48":{"item":"tange","amount":1},"10":{"item":"tange","amount":10}}');
INSERT INTO `entitydata` VALUES ('Chest:Paramedic', '{"3":{"amount":97,"item":"radio-1742091686"},"2":{"amount":99,"item":"cellphone-1742091653"},"1":{"amount":98,"item":"rope-1742091670"},"4":{"amount":100,"item":"GADGET_PARACHUTE"}}');
INSERT INTO `entitydata` VALUES ('Chest:Prf', '{"29":{"amount":1,"item":"WEAPON_SCARH-1742512287-TD41VV"},"28":{"amount":87,"item":"AMMO_9"},"27":{"amount":150,"item":"AMMO_556"},"26":{"amount":1,"item":"WEAPON_AK74-1742223939"},"10":{"amount":400,"item":"AMMO_45"},"24":{"amount":97312,"item":"dollars2"},"14":{"amount":3,"item":"explosives"},"15":{"amount":1,"item":"WEAPON_AK47-1742051154"},"16":{"amount":1,"item":"WEAPON_MP9-1742223939"},"21":{"amount":50,"item":"AMMO_762"},"22":{"amount":1,"item":"WEAPON_PETROLCAN-55U6Z3"},"18":{"amount":1,"item":"WEAPON_AK47-1742310351"},"20":{"amount":48,"item":"meth"},"8":{"amount":293,"item":"AMMO_762"},"7":{"amount":250,"item":"AMMO_556"},"1":{"amount":1,"item":"WEAPON_M70-1742093192"},"9":{"amount":16,"item":"meth"},"4":{"amount":1,"item":"WEAPON_AK74-1742242061"},"3":{"amount":1,"item":"WEAPON_MP9-1742242061"},"6":{"amount":200,"item":"AMMO_45"},"5":{"amount":1,"item":"WEAPON_AKS74-1742093192"},"2":{"amount":1,"item":"WEAPON_MP9-1742093192"},"17":{"amount":1,"item":"WEAPON_MAC10-1742223939"},"25":{"amount":100,"item":"AMMO_556"},"11":{"amount":57,"item":"AMMO_9"},"23":{"amount":2,"item":"WEAPON_PETROLCAN_AMMO"},"19":{"amount":1,"item":"WEAPON_MACHETE-1742192422"},"12":{"amount":1,"item":"WEAPON_MP9-1741977853"},"13":{"amount":1,"item":"WEAPON_MP9-1742223939"}}');
INSERT INTO `entitydata` VALUES ('Glove:01LNZ369', '[]');
INSERT INTO `entitydata` VALUES ('Glove:02UMD745', '{"1":{"item":"WEAPON_M1911-1742337332","amount":2}}');
INSERT INTO `entitydata` VALUES ('Glove:02XFF628', '[]');
INSERT INTO `entitydata` VALUES ('Glove:03OXT957', '[]');
INSERT INTO `entitydata` VALUES ('Glove:04ABP192', '[]');
INSERT INTO `entitydata` VALUES ('Glove:05IYX009', '[]');
INSERT INTO `entitydata` VALUES ('Glove:05NCF597', '[]');
INSERT INTO `entitydata` VALUES ('Glove:06MYQ846', '[]');
INSERT INTO `entitydata` VALUES ('Glove:06UZF111', '[]');
INSERT INTO `entitydata` VALUES ('Glove:06WPN655', '[]');
INSERT INTO `entitydata` VALUES ('Glove:08DFB500', '[]');
INSERT INTO `entitydata` VALUES ('Glove:08VKA226', '[]');
INSERT INTO `entitydata` VALUES ('Glove:09EAB575', '[]');
INSERT INTO `entitydata` VALUES ('Glove:09GZQ205', '[]');
INSERT INTO `entitydata` VALUES ('Glove:09XLI457', '{"2":{"amount":17,"item":"apple"},"3":{"amount":22,"item":"guarana"}}');
INSERT INTO `entitydata` VALUES ('Glove:11EAR273', '[]');
INSERT INTO `entitydata` VALUES ('Glove:13IOE157', '[]');
INSERT INTO `entitydata` VALUES ('Glove:14DLX995', '[]');
INSERT INTO `entitydata` VALUES ('Glove:16ZPL356', '[]');
INSERT INTO `entitydata` VALUES ('Glove:19IIZ290', '[]');
INSERT INTO `entitydata` VALUES ('Glove:20AVS400', '[]');
INSERT INTO `entitydata` VALUES ('Glove:21DXW500', '[]');
INSERT INTO `entitydata` VALUES ('Glove:21KEG264', '[]');
INSERT INTO `entitydata` VALUES ('Glove:21TLT992', '[]');
INSERT INTO `entitydata` VALUES ('Glove:22XVD493', '[]');
INSERT INTO `entitydata` VALUES ('Glove:30KHH665', '[]');
INSERT INTO `entitydata` VALUES ('Glove:31LGI636', '[]');
INSERT INTO `entitydata` VALUES ('Glove:34GHK363', '[]');
INSERT INTO `entitydata` VALUES ('Glove:34NLK307', '[]');
INSERT INTO `entitydata` VALUES ('Glove:34YGH662', '{"1":{"amount":1,"item":"c4"}}');
INSERT INTO `entitydata` VALUES ('Glove:38AQM461', '[]');
INSERT INTO `entitydata` VALUES ('Glove:39IZA584', '[]');
INSERT INTO `entitydata` VALUES ('Glove:40LYV010', '{"3":{"item":"gauze","amount":5},"4":{"item":"identity-23","amount":1},"5":{"item":"driverlicense-23-{\"issued\":1742196547,\"categories\":{\"1\":\"A\",\"2\":\"B\"},\"expiration\":1744824547,\"name\":\"Rosa Original\"}","amount":1}}');
INSERT INTO `entitydata` VALUES ('Glove:40VIP574', '[]');
INSERT INTO `entitydata` VALUES ('Glove:42CLJ651', '[]');
INSERT INTO `entitydata` VALUES ('Glove:42IGS497', '[]');
INSERT INTO `entitydata` VALUES ('Glove:42XUZ696', '{"1":{"item":"plasticbottle","amount":3}}');
INSERT INTO `entitydata` VALUES ('Glove:43SWY454', '{}');
INSERT INTO `entitydata` VALUES ('Glove:43ZQJ508', '[]');
INSERT INTO `entitydata` VALUES ('Glove:44BTU776', '[]');
INSERT INTO `entitydata` VALUES ('Glove:44ZCA911', '[]');
INSERT INTO `entitydata` VALUES ('Glove:47IKP237', '{"1":{"amount":1,"item":"pager"}}');
INSERT INTO `entitydata` VALUES ('Glove:47JOV367', '[]');
INSERT INTO `entitydata` VALUES ('Glove:49JXF212', '[]');
INSERT INTO `entitydata` VALUES ('Glove:49MQN388', '{"1":{"item":"dollars2","amount":10210}}');
INSERT INTO `entitydata` VALUES ('Glove:50HMO762', '[]');
INSERT INTO `entitydata` VALUES ('Glove:51WMH387', '[]');
INSERT INTO `entitydata` VALUES ('Glove:52KBY676', '[]');
INSERT INTO `entitydata` VALUES ('Glove:52VYL208', '{}');
INSERT INTO `entitydata` VALUES ('Glove:53XZU428', '[]');
INSERT INTO `entitydata` VALUES ('Glove:53YRU740', '[]');
INSERT INTO `entitydata` VALUES ('Glove:55KRP682', '[]');
INSERT INTO `entitydata` VALUES ('Glove:56IVL050', '[]');
INSERT INTO `entitydata` VALUES ('Glove:58CBV216', '[]');
INSERT INTO `entitydata` VALUES ('Glove:61INU456', '[]');
INSERT INTO `entitydata` VALUES ('Glove:65SKG467', '[]');
INSERT INTO `entitydata` VALUES ('Glove:68BPK026', '[]');
INSERT INTO `entitydata` VALUES ('Glove:68HFW428', '[]');
INSERT INTO `entitydata` VALUES ('Glove:69TPN413', '[]');
INSERT INTO `entitydata` VALUES ('Glove:71FBK611', '{"1":{"item":"gauze","amount":20}}');
INSERT INTO `entitydata` VALUES ('Glove:72OYB650', '{}');
INSERT INTO `entitydata` VALUES ('Glove:74TKX128', '[]');
INSERT INTO `entitydata` VALUES ('Glove:77LAI072', '[]');
INSERT INTO `entitydata` VALUES ('Glove:77NDJ421', '[]');
INSERT INTO `entitydata` VALUES ('Glove:77UFT871', '[]');
INSERT INTO `entitydata` VALUES ('Glove:78ANT406', '[]');
INSERT INTO `entitydata` VALUES ('Glove:78UOD618', '[]');
INSERT INTO `entitydata` VALUES ('Glove:81LNF336', '{}');
INSERT INTO `entitydata` VALUES ('Glove:81ZOE119', '[]');
INSERT INTO `entitydata` VALUES ('Glove:82WKC278', '[]');
INSERT INTO `entitydata` VALUES ('Glove:84ACP398', '[]');
INSERT INTO `entitydata` VALUES ('Glove:85XPO898', '[]');
INSERT INTO `entitydata` VALUES ('Glove:86QXD044', '{"4":{"item":"WEAPON_WRENCH-1742449274","amount":1},"5":{"item":"WEAPON_CROWBAR-1742342820","amount":1},"2":{"item":"driverlicense-9-{\"expiration\":1744823482,\"categories\":{\"2\":\"B\",\"1\":\"A\"},\"name\":\"Sertaneijo Silva\",\"issued\":1742195482}","amount":1},"1":{"item":"identity-9","amount":1}}');
INSERT INTO `entitydata` VALUES ('Glove:89OAH086', '[]');
INSERT INTO `entitydata` VALUES ('Glove:94EQO760', '{"1":{"amount":1,"item":"barrier"}}');
INSERT INTO `entitydata` VALUES ('Glove:95CCH590', '[]');
INSERT INTO `entitydata` VALUES ('Glove:96KWQ540', '[]');
INSERT INTO `entitydata` VALUES ('Glove:99LYT962', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH10001', '{"2":{"item":"WEAPON_PETROLCAN_AMMO","amount":4499}}');
INSERT INTO `entitydata` VALUES ('Glove:VEH10002', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH10003', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH10015', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH10024', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH10041', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH16089', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH21682', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH30842', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH40299', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH41246', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH41516', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH59775', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH74407', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH79985', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH83030', '[]');
INSERT INTO `entitydata` VALUES ('Glove:VEH85783', '[]');
INSERT INTO `entitydata` VALUES ('Outfit:1', '{"glass":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"tshirt":{"item":15,"texture":0},"shoes":{"item":145,"texture":2},"pants":{"item":210,"texture":2},"decals":{"item":-1,"texture":0},"torso":{"item":566,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"mask":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"accessory":{"item":12,"texture":0},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:10', '{"bracelet":{"texture":0,"item":8},"pants":{"texture":22,"item":88},"vest":{"texture":0,"item":56},"arms":{"texture":0,"item":0},"torso":{"texture":3,"item":560},"mask":{"texture":2,"item":111},"tshirt":{"texture":0,"item":15},"hat":{"texture":1,"item":10},"glass":{"texture":9,"item":56},"watch":{"texture":0,"item":4},"backpack":{"texture":0,"item":0},"accessory":{"texture":0,"item":241},"ear":{"texture":0,"item":44},"shoes":{"texture":0,"item":34},"decals":{"texture":0,"item":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:11', '{"watch":{"texture":0,"item":10},"shoes":{"texture":3,"item":64},"hat":{"texture":0,"item":-1},"glass":{"texture":0,"item":3},"pants":{"texture":3,"item":55},"backpack":{"texture":0,"item":0},"bracelet":{"texture":3,"item":11},"decals":{"texture":0,"item":0},"accessory":{"texture":0,"item":163},"mask":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15},"arms":{"texture":0,"item":0},"torso":{"texture":0,"item":620}}');
INSERT INTO `entitydata` VALUES ('Outfit:12', '{"pants":{"item":273,"texture":0},"accessory":{"item":215,"texture":1},"decals":{"item":0,"texture":0},"glass":{"item":-1,"texture":0},"shoes":{"item":103,"texture":0},"watch":{"item":-1,"texture":0},"arms":{"item":101,"texture":1},"torso":{"item":773,"texture":0},"vest":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"tshirt":{"item":38,"texture":0},"backpack":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:18', '{"bracelet":{"texture":0,"item":1},"accessory":{"texture":0,"item":189},"vest":{"texture":0,"item":0},"torso":{"texture":1,"item":141},"arms":{"texture":0,"item":0},"mask":{"texture":4,"item":169},"tshirt":{"texture":0,"item":15},"hat":{"texture":0,"item":-1},"glass":{"texture":0,"item":19},"watch":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"pants":{"texture":0,"item":54},"ear":{"texture":0,"item":-1},"shoes":{"texture":0,"item":34},"decals":{"texture":0,"item":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:2', '{"glass":{"item":35,"texture":0},"ear":{"item":44,"texture":0},"watch":{"item":20,"texture":0},"tshirt":{"item":15,"texture":0},"shoes":{"item":154,"texture":2},"torso":{"item":596,"texture":0},"decals":{"item":0,"texture":0},"pants":{"item":232,"texture":0},"vest":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"accessory":{"item":218,"texture":1},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:21', '{"bracelet":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"arms":{"item":102,"texture":9},"torso":{"item":568,"texture":3},"mask":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"watch":{"item":-1,"texture":0},"glass":{"item":23,"texture":8},"pants":{"item":134,"texture":0},"backpack":{"item":58,"texture":9},"accessory":{"item":207,"texture":2},"ear":{"item":2,"texture":0},"shoes":{"item":156,"texture":0},"decals":{"item":0,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:23', '{"glass":{"item":41,"texture":0},"ear":{"item":15,"texture":0},"watch":{"item":10,"texture":0},"tshirt":{"item":10,"texture":0},"shoes":{"item":5,"texture":0},"pants":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"torso":{"item":524,"texture":1},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"arms":{"item":9,"texture":0},"accessory":{"item":0,"texture":0},"bracelet":{"item":15,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:24', '{"vest":{"texture":0,"item":0},"torso":{"texture":0,"item":605},"accessory":{"texture":0,"item":0},"pants":{"texture":3,"item":147},"glass":{"texture":3,"item":15},"tshirt":{"texture":0,"item":106},"bracelet":{"texture":0,"item":-1},"watch":{"texture":0,"item":-1},"ear":{"texture":0,"item":42},"arms":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"shoes":{"texture":2,"item":31},"hat":{"texture":0,"item":241},"backpack":{"texture":0,"item":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:29', '{"watch":{"texture":0,"item":-1},"accessory":{"texture":1,"item":215},"hat":{"texture":0,"item":45},"glass":{"texture":1,"item":36},"pants":{"texture":0,"item":273},"backpack":{"texture":0,"item":0},"tshirt":{"texture":0,"item":38},"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"shoes":{"texture":3,"item":162},"vest":{"texture":0,"item":0},"arms":{"texture":1,"item":101},"torso":{"texture":0,"item":773}}');
INSERT INTO `entitydata` VALUES ('Outfit:3', '{"pants":{"item":17,"texture":5},"vest":{"item":1,"texture":0},"tshirt":{"item":215,"texture":3},"bracelet":{"item":-1,"texture":0},"shoes":{"item":168,"texture":0},"arms":{"item":190,"texture":0},"backpack":{"item":0,"texture":0},"accessory":{"item":15,"texture":0},"watch":{"item":18,"texture":1},"torso":{"item":15,"texture":0},"decals":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"ear":{"item":39,"texture":0},"glass":{"item":56,"texture":5}}');
INSERT INTO `entitydata` VALUES ('Outfit:37', '{"decals":{"item":213,"texture":0},"pants":{"item":17,"texture":0},"torso":{"item":677,"texture":6},"tshirt":{"item":262,"texture":0},"watch":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"vest":{"item":68,"texture":2},"backpack":{"item":122,"texture":4},"shoes":{"item":35,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"arms":{"item":280,"texture":0},"glass":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"accessory":{"item":0,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:4', '{"arms":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"torso":{"texture":6,"item":555},"bracelet":{"texture":0,"item":-1},"shoes":{"texture":6,"item":154},"tshirt":{"texture":0,"item":15},"pants":{"texture":0,"item":24},"hat":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"watch":{"texture":1,"item":20},"decals":{"texture":7,"item":209},"vest":{"texture":0,"item":0},"glass":{"texture":0,"item":35},"ear":{"texture":0,"item":-1},"accessory":{"texture":1,"item":218}}');
INSERT INTO `entitydata` VALUES ('Outfit:40', '{"arms":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"pants":{"item":15,"texture":10},"torso":{"item":0,"texture":5},"shoes":{"item":34,"texture":0},"hat":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"vest":{"item":11,"texture":4},"mask":{"item":121,"texture":0},"glass":{"item":67,"texture":4},"ear":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"bracelet":{"item":14,"texture":0},"watch":{"item":8,"texture":0},"decals":{"item":0,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:42', '{"torso":{"item":261,"texture":0},"accessory":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":1,"texture":0},"mask":{"item":0,"texture":0},"shoes":{"item":5,"texture":0},"bracelet":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"pants":{"item":6,"texture":0},"tshirt":{"item":15,"texture":0},"glass":{"item":-1,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:5', '{"torso":{"texture":0,"item":15},"accessory":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"arms":{"texture":0,"item":15},"mask":{"texture":0,"item":0},"shoes":{"texture":0,"item":5},"hat":{"texture":0,"item":-1},"bracelet":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"decals":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"pants":{"texture":0,"item":14},"tshirt":{"texture":0,"item":15},"glass":{"texture":0,"item":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:8', '{"arms":{"item":4,"texture":0},"tshirt":{"item":22,"texture":0},"glass":{"item":18,"texture":5},"torso":{"item":120,"texture":6},"shoes":{"item":20,"texture":0},"hat":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"vest":{"item":64,"texture":0},"accessory":{"item":27,"texture":14},"mask":{"item":0,"texture":0},"ear":{"item":32,"texture":0},"watch":{"item":10,"texture":1},"bracelet":{"item":-1,"texture":0},"pants":{"item":37,"texture":2},"backpack":{"item":0,"texture":0}}');
INSERT INTO `entitydata` VALUES ('Outfit:9', '{"tshirt":{"texture":0,"item":15},"shoes":{"texture":4,"item":145},"arms":{"texture":0,"item":15},"ear":{"texture":1,"item":4},"vest":{"texture":0,"item":-1},"bracelet":{"texture":0,"item":-1},"accessory":{"texture":0,"item":163},"glass":{"texture":1,"item":51},"pants":{"texture":1,"item":129},"mask":{"texture":0,"item":-1},"watch":{"texture":0,"item":12},"torso":{"texture":19,"item":594},"decals":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"hat":{"texture":0,"item":-1}}');
INSERT INTO `entitydata` VALUES ('Permissions:Admin', '{"3":1,"15":1,"2":1,"41":1,"7":1,"1":1,"22":1,"24":1}');
INSERT INTO `entitydata` VALUES ('Permissions:AutoExotic', '{"43":3,"16":1,"20":2,"1":1,"21":2,"23":1}');
INSERT INTO `entitydata` VALUES ('Permissions:AutoSport', '{"1":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Avalanches', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Bahamas', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Ballas', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Bennys', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Bratva', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Bronze', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Buff', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Callisto', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:CentralCustoms', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Cinema', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:DigitalDen', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:dismantled', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:DKing', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Emergency', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Fabricadebico', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:FastFood', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Favela', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Grove', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Judiciary', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:KoiShui', '{"1":1,"4":1,"3":1}');
INSERT INTO `entitydata` VALUES ('Permissions:KoiSushi', '{"4":1,"26":3,"1":1,"23":2}');
INSERT INTO `entitydata` VALUES ('Permissions:Mafia', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Magnata', '{"1":1,"2":1,"3":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Mansao01', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Mansao02', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Mechanic', '{"16":1}');
INSERT INTO `entitydata` VALUES ('Permissions:mqcu.permissao', '[]');
INSERT INTO `entitydata` VALUES ('Permissions:MrAlphaca', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Ouro', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Paramedic', '{"1":11,"29":8,"8":12,"37":7,"9":11,"12":10}');
INSERT INTO `entitydata` VALUES ('Permissions:Platina', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:Playboy', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:player.noclip', '[]');
INSERT INTO `entitydata` VALUES ('Permissions:player.secret', '[]');
INSERT INTO `entitydata` VALUES ('Permissions:player.som', '{"16":1,"1":1,"20":1,"21":1,"2":1,"3":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Police', '{"17":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Policia', '{"4":1,"2":1,"17":1}');
INSERT INTO `entitydata` VALUES ('Permissions:PoliciaCivil', '{"4":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Prata', '{"20":1,"21":1,"16":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Premium', '{"15":0}');
INSERT INTO `entitydata` VALUES ('Permissions:Prf', '{"33":4,"5":1,"11":1,"1":1,"46":6}');
INSERT INTO `entitydata` VALUES ('Permissions:RepublicaTcheca', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:staff', '{}');
INSERT INTO `entitydata` VALUES ('Permissions:TropadaBelgica', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Vagos', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Permissions:Vanilla', '{"7":1}');
INSERT INTO `entitydata` VALUES ('Premiumfit:1', '[]');
INSERT INTO `entitydata` VALUES ('Remap:0', '{"tractioncurvelateral":21.0,"lowspeedtractionlossmult":1.0,"tractioncurvemin":1.60000002384185,"tractioncurvemax":1.0,"steeringlock":60.09999465942383,"driveinertia":2.0,"drivebiasfront":0.0,"initialdragcoeff":1.0}');
INSERT INTO `entitydata` VALUES ('Trunk:01MOH451', '{"1":{"item":"tyres","amount":2},"5":{"item":"WEAPON_POOLCUE-1742281125","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:02GFX087', '{}');
INSERT INTO `entitydata` VALUES ('Trunk:02UMD745', '{"6":{"item":"WEAPON_AK47-1742160246","amount":1},"5":{"item":"ammo9box-L7S6J8B7L5","amount":1},"8":{"item":"plastic","amount":111},"7":{"item":"AMMO_9","amount":200},"2":{"item":"sheetmetal","amount":5},"1":{"item":"WEAPON_MAC10-1742051154","amount":2},"3":{"item":"aluminum","amount":24},"17":{"item":"AMMO_9","amount":70},"16":{"item":"WEAPON_M1911-1742160246","amount":1},"11":{"item":"WEAPON_MAC10-1742160246","amount":1},"12":{"item":"AMMO_45","amount":200},"21":{"item":"card04-1742248426","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:05IYX009', '{"3":{"amount":1,"item":"binoculars"},"6":{"amount":1,"item":"dmvdocs-5-{\"2\":\"B\",\"1\":\"A\",\"4\":\"D\",\"3\":\"C\"}-[]-[]"},"1":{"amount":1,"item":"paymentterminal-1742000399"},"4":{"amount":1,"item":"sushi-1742255243"}}');
INSERT INTO `entitydata` VALUES ('Trunk:06UZF111', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:09EAB575', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:09XLI457', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:20AVS400', '{}');
INSERT INTO `entitydata` VALUES ('Trunk:21CDD868', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:21KEG264', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:25ZZT020', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:38AQM461', '{}');
INSERT INTO `entitydata` VALUES ('Trunk:39IZA584', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:40LYV010', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:42IGS497', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:42XUZ696', '{"6":{"amount":1,"item":"lighter-1742150354"},"7":{"amount":1,"item":"WEAPON_CROWBAR-1742102970"},"8":{"amount":1,"item":"WEAPON_WRENCH-1742102998"},"1":{"item":"plasticbottle","amount":2},"2":{"amount":1,"item":"WEAPON_BATTLEAXE-1742102946"},"3":{"amount":4500,"item":"WEAPON_PETROLCAN_AMMO"},"4":{"amount":1,"item":"medkit"}}');
INSERT INTO `entitydata` VALUES ('Trunk:44BTU776', '{"5":{"amount":4,"item":"screen"},"6":{"amount":2,"item":"battery"},"7":{"amount":3,"item":"cellbattery"},"8":{"amount":2,"item":"plasticbottle"},"1":{"amount":3,"item":"elastic"},"2":{"amount":3,"item":"WEAPON_BOTTLE"},"3":{"amount":2,"item":"carbattery"},"4":{"amount":4,"item":"pile"}}');
INSERT INTO `entitydata` VALUES ('Trunk:48FFE426', '{"3":{"item":"foodingredient-1742481425","amount":1},"2":{"item":"foodingredient-1742481419","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:50HMO762', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:51WMH387', '{"10":{"item":"WEAPON_UZI-1742310351","amount":1},"1":{"item":"WEAPON_MP5-1742310351","amount":1},"15":{"item":"WEAPON_MP9-1742223939","amount":1},"3":{"item":"WEAPON_MP9-1742310351","amount":1},"2":{"item":"WEAPON_M70-1742310351","amount":1},"5":{"item":"dollars2","amount":31976},"4":{"item":"WEAPON_AKS74-1742268513","amount":1},"7":{"item":"AMMO_762","amount":100},"6":{"item":"AMMO_45","amount":200},"9":{"item":"oxy","amount":3},"8":{"item":"WEAPON_MAC10-1742310351","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:52KBY676', '{"4":{"item":"dollars","amount":93},"6":{"item":"plasticbottle","amount":13},"1":{"item":"WEAPON_PETROLCAN-K8KV02","amount":1},"3":{"item":"dollars2","amount":4833},"2":{"item":"tyres","amount":2}}');
INSERT INTO `entitydata` VALUES ('Trunk:53XZU428', '{"17":{"amount":1,"item":"fishingrod-1742404547"}}');
INSERT INTO `entitydata` VALUES ('Trunk:59ZCK535', '{"6":{"item":"backpackg","amount":1},"1":{"item":"analgesic","amount":57},"11":{"item":"dmvdocs-8-{\"2\":\"B\"}-[]-[]","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:61ZNY671', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:69TPN413', '{"1":{"amount":1,"item":"WEAPON_AK47-1742164581-JVTW42"},"2":{"amount":489,"item":"AMMO_762"}}');
INSERT INTO `entitydata` VALUES ('Trunk:71FBK611', '{"19":{"amount":1,"item":"cellphone-1741976242"},"15":{"amount":1,"item":"suitcase-I1Y5V9O4Q3","data":{"1":{"amount":19096,"item":"dollars2"}}},"16":{"amount":1,"item":"rope-1742091670"},"17":{"amount":1,"item":"WEAPON_STUNGUN-1742098195"},"11":{"amount":1,"item":"WEAPON_MP9-1742160246"},"1":{"amount":1,"item":"WEAPON_M70-1742337332"},"2":{"amount":1,"item":"WEAPON_M70-1742051154"},"3":{"amount":3,"item":"bandage"},"10":{"amount":290,"item":"AMMO_45"},"20":{"amount":2,"item":"sheetmetal"},"14":{"amount":1,"item":"adrenaline"},"13":{"amount":1,"item":"WEAPON_MP9-1742160246"},"12":{"amount":1,"item":"WEAPON_M1911-1741977853"},"22":{"amount":2,"item":"handcuff-1742096976"},"7":{"amount":1,"item":"WEAPON_AK47-1742051154"},"6":{"amount":1,"item":"WEAPON_MP9-1742160246"},"5":{"amount":250991,"item":"dollars2"},"21":{"amount":1,"item":"WEAPON_UZI-1741977853"},"18":{"amount":1,"item":"rope-1742090406"}}');
INSERT INTO `entitydata` VALUES ('Trunk:72VOV540', '{"6":{"amount":6,"item":"fries-1742257229"},"7":{"amount":4,"item":"grapejuice-1742257208"},"11":{"amount":3,"item":"chickenfries-1742257240"},"1":{"amount":1924,"item":"WEAPON_PETROLCAN_AMMO"},"2":{"amount":1,"item":"orangejuice-1742257214"},"12":{"amount":10,"item":"cola-1742257351"}}');
INSERT INTO `entitydata` VALUES ('Trunk:78ANT406', '{}');
INSERT INTO `entitydata` VALUES ('Trunk:81LNF336', '{}');
INSERT INTO `entitydata` VALUES ('Trunk:85XPO898', '{"7":{"amount":1,"item":"creditcard-16"},"13":{"amount":1,"item":"WEAPON_AK47-1742400238"},"12":{"amount":1,"item":"WEAPON_MP5-1742400238"},"18":{"amount":100,"item":"AMMO_762"},"1":{"amount":12,"item":"meth"},"2":{"amount":12,"item":"analgesic"},"3":{"amount":12,"item":"gauze"},"17":{"amount":100,"item":"AMMO_45"}}');
INSERT INTO `entitydata` VALUES ('Trunk:86QXD044', '{"1":{"item":"WEAPON_PETROLCAN_AMMO","amount":6198},"2":{"item":"WEAPON_PETROLCAN-FUS2M0","amount":1},"4":{"item":"goldcoin","amount":10},"5":{"item":"nintendo","amount":1},"6":{"item":"card04-1742198849","amount":1},"7":{"item":"card02-1742280276","amount":1},"8":{"item":"driverlicense-9-{\"issued\":1742195482,\"categories\":{\"1\":\"A\"},\"expiration\":1744823482,\"name\":\"Sertaneijo Silva\"}","amount":1},"9":{"item":"gauze","amount":13},"14":{"item":"WEAPON_SWITCHBLADE-1742343141","amount":1},"15":{"item":"adrenaline","amount":1},"19":{"item":"syringe","amount":4},"18":{"item":"bait","amount":6},"21":{"item":"plasticbottle","amount":26},"20":{"item":"WEAPON_WRENCH-1742448398","amount":1},"17":{"item":"fishingrod-1742321907","amount":1},"16":{"item":"dollars2","amount":50000},"11":{"item":"card04-1742356778","amount":1},"10":{"item":"analgesic","amount":12},"13":{"item":"treasurebox","amount":1},"12":{"item":"card05-1742343018","amount":1}}');
INSERT INTO `entitydata` VALUES ('Trunk:96KWQ540', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:98QQW167', '{"3":{"item":"WEAPON_AK74-1742268513","amount":1},"4":{"item":"WEAPON_M1911-1742610494-4J76M6","amount":1},"5":{"item":"WEAPON_BAT-1742017543","amount":1},"6":{"item":"AMMO_45","amount":700},"12":{"item":"meth","amount":34},"10":{"item":"vape-1742602802","amount":1},"1":{"item":"WEAPON_AKS74-1742425491","amount":1},"2":{"item":"WEAPON_AKS74-1742223939","amount":1},"15":{"amount":1,"item":"WEAPON_UZI-1742906558"},"16":{"item":"dollars2","amount":11104},"13":{"item":"rottweiler","amount":1},"14":{"amount":1,"item":"WEAPON_UZI-1742906558"},"7":{"item":"AMMO_9","amount":593},"8":{"item":"AMMO_762","amount":20},"9":{"item":"handcuff-1742110077","amount":1},"11":{"item":"analgesic","amount":63}}');
INSERT INTO `entitydata` VALUES ('Trunk:99EEF369', '{"8":{"item":"tilapia","amount":15},"7":{"item":"pacu","amount":10},"3":{"item":"codfish","amount":5},"6":{"item":"goldenfish","amount":5},"13":{"item":"octopus","amount":5},"11":{"item":"carp","amount":5},"12":{"item":"tambaqui","amount":15},"2":{"item":"carp","amount":10},"1":{"item":"treasurebox","amount":7}}');
INSERT INTO `entitydata` VALUES ('Trunk:VEH10015', '[]');
INSERT INTO `entitydata` VALUES ('Trunk:VEH10041', '[]');
INSERT INTO `entitydata` VALUES ('Warehouse:14', '{"1":{"item":"plasticbottle","amount":1}}');

DROP TABLE IF EXISTS `fidentity`;
CREATE TABLE `fidentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `name2` varchar(50) NOT NULL DEFAULT '',
  `port` int(1) NOT NULL DEFAULT 1,
  `blood` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `fines`;
CREATE TABLE `fines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Hour` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Message` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `fines` VALUES ('1', '23', 'Rosa Original', '2025-03-19', '23:23:15', '10000', 'Usar o veiculo em Cod 5');

DROP TABLE IF EXISTS `gas_station_balance`;
CREATE TABLE `gas_station_balance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gas_station_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `gas_station_business`;
CREATE TABLE `gas_station_business` (
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT 0,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `stock_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_earned` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_spent` int(10) unsigned NOT NULL DEFAULT 0,
  `gas_bought` int(10) unsigned NOT NULL DEFAULT 0,
  `gas_sold` int(10) unsigned NOT NULL DEFAULT 0,
  `distance_traveled` double unsigned NOT NULL DEFAULT 0,
  `total_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `customers` int(10) unsigned NOT NULL DEFAULT 0,
  `timer` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gas_station_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `gas_station_jobs`;
CREATE TABLE `gas_station_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `groups_anuncios`;
CREATE TABLE `groups_anuncios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `passaporte` int(11) NOT NULL,
  `color` varchar(7) NOT NULL,
  `data` datetime NOT NULL,
  `mensagem` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `groups_anuncios` VALUES ('1', 'Staff', 'Eduardo Silva', '1', '#295CDE', 'Invalid Date', 'teste');
INSERT INTO `groups_anuncios` VALUES ('2', 'Staff', 'Eduardo Silva', '1', '#295CDE', 'Invalid Date', 'test');

DROP TABLE IF EXISTS `groups_chat`;
CREATE TABLE `groups_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `passaporte` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `mensagem` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `groups_chat` VALUES ('1', 'Staff', 'Eduardo Silva', '1', 'Invalid Date', 'teste');
INSERT INTO `groups_chat` VALUES ('2', 'Staff', 'Eduardo Silva', '1', 'Invalid Date', 'teste');

DROP TABLE IF EXISTS `groups_empresas`;
CREATE TABLE `groups_empresas` (
  `empresa` varchar(255) NOT NULL,
  `banco` int(11) NOT NULL DEFAULT 0,
  `avisos` int(11) NOT NULL DEFAULT 0,
  `vendas` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `groups_empresas` VALUES ('Staff', '0', '0', '0');

DROP TABLE IF EXISTS `groups_perfil`;
CREATE TABLE `groups_perfil` (
  `user_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL DEFAULT 'Nenhum',
  `groupSetado` varchar(255) NOT NULL DEFAULT 'Nenhum',
  `img` varchar(255) NOT NULL,
  `login` int(11) NOT NULL,
  `discordid` varchar(255) NOT NULL,
  `contratante` varchar(255) NOT NULL DEFAULT 'Sistema',
  `blacklist` text DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `groups_perfil` VALUES ('1', 'Attila', 'Police', '1', 'Police', 'https://cdn.discordapp.com/attachments/452891038349262849/959382742624260136/unknown.png', '1679181226', '0', 'Sistema', NULL);

DROP TABLE IF EXISTS `groups_vendas`;
CREATE TABLE `groups_vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) NOT NULL,
  `venda_id` int(11) NOT NULL,
  `produto` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `hospital_consultas`;
CREATE TABLE `hospital_consultas` (
  `hospital` text DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medico_id` int(11) DEFAULT NULL,
  `paciente_ids` text DEFAULT NULL,
  `especialidade` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `data_criada` int(11) DEFAULT NULL,
  `data_consulta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hospital_consultas` VALUES ('Hospital-Central', '1', '9', '{"4":true}', 'Cliníco Geral', 'paciente tratado devidamente', 'Realizada', '1742002915', '1742072400');
INSERT INTO `hospital_consultas` VALUES ('Hospital-Central', '2', '8', '{"9":true}', 'Cliníco Geral', 'consulta adiantada', 'Realizada', '1742094349', '1742180400');

DROP TABLE IF EXISTS `hospital_data`;
CREATE TABLE `hospital_data` (
  `name` varchar(50) NOT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hospital_data` VALUES ('hospital:atendimentos:Hospital-Central', '[{"medico":12,"data":1742001011,"paciente":"9","descricao":"teste ","conclusao":"Paciente estava com dor de cabeça, foi ministrado analgésico VI."},{"medico":12,"data":1742001702,"paciente":"10","descricao":"preciso de um atendimento","conclusao":"Paciente estava com dor de cabeça e uma escoreação superficial no joelho. Feito um curativo na área afetada e ministrado analgésico VI."},{"medico":9,"data":1742002615,"paciente":"12","descricao":"Cai das escadas, achp que quebrei alguma coisa","conclusao":"tESTE"},{"medico":9,"data":1742012147,"paciente":"15","descricao":"Tomeu uma breve murro esta doendo","conclusao":"Realisado tratamento com analgésicos!"},{"medico":8,"data":1742069076,"paciente":"11","descricao":"levei um choque no poste, preciso de assistencia medica","conclusao":"paciente devidamente tratado com leve sangramento interno."},{"medico":12,"data":1742079999,"paciente":"1","descricao":"Cair de moto, ralei a perna !","conclusao":"O paciente deu entrada no hospital com dores no joelho devido a acidente com veículo. Sem fraturas ou ferimentos aprofundados. Misnitrado analgésico e anti-inflamatório."},{"medico":9,"data":1742108523,"paciente":"37","descricao":"cagar","conclusao":"Paciente com sinais de queda! Tratamento realizado com Analgesicos!"},{"medico":1,"data":1742143433,"paciente":"12","descricao":"Socorro quebrei um braço","conclusao":"test"},{"medico":9,"data":1742278151,"paciente":"23","descricao":"dor nas pernas","conclusao":"Paciente com lesão em perna diireita devido a acidente de carro. tratamento efetuado com antibióticos e analgésicos sem a nescessidade de imobilização!"},{"medico":9,"data":1742436540,"conclusao":"Paciente com concursão por efeito de PAF em colete balistico","descricao":"Recebi varias tijoladas e desacordei","paciente":"1"},{"medico":9,"data":1742530999,"paciente":"48","descricao":"pode me ajudar","conclusao":"Paciente com consulta em pisicologo!"},{"medico":1,"data":1742939279,"conclusao":"Fraturas leves","descricao":"bati com o carro estou com ferimentos","paciente":"23"}]');
INSERT INTO `hospital_data` VALUES ('hospital:funcionarios:Hospital-Central', '{"15":{"cargo":"Paramedic","name":"Estagiario"},"12":{"cargo":"Paramedic","name":"Coordenador"},"29":{"cargo":"Paramedic","name":"Supervisor"},"8":{"cargo":"Paramedic","name":"Diretor Geral"},"9":{"cargo":"Paramedic","name":"Direção Adjunta"},"1":{"name":"Direção Adjunta","cargo":"Paramedic"}}');
INSERT INTO `hospital_data` VALUES ('hospital:historicoBanco:Hospital-Central', '[{"passaporte":8,"acao":"DEPOSITAR","valor":"10000","times":1742081331,"data":"15 Mar 2025 20:28 PM"},{"passaporte":8,"acao":"DEPOSITAR","data":"17 Mar 2025 02:32 AM","valor":"30000","times":1742189579}]');
INSERT INTO `hospital_data` VALUES ('hospital:perfil', '{"8":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"6":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"29":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"nil":["https://cdn.discordapp.com/attachments/1337978446118129704/1354209473958252687/user-photo.png?ex=67e4755a&is=67e323da&hm=0aa9b23b8a6718e7f4dc016b2ddd0cd92251e2961737fbf081c6a19f92fb708f&"],"20":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"15":["https://cdn.discordapp.com/attachments/1337978446118129704/1350507058218401854/redimensionada.jpg?ex=67d6fd35&is=67d5abb5&hm=ec56cb01f6be5eb32b86a52fb79eaf2a467f54dd8131bf6562b2ae192d5b97bc&"],"43":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"18":["https://cdn.discordapp.com/attachments/1337978446118129704/1350613032459571201/redimensionada.jpg?ex=67d75fe8&is=67d60e68&hm=40ebd1e6a15df901bd2bc118c81b8efa147fa52b4c1eeb76a7dd75355cac9c48&"],"46":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"12":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"11":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"58":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"37":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"23":["https://cdn.discordapp.com/attachments/1337978446118129704/1354209381339893840/user-photo.png?ex=67e47544&is=67e323c4&hm=c1dcfadfe768f63faff7d0a394d3f1fb1c6650eb390c271849f5cf6d5eed8431&"],"1":["https://cdn.discordapp.com/attachments/1337978446118129704/1354196244838355075/user-photo.png?ex=67e46908&is=67e31788&hm=1a98a19ee47c3115a74294eb9a638a6ec4ec561c93daad95a2af3f978f110936&"],"10":["https://cdn.discordapp.com/attachments/1337978446118129704/1350277497228628020/redimensionada.jpg?ex=67d6276a&is=67d4d5ea&hm=ac9a29ab90421200787abf5530377d048d4f9f7ae5634382cdf703348c4706de&"],"36":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"3":["https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png"],"4":["https://cdn.discordapp.com/attachments/1337978446118129704/1350283085606031411/redimensionada.jpg?ex=67d62c9e&is=67d4db1e&hm=a1f86b08fc48745807b33c327a0cebd5eafe473b54647217be8950a7e465dec0&"],"9":["https://cdn.discordapp.com/attachments/1337978446118129704/1350274228485885952/redimensionada.jpg?ex=67d6245e&is=67d4d2de&hm=2b8b057de10e341d53580251225b5be7d5cb4598efb6252ae55f800e76583479&"],"48":["https://cdn.discordapp.com/attachments/1337978446118129704/1352092650857304124/redimensionada.jpg?ex=67dcc1e8&is=67db7068&hm=41c1ccff175e6e62ee585c13772cf9aeaaa03afd6b18ac53bfbae45ed83dc0a9&"]}');
INSERT INTO `hospital_data` VALUES ('hospital:plano-medico:Hospital-Central', '{"4":{"data":1742857422}}');
INSERT INTO `hospital_data` VALUES ('hospital:saldoBanco:Hospital-Central', '40000');

DROP TABLE IF EXISTS `hospital_diagnosticos`;
CREATE TABLE `hospital_diagnosticos` (
  `hospital` text DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medico_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `ferimentos` text DEFAULT NULL,
  `gesso` text DEFAULT NULL,
  `gesso_retirado` text DEFAULT NULL,
  `data` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '1', '9', '12', 'Em analise de imagens verifiquei a nescessidade de apenas aplicação de gesso na Perna esquerda!', ' Cabeça  Peito  Perna Direita  Perna Esquerda ', 'Perna esquerda', 'true', '1742004439', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350288775791640597/redimensionada.jpg?ex=67d631eb&is=67d4e06b&hm=9948331134c3374bdbb15e4a7e3423d095d91fe5a7dcb6d94767c6afba7a9175&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '2', '9', '3', 'A principio o paciente se quixa de forte dores. faremos a imobilização preventiva', 'Não foi encontrado ferimentos.', 'Perna direita', 'true', '1742004953', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '3', '8', '11', 'paciente apresentou fraturas em mmie e na região peitoral, indico atadura e analgesico ', ' Peito  Perna Esquerda ', 'Peito, Perna esquerda', 'false', '1742069347', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '4', '9', '18', 'Luxação no pescoço, realizado imobilização parcial', ' Cabeça ', 'Cabeça', 'false', '1742081239', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '5', '9', '12', 'teste HP', 'Não foi encontrado ferimentos.', 'Não foi aplicado gesso.', 'true', '1742093716', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '6', '9', '12', 'teste hp', 'Não foi encontrado ferimentos.', 'Braço esquerdo', 'true', '1742093778', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '7', '12', '9', 'Paciente está com tronco lesionado', ' Peito ', 'Peito', 'true', '1742094140', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '8', '8', '9', 'lesao na regiao toracica', ' Peito ', 'Braço direito, Perna direita, Perna esquerda, Braço esquerdo, Cabeça', 'true', '1742094526', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350666825582645410/redimensionada.jpg?ex=67d79201&is=67d64081&hm=3123d7895f9edfcd7e31128abf69a2f80fddcdd63aa44295009250eef8164317&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '9', '1', '23', 'test', ' Cabeça  Peito ', 'Não foi aplicado gesso.', 'false', '1742102288', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '10', '9', '23', 'não foi encontrado nenhum trauma.', 'Não foi encontrado ferimentos.', 'Não foi aplicado gesso.', 'false', '1742102939', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '11', '9', '23', 'sem nenhum trauma', 'Não foi encontrado ferimentos.', 'Não foi aplicado gesso.', 'false', '1742103015', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '12', '12', '5', 'Paciente com perna danificada', 'Não foi encontrado ferimentos.', 'Perna esquerda', 'false', '1742141106', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '13', '12', '5', 'Braço quebrado', 'Não foi encontrado ferimentos.', 'Braço esquerdo', 'false', '1742141266', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '14', '12', '1', 'Braço quebrado', 'Não foi encontrado ferimentos.', 'Braço esquerdo', 'false', '1742141554', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '15', '1', '12', 'Bala alojada', ' Peito ', 'Braço direito, Cabeça, Braço esquerdo, Perna esquerda, Perna direita', 'false', '1742142217', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350866569600958474/redimensionada.jpg?ex=67d84c08&is=67d6fa88&hm=6f5a9df8ed00d6a16cbc536642159c634d59df60e1da85b994f147d67cf29845&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '16', '1', '12', 'balla alojada', ' Peito ', 'Não foi aplicado gesso.', 'false', '1742143214', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350871106751561768/redimensionada.jpg?ex=67d85041&is=67d6fec1&hm=ca17cc981f9709ddd6065b1223294df55611a64486a36aaf3cdbca3736ba16da&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '17', '1', '12', 'bala alojada', ' Peito ', 'Braço direito, Cabeça, Braço esquerdo, Perna esquerda, Perna direita', 'false', '1742143294', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350871421995323402/redimensionada.jpg?ex=67d8508c&is=67d6ff0c&hm=efd172c1ef7043986f2ec8ff53ebf9d4304e13f6e4800abdad689428350e2676&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '18', '1', '12', 'bala alojada', ' Peito ', 'Braço direito, Perna direita, Perna esquerda, Braço esquerdo, Cabeça', 'false', '1742144506', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350876514521972786/redimensionada.jpg?ex=67d8554b&is=67d703cb&hm=1f3cdede277a92e87e35aa3319e4be1ae2cdbe426e6a789bf16ea2b64b0e910a&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '19', '1', '12', 'bala alojada', ' Peito ', 'Braço direito, Braço esquerdo, Cabeça, Perna direita, Perna esquerda', 'false', '1742144700', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350877337129975978/redimensionada.jpg?ex=67d8560f&is=67d7048f&hm=a8ee80fa6540269777d3f6a3d63d2e34d76030fe6bec94157182200f64bda831&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '20', '1', '12', '*', ' Peito ', 'Braço direito, Braço esquerdo, Cabeça, Perna direita, Perna esquerda', 'false', '1742144858', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350877996545998848/redimensionada.jpg?ex=67d856ac&is=67d7052c&hm=1aebb9a8367c534449da9926b26fac2ab75a42eebd9592ce751ac1f4e911d57b&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '21', '1', '12', '2', ' Peito ', 'Não foi aplicado gesso.', 'false', '1742144993', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350878478412812388/redimensionada.jpg?ex=67d8571f&is=67d7059f&hm=5dae6fa2f6ffafa142c2a84d91446bc013a4a93396941e0f1e494745d61c09f4&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '22', '1', '12', '2', ' Peito ', 'Peito', 'false', '1742145089', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350878927605731420/redimensionada.jpg?ex=67d8578a&is=67d7060a&hm=e2daa1ef61fbbed17458212f62fd2fa368156bed2c2abf72da12b4e9e105ef6d&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '23', '1', '12', '2', ' Peito ', 'Braço direito, Braço esquerdo, Perna esquerda, Perna direita, Cabeça, Peito', 'false', '1742145212', 'https://cdn.discordapp.com/attachments/1337978446118129704/1350879472127184906/redimensionada.jpg?ex=67d8580c&is=67d7068c&hm=d0a65ba0d70a7f7acde09b9f8a1bf3a51804a3267d6cc351894871bff52567ed&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '24', '12', '23', 'Braço direito quebrado', 'Não foi encontrado ferimentos.', 'Braço direito', 'true', '1742180591', 'https://cdn.discordapp.com/attachments/1337978446118129704/1351027931865939979/redimensionada.jpg?ex=67d8e24f&is=67d790cf&hm=61e3f7f6af3ff9fdff1d62e16445087d76771dbb1cea0fadaa4d0ca595559fa8&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '25', '12', '9', 'Braços e peitoral lesionados', 'Não foi encontrado ferimentos.', 'Peito, Braço esquerdo, Braço direito', 'true', '1742182661', 'https://cdn.discordapp.com/attachments/1337978446118129704/1351036657737928827/redimensionada.jpg?ex=67d8ea70&is=67d798f0&hm=cc2ea29d89a9861c04296a3b91e6b647a8c4f1d81ca3a9558620bc80df338144&');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '26', '9', '5', 'Concurção e luxação na altura do toraxa sem nescessidade de aplicação de gesso', ' Cabeça  Peito ', 'Não foi aplicado gesso.', 'false', '1742249599', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '27', '1', '43', '*', ' Cabeça  Peito  Braço Direita  Braço Esquerdo  Perna Esquerda ', 'Não foi aplicado gesso.', 'false', '1742353040', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '28', '1', '2', 'bala alojada', ' Perna Direita  Perna Esquerda ', 'Perna esquerda, Perna direita', 'false', '1742922275', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');
INSERT INTO `hospital_diagnosticos` VALUES ('Hospital-Central', '29', '1', '23', 'fraturas leves', ' Cabeça  Peito  Braço Direita  Perna Direita  Perna Esquerda ', 'Não foi aplicado gesso.', 'true', '1742939229', 'https://images-ext-1.discordapp.net/external/V4iou6H2r-Qv_WYEF6spZPKHJx_3V1S-pVgbmycM_Rc/https/i.imgur.com/UmsqfBC.png?format=webp&quality=lossless&width=360&height=360');

DROP TABLE IF EXISTS `hospital_player_data`;
CREATE TABLE `hospital_player_data` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hospital_player_data` VALUES ('23', 'gesso', 'Retirado');
INSERT INTO `hospital_player_data` VALUES ('23', 'lastLogin', '1743014919');

DROP TABLE IF EXISTS `hydrus_credits`;
CREATE TABLE `hydrus_credits` (
  `player_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(11) DEFAULT 0,
  PRIMARY KEY (`player_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `hydrus_scheduler`;
CREATE TABLE `hydrus_scheduler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(100) NOT NULL,
  `command` varchar(100) NOT NULL,
  `args` varchar(4096) NOT NULL,
  `execute_at` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `player_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `investments`;
CREATE TABLE `investments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Liquid` int(20) NOT NULL DEFAULT 0,
  `Monthly` int(20) NOT NULL DEFAULT 0,
  `Deposit` int(20) NOT NULL DEFAULT 0,
  `Last` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `investments` VALUES ('1', '33', '0', '0', '30000', '1742421703');
INSERT INTO `investments` VALUES ('3', '9', '0', '0', '10000', '1742878319');

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Received` int(10) NOT NULL DEFAULT 0,
  `Type` varchar(50) NOT NULL,
  `Reason` longtext NOT NULL,
  `Holder` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `invoices` VALUES ('1', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('2', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('3', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('13', '3', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('14', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Lata de Milho)', '45');
INSERT INTO `invoices` VALUES ('15', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('16', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('17', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('18', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('19', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('20', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('21', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('22', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Facão)', '30');
INSERT INTO `invoices` VALUES ('23', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Abridor de Lata)', '25');
INSERT INTO `invoices` VALUES ('24', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Sopa em Lata)', '45');
INSERT INTO `invoices` VALUES ('25', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Lata de Feijão)', '45');
INSERT INTO `invoices` VALUES ('26', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Colher)', '20');
INSERT INTO `invoices` VALUES ('35', '3', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('36', '3', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('37', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Algemas)', '30');
INSERT INTO `invoices` VALUES ('38', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Cassetete)', '25');
INSERT INTO `invoices` VALUES ('39', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Tazer)', '1600');
INSERT INTO `invoices` VALUES ('40', '5', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('41', '20', '0', 'received', 'Cartão de Crédito', 'Loja: 2x(Água)', '60');
INSERT INTO `invoices` VALUES ('42', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('43', '26', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Vara de Pescar)', '250');
INSERT INTO `invoices` VALUES ('44', '26', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Isca)', '15');
INSERT INTO `invoices` VALUES ('45', '26', '0', 'received', 'Cartão de Crédito', 'Loja: 3x(Isca)', '45');
INSERT INTO `invoices` VALUES ('46', '15', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Abridor de Lata)', '25');
INSERT INTO `invoices` VALUES ('47', '15', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Sopa em Lata)', '45');
INSERT INTO `invoices` VALUES ('48', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('49', '15', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '15');
INSERT INTO `invoices` VALUES ('51', '20', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('52', '20', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('54', '11', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Colete)', '500');
INSERT INTO `invoices` VALUES ('61', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Banco', '500');
INSERT INTO `invoices` VALUES ('62', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Colher)', '20');
INSERT INTO `invoices` VALUES ('63', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Açucar)', '25');
INSERT INTO `invoices` VALUES ('64', '8', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('65', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Hambúrguer)', '25');
INSERT INTO `invoices` VALUES ('66', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Hambúrguer)', '25');
INSERT INTO `invoices` VALUES ('67', '8', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Hambúrguer)', '25');
INSERT INTO `invoices` VALUES ('68', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '500');
INSERT INTO `invoices` VALUES ('69', '5', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('70', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Sopa em Lata)', '45');
INSERT INTO `invoices` VALUES ('71', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Espaguete)', '45');
INSERT INTO `invoices` VALUES ('72', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Lata de Feijão)', '45');
INSERT INTO `invoices` VALUES ('73', '5', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Lata de Milho)', '45');
INSERT INTO `invoices` VALUES ('74', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('75', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('76', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '350');
INSERT INTO `invoices` VALUES ('77', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('78', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('79', '1', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Carteira)', '100');
INSERT INTO `invoices` VALUES ('80', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('81', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('82', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('83', '1', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '350');
INSERT INTO `invoices` VALUES ('84', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('85', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '265');
INSERT INTO `invoices` VALUES ('86', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '265');
INSERT INTO `invoices` VALUES ('87', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('88', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('89', '11', '0', 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', '100');
INSERT INTO `invoices` VALUES ('90', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('91', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '100');
INSERT INTO `invoices` VALUES ('92', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '350');
INSERT INTO `invoices` VALUES ('93', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '350');
INSERT INTO `invoices` VALUES ('94', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('95', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('96', '37', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('97', '33', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Tazer)', '1600');
INSERT INTO `invoices` VALUES ('98', '42', '0', 'received', 'Cartão de Crédito', 'Loja: Driverlicense', '2000');
INSERT INTO `invoices` VALUES ('99', '3', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Kit Médico)', '575');
INSERT INTO `invoices` VALUES ('100', '15', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '21');
INSERT INTO `invoices` VALUES ('101', '15', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '121');
INSERT INTO `invoices` VALUES ('102', '15', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '167');
INSERT INTO `invoices` VALUES ('103', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Galão)', '250');
INSERT INTO `invoices` VALUES ('104', '54', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('105', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Picareta)', '625');
INSERT INTO `invoices` VALUES ('106', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Pé de Cabra)', '120');
INSERT INTO `invoices` VALUES ('107', '54', '0', 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', '50');
INSERT INTO `invoices` VALUES ('108', '54', '0', 'received', 'Cartão de Crédito', 'Loja: Compra De Veiculo', '100');
INSERT INTO `invoices` VALUES ('109', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Água)', '30');
INSERT INTO `invoices` VALUES ('110', '54', '0', 'received', 'Cartão de Crédito', 'Loja: Fisica', '144');
INSERT INTO `invoices` VALUES ('111', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Água)', '30');
INSERT INTO `invoices` VALUES ('112', '54', '0', 'received', 'Cartão de Crédito', 'Loja: 1x(Abridor de Lata)', '25');

DROP TABLE IF EXISTS `org_transactions`;
CREATE TABLE `org_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Value` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bank` int(20) NOT NULL DEFAULT 0,
  `premium` int(20) NOT NULL DEFAULT 0,
  `buff` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `organizations` VALUES ('1', 'KoiShui', '0', '0', '0');
INSERT INTO `organizations` VALUES ('2', 'Paramedic', '0', '0', '0');
INSERT INTO `organizations` VALUES ('3', 'AutoExotic', '0', '0', '0');
INSERT INTO `organizations` VALUES ('4', 'Policia', '0', '0', '0');
INSERT INTO `organizations` VALUES ('5', 'Prf', '0', '0', '0');
INSERT INTO `organizations` VALUES ('6', 'Ballas', '0', '0', '0');
INSERT INTO `organizations` VALUES ('7', 'KoiSushi', '0', '0', '0');
INSERT INTO `organizations` VALUES ('8', 'Vanilla', '0', '0', '0');
INSERT INTO `organizations` VALUES ('9', 'Bahamas', '0', '0', '0');
INSERT INTO `organizations` VALUES ('10', 'Mechanic', '0', '0', '0');
INSERT INTO `organizations` VALUES ('11', 'Police', '0', '0', '0');
INSERT INTO `organizations` VALUES ('12', 'PoliciaCivil', '0', '0', '0');

DROP TABLE IF EXISTS `playerdata`;
CREATE TABLE `playerdata` (
  `Passport` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`Passport`,`dkey`),
  KEY `Passport` (`Passport`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `playerdata` VALUES ('1', 'Ammos', '{"WEAPON_PETROLCAN_AMMO":1924}');
INSERT INTO `playerdata` VALUES ('1', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('1', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('1', 'Clothings', '{"backpack":{"item":0,"texture":0},"torso":{"item":566,"texture":0},"vest":{"item":0,"texture":0},"decals":{"item":-1,"texture":0},"pants":{"item":210,"texture":2},"mask":{"item":-1,"texture":0},"accessory":{"item":12,"texture":0},"glass":{"item":-1,"texture":0},"shoes":{"item":145,"texture":2},"tshirt":{"item":15,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('1', 'Datatable', '{"Health":200,"Inventory":{"1":{"amount":10,"item":"deerpelt"},"2":{"amount":1,"item":"rope-1742934893"},"3":{"amount":2,"item":"acetone"},"4":{"amount":10919,"item":"dollars"},"5":{"amount":10,"item":"plasticbottle"},"6":{"amount":3,"item":"hamburgermeat-1742926942"},"7":{"amount":1,"item":"cellphone-1742866973"},"8":{"amount":1,"item":"scuba-1742917926"},"9":{"amount":13079,"item":"dollars2"},"14":{"amount":3,"item":"sushi-1742865838"},"15":{"amount":3,"item":"orangejuice-1742866146"},"16":{"amount":1,"item":"receipt-1-1742934113-4500-10 c / 10 b koi sushi"},"17":{"amount":5,"item":"nigirizushi-1742865806"},"18":{"amount":1,"item":"receipt-1-1742945441-1750-5C/5B KOI SUSHI"},"19":{"amount":1,"data":{},"item":"wallet-S1Q2O5L7P1"},"11":{"item":"debitcard-1","amount":1},"10":{"amount":5,"item":"orangejuice-1742945361"},"13":{"amount":2,"item":"hamburger-1742927022"},"12":{"amount":1,"item":"paymentterminal-1742923643"}},"Thirst":99,"Stress":0,"Hunger":99,"Pos":{"x":224.96,"y":-900.46,"z":29.59},"Armour":0,"Skin":"mp_m_freemode_01","Weight":127.33800000000017}');
INSERT INTO `playerdata` VALUES ('1', 'Driverlicense', '{"issued":1742190060,"categories":{"2":"B","1":"A"},"expiration":1744818060,"name":"Attila Pena"}');
INSERT INTO `playerdata` VALUES ('1', 'Experience', '{"Boosting":0,"Taxi":3,"Hunting":0,"Fisherman":331,"Garbageman":0,"Driver":0,"Trucker":0,"Minerman":0,"Transporter":0,"Dismantle":0,"Lumberman":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('1', 'Gymnasium', '{"1":1743189381}');
INSERT INTO `playerdata` VALUES ('1', 'nation_char', '{"sunDamage-opacity":1.0,"chestHair-opacity":1.0,"addBodyBlemishes-color":0,"noseBoneTwist":0.14,"noseWidth":-1.0,"shapeThird":0,"sunDamage-color":0,"thirdMix":0.0,"addBodyBlemishes-opacity":1.0,"eyebrows":28,"chinBoneLength":-0.22,"overlay":0,"neckThickness":1.0,"skinThird":0,"hair-color":61,"blush-opacity":1.0,"skinMix":0.97000002861022,"chinHole":0.47,"ageing-opacity":1.0,"chinBoneWidth":-0.29,"freckles-opacity":1.0,"gender":"male","noseBoneHigh":0.21,"shapeFirst":23,"jawBoneWidth":0.06,"chinBoneLowering":-0.17,"lipsThickness":0.42,"hair":95,"eyeBrownForward":0.02,"blemishes-opacity":1.0,"cheeksBoneHigh":-0.79,"shapeSecond":2,"ageing-color":0,"hair-highlightcolor":54,"makeup-color":-1,"facialHair":16,"ageing":-1,"lipstick-opacity":1.0,"addBodyBlemishes":-1,"complexion":-1,"lipstick":-1,"eyes":0,"sunDamage":-1,"complexion-opacity":1.0,"eyebrows-color":61,"nosePeakHeight":0.05,"bodyBlemishes":-1,"nosePeakLength":0.4,"facialHair-color":61,"nosePeakLowering":0.2,"eyeBrownHigh":1.0,"skinSecond":24,"chestHair":3,"cheeksBoneWidth":-0.52,"blemishes":-1,"bodyBlemishes-opacity":1.0,"shapeMix":1.0,"eyesOpenning":-0.15,"facialHair-opacity":1.0,"freckles-color":0,"bodyBlemishes-color":0,"blush-color":0,"complexion-color":0,"makeup":-1,"jawBoneBackLength":-1.0,"freckles":-1,"blemishes-color":0,"cheeksWidth":-1.0,"eyebrows-opacity":1.0,"blush":-1,"makeup-opacity":1.0,"chestHair-color":0,"skinFirst":6,"lipstick-color":0}');
INSERT INTO `playerdata` VALUES ('1', 'Rolepass', '{"Premium":0,"Free":0,"Finish":1743476400.0,"RolepassBuy":false,"Points":334}');
INSERT INTO `playerdata` VALUES ('1', 'Tatuagens', '{"tattoos":["MP_MP_Stunt_tat_021_M","MP_MP_Stunt_tat_045_M"],"overlay":0}');
INSERT INTO `playerdata` VALUES ('2', 'Ammos', '{"AMMO_556":250,"AMMO_9":250}');
INSERT INTO `playerdata` VALUES ('2', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('2', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('2', 'Clothings', '{"accessory":{"texture":1,"item":218},"watch":{"texture":0,"item":20},"shoes":{"texture":2,"item":154},"tshirt":{"texture":0,"item":15},"mask":{"texture":0,"item":0},"pants":{"texture":0,"item":232},"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"ear":{"texture":0,"item":44},"arms":{"texture":0,"item":0},"torso":{"texture":0,"item":596},"glass":{"texture":0,"item":35},"hat":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"vest":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('2', 'Datatable', '{"Weight":290,"Thirst":60,"Inventory":{"3":{"item":"WEAPON_STUNGUN-1742934424","amount":1},"4":{"item":"handcuff-1742934429","amount":1},"18":{"item":"credential","amount":48},"6":{"item":"gdtkit","amount":10},"10":{"item":"dollars","amount":470},"1":{"item":"WEAPON_SCARH-1742934381-5M43DO","amount":1},"2":{"item":"WEAPON_COMBATPISTOL-1742934408-WLAHN0","amount":1},"15":{"item":"hamburger-1742909296","amount":4},"19":{"item":"cellphone-1742923991","amount":1},"13":{"item":"dollars2","amount":5300},"14":{"item":"plasticbottle","amount":2},"7":{"item":"gsrkit","amount":10},"20":{"item":"debitcard-2","amount":1},"9":{"item":"passionjuice-1742909307","amount":5},"5":{"item":"vest-1742934479","amount":1}},"Pos":{"x":17.28,"y":-1062.59,"z":38.15},"Skin":"mp_m_freemode_01","Stress":0,"Hunger":60,"Armour":0,"Health":162}');
INSERT INTO `playerdata` VALUES ('2', 'Experience', '{"Garbageman":0,"Trucker":0,"Hunting":0,"Boosting":0,"Minerman":0,"Driver":0,"Delivery":0,"Lumberman":0,"Dismantle":0,"Transporter":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('2', 'nation_char', '{"cheeksBoneHigh":-0.15,"eyesOpenning":0.0,"eyebrows-color":0,"blush-opacity":1.0,"complexion-opacity":1.0,"facialHair":20,"jawBoneWidth":0.01,"skinSecond":0,"neckThickness":0.1,"gender":"male","lipstick":-1,"shapeMix":0.80000001192092,"ageing-color":0,"ageing-opacity":1.0,"eyebrows-opacity":1.0,"shapeSecond":0,"skinThird":0,"chestHair-opacity":1.0,"nosePeakHeight":0.0,"blush":25,"skinFirst":21,"lipstick-opacity":1.0,"noseWidth":-0.18,"addBodyBlemishes":-1,"complexion":-1,"freckles-opacity":1.0,"addBodyBlemishes-opacity":1.0,"freckles":-1,"blemishes":-1,"skinMix":0.80000001192092,"makeup-opacity":1.0,"cheeksBoneWidth":0.0,"sunDamage-opacity":1.0,"chinHole":0.0,"chestHair-color":0,"addBodyBlemishes-color":0,"sunDamage":-1,"noseBoneTwist":0.0,"cheeksWidth":0.05,"jawBoneBackLength":0.25,"eyeBrownForward":0.0,"sunDamage-color":0,"facialHair-color":60,"blemishes-color":0,"thirdMix":0.0,"hair-color":61,"makeup-color":-1,"eyeBrownHigh":0.35,"ageing":-1,"bodyBlemishes-color":0,"facialHair-opacity":1.0,"chestHair":-1,"chinBoneWidth":-0.04,"lipsThickness":0.0,"nosePeakLength":0.27,"complexion-color":0,"bodyBlemishes-opacity":1.0,"eyes":1,"noseBoneHigh":0.17,"chinBoneLowering":0.0,"eyebrows":33,"chinBoneLength":0.0,"shapeFirst":21,"hair-highlightcolor":60,"bodyBlemishes":-1,"nosePeakLowering":-0.5,"makeup":-1,"lipstick-color":0,"blush-color":63,"hair":11,"shapeThird":0,"blemishes-opacity":1.0,"freckles-color":0,"overlay":0}');
INSERT INTO `playerdata` VALUES ('2', 'Rolepass', '{"Free":0,"Premium":0,"RolepassBuy":false,"Finish":1743476400.0,"Points":0}');
INSERT INTO `playerdata` VALUES ('2', 'Tatuagens', '{"tattoos":["MP_Bea_M_Head_001","MP_MP_Stunt_tat_006_M","MP_Vinewood_Tat_019_M","FM_Tat_Award_M_009","FM_Tat_M_040","FM_Tat_Award_M_013","mpHeist3_Tat_001_M","mpHeist3_Tat_044_M","FM_Tat_Award_M_000","MP_Smuggler_Tattoo_003_M","FM_Tat_Award_M_010","MP_Smuggler_Tattoo_001_M"],"overlay":0}');
INSERT INTO `playerdata` VALUES ('3', 'Ammos', '{"AMMO_762":238}');
INSERT INTO `playerdata` VALUES ('3', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('3', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('3', 'Clothings', '{"backpack":{"item":0,"texture":0},"watch":{"item":18,"texture":1},"pants":{"item":17,"texture":5},"vest":{"item":1,"texture":0},"ear":{"item":39,"texture":0},"mask":{"item":183,"texture":0},"accessory":{"item":15,"texture":0},"glass":{"item":56,"texture":5},"shoes":{"item":168,"texture":0},"tshirt":{"item":215,"texture":3},"hat":{"item":-1,"texture":0},"arms":{"item":190,"texture":0},"torso":{"item":15,"texture":0},"decals":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('3', 'Datatable', '{"Health":200,"Inventory":{"1":{"item":"WEAPON_SHOVEL-1742422277","amount":1},"2":{"amount":1,"item":"rope-1742438284"},"3":{"amount":10,"item":"c4"},"4":{"amount":1,"item":"repairkit04"},"6":{"amount":1,"item":"repairkit01"},"7":{"amount":7,"item":"nitro"},"8":{"amount":1,"item":"newchars"},"9":{"amount":1,"item":"creditcard-3"},"14":{"amount":1,"item":"WEAPON_KNUCKLE-1742069283"},"15":{"amount":1,"item":"card04-1742439515"},"19":{"amount":1,"item":"rope-1742439532"},"17":{"amount":1,"item":"card010-1742439520"},"20":{"amount":1,"item":"handcuff-1742433813"},"18":{"amount":1,"item":"card05-1742439525"},"16":{"amount":1,"item":"propertys"},"21":{"amount":4,"item":"credential"},"11":{"amount":1,"item":"cellphone-1742436720"},"10":{"amount":10157,"item":"dollars2"},"13":{"amount":1,"item":"card02-1742439512"},"12":{"amount":1,"item":"card01-1742439509"}},"Thirst":55,"Stress":0,"Hunger":55,"Pos":{"x":-3632.51,"y":-1348.24,"z":4.52},"Weight":10280,"Skin":"mp_m_freemode_01","Armour":0}');
INSERT INTO `playerdata` VALUES ('3', 'Experience', '{"Boosting":0,"Dismantle":0,"Garbageman":0,"Fisherman":0,"Driver":0,"Trucker":0,"Minerman":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('3', 'nation_char', '{"eyebrows-opacity":1.0,"chinBoneWidth":0.42,"makeup":4,"lipstick-opacity":0.0,"chestHair":3,"ageing-color":0,"hair-highlightcolor":55,"sunDamage-opacity":1.0,"jawBoneBackLength":0.38,"nosePeakHeight":0.66,"blush-color":0,"blemishes-opacity":1.0,"chestHair-color":61,"sunDamage":-1,"skinMix":0.80000001192092,"facialHair":11,"freckles":-1,"skinSecond":16,"bodyBlemishes-color":0,"freckles-color":0,"shapeMix":0.80000001192092,"blemishes":-1,"hair-color":61,"shapeFirst":31,"cheeksBoneHigh":-0.26,"facialHair-opacity":1.0,"chinBoneLowering":0.32,"lipstick-color":0,"cheeksWidth":0.09,"neckThickness":1.0,"gender":"male","complexion-opacity":1.0,"blemishes-color":0,"blush-opacity":1.0,"noseWidth":-0.28,"noseBoneHigh":0.22,"addBodyBlemishes":-1,"shapeThird":0,"makeup-opacity":1.0,"freckles-opacity":1.0,"eyebrows":27,"addBodyBlemishes-opacity":1.0,"noseBoneTwist":0.0,"skinThird":0,"addBodyBlemishes-color":0,"eyeBrownForward":0.32,"chinBoneLength":0.28,"eyes":0,"nosePeakLowering":0.03,"lipsThickness":-0.27,"bodyBlemishes-opacity":1.0,"complexion-color":0,"lipstick":-1,"chestHair-opacity":1.0,"blush":-1,"chinHole":0.21,"cheeksBoneWidth":0.4,"eyesOpenning":0.3,"eyeBrownHigh":0.22,"ageing-opacity":1.0,"eyebrows-color":61,"hair":11,"ageing":-1,"nosePeakLength":-0.03,"skinFirst":25,"makeup-color":-1,"overlay":0,"shapeSecond":2,"bodyBlemishes":-1,"facialHair-color":61,"sunDamage-color":0,"thirdMix":0.0,"complexion":-1,"jawBoneWidth":0.35}');
INSERT INTO `playerdata` VALUES ('3', 'Rolepass', '{"Premium":0,"Points":0,"Free":0,"Finish":1743476400.0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('4', 'Ammos', '{"AMMO_556":191,"AMMO_9":65,"WEAPON_PETROLCAN_AMMO":2252}');
INSERT INTO `playerdata` VALUES ('4', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('4', 'Backpack', '{"backpackp":1744631394,"backpackg":1744631392,"backpackm":1744631404}');
INSERT INTO `playerdata` VALUES ('4', 'Clothings', '{"backpack":{"texture":0,"item":0},"vest":{"texture":3,"item":24},"arms":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"watch":{"texture":1,"item":20},"hat":{"texture":5,"item":20},"pants":{"texture":8,"item":17},"bracelet":{"texture":0,"item":-1},"glass":{"texture":0,"item":10},"shoes":{"texture":0,"item":5},"ear":{"texture":0,"item":-1},"accessory":{"texture":1,"item":218},"tshirt":{"texture":0,"item":15},"decals":{"texture":7,"item":209},"torso":{"texture":0,"item":477}}');
INSERT INTO `playerdata` VALUES ('4', 'Datatable', '{"Armour":0,"Skin":"mp_m_freemode_01","Hunger":59,"Stress":0,"Health":200,"Weight":112.74999999999996,"Thirst":34,"Pos":{"z":29.1,"y":-1026.67,"x":136.01},"Inventory":{"16":{"item":"dollars","amount":830},"29":{"amount":2,"item":"gauze"},"5":{"amount":1,"item":"vape-1742086137"},"30":{"amount":2,"item":"analgesic"},"27":{"amount":1,"item":"repairkit01"},"100":{"amount":1,"item":"tilapia"},"32":{"amount":1,"item":"canopener"},"12":{"amount":1,"item":"cellphone-1741964885"},"13":{"amount":4,"item":"plasticbottle"},"7":{"amount":3,"item":"orangejuice-1742580502"},"6":{"item":"bait","amount":74},"9":{"amount":1,"item":"WEAPON_PETROLCAN-GEY130"},"8":{"amount":1,"item":"radio-1742078504"},"26":{"amount":1,"item":"WEAPON_WRENCH-1742076399"},"14":{"amount":3,"item":"sushi-1742481661"},"11":{"amount":1,"item":"dmvdocs-4-{\"1\":\"A\",\"2\":\"B\"}-[]-[]"},"10":{"item":"wallet-X3I3D4M1K7","amount":1,"data":{"3":{"amount":13,"item":"dollars"},"2":{"item":"debitcard-4","amount":1},"1":{"amount":1,"item":"creditcard-4"}}},"33":{"amount":1,"item":"identity-4"},"31":{"amount":6,"item":"plasticbottle"},"1":{"amount":1,"item":"fishingrod-1742581092"},"34":{"amount":1,"item":"WEAPON_STUNGUN-1742078455"},"3":{"amount":1,"item":"WEAPON_HK416-1742166072-8O7I3J"},"2":{"amount":1,"item":"WEAPON_GLOCK22-1742078497-X0QI1D"},"28":{"amount":1,"item":"paymentterminal-1741997777"},"4":{"amount":1,"item":"handcuff-1742078500"}}}');
INSERT INTO `playerdata` VALUES ('4', 'Experience', '{"Taxi":3,"Transporter":0,"Trucker":0,"Delivery":0,"Hunting":0,"Fisherman":1758,"Driver":0,"Dismantle":0,"Tractor":2,"Boosting":0,"Tows":53,"Minerman":0,"Garbageman":0,"Lumberman":0}');
INSERT INTO `playerdata` VALUES ('4', 'Gymnasium', '{"1":1742643807}');
INSERT INTO `playerdata` VALUES ('4', 'nation_char', '{"lipsThickness":-1.0,"thirdMix":0.0,"eyebrows-opacity":1.0,"lipstick":-1,"neckThickness":0.0,"freckles-opacity":1.0,"addBodyBlemishes":0,"ageing-opacity":1.0,"makeup-opacity":1.0,"complexion":-1,"overlay":0,"complexion-color":0,"makeup":-1,"chinBoneLowering":-0.02,"chestHair-color":0,"shapeMix":0.38999998569488,"ageing":-1,"makeup-color":-1,"eyebrows-color":61,"facialHair-color":29,"blemishes":-1,"jawBoneWidth":-0.4,"facialHair":3,"eyesOpenning":0.0,"chestHair":-1,"skinFirst":8,"chinBoneWidth":0.29,"lipstick-opacity":1.0,"gender":"male","eyebrows":28,"bodyBlemishes":0,"blemishes-opacity":1.0,"hair":79,"shapeThird":0,"blemishes-color":0,"skinMix":0.74000000953674,"chinHole":0.0,"hair-highlightcolor":29,"shapeFirst":28,"lipstick-color":0,"nosePeakLength":-0.19,"cheeksBoneHigh":0.09,"hair-color":29,"nosePeakLowering":-0.49,"noseBoneTwist":0.0,"bodyBlemishes-color":0,"blush-opacity":1.0,"shapeSecond":42,"sunDamage-color":0,"blush-color":0,"complexion-opacity":1.0,"jawBoneBackLength":0.1,"bodyBlemishes-opacity":1.0,"addBodyBlemishes-opacity":1.0,"sunDamage":-1,"noseBoneHigh":0.45,"freckles-color":0,"cheeksWidth":-1.0,"cheeksBoneWidth":-0.81,"skinThird":0,"freckles":0,"facialHair-opacity":1.0,"ageing-color":0,"eyes":29,"eyeBrownForward":-0.25,"addBodyBlemishes-color":0,"chestHair-opacity":1.0,"sunDamage-opacity":1.0,"blush":-1,"eyeBrownHigh":0.22,"noseWidth":-0.77,"skinSecond":12,"chinBoneLength":0.68,"nosePeakHeight":0.69}');
INSERT INTO `playerdata` VALUES ('4', 'Rolepass', '{"Points":1812,"Finish":1743476400.0,"RolepassBuy":false,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('5', 'Ammos', '{"AMMO_45":250,"AMMO_556":195,"AMMO_9":250,"AMMO_12":100}');
INSERT INTO `playerdata` VALUES ('5', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('5', 'Backpack', '{"backpackm":1745107776,"backpackp":1745107768,"backpackg":1745107784}');
INSERT INTO `playerdata` VALUES ('5', 'Clothings', '{"tshirt":{"item":240,"texture":0},"shoes":{"item":25,"texture":0},"ear":{"item":-1,"texture":0},"mask":{"item":169,"texture":0},"glass":{"item":17,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":18,"texture":0},"pants":{"item":238,"texture":0},"decals":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"accessory":{"item":205,"texture":0},"watch":{"item":-1,"texture":0},"vest":{"item":76,"texture":12},"torso":{"item":637,"texture":2},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('5', 'Datatable', '{"Health":200,"Armour":100,"Weight":110,"Hunger":86,"Thirst":86,"Inventory":{"8":{"amount":3,"item":"vest-1742516017"},"7":{"amount":1,"item":"debitcard-5"},"4":{"amount":1,"item":"WEAPON_PUMPSHOTGUN_MK2-1742515881-M5CU03"},"3":{"amount":1,"item":"WEAPON_SMG-1742515921-I271W6"},"6":{"amount":1,"item":"radio-1742512192"},"5":{"amount":1,"item":"WEAPON_HK416-1742515950-87Y807"},"2":{"amount":1,"item":"WEAPON_GLOCK22-1742512220-2M7QRV"},"1":{"amount":1,"item":"handcuff-1742515964"},"11":{"amount":4000,"item":"dollars"}},"Stress":0,"Skin":"mp_m_freemode_01","Pos":{"x":1519.8,"z":78.42,"y":790.74}}');
INSERT INTO `playerdata` VALUES ('5', 'Experience', '{"Garbageman":0,"Dismantle":0,"Transporter":0,"Driver":0,"Delivery":0,"Trucker":3,"Minerman":0,"Lumberman":0,"Boosting":0,"Hunting":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('5', 'nation_char', '{"makeup":-1,"bodyBlemishes-color":0,"blush":22,"sunDamage":-1,"complexion-color":0,"chestHair-color":0,"skinThird":0,"freckles-opacity":1.0,"bodyBlemishes":-1,"facialHair-opacity":1.0,"hair-highlightcolor":0,"addBodyBlemishes-color":0,"skinSecond":0,"eyebrows-color":61,"makeup-color":-1,"noseBoneTwist":0.0,"overlay":0,"chinBoneLowering":0.0,"lipstick-opacity":1.0,"shapeFirst":21,"eyes":18,"nosePeakLength":0.0,"chinHole":0.0,"makeup-opacity":1.0,"bodyBlemishes-opacity":1.0,"shapeSecond":0,"thirdMix":0.0,"facialHair":20,"ageing-opacity":1.0,"complexion":-1,"hair-color":61,"sunDamage-color":0,"cheeksBoneHigh":0.0,"blush-color":61,"lipsThickness":0.0,"shapeThird":0,"blemishes":-1,"blush-opacity":1.0,"hair":110,"blemishes-opacity":1.0,"nosePeakLowering":0.0,"cheeksWidth":0.0,"jawBoneBackLength":0.0,"lipstick":-1,"facialHair-color":61,"eyebrows-opacity":1.0,"ageing":-1,"lipstick-color":0,"complexion-opacity":1.0,"nosePeakHeight":0.0,"chestHair":0,"noseBoneHigh":0.0,"addBodyBlemishes":-1,"sunDamage-opacity":1.0,"jawBoneWidth":0.0,"freckles-color":0,"chinBoneLength":0.0,"eyesOpenning":0.0,"chestHair-opacity":1.0,"cheeksBoneWidth":0.0,"gender":"male","ageing-color":0,"neckThickness":0.0,"noseWidth":0.0,"shapeMix":0.52999997138977,"chinBoneWidth":0.0,"blemishes-color":0,"skinFirst":21,"eyeBrownHigh":0.0,"eyeBrownForward":0.0,"freckles":-1,"addBodyBlemishes-opacity":1.0,"skinMix":0.80000001192092,"eyebrows":12}');
INSERT INTO `playerdata` VALUES ('5', 'Rolepass', '{"Finish":1743476400.0,"Points":0,"RolepassBuy":false,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('6', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('6', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('6', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('6', 'Clothings', '{"bracelet":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"torso":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"pants":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"shoes":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"tshirt":{"item":1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('6', 'Datatable', '{"Inventory":[],"Pos":{"z":19.68,"y":-2710.28,"x":-1055.3},"Thirst":33,"Armour":0,"Stress":0,"Skin":"mp_f_freemode_01","Health":200,"Hunger":33,"Weight":40}');
INSERT INTO `playerdata` VALUES ('6', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('6', 'nation_char', '{"chinBoneLength":0.0,"facialHair":-1,"nosePeakLowering":-0.28,"complexion-opacity":1.0,"hair-color":6,"skinMix":0.20000000298023,"nosePeakLength":0.0,"blemishes-color":0,"complexion-color":0,"cheeksBoneWidth":-0.35,"chestHair":2,"eyebrows-color":0,"addBodyBlemishes-opacity":1.0,"cheeksWidth":-0.5,"lipstick-color":4,"facialHair-color":0,"jawBoneWidth":0.0,"makeup-opacity":1.0,"lipstick-opacity":1.0,"blemishes":-1,"shapeMix":0.07999999821186,"facialHair-opacity":1.0,"chinBoneWidth":0.0,"blush":4,"skinFirst":25,"cheeksBoneHigh":-0.37,"sunDamage":-1,"sunDamage-color":0,"noseBoneHigh":-0.21,"skinSecond":0,"makeup":14,"hair":18,"blush-opacity":1.0,"complexion":2,"noseBoneTwist":0.0,"bodyBlemishes-color":0,"gender":"female","makeup-color":6,"sunDamage-opacity":1.0,"eyeBrownHigh":0.17,"shapeFirst":31,"blush-color":0,"chestHair-opacity":1.0,"hair-highlightcolor":61,"bodyBlemishes":-1,"ageing":-1,"freckles-opacity":1.0,"lipsThickness":-0.58,"nosePeakHeight":0.0,"eyesOpenning":-0.29,"skinThird":0,"bodyBlemishes-opacity":1.0,"freckles-color":0,"eyebrows":7,"chinHole":0.35,"ageing-color":0,"addBodyBlemishes":-1,"jawBoneBackLength":-0.31,"eyes":13,"thirdMix":0.0,"eyebrows-opacity":1.0,"chestHair-color":0,"noseWidth":-0.29,"shapeSecond":0,"ageing-opacity":1.0,"neckThickness":0.0,"addBodyBlemishes-color":0,"chinBoneLowering":-0.22,"lipstick":3,"freckles":-1,"overlay":0,"shapeThird":0,"blemishes-opacity":1.0,"eyeBrownForward":0.0}');
INSERT INTO `playerdata` VALUES ('7', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('7', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('7', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('7', 'Clothings', '{"arms":{"texture":0,"item":373},"hat":{"texture":0,"item":-1},"torso":{"texture":0,"item":306},"accessory":{"texture":0,"item":57},"bracelet":{"texture":0,"item":-1},"tshirt":{"texture":2,"item":40},"ear":{"texture":0,"item":25},"vest":{"texture":0,"item":0},"glass":{"texture":0,"item":-1},"pants":{"texture":0,"item":34},"backpack":{"texture":3,"item":127},"mask":{"texture":0,"item":0},"shoes":{"texture":0,"item":216},"watch":{"texture":0,"item":-1},"decals":{"texture":3,"item":228}}');
INSERT INTO `playerdata` VALUES ('7', 'Datatable', '{"Hunger":53,"Weight":40,"Stress":0,"Armour":0,"Health":175,"Pos":{"z":337.77,"y":-842.2,"x":-161.89},"Inventory":{"7":{"amount":1,"item":"identity-7"},"6":{"amount":2,"item":"water"},"9":{"amount":50,"item":"dollars"},"8":{"amount":5,"item":"hamburger-1741973466"},"11":{"amount":1,"item":"WEAPON_SHOVEL-1741977479"},"12":{"amount":50,"item":"AMMO_9"},"10":{"amount":1,"item":"cellphone-1741973466"}},"Skin":"mp_f_freemode_01","Thirst":53}');
INSERT INTO `playerdata` VALUES ('7', 'Experience', '{"Garbageman":0,"Lumberman":0,"Minerman":0,"Hunting":0,"Driver":0,"Dismantle":0,"Boosting":0,"Trucker":0,"Delivery":0,"Transporter":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('7', 'nation_char', '{"ageing":-1,"skinFirst":36,"complexion-color":0,"cheeksBoneHigh":0.0,"lipsThickness":-1.0,"bodyBlemishes-opacity":1.0,"skinSecond":3,"hair-highlightcolor":30,"eyebrows-opacity":1.0,"shapeFirst":21,"cheeksWidth":0.0,"nosePeakLowering":-0.2,"facialHair-opacity":1.0,"noseBoneTwist":0.0,"jawBoneBackLength":-1.0,"eyesOpenning":0.9,"skinMix":0.0,"jawBoneWidth":0.36,"eyebrows-color":55,"sunDamage-opacity":1.0,"thirdMix":0.0,"makeup-color":-1,"hair-color":32,"blemishes":-1,"freckles":-1,"chestHair-color":0,"freckles-opacity":1.0,"chinBoneWidth":-0.07,"cheeksBoneWidth":0.0,"complexion":5,"chinBoneLowering":-0.14,"overlay":0,"shapeSecond":45,"gender":"female","blemishes-opacity":1.0,"sunDamage-color":0,"chestHair":10,"eyes":18,"chinBoneLength":0.0,"lipstick-color":21,"nosePeakHeight":0.0,"lipstick-opacity":1.0,"blush":14,"blush-color":56,"bodyBlemishes-color":0,"bodyBlemishes":-1,"addBodyBlemishes-color":0,"facialHair-color":0,"eyeBrownForward":0.0,"neckThickness":0.0,"addBodyBlemishes-opacity":1.0,"chestHair-opacity":1.0,"shapeMix":0.40000000596046,"ageing-color":0,"eyeBrownHigh":0.4,"sunDamage":-1,"addBodyBlemishes":-1,"skinThird":0,"blush-opacity":1.0,"noseWidth":-0.79,"lipstick":2,"nosePeakLength":0.91,"shapeThird":0,"noseBoneHigh":0.0,"makeup":12,"chinHole":0.0,"complexion-opacity":1.0,"freckles-color":0,"facialHair":-1,"hair":156,"makeup-opacity":1.0,"ageing-opacity":1.0,"eyebrows":33,"blemishes-color":0}');
INSERT INTO `playerdata` VALUES ('8', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('8', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('8', 'Backpack', '{"backpackg":1744695052,"backpackp":1744695057,"backpackm":1744695054}');
INSERT INTO `playerdata` VALUES ('8', 'Clothings', '{"backpack":{"item":0,"texture":0},"torso":{"item":100,"texture":0},"accessory":{"item":147,"texture":9},"watch":{"item":10,"texture":1},"tshirt":{"item":153,"texture":0},"pants":{"item":234,"texture":0},"ear":{"item":32,"texture":0},"glass":{"item":23,"texture":8},"shoes":{"item":25,"texture":0},"vest":{"item":64,"texture":0},"bracelet":{"item":15,"texture":0},"arms":{"item":215,"texture":1},"decals":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"hat":{"item":59,"texture":8}}');
INSERT INTO `playerdata` VALUES ('8', 'Datatable', '{"Armour":0,"Skin":"mp_m_freemode_01","Thirst":79,"Weight":113.89000000000009,"Stress":10,"Health":200,"Inventory":{"87":{"item":"creditcard-8","amount":1},"7":{"item":"ritmoneury","amount":1},"13":{"amount":1,"item":"horsefish"},"23":{"item":"WEAPON_PETROLCAN-4075G4","amount":1},"15":{"item":"gauze","amount":5},"9":{"item":"sinkalmy","amount":1},"76":{"item":"adrenaline","amount":3},"19":{"item":"sugar","amount":1},"57":{"item":"rope-1742091670","amount":1},"55":{"item":"canopener","amount":1},"56":{"item":"rope-1742102929","amount":1},"60":{"item":"spoon","amount":1},"86":{"item":"debitcard-8","amount":1},"10":{"item":"bandage","amount":3},"20":{"item":"chocolate","amount":1},"12":{"item":"radio-1742091686","amount":1},"11":{"item":"cellphone-1742091653","amount":1},"5":{"item":"water","amount":4},"6":{"item":"plasticbottle","amount":1},"3":{"item":"cola-1742189058","amount":2},"4":{"item":"WEAPON_MACHETE-1742102924","amount":1},"1":{"item":"dollars","amount":1500},"16":{"item":"lighter-1742105215","amount":1},"18":{"item":"hamburger-1742182804","amount":1},"2":{"item":"sushi-1742189107","amount":2}},"Hunger":98,"Pos":{"y":-918.89,"z":29.77,"x":47.42}}');
INSERT INTO `playerdata` VALUES ('8', 'Experience', '{"Garbageman":0,"Driver":0,"Transporter":0,"Dismantle":0,"Trucker":0,"Delivery":0,"Hunting":0,"Boosting":0,"Fisherman":0,"Minerman":0,"Lumberman":0}');
INSERT INTO `playerdata` VALUES ('8', 'Gymnasium', '{"1":1742620910}');
INSERT INTO `playerdata` VALUES ('8', 'nation_char', '{"sunDamage-opacity":1.0,"freckles-color":0,"lipsThickness":-0.13,"eyebrows":29,"blemishes":-1,"chestHair":-1,"eyesOpenning":-0.06,"shapeMix":0.80000001192092,"complexion-color":0,"eyebrows-opacity":1.0,"chinBoneWidth":-0.35,"overlay":0,"hair-highlightcolor":4,"lipstick":-1,"makeup":-1,"nosePeakLength":-0.89,"makeup-color":-1,"ageing":-1,"eyes":14,"lipstick-color":0,"skinMix":0.80000001192092,"ageing-opacity":1.0,"neckThickness":1.0,"addBodyBlemishes":-1,"chestHair-color":0,"addBodyBlemishes-color":0,"shapeThird":0,"bodyBlemishes":-1,"blemishes-color":0,"complexion-opacity":1.0,"chinBoneLowering":-0.12,"cheeksWidth":0.58,"eyeBrownHigh":1.0,"eyeBrownForward":0.48,"eyebrows-color":3,"noseWidth":0.26,"noseBoneTwist":0.0,"skinFirst":37,"thirdMix":0.0,"nosePeakHeight":0.94,"facialHair-opacity":1.0,"nosePeakLowering":-0.52,"bodyBlemishes-opacity":1.0,"blush":-1,"shapeFirst":25,"facialHair":20,"makeup-opacity":1.0,"gender":"male","cheeksBoneWidth":0.28,"noseBoneHigh":-0.6,"blemishes-opacity":1.0,"shapeSecond":44,"blush-opacity":1.0,"sunDamage":-1,"freckles":-1,"blush-color":0,"freckles-opacity":1.0,"skinSecond":8,"sunDamage-color":0,"facialHair-color":20,"jawBoneBackLength":0.56,"skinThird":0,"chestHair-opacity":1.0,"addBodyBlemishes-opacity":1.0,"hair-color":20,"chinBoneLength":0.4,"hair":109,"chinHole":0.4,"ageing-color":0,"bodyBlemishes-color":0,"complexion":-1,"jawBoneWidth":0.74,"lipstick-opacity":1.0,"cheeksBoneHigh":0.06}');
INSERT INTO `playerdata` VALUES ('8', 'Rolepass', '{"Finish":1743476400.0,"Points":0,"RolepassBuy":false,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('9', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('9', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('9', 'Backpack', '{"backpackg":1744647164}');
INSERT INTO `playerdata` VALUES ('9', 'Clothings', '{"vest":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"mask":{"item":-1,"texture":0},"pants":{"item":235,"texture":0},"accessory":{"item":190,"texture":8},"tshirt":{"item":60,"texture":0},"ear":{"item":-1,"texture":0},"glass":{"item":0,"texture":0},"shoes":{"item":103,"texture":4},"bracelet":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":90,"texture":1},"torso":{"item":626,"texture":0},"backpack":{"item":0,"texture":0},"decals":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('9', 'Datatable', '{"Weight":72.30999999999995,"Pos":{"y":-270.42,"x":-1231.1,"z":37.76},"Inventory":{"21":{"item":"can","amount":2},"20":{"item":"vape-1742194141","amount":1},"3":{"item":"paymentterminal-1742000399","amount":1},"2":{"amount":4,"item":"tangejuice-1742533459"},"5":{"item":"husky","amount":1},"4":{"item":"medkit","amount":1},"7":{"item":"dollars","amount":6155},"6":{"item":"cellphone-1742190598","amount":1},"9":{"item":"pug","amount":1},"8":{"item":"debitcard-9","amount":1},"25":{"item":"WEAPON_WRENCH-1742278227","amount":1},"12":{"item":"radio-1742091686","amount":1},"22":{"item":"WEAPON_BOTTLE","amount":1},"15":{"item":"plasticbottle","amount":6},"14":{"item":"receipt-9-1742534070-3500-10 C/ 10 B   KOI SUHI","amount":1},"1":{"item":"sushi-1742533245","amount":2},"10":{"item":"water","amount":10},"16":{"item":"screen","amount":2},"19":{"item":"metalcan","amount":1},"18":{"item":"cellbattery","amount":1},"11":{"item":"notepad","amount":4},"17":{"item":"screen","amount":1}},"Skin":"mp_m_freemode_01","Stress":0,"Thirst":22,"Hunger":52,"Health":200,"Armour":0}');
INSERT INTO `playerdata` VALUES ('9', 'Driverlicense', '{"expiration":1744823482,"categories":{"2":"B","1":"A"},"name":"Sertaneijo Silva","issued":1742195482}');
INSERT INTO `playerdata` VALUES ('9', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Taxi":3,"Fisherman":391,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('9', 'Gymnasium', '{"1":1742620897}');
INSERT INTO `playerdata` VALUES ('9', 'nation_char', '{"blemishes-opacity":1.0,"blemishes":-1,"addBodyBlemishes-opacity":1.0,"neckThickness":1.0,"noseWidth":0.59,"addBodyBlemishes":-1,"shapeFirst":23,"skinSecond":4,"lipstick":-1,"nosePeakLength":0.4,"eyebrows":16,"eyes":0,"makeup-opacity":1.0,"facialHair-opacity":1.0,"thirdMix":0.0,"nosePeakLowering":0.49,"hair-highlightcolor":0,"lipstick-opacity":1.0,"chestHair":12,"chinBoneLength":1.0,"skinMix":0.80000001192092,"eyeBrownForward":0.33,"eyeBrownHigh":1.0,"addBodyBlemishes-color":0,"jawBoneBackLength":-1.0,"cheeksWidth":0.0,"freckles-opacity":1.0,"hair":21,"gender":"male","complexion-opacity":1.0,"cheeksBoneHigh":-1.0,"complexion":-1,"chestHair-color":0,"sunDamage":-1,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"bodyBlemishes":-1,"ageing-opacity":1.0,"ageing-color":0,"chinHole":0.0,"chinBoneLowering":1.0,"ageing":-1,"blush-opacity":1.0,"overlay":0,"noseBoneTwist":0.0,"makeup":-1,"facialHair-color":0,"bodyBlemishes-color":0,"skinFirst":37,"lipsThickness":1.0,"jawBoneWidth":-1.0,"eyesOpenning":0.67,"blush":21,"makeup-color":-1,"chestHair-opacity":1.0,"skinThird":0,"freckles-color":0,"lipstick-color":0,"complexion-color":0,"eyebrows-color":0,"freckles":-1,"shapeThird":0,"sunDamage-opacity":1.0,"shapeMix":0.85000002384185,"chinBoneWidth":0.64,"nosePeakHeight":0.47,"shapeSecond":0,"hair-color":0,"eyebrows-opacity":1.0,"cheeksBoneWidth":0.0,"facialHair":2,"blemishes-color":0,"noseBoneHigh":0.41,"blush-color":56}');
INSERT INTO `playerdata` VALUES ('9', 'Rolepass', '{"Points":394}');
INSERT INTO `playerdata` VALUES ('10', 'Ammos', '{"AMMO_762":173}');
INSERT INTO `playerdata` VALUES ('10', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('10', 'Backpack', '{"backpackg":1744648173,"backpackm":1744660864}');
INSERT INTO `playerdata` VALUES ('10', 'Clothings', '{"accessory":{"item":241,"texture":0},"backpack":{"item":0,"texture":0},"torso":{"item":560,"texture":3},"glass":{"item":56,"texture":9},"arms":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"ear":{"item":44,"texture":0},"mask":{"item":111,"texture":2},"pants":{"item":88,"texture":22},"watch":{"item":4,"texture":0},"shoes":{"item":34,"texture":0},"bracelet":{"item":8,"texture":0},"hat":{"item":10,"texture":1},"tshirt":{"item":15,"texture":0},"vest":{"item":56,"texture":0}}');
INSERT INTO `playerdata` VALUES ('10', 'Datatable', '{"Armour":0,"Health":180,"Hunger":70,"Pos":{"y":-143.14,"z":58.64,"x":537.43},"Skin":"mp_m_freemode_01","Thirst":78,"Inventory":{"95":{"amount":1,"item":"namechange"},"9":{"amount":4,"item":"cola-1742415199"},"7":{"amount":6,"item":"aluminum"},"29":{"amount":1,"item":"cellphone-1741978698"},"8":{"amount":3,"item":"spaghetti-1742413725"},"41":{"amount":1,"item":"creditcard-8"},"5":{"amount":1,"item":"radio-1742091686"},"6":{"amount":112,"item":"AMMO_45"},"21":{"amount":3,"item":"elastic"},"33":{"amount":1,"item":"canopener"},"1":{"amount":1,"item":"WEAPON_M70-1741977853"},"38":{"amount":12,"item":"rubber"},"35":{"amount":1,"item":"identity-10"},"25":{"amount":13,"item":"metalscrap"},"24":{"amount":15,"item":"lead"},"23":{"amount":61,"item":"glass"},"14":{"amount":12,"item":"meth"},"42":{"amount":1,"item":"debitcard-8"},"26":{"amount":1,"item":"debitcard-10"},"10":{"amount":16,"item":"gauze"},"20":{"amount":1,"item":"cellphone-1741931851"},"36":{"amount":1,"item":"debitcard-1"},"4":{"amount":1,"item":"rope-1742066580"},"3":{"amount":1,"item":"handcuff-1742099565"},"2":{"amount":6751,"item":"dollars2"},"37":{"amount":1,"item":"creditcard-1"},"34":{"amount":1,"item":"spoon"},"16":{"amount":11,"item":"analgesic"},"15":{"amount":6,"item":"gift"},"31":{"amount":8,"item":"techtrash"}},"Weight":95,"Stress":29}');
INSERT INTO `playerdata` VALUES ('10', 'Experience', '{"Bus":1,"Driver":0,"Transporter":0,"Fisherman":0,"Trucker":0,"Minerman":0,"Boosting":0,"Garbageman":0,"Dismantle":0,"Lumberman":0,"Delivery":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('10', 'nation_char', '{"jawBoneBackLength":0.4,"blush":23,"lipstick-color":0,"bodyBlemishes-color":0,"blush-opacity":1.0,"chinHole":0.0,"skinMix":0.80000001192092,"chinBoneLength":0.0,"nosePeakLowering":0.0,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"hair-highlightcolor":37,"shapeSecond":0,"hair":21,"makeup":17,"complexion":-1,"eyebrows-opacity":1.0,"shapeFirst":21,"shapeMix":0.80000001192092,"cheeksWidth":0.0,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":0.0,"addBodyBlemishes-opacity":1.0,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"skinSecond":25,"eyebrows-color":61,"eyeBrownHigh":0.73,"bodyBlemishes":-1,"eyes":3,"sunDamage":-1,"blemishes-color":0,"sunDamage-color":0,"ageing-opacity":1.0,"skinFirst":23,"chinBoneLowering":0.0,"eyeBrownForward":0.0,"noseBoneTwist":0.0,"ageing":-1,"chestHair":3,"chestHair-color":61,"blush-color":56,"hair-color":36,"jawBoneWidth":-0.2,"noseWidth":-0.29,"lipstick-opacity":1.0,"noseBoneHigh":0.0,"blemishes-opacity":1.0,"freckles-opacity":1.0,"cheeksBoneHigh":0.0,"freckles-color":0,"addBodyBlemishes":-1,"nosePeakLength":0.06,"lipsThickness":0.0,"ageing-color":0,"nosePeakHeight":0.0,"blemishes":-1,"facialHair-color":29,"shapeThird":0,"lipstick":-1,"sunDamage-opacity":1.0,"overlay":0,"eyesOpenning":0.09,"eyebrows":30,"facialHair":3,"bodyBlemishes-opacity":1.0,"complexion-color":0,"neckThickness":0.0,"complexion-opacity":1.0,"chestHair-opacity":1.0}');
INSERT INTO `playerdata` VALUES ('10', 'Rolepass', '{"RolepassBuy":false,"Finish":1743476400.0,"Points":0,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('11', 'Ammos', '{"AMMO_9":100,"AMMO_556":245}');
INSERT INTO `playerdata` VALUES ('11', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('11', 'Backpack', '{"backpackm":1744678518,"backpackp":1744678509,"backpackg":1744678525}');
INSERT INTO `playerdata` VALUES ('11', 'Clothings', '{"tshirt":{"item":240,"texture":0},"vest":{"item":76,"texture":12},"watch":{"item":10,"texture":0},"decals":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"glass":{"item":15,"texture":1},"pants":{"item":238,"texture":1},"arms":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":214,"texture":1},"mask":{"item":169,"texture":4},"torso":{"item":638,"texture":2},"shoes":{"item":81,"texture":1},"bracelet":{"item":11,"texture":3},"accessory":{"item":205,"texture":0}}');
INSERT INTO `playerdata` VALUES ('11', 'Datatable', '{"Inventory":{"14":{"amount":1,"item":"debitcard-11"},"12":{"amount":2,"item":"cigarette"},"19":{"amount":20000,"item":"dollars2"},"2":{"amount":1,"item":"WEAPON_HK416-1742086970-8YVE74"},"5":{"amount":1,"item":"radio-1742062556"},"16":{"amount":1,"item":"cola-1742255188"},"17":{"amount":15,"item":"plasticbottle"},"18":{"amount":3,"item":"gauze"},"4":{"amount":1,"item":"handcuff-1742087014"},"15":{"amount":2,"item":"camera"},"11":{"amount":1,"item":"radio-1742062556"},"13":{"amount":1,"item":"creditcard-11"},"25":{"amount":1,"item":"skateboard"},"20":{"amount":7,"item":"analgesic"},"24":{"amount":1,"item":"cellphone-1742257708"},"10":{"amount":1173,"item":"dollars"},"9":{"amount":18,"item":"plasticbottle"},"7":{"amount":1,"item":"canopener"},"8":{"amount":1,"item":"WEAPON_NIGHTSTICK-1742087027"},"1":{"amount":1,"item":"WEAPON_GLOCK22-1742087008-KQ98YC"},"3":{"amount":1,"item":"WEAPON_STUNGUN-1742087079"}},"Hunger":38,"Stress":3,"Health":200,"Pos":{"z":30.36,"y":-878.8,"x":55.05},"Armour":0,"Thirst":23,"Skin":"mp_m_freemode_01","Weight":110}');
INSERT INTO `playerdata` VALUES ('11', 'Experience', '{"Transporter":0,"Delivery":0,"Trucker":6,"Lumberman":0,"Minerman":0,"Boosting":0,"Garbageman":0,"Hunting":0,"Driver":0,"Fisherman":0,"Dismantle":0}');
INSERT INTO `playerdata` VALUES ('11', 'nation_char', '{"hair":73,"complexion":-1,"blush":21,"chinBoneLowering":0.0,"complexion-opacity":1.0,"sunDamage-color":0,"bodyBlemishes-color":0,"shapeFirst":31,"blemishes-opacity":1.0,"thirdMix":0.0,"makeup-opacity":1.0,"freckles":-1,"chinHole":0.0,"addBodyBlemishes-opacity":1.0,"cheeksBoneWidth":0.0,"noseBoneHigh":0.0,"makeup-color":56,"facialHair-opacity":1.0,"shapeMix":0.85000002384185,"skinMix":0.80000001192092,"facialHair-color":29,"blush-color":56,"skinThird":0,"freckles-opacity":1.0,"addBodyBlemishes":-1,"sunDamage":-1,"eyeBrownHigh":0.0,"lipstick-color":0,"jawBoneBackLength":0.0,"complexion-color":0,"hair-highlightcolor":61,"eyes":10,"freckles-color":0,"chestHair-opacity":1.0,"blush-opacity":1.0,"gender":"male","eyebrows-color":61,"shapeThird":0,"eyebrows-opacity":1.0,"shapeSecond":0,"bodyBlemishes":-1,"sunDamage-opacity":1.0,"noseBoneTwist":0.0,"overlay":0,"bodyBlemishes-opacity":1.0,"addBodyBlemishes-color":0,"skinSecond":0,"jawBoneWidth":0.0,"lipsThickness":0.0,"ageing":-1,"nosePeakHeight":0.0,"chestHair":4,"nosePeakLength":0.0,"nosePeakLowering":0.0,"lipstick":-1,"chestHair-color":61,"blemishes":-1,"lipstick-opacity":1.0,"noseWidth":0.0,"cheeksWidth":0.0,"eyesOpenning":0.0,"eyeBrownForward":0.0,"ageing-opacity":1.0,"makeup":-1,"ageing-color":0,"cheeksBoneHigh":0.0,"chinBoneWidth":0.0,"blemishes-color":0,"chinBoneLength":0.0,"hair-color":61,"neckThickness":0.0,"skinFirst":21,"facialHair":3,"eyebrows":12}');
INSERT INTO `playerdata` VALUES ('11', 'Rolepass', '{"Points":0,"Finish":1743476400.0,"Premium":0,"RolepassBuy":false,"Free":0}');
INSERT INTO `playerdata` VALUES ('12', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('12', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('12', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('12', 'Clothings', '{"arms":{"item":294,"texture":0},"mask":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":641,"texture":0},"tshirt":{"item":2,"texture":0},"decals":{"item":0,"texture":0},"shoes":{"item":103,"texture":0},"watch":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"glass":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"accessory":{"item":215,"texture":1},"pants":{"item":10,"texture":0}}');
INSERT INTO `playerdata` VALUES ('12', 'Datatable', '{"Health":165,"Pos":{"y":-589.12,"z":43.27,"x":304.71},"Hunger":70,"Armour":0,"Stress":0,"Skin":"mp_f_freemode_01","Thirst":41,"Weight":40,"Inventory":{"5":{"item":"energetic","amount":3},"6":{"item":"dollars","amount":25},"7":{"amount":1,"item":"ollyrancherbag-G6G7U9Y2J7","data":[]},"10":{"item":"debitcard-12","amount":1},"1":{"item":"paymentterminal-1742000399","amount":1},"2":{"item":"identity-12","amount":1},"3":{"item":"cellphone-1741980516","amount":1},"4":{"item":"rope-1741993712","amount":1},"17":{"item":"soda-1742181727","amount":5},"18":{"item":"cola-1742181727","amount":4},"15":{"item":"chocolate","amount":4},"16":{"item":"receipt-12-1742180146-21179-BMW MECANICA","amount":1},"12":{"item":"receipt-12-1742180004-21.200-PERSONALIZAÇÃO BMW","amount":1},"11":{"item":"hamburger-1742094656","amount":2},"14":{"item":"water","amount":3},"13":{"item":"dollars2","amount":2},"9":{"item":"chickenfries-1742094656","amount":1},"19":{"item":"chickenfries-1742182509","amount":4},"8":{"item":"plasticbottle","amount":4}}}');
INSERT INTO `playerdata` VALUES ('12', 'Experience', '{"Delivery":0,"Garbageman":0,"Trucker":0,"Hunting":0,"Driver":0,"Boosting":0,"Transporter":0,"Lumberman":0,"Minerman":0,"Dismantle":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('12', 'nation_char', '{"nosePeakLength":0.71,"makeup-opacity":1.0,"makeup":7,"makeup-color":-1,"lipstick-opacity":1.0,"freckles-opacity":1.0,"blemishes-color":0,"noseBoneTwist":0.0,"addBodyBlemishes":-1,"eyebrows-color":18,"bodyBlemishes-opacity":1.0,"blemishes":-1,"addBodyBlemishes-color":0,"shapeMix":0.40000000596046,"bodyBlemishes":1,"chinHole":0.42,"eyeBrownHigh":0.23,"lipsThickness":-0.59,"blush":2,"eyesOpenning":0.6,"facialHair":-1,"shapeThird":0,"facialHair-color":0,"ageing":-1,"freckles-color":0,"lipstick":1,"cheeksBoneWidth":-0.37,"lipstick-color":6,"ageing-color":0,"chestHair-opacity":1.0,"freckles":6,"blush-color":22,"chinBoneLowering":-0.5,"shapeSecond":29,"chestHair":-1,"shapeFirst":31,"complexion":-1,"neckThickness":0.0,"noseWidth":0.0,"sunDamage":-1,"eyebrows":6,"hair":166,"overlay":0,"blemishes-opacity":1.0,"thirdMix":0.0,"eyes":9,"skinMix":0.15000000596046,"ageing-opacity":1.0,"jawBoneWidth":-0.63,"sunDamage-opacity":1.0,"blush-opacity":0.68,"jawBoneBackLength":-0.21,"noseBoneHigh":0.0,"sunDamage-color":0,"chinBoneWidth":-0.17,"hair-highlightcolor":22,"nosePeakLowering":-0.47,"skinSecond":38,"skinFirst":16,"eyeBrownForward":-0.4,"skinThird":0,"chinBoneLength":0.08,"complexion-color":0,"facialHair-opacity":1.0,"gender":"female","cheeksBoneHigh":-0.56,"cheeksWidth":0.0,"nosePeakHeight":0.17,"bodyBlemishes-color":0,"eyebrows-opacity":1.0,"hair-color":23,"addBodyBlemishes-opacity":1.0,"chestHair-color":0,"complexion-opacity":1.0}');
INSERT INTO `playerdata` VALUES ('12', 'Tatuagens', '{"tattoos":["FM_Hip_F_Tat_006","MP_Bea_F_Stom_001","MP_Buis_F_Stom_000","FM_Tat_Award_F_013","FM_Tat_Award_F_003","MP_MP_Biker_Tat_016_F","MP_Buis_F_LArm_000","FM_Hip_F_Tat_018","MP_Heist4_Tat_000_F","MP_Heist4_Tat_027_F","MP_MP_Stunt_tat_021_F"],"overlay":0}');
INSERT INTO `playerdata` VALUES ('13', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('13', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('13', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('13', 'Clothings', '{"ear":{"item":-1,"texture":0},"glass":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"shoes":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"tshirt":{"item":1,"texture":0},"mask":{"item":0,"texture":0},"torso":{"item":0,"texture":0},"pants":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"watch":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('13', 'Datatable', '{"Stress":0,"Thirst":61,"Armour":0,"Pos":{"y":-261.62,"x":-350.75,"z":32.71},"Inventory":{"1":{"item":"dollars","amount":800}},"Weight":40,"Hunger":61,"Skin":"mp_m_freemode_01","Health":200}');
INSERT INTO `playerdata` VALUES ('13', 'Experience', '{"Fisherman":0,"Dismantle":0,"Minerman":0,"Lumberman":0,"Transporter":0,"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Garbageman":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('13', 'nation_char', '{"chestHair-color":0,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"cheeksBoneHigh":0.0,"chinHole":0.0,"skinMix":0.80000001192092,"chestHair":-1,"nosePeakLowering":0.0,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"nosePeakLength":0.0,"shapeSecond":0,"hair":0,"makeup":-1,"complexion":-1,"eyebrows-opacity":1.0,"jawBoneWidth":0.0,"shapeMix":0.80000001192092,"cheeksWidth":0.0,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":0.0,"freckles-color":0,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"overlay":0,"lipsThickness":0.0,"eyeBrownHigh":0.0,"bodyBlemishes":-1,"eyes":0,"sunDamage":-1,"facialHair-color":0,"sunDamage-color":0,"ageing-opacity":1.0,"blush-opacity":1.0,"chinBoneLowering":0.0,"blemishes-opacity":1.0,"noseBoneTwist":0.0,"ageing":-1,"lipstick":-1,"facialHair":-1,"blush-color":0,"hair-color":0,"jawBoneBackLength":0.0,"noseWidth":0.0,"lipstick-opacity":1.0,"noseBoneHigh":0.0,"complexion-opacity":1.0,"freckles-opacity":1.0,"sunDamage-opacity":1.0,"blemishes-color":0,"addBodyBlemishes":-1,"ageing-color":0,"skinSecond":0,"eyebrows-color":0,"eyeBrownForward":0.0,"bodyBlemishes-opacity":1.0,"blemishes":-1,"shapeThird":0,"chinBoneLength":0.0,"skinFirst":21,"chestHair-opacity":1.0,"eyesOpenning":0.0,"eyebrows":-1,"nosePeakHeight":0.0,"shapeFirst":21,"complexion-color":0,"neckThickness":0.0,"addBodyBlemishes-opacity":1.0,"hair-highlightcolor":0}');
INSERT INTO `playerdata` VALUES ('14', 'Ammos', '{"AMMO_9":99}');
INSERT INTO `playerdata` VALUES ('14', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('14', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('14', 'Clothings', '{"ear":{"item":-1,"texture":0},"glass":{"item":17,"texture":3},"decals":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"hat":{"item":10,"texture":2},"shoes":{"item":34,"texture":0},"watch":{"item":-1,"texture":0},"mask":{"item":51,"texture":6},"pants":{"item":88,"texture":22},"bracelet":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":560,"texture":0}}');
INSERT INTO `playerdata` VALUES ('14', 'Datatable', '{"Pos":{"z":29.3,"y":-1746.77,"x":47.56},"Weight":40,"Armour":0,"Health":153,"Skin":"mp_m_freemode_01","Hunger":35,"Inventory":{"6":{"item":"dollars","amount":825},"8":{"item":"identity-14","amount":1},"7":{"item":"water","amount":2},"2":{"item":"rope-1742171327","amount":1},"9":{"item":"cellphone-1741981065","amount":1},"1":{"item":"WEAPON_GLOCK18C-1741989656-35ECE7","amount":1}},"Thirst":35,"Stress":0}');
INSERT INTO `playerdata` VALUES ('14', 'Experience', '{"Lumberman":0,"Delivery":0,"Driver":0,"Hunting":0,"Fisherman":0,"Minerman":0,"Garbageman":0,"Boosting":0,"Trucker":0,"Transporter":0,"Dismantle":0}');
INSERT INTO `playerdata` VALUES ('14', 'nation_char', '{"chestHair-color":0,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"blemishes":-1,"chinHole":0.0,"ageing-color":0,"chestHair":-1,"nosePeakLowering":0.0,"addBodyBlemishes-color":0,"chestHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"hair-highlightcolor":29,"shapeSecond":0,"hair":12,"makeup":-1,"complexion":-1,"eyebrows-opacity":1.0,"bodyBlemishes-opacity":1.0,"shapeMix":0.56000000238418,"cheeksWidth":0.0,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":0.0,"freckles-color":0,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"overlay":0,"lipsThickness":0.0,"eyeBrownHigh":1.0,"bodyBlemishes":-1,"eyes":22,"sunDamage":-1,"lipstick":-1,"sunDamage-color":0,"ageing-opacity":1.0,"eyebrows-color":61,"chinBoneLowering":0.0,"blemishes-color":0,"noseBoneTwist":0.0,"ageing":-1,"addBodyBlemishes-opacity":1.0,"nosePeakHeight":0.0,"blush-color":0,"hair-color":61,"skinMix":0.74000000953674,"noseWidth":0.0,"lipstick-opacity":1.0,"noseBoneHigh":0.0,"complexion-opacity":1.0,"freckles-opacity":1.0,"sunDamage-opacity":1.0,"skinFirst":8,"addBodyBlemishes":-1,"skinSecond":2,"blemishes-opacity":1.0,"cheeksBoneHigh":0.0,"nosePeakLength":0.0,"facialHair-color":61,"shapeFirst":21,"shapeThird":0,"blush-opacity":1.0,"chinBoneLength":0.0,"jawBoneBackLength":0.0,"eyesOpenning":0.0,"eyebrows":31,"facialHair":3,"complexion-color":0,"eyeBrownForward":0.0,"neckThickness":0.0,"facialHair-opacity":1.0,"jawBoneWidth":0.0}');
INSERT INTO `playerdata` VALUES ('15', 'Ammos', '{"AMMO_762":167}');
INSERT INTO `playerdata` VALUES ('15', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('15', 'Backpack', '{"backpackg":1744661200}');
INSERT INTO `playerdata` VALUES ('15', 'Clothings', '{"arms":{"texture":0,"item":14},"tshirt":{"texture":0,"item":8},"backpack":{"texture":0,"item":0},"pants":{"texture":0,"item":104},"hat":{"texture":15,"item":231},"vest":{"texture":0,"item":4},"glass":{"texture":0,"item":72},"accessory":{"texture":0,"item":202},"decals":{"texture":0,"item":0},"torso":{"texture":1,"item":589},"watch":{"texture":1,"item":30},"bracelet":{"texture":0,"item":16},"ear":{"texture":2,"item":32},"mask":{"texture":0,"item":0},"shoes":{"texture":0,"item":178}}');
INSERT INTO `playerdata` VALUES ('15', 'Datatable', '{"Thirst":89,"Pos":{"z":30.84,"y":-1632.07,"x":831.83},"Inventory":{"7":{"item":"debitcard-15","amount":1},"6":{"item":"lockpick-1742011968","amount":1},"9":{"item":"dollars","amount":655},"8":{"item":"creditcard-15","amount":1},"14":{"item":"dollars2","amount":7400},"18":{"item":"WEAPON_KNUCKLE-1742069289","amount":1},"12":{"item":"cannedsoup-1742069213","amount":1},"22":{"item":"WEAPON_KNUCKLE-1742069291","amount":1},"23":{"item":"WEAPON_KNUCKLE-1742069292","amount":1},"16":{"item":"water","amount":3},"1":{"item":"WEAPON_AK47-1742437515-05D0Z1","amount":1},"24":{"item":"WEAPON_KNUCKLE-1742069295","amount":1},"11":{"item":"credential","amount":2},"2":{"item":"identity-15","amount":1},"5":{"item":"hamburger-1741981114","amount":5},"21":{"item":"WEAPON_KNUCKLE-1742069290","amount":1},"19":{"item":"WEAPON_KNUCKLE-1742069285","amount":1},"17":{"item":"spaghetti-1742069244","amount":1},"13":{"item":"canofbeans-1742069221","amount":1},"15":{"item":"adrenaline","amount":1},"25":{"item":"WEAPON_KNUCKLE-1742069297","amount":1},"3":{"item":"cellphone-1741981114","amount":1},"10":{"item":"AMMO_556","amount":150},"4":{"item":"rope-1741993151","amount":1}},"Stress":0,"Weight":70,"Skin":"mp_m_freemode_01","Hunger":89,"Health":174,"Armour":0}');
INSERT INTO `playerdata` VALUES ('15', 'Experience', '{"Hunting":0,"Lumberman":0,"Driver":0,"Dismantle":0,"Minerman":0,"Trucker":0,"Garbageman":0,"Fisherman":0,"Delivery":0,"Transporter":0,"Boosting":0}');
INSERT INTO `playerdata` VALUES ('15', 'nation_char', '{"lipsThickness":1.0,"thirdMix":0.0,"eyebrows-opacity":1.0,"lipstick":9,"neckThickness":1.0,"freckles-opacity":1.0,"addBodyBlemishes":-1,"ageing-opacity":1.0,"makeup-opacity":1.0,"complexion":-1,"overlay":0,"complexion-color":0,"makeup":18,"ageing-color":0,"chestHair-color":0,"noseWidth":0.18,"ageing":-1,"eyeBrownForward":-0.1,"addBodyBlemishes-opacity":1.0,"facialHair-color":61,"blemishes":-1,"jawBoneWidth":0.17,"facialHair":0,"eyesOpenning":0.28,"chestHair":3,"skinFirst":0,"chinBoneWidth":0.0,"lipstick-opacity":1.0,"gender":"male","eyebrows":2,"bodyBlemishes-opacity":1.0,"blemishes-opacity":1.0,"hair":79,"shapeThird":0,"blemishes-color":0,"skinMix":1.0,"chinHole":0.23,"hair-highlightcolor":61,"shapeFirst":21,"lipstick-color":10,"nosePeakLength":1.0,"cheeksBoneHigh":-0.52,"freckles-color":0,"nosePeakLowering":-0.4,"makeup-color":55,"bodyBlemishes-color":0,"blush-opacity":1.0,"shapeSecond":0,"sunDamage-color":0,"hair-color":61,"noseBoneHigh":-0.14,"noseBoneTwist":0.0,"bodyBlemishes":-1,"blush-color":56,"freckles":-1,"blush":27,"sunDamage":-1,"cheeksWidth":-1.0,"cheeksBoneWidth":0.22,"eyebrows-color":61,"nosePeakHeight":0.81,"facialHair-opacity":1.0,"eyes":14,"chestHair-opacity":1.0,"chinBoneLowering":0.27,"shapeMix":0.5,"chinBoneLength":0.3,"sunDamage-opacity":1.0,"jawBoneBackLength":-0.58,"eyeBrownHigh":0.87,"skinThird":0,"skinSecond":16,"addBodyBlemishes-color":0,"complexion-opacity":1.0}');
INSERT INTO `playerdata` VALUES ('16', 'Ammos', '{"AMMO_45":100}');
INSERT INTO `playerdata` VALUES ('16', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('16', 'Backpack', '{"backpackm":1744583173,"backpackp":1744583166,"backpackg":1744583132}');
INSERT INTO `playerdata` VALUES ('16', 'Clothings', '{"accessory":{"item":239,"texture":0},"backpack":{"item":0,"texture":0},"torso":{"item":595,"texture":0},"glass":{"item":71,"texture":7},"arms":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"ear":{"item":44,"texture":0},"decals":{"item":194,"texture":0},"pants":{"item":219,"texture":2},"watch":{"item":10,"texture":0},"shoes":{"item":166,"texture":11},"bracelet":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"tshirt":{"item":233,"texture":0},"mask":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('16', 'Datatable', '{"Armour":0,"Health":170,"Inventory":{"9":{"amount":1,"item":"identity-16"},"19":{"amount":1,"item":"can"},"14":{"amount":1,"item":"debitcard-16"},"12":{"amount":1,"item":"WEAPON_WRENCH-1742163096"},"1":{"amount":1,"item":"cola-1742184650"},"2":{"amount":3,"item":"hamburger-1742184331"},"3":{"amount":1,"item":"WEAPON_BATTLEAXE-1742163148"},"25":{"amount":2,"item":"metalcan"},"5":{"amount":1,"item":"rope-1742424596"},"10":{"amount":1,"item":"canopener"},"4":{"amount":1,"item":"WEAPON_MAC10-1742400238"},"8":{"amount":1,"item":"cellphone-1741981259"},"13":{"amount":1,"item":"vape-1741998739"},"6":{"amount":2135,"item":"dollars"}},"Pos":{"y":-170.55,"z":54.51,"x":551.56},"Skin":"mp_m_freemode_01","Weight":110,"Hunger":61,"Thirst":52,"Stress":0}');
INSERT INTO `playerdata` VALUES ('16', 'Experience', '{"Driver":0,"Transporter":0,"Fisherman":0,"Trucker":0,"Dismantle":0,"Minerman":0,"Lumberman":0,"Delivery":0,"Garbageman":0,"Boosting":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('16', 'nation_char', '{"complexion-opacity":1.0,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"blemishes":-1,"chinHole":0.21,"ageing-color":0,"chinBoneLength":-0.01,"nosePeakLowering":-0.38,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":56,"nosePeakLength":1.0,"shapeSecond":0,"hair":79,"skinFirst":0,"complexion":-1,"eyebrows-opacity":1.0,"shapeFirst":45,"shapeMix":0.81999999284744,"cheeksWidth":-0.35,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.43,"addBodyBlemishes-opacity":1.0,"cheeksBoneWidth":-0.43,"makeup-opacity":1.0,"skinSecond":28,"lipsThickness":-0.51,"eyeBrownHigh":0.81,"bodyBlemishes":-1,"eyes":31,"sunDamage":-1,"chestHair-opacity":1.0,"sunDamage-color":0,"ageing-opacity":1.0,"freckles-opacity":1.0,"chinBoneLowering":-0.23,"hair-highlightcolor":61,"noseBoneTwist":0.02,"ageing":-1,"cheeksBoneHigh":-0.69,"jawBoneBackLength":-0.49,"blush-color":56,"hair-color":54,"nosePeakHeight":0.42,"noseWidth":-0.81,"lipstick-opacity":1.0,"noseBoneHigh":0.15,"blemishes-opacity":1.0,"facialHair-color":0,"facialHair":20,"jawBoneWidth":-0.82,"addBodyBlemishes":-1,"bodyBlemishes-opacity":1.0,"blush-opacity":0.0,"eyebrows-color":61,"blemishes-color":0,"makeup":31,"skinMix":0.80000001192092,"shapeThird":0,"complexion-color":0,"chestHair":2,"freckles-color":0,"eyesOpenning":0.56,"eyebrows":1,"overlay":0,"lipstick":-1,"eyeBrownForward":0.12,"neckThickness":0.15,"sunDamage-opacity":1.0,"chestHair-color":0}');
INSERT INTO `playerdata` VALUES ('17', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('17', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('17', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('17', 'Clothings', '{"bracelet":{"texture":0,"item":11},"arms":{"texture":0,"item":0},"backpack":{"texture":0,"item":0},"watch":{"texture":2,"item":10},"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"torso":{"texture":0,"item":648},"accessory":{"texture":0,"item":0},"glass":{"texture":0,"item":-1},"ear":{"texture":2,"item":32},"decals":{"texture":0,"item":0},"pants":{"texture":6,"item":26},"tshirt":{"texture":8,"item":230},"shoes":{"texture":0,"item":34},"mask":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('17', 'Datatable', '{"Hunger":88,"Stress":0,"Weight":40,"Skin":"mp_m_freemode_01","Thirst":38,"Inventory":{"1":{"item":"water","amount":2},"2":{"item":"identity-17","amount":1},"5":{"item":"hamburger-1741982738","amount":4},"6":{"item":"dollars","amount":560},"3":{"item":"cellphone-1741982738","amount":1}},"Armour":0,"Health":115,"Pos":{"y":-267.44,"z":28.07,"x":-331.68}}');
INSERT INTO `playerdata` VALUES ('17', 'Experience', '{"Delivery":0,"Minerman":0,"Driver":0,"Lumberman":0,"Hunting":0,"Garbageman":0,"Trucker":0,"Dismantle":0,"Fisherman":0,"Transporter":0,"Boosting":0}');
INSERT INTO `playerdata` VALUES ('17', 'nation_char', '{"blemishes-opacity":1.0,"blemishes":-1,"eyesOpenning":0.56,"neckThickness":0.6,"noseWidth":-0.88,"addBodyBlemishes":-1,"shapeFirst":31,"skinSecond":2,"lipstick":-1,"nosePeakLength":0.47,"eyebrows":7,"eyes":31,"lipstick-color":0,"facialHair-opacity":1.0,"thirdMix":0.0,"nosePeakLowering":-0.34,"hair-highlightcolor":29,"lipstick-opacity":1.0,"shapeMix":0.88999998569488,"chinBoneLength":0.17,"skinMix":0.80000001192092,"eyeBrownForward":0.31,"eyeBrownHigh":0.87,"addBodyBlemishes-color":0,"nosePeakHeight":0.58,"cheeksWidth":-0.37,"freckles-opacity":1.0,"hair":21,"gender":"male","chinBoneWidth":0.52,"cheeksBoneHigh":-0.08,"complexion":-1,"chestHair-color":0,"sunDamage":-1,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"bodyBlemishes":-1,"eyebrows-color":61,"ageing-color":0,"chinHole":0.0,"chinBoneLowering":0.74,"ageing":-1,"sunDamage-opacity":1.0,"freckles-color":0,"shapeThird":0,"ageing-opacity":1.0,"skinFirst":11,"bodyBlemishes-color":0,"complexion-opacity":1.0,"makeup":76,"jawBoneWidth":-0.03,"addBodyBlemishes-opacity":1.0,"blush":-1,"eyebrows-opacity":1.0,"chestHair-opacity":1.0,"chestHair":-1,"overlay":0,"complexion-color":0,"makeup-opacity":1.0,"jawBoneBackLength":-1.0,"freckles":-1,"blemishes-color":0,"noseBoneTwist":0.0,"shapeSecond":0,"skinThird":0,"facialHair-color":29,"lipsThickness":-0.48,"hair-color":29,"makeup-color":56,"cheeksBoneWidth":-0.67,"facialHair":20,"blush-opacity":1.0,"noseBoneHigh":0.0,"blush-color":0}');
INSERT INTO `playerdata` VALUES ('18', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('18', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('18', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('18', 'Clothings', '{"vest":{"texture":0,"item":0},"pants":{"texture":0,"item":54},"hat":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"arms":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":1},"torso":{"texture":1,"item":141},"mask":{"texture":4,"item":169},"shoes":{"texture":0,"item":34},"watch":{"texture":0,"item":-1},"glass":{"texture":0,"item":19},"accessory":{"texture":0,"item":189},"backpack":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15}}');
INSERT INTO `playerdata` VALUES ('18', 'Datatable', '{"Hunger":58,"Thirst":44,"Skin":"mp_m_freemode_01","Weight":40,"Pos":{"z":29.2,"x":64.3,"y":-1303.68},"Inventory":{"20":{"amount":1,"item":"hamburgerbuns-1742087841"},"8":{"amount":1,"item":"cellphone-1741997888"},"9":{"amount":1,"item":"cellphone-1741991725"},"15":{"amount":1,"item":"creditcard-18"},"14":{"amount":1,"item":"identity-18"},"3":{"amount":8,"item":"plasticbottle"},"7":{"amount":1,"item":"water"},"1":{"amount":1,"item":"suitcase-A4F5G3A9D5","data":{"1":{"amount":1,"item":"debitcard-18"}}},"13":{"amount":2,"item":"water"},"10":{"amount":2,"item":"water"},"5":{"amount":1,"item":"hamburger-1741991725"}},"Stress":0,"Armour":0,"Health":200}');
INSERT INTO `playerdata` VALUES ('18', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Trucker":0,"Delivery":0,"Minerman":0,"Fisherman":0,"Hunting":0,"Boosting":0,"Taxi":4}');
INSERT INTO `playerdata` VALUES ('18', 'nation_char', '{"jawBoneBackLength":-0.17,"blush":32,"lipstick-color":56,"bodyBlemishes-color":0,"cheeksBoneHigh":-0.02,"chinHole":0.0,"skinMix":0.80000001192092,"chestHair":4,"nosePeakLowering":-0.72,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"hair-highlightcolor":38,"shapeSecond":0,"hair":21,"skinFirst":43,"complexion":-1,"eyebrows-opacity":1.0,"jawBoneWidth":-0.53,"shapeMix":0.72000002861022,"cheeksWidth":-0.26,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.61,"addBodyBlemishes-opacity":1.0,"cheeksBoneWidth":-0.63,"makeup-opacity":1.0,"overlay":0,"lipsThickness":0.56,"eyeBrownHigh":0.87,"bodyBlemishes":-1,"eyes":2,"sunDamage":-1,"chinBoneLength":-0.04,"sunDamage-color":0,"ageing-opacity":1.0,"blemishes-color":0,"chinBoneLowering":0.0,"sunDamage-opacity":1.0,"noseBoneTwist":0.0,"ageing":-1,"skinSecond":39,"nosePeakLength":0.75,"blush-color":56,"hair-color":38,"complexion-color":0,"noseWidth":-0.56,"lipstick-opacity":0.99,"noseBoneHigh":-0.23,"complexion-opacity":1.0,"facialHair-color":0,"eyebrows-color":0,"facialHair":3,"addBodyBlemishes":-1,"blemishes-opacity":1.0,"lipstick":-1,"nosePeakHeight":0.37,"chestHair-opacity":1.0,"freckles-color":0,"chestHair-color":0,"shapeThird":0,"blemishes":-1,"ageing-color":0,"makeup":76,"eyesOpenning":1.0,"eyebrows":29,"freckles-opacity":1.0,"shapeFirst":37,"eyeBrownForward":0.79,"neckThickness":0.0,"bodyBlemishes-opacity":1.0,"blush-opacity":1.0}');
INSERT INTO `playerdata` VALUES ('18', 'Rolepass', '{"Points":4}');
INSERT INTO `playerdata` VALUES ('19', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('19', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('19', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('19', 'Clothings', '{"ear":{"item":-1,"texture":0},"tshirt":{"item":1,"texture":0},"torso":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"pants":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"shoes":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"decals":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('19', 'Datatable', '{"Hunger":95,"Stress":0,"Weight":40,"Skin":"mp_m_freemode_01","Thirst":95,"Inventory":{"1":{"item":"water","amount":2},"2":{"item":"identity-19","amount":1},"5":{"item":"hamburger-1741992391","amount":5},"6":{"item":"dollars","amount":1500},"3":{"item":"cellphone-1741992391","amount":1}},"Armour":0,"Health":153,"Pos":{"y":-2565.81,"z":17.89,"x":-1008.42}}');
INSERT INTO `playerdata` VALUES ('19', 'Experience', '{"Delivery":0,"Minerman":0,"Driver":0,"Lumberman":0,"Transporter":0,"Garbageman":0,"Hunting":0,"Dismantle":0,"Fisherman":0,"Trucker":0,"Boosting":0}');
INSERT INTO `playerdata` VALUES ('19', 'nation_char', '{"chestHair-color":0,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"blemishes":-1,"chinHole":1.0,"ageing-color":0,"chestHair":10,"nosePeakLowering":0.21,"addBodyBlemishes-color":0,"chestHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"hair-highlightcolor":61,"shapeSecond":12,"hair":131,"makeup":-1,"complexion":-1,"eyebrows-opacity":1.0,"jawBoneWidth":1.0,"shapeMix":1.0,"cheeksWidth":0.33,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.63,"sunDamage-opacity":1.0,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"skinSecond":0,"blemishes-color":0,"eyeBrownHigh":0.72,"bodyBlemishes":-1,"eyes":19,"sunDamage":-1,"eyebrows-color":55,"sunDamage-color":0,"ageing-opacity":1.0,"freckles-opacity":1.0,"chinBoneLowering":1.0,"complexion-opacity":1.0,"noseBoneTwist":0.23,"ageing":-1,"nosePeakHeight":0.0,"chinBoneLength":0.0,"blush-color":0,"hair-color":61,"jawBoneBackLength":-1.0,"noseWidth":-1.0,"lipstick-opacity":1.0,"noseBoneHigh":0.2,"blemishes-opacity":1.0,"facialHair-color":61,"eyeBrownForward":0.71,"skinFirst":21,"addBodyBlemishes":-1,"shapeFirst":21,"lipsThickness":-1.0,"overlay":0,"freckles-color":0,"cheeksBoneHigh":0.4,"bodyBlemishes-opacity":1.0,"shapeThird":0,"nosePeakLength":0.53,"lipstick":-1,"addBodyBlemishes-opacity":1.0,"eyesOpenning":1.0,"eyebrows":2,"facialHair-opacity":1.0,"blush-opacity":1.0,"complexion-color":0,"neckThickness":1.0,"facialHair":3,"skinMix":0.80000001192092}');
INSERT INTO `playerdata` VALUES ('20', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('20', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('20', 'Backpack', '{"backpackg":1744660006}');
INSERT INTO `playerdata` VALUES ('20', 'Clothings', '{"vest":{"texture":0,"item":0},"shoes":{"texture":0,"item":150},"decals":{"texture":0,"item":0},"accessory":{"texture":1,"item":219},"torso":{"texture":4,"item":618},"watch":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"glass":{"texture":0,"item":-1},"arms":{"texture":0,"item":14},"pants":{"texture":0,"item":216},"tshirt":{"texture":0,"item":233}}');
INSERT INTO `playerdata` VALUES ('20', 'Datatable', '{"Pos":{"z":57.91,"y":-197.15,"x":542.62},"Skin":"mp_m_freemode_01","Armour":0,"Stress":0,"Health":195,"Hunger":60,"Weight":70,"Thirst":52,"Inventory":{"25":{"amount":1,"item":"creditcard-20"},"10":{"amount":1,"item":"canopener"},"6":{"amount":4,"item":"hamburger-1742078427"},"5":{"amount":1,"item":"debitcard-20"},"8":{"item":"dollars","amount":1960},"7":{"amount":2,"item":"plasticbottle"},"2":{"amount":1,"item":"identity-20"},"1":{"item":"paymentterminal-1742000932","amount":1},"4":{"amount":1,"item":"dmvdocs-20-{\"1\":\"A\"}-[]-[]"},"3":{"amount":1,"item":"cellphone-1742001228"}}}');
INSERT INTO `playerdata` VALUES ('20', 'Experience', '{"Dismantle":0,"Trucker":0,"Driver":0,"Hunting":0,"Fisherman":0,"Minerman":0,"Garbageman":0,"Boosting":0,"Delivery":0,"Transporter":0,"Lumberman":0}');
INSERT INTO `playerdata` VALUES ('20', 'nation_char', '{"complexion-opacity":1.0,"blemishes-opacity":1.0,"lipstick-color":0,"bodyBlemishes-color":0,"blemishes":-1,"chinHole":0.0,"ageing-color":0,"chestHair":2,"nosePeakLowering":-0.35,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":-1,"nosePeakLength":-0.41,"shapeSecond":18,"hair":29,"skinFirst":17,"complexion":-1,"eyebrows-opacity":1.0,"bodyBlemishes-opacity":1.0,"shapeMix":0.80000001192092,"cheeksWidth":0.34,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.11,"sunDamage-opacity":1.0,"cheeksBoneWidth":0.13,"makeup-opacity":1.0,"skinSecond":2,"eyebrows-color":11,"eyeBrownHigh":0.25,"bodyBlemishes":-1,"eyes":23,"sunDamage":-1,"addBodyBlemishes-opacity":1.0,"sunDamage-color":0,"ageing-opacity":1.0,"makeup":58,"chinBoneLowering":0.76,"skinMix":0.94999998807907,"noseBoneTwist":0.14,"ageing":-1,"facialHair":16,"chestHair-opacity":1.0,"blush-color":56,"hair-color":15,"blush-opacity":1.0,"noseWidth":-0.71,"lipstick-opacity":1.0,"noseBoneHigh":0.09,"chestHair-color":0,"facialHair-color":16,"freckles-color":0,"blush":-1,"addBodyBlemishes":-1,"eyeBrownForward":-0.39,"jawBoneWidth":-1.0,"hair-highlightcolor":0,"overlay":0,"lipsThickness":-1.0,"cheeksBoneHigh":0.04,"shapeThird":0,"nosePeakHeight":-0.14,"chinBoneLength":-0.6,"blemishes-color":0,"eyesOpenning":0.13,"eyebrows":30,"shapeFirst":23,"freckles-opacity":1.0,"complexion-color":0,"neckThickness":0.41,"jawBoneBackLength":-0.56,"lipstick":-1}');
INSERT INTO `playerdata` VALUES ('20', 'Rolepass', '{"Premium":0,"Points":0,"Free":0,"Finish":1743476400.0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('21', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('21', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('21', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('21', 'Clothings', '{"tshirt":{"texture":0,"item":15},"glass":{"texture":8,"item":23},"watch":{"texture":0,"item":-1},"shoes":{"texture":0,"item":156},"accessory":{"texture":2,"item":207},"pants":{"texture":0,"item":134},"decals":{"texture":0,"item":0},"arms":{"texture":9,"item":102},"backpack":{"texture":9,"item":58},"bracelet":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"hat":{"texture":0,"item":-1},"torso":{"texture":3,"item":568},"vest":{"texture":0,"item":0},"ear":{"texture":0,"item":2}}');
INSERT INTO `playerdata` VALUES ('21', 'Datatable', '{"Thirst":35,"Armour":0,"Inventory":{"6":{"item":"dollars","amount":1030},"10":{"item":"plasticbottle","amount":6},"3":{"item":"cellphone-1742003302","amount":1},"2":{"item":"identity-21","amount":1},"5":{"item":"hamburger-1742003302","amount":1}},"Health":200,"Skin":"mp_m_freemode_01","Stress":0,"Pos":{"z":54.51,"y":-186.34,"x":546.85},"Hunger":73,"Weight":40}');
INSERT INTO `playerdata` VALUES ('21', 'Experience', '{"Lumberman":0,"Hunting":0,"Boosting":0,"Minerman":0,"Dismantle":0,"Trucker":0,"Fisherman":0,"Transporter":0,"Driver":0,"Delivery":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('21', 'nation_char', '{"jawBoneBackLength":0.01,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"cheeksBoneHigh":0.17,"chinHole":0.33,"ageing-color":0,"chinBoneLength":-0.6,"nosePeakLowering":-0.1,"addBodyBlemishes-color":0,"facialHair":3,"freckles":-1,"makeup-color":-1,"nosePeakHeight":0.34,"shapeSecond":43,"hair":87,"makeup":-1,"complexion":-1,"eyebrows-opacity":1.0,"jawBoneWidth":0.43,"shapeMix":0.77999997138977,"cheeksWidth":0.02,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.3,"sunDamage-opacity":1.0,"cheeksBoneWidth":0.53,"makeup-opacity":1.0,"overlay":0,"blemishes-color":0,"eyeBrownHigh":0.33,"bodyBlemishes":-1,"eyes":3,"sunDamage":-1,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"ageing-opacity":1.0,"complexion-opacity":1.0,"chinBoneLowering":-0.03,"chestHair-opacity":1.0,"noseBoneTwist":-0.22,"ageing":-1,"chestHair":-1,"shapeFirst":35,"blush-color":0,"hair-color":32,"freckles-color":0,"noseWidth":-0.13,"lipstick-opacity":1.0,"noseBoneHigh":-0.24,"skinSecond":15,"freckles-opacity":1.0,"blemishes-opacity":1.0,"hair-highlightcolor":0,"addBodyBlemishes":-1,"lipsThickness":0.12,"blemishes":-1,"eyebrows-color":61,"facialHair-opacity":1.0,"facialHair-color":63,"blush-opacity":1.0,"shapeThird":0,"addBodyBlemishes-opacity":1.0,"skinMix":0.50999999046325,"skinFirst":33,"eyesOpenning":0.59,"eyebrows":12,"chestHair-color":0,"nosePeakLength":0.03,"eyeBrownForward":-0.52,"neckThickness":0.43,"lipstick":-1,"complexion-color":0}');
INSERT INTO `playerdata` VALUES ('22', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('22', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('22', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('22', 'Clothings', '{"pants":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"shoes":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"tshirt":{"item":1,"texture":0},"torso":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('22', 'Datatable', '{"Stress":0,"Weight":40,"Thirst":94,"Hunger":94,"Armour":0,"Pos":{"x":-1684.11,"y":-2947.0,"z":13.93},"Inventory":{"1":{"amount":1,"item":"gift"},"6":{"amount":1,"item":"identity-22"},"4":{"amount":5,"item":"hamburger-1742009088"},"5":{"amount":1500,"item":"dollars"},"2":{"amount":1,"item":"cellphone-1742009088"},"3":{"amount":2,"item":"water"}},"Health":200,"Skin":"mp_m_freemode_01"}');
INSERT INTO `playerdata` VALUES ('22', 'Experience', '{"Boosting":0,"Minerman":0,"Trucker":0,"Fisherman":0,"Driver":0,"Hunting":0,"Transporter":0,"Lumberman":0,"Delivery":0,"Garbageman":0,"Dismantle":0}');
INSERT INTO `playerdata` VALUES ('23', 'Ammos', '{"WEAPON_PETROLCAN_AMMO":2}');
INSERT INTO `playerdata` VALUES ('23', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('23', 'Backpack', '{"backpackg":1744646901,"backpackp":1744647078,"backpackm":1744646941}');
INSERT INTO `playerdata` VALUES ('23', 'Clothings', '{"backpack":{"item":0,"texture":0},"torso":{"item":783,"texture":0},"watch":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":50,"texture":1},"accessory":{"item":0,"texture":0},"glass":{"item":-1,"texture":0},"shoes":{"item":212,"texture":4},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":31,"texture":0},"tshirt":{"item":10,"texture":0},"bracelet":{"item":-1,"texture":0},"decals":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('23', 'Datatable', '{"Health":140,"Armour":0,"Thirst":0,"Stress":0,"Hunger":61,"Pos":{"x":-2537.74,"y":2344.34,"z":32.37},"Inventory":{"10":{"amount":11,"item":"plasticbottle"},"1":{"item":"gauze","amount":56},"2":{"amount":4,"item":"nigirizushi-1742865806"},"3":{"amount":3,"item":"water"},"4":{"amount":4500,"item":"WEAPON_PETROLCAN_AMMO"},"5":{"amount":1,"item":"WEAPON_PETROLCAN-6ZKW8Z"},"6":{"amount":5,"item":"tangejuice-1742865445"},"7":{"amount":100,"item":"AMMO_45"},"8":{"item":"paymentterminal-1742412438","amount":1},"9":{"amount":800,"item":"AMMO_9"},"11":{"amount":1,"item":"canopener"},"16":{"item":"WEAPON_M1911-1742181172","amount":1},"14":{"item":"acetone","amount":4},"15":{"item":"WEAPON_PETROLCAN-053FGW","amount":1},"19":{"amount":36,"item":"meth"},"18":{"amount":1,"item":"WEAPON_UZI-1742951541"},"54":{"item":"dmvdocs-23-{\"3\":\"C\"}-[]-[]","amount":1},"55":{"item":"card02-1742342952","amount":1},"25":{"item":"rope-1742110246","amount":1},"24":{"amount":18000,"item":"dollars2"},"51":{"item":"adrenaline","amount":1},"50":{"item":"goldcoin","amount":5},"53":{"item":"driverlicense-23-{\"issued\":1742196547,\"categories\":{\"2\":\"B\"},\"expiration\":1744824547,\"name\":\"Rosa Original\"}","amount":1},"52":{"item":"debitcard-23","amount":1},"20":{"amount":36,"item":"analgesic"},"21":{"item":"cellphone-1742428433","amount":1},"13":{"amount":1,"item":"WEAPON_POOLCUE-1743011632"}},"Skin":"mp_f_freemode_01","Weight":110}');
INSERT INTO `playerdata` VALUES ('23', 'Driverlicense', '{"issued":1742196547,"categories":{"1":"A","2":"B"},"expiration":1744824547,"name":"Rosa Original"}');
INSERT INTO `playerdata` VALUES ('23', 'Experience', '{"Lumberman":0,"Taxi":11,"Hunting":0,"Delivery":0,"Garbageman":0,"Driver":0,"Trucker":3,"Minerman":0,"Boosting":0,"Dismantle":0,"Transporter":0,"Fisherman":340}');
INSERT INTO `playerdata` VALUES ('23', 'nation_char', '{"hair-color":61,"shapeSecond":0,"sunDamage-color":0,"bodyBlemishes":-1,"noseWidth":0.55,"bodyBlemishes-color":0,"addBodyBlemishes":-1,"gender":"female","lipstick-opacity":1.0,"eyesOpenning":-0.58,"lipsThickness":-0.6,"skinThird":0,"sunDamage":-1,"hair":13,"facialHair-color":0,"chestHair-opacity":1.0,"complexion-color":0,"nosePeakLength":0.56,"eyebrows-opacity":1.0,"neckThickness":1.0,"skinMix":0.50999999046325,"ageing-color":0,"blemishes-opacity":1.0,"freckles":-1,"bodyBlemishes-opacity":1.0,"shapeFirst":21,"chinHole":0.02,"nosePeakHeight":0.27,"nosePeakLowering":-0.22,"ageing":-1,"chinBoneWidth":0.0,"jawBoneBackLength":-0.05,"noseBoneTwist":0.0,"eyebrows-color":0,"cheeksBoneWidth":0.31,"shapeMix":0.37000000476837,"freckles-opacity":1.0,"eyeBrownHigh":-0.25,"complexion-opacity":1.0,"makeup-opacity":1.0,"lipstick":6,"overlay":0,"jawBoneWidth":0.61,"shapeThird":0,"ageing-opacity":1.0,"complexion":-1,"skinSecond":0,"thirdMix":0.0,"cheeksBoneHigh":-0.09,"lipstick-color":11,"makeup":-1,"hair-highlightcolor":61,"blush-color":0,"noseBoneHigh":0.26,"blush-opacity":1.0,"blush":-1,"addBodyBlemishes-opacity":1.0,"eyeBrownForward":-0.28,"cheeksWidth":-0.54,"chinBoneLowering":0.02,"facialHair-opacity":1.0,"blemishes-color":0,"chestHair-color":0,"eyes":7,"chinBoneLength":0.02,"facialHair":-1,"blemishes":-1,"addBodyBlemishes-color":0,"eyebrows":1,"freckles-color":0,"makeup-color":-1,"skinFirst":36,"sunDamage-opacity":1.0,"chestHair":16}');
INSERT INTO `playerdata` VALUES ('23', 'Rolepass', '{"Finish":1743476400.0,"RolepassBuy":false,"Points":339,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('24', 'Ammos', '{"WEAPON_PETROLCAN_AMMO":4500}');
INSERT INTO `playerdata` VALUES ('24', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('24', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('24', 'Clothings', '{"mask":{"texture":0,"item":0},"glass":{"texture":3,"item":15},"ear":{"texture":0,"item":42},"tshirt":{"texture":0,"item":106},"pants":{"texture":3,"item":147},"torso":{"texture":0,"item":605},"backpack":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"shoes":{"texture":2,"item":31},"arms":{"texture":0,"item":0},"accessory":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"hat":{"texture":0,"item":241}}');
INSERT INTO `playerdata` VALUES ('24', 'Datatable', '{"Health":170,"Armour":0,"Skin":"mp_m_freemode_01","Hunger":76,"Pos":{"y":-372.94,"z":36.72,"x":-1331.96},"Inventory":{"5":{"item":"hamburger-1742019376","amount":4},"6":{"item":"identity-24","amount":1},"7":{"item":"dollars","amount":5683},"8":{"item":"cellphone-1742019376","amount":1},"1":{"item":"plasticbottle","amount":2},"2":{"item":"alcohol","amount":4},"3":{"item":"WEAPON_PETROLCAN-44U0S8","amount":1},"4":{"amount":8,"item":"credential"},"9":{"item":"debitcard-24","amount":1}},"Stress":0,"Weight":40,"Thirst":76}');
INSERT INTO `playerdata` VALUES ('24', 'Experience', '{"Bus":32,"Transporter":0,"Hunting":0,"Garbageman":0,"Boosting":0,"Dismantle":0,"Trucker":0,"Fisherman":0,"Driver":0,"Delivery":0,"Lumberman":0,"Taxi":18,"Minerman":0}');
INSERT INTO `playerdata` VALUES ('24', 'nation_char', '{"chinHole":0.0,"shapeSecond":2,"hair-highlightcolor":0,"makeup":-1,"overlay":0,"eyesOpenning":0.0,"eyebrows-opacity":1.0,"eyes":2,"blush-opacity":1.0,"ageing-opacity":1.0,"ageing":-1,"lipstick":-1,"sunDamage-opacity":1.0,"noseBoneTwist":0.0,"shapeMix":0.60000002384185,"cheeksBoneWidth":0.0,"nosePeakLength":0.0,"eyebrows-color":61,"lipsThickness":1.0,"nosePeakLowering":0.0,"chinBoneLowering":0.0,"cheeksWidth":0.0,"blemishes":-1,"blemishes-color":0,"makeup-color":-1,"lipstick-opacity":1.0,"shapeThird":0,"chestHair-color":0,"addBodyBlemishes-color":0,"addBodyBlemishes-opacity":1.0,"sunDamage":-1,"skinMix":0.20000000298023,"gender":"male","freckles-opacity":1.0,"complexion-opacity":1.0,"chestHair":-1,"makeup-opacity":1.0,"bodyBlemishes-opacity":1.0,"lipstick-color":0,"jawBoneWidth":0.0,"hair-color":0,"nosePeakHeight":0.0,"jawBoneBackLength":0.0,"shapeFirst":23,"blush-color":0,"skinThird":0,"freckles":-1,"addBodyBlemishes":-1,"chestHair-opacity":1.0,"chinBoneWidth":0.0,"eyebrows":33,"complexion":-1,"facialHair-color":0,"thirdMix":0.0,"facialHair-opacity":1.0,"cheeksBoneHigh":0.0,"chinBoneLength":0.0,"sunDamage-color":0,"skinSecond":45,"bodyBlemishes":-1,"blemishes-opacity":1.0,"freckles-color":0,"blush":-1,"eyeBrownHigh":0.0,"eyeBrownForward":0.0,"complexion-color":0,"skinFirst":25,"neckThickness":0.0,"facialHair":3,"noseBoneHigh":0.0,"bodyBlemishes-color":0,"noseWidth":-0.53,"ageing-color":0,"hair":16}');
INSERT INTO `playerdata` VALUES ('24', 'Rolepass', '{"Points":50}');
INSERT INTO `playerdata` VALUES ('25', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('25', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('25', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('25', 'Clothings', '{"arms":{"texture":0,"item":5},"accessory":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"hat":{"texture":0,"item":239},"glass":{"texture":0,"item":-1},"bracelet":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"torso":{"texture":2,"item":559},"decals":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"pants":{"texture":3,"item":15},"tshirt":{"texture":0,"item":15},"shoes":{"texture":0,"item":5},"mask":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('25', 'Datatable', '{"Stress":0,"Weight":40,"Thirst":71,"Hunger":71,"Armour":0,"Pos":{"x":562.51,"y":-242.33,"z":49.98},"Inventory":{"6":{"amount":1,"item":"identity-25"},"4":{"amount":2,"item":"water"},"5":{"amount":5,"item":"hamburger-1742045028"},"2":{"amount":1100,"item":"dollars"},"3":{"amount":1,"item":"cellphone-1742045028"}},"Health":190,"Skin":"mp_m_freemode_01"}');
INSERT INTO `playerdata` VALUES ('25', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('25', 'nation_char', '{"chinHole":0.1,"shapeSecond":3,"hair-highlightcolor":0,"makeup":88,"overlay":0,"eyesOpenning":0.62,"eyebrows-opacity":1.0,"eyes":29,"blush-opacity":1.0,"cheeksBoneHigh":0.34,"ageing":-1,"lipstick":-1,"sunDamage-opacity":1.0,"noseBoneTwist":0.0,"shapeMix":1.0,"cheeksBoneWidth":-0.06,"nosePeakLength":0.0,"eyebrows-color":0,"lipsThickness":-1.0,"nosePeakLowering":0.0,"chinBoneLowering":0.35,"cheeksWidth":0.41,"blemishes":-1,"blemishes-color":0,"makeup-color":56,"lipstick-opacity":1.0,"shapeThird":0,"chestHair-color":0,"addBodyBlemishes-color":0,"facialHair-color":0,"freckles-color":0,"skinMix":1.0,"gender":"male","freckles-opacity":1.0,"complexion-opacity":1.0,"addBodyBlemishes":-1,"makeup-opacity":1.0,"bodyBlemishes-opacity":1.0,"lipstick-color":0,"neckThickness":1.0,"hair-color":0,"shapeFirst":23,"jawBoneBackLength":0.96,"nosePeakHeight":0.26,"blush-color":0,"skinThird":0,"thirdMix":0.0,"addBodyBlemishes-opacity":1.0,"sunDamage":-1,"chinBoneWidth":0.0,"eyebrows":4,"complexion":-1,"blemishes-opacity":1.0,"noseWidth":0.63,"facialHair-opacity":1.0,"bodyBlemishes":-1,"chinBoneLength":0.55,"chestHair-opacity":1.0,"skinSecond":2,"eyeBrownForward":-1.0,"ageing-color":0,"complexion-color":0,"blush":-1,"eyeBrownHigh":1.0,"freckles":-1,"ageing-opacity":1.0,"skinFirst":22,"chestHair":-1,"jawBoneWidth":0.33,"noseBoneHigh":0.0,"bodyBlemishes-color":0,"sunDamage-color":0,"facialHair":11,"hair":1}');
INSERT INTO `playerdata` VALUES ('26', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('26', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('26', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('26', 'Clothings', '{"vest":{"texture":0,"item":0},"accessory":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"torso":{"texture":6,"item":555},"arms":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"tshirt":{"texture":0,"item":15},"mask":{"texture":0,"item":0},"shoes":{"texture":0,"item":9},"hat":{"texture":0,"item":-1},"pants":{"texture":0,"item":35},"glass":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"watch":{"texture":0,"item":3}}');
INSERT INTO `playerdata` VALUES ('26', 'Datatable', '{"Hunger":39,"Stress":0,"Skin":"mp_m_freemode_01","Thirst":52,"Pos":{"z":32.3,"x":1507.93,"y":3793.97},"Inventory":{"8":{"amount":1,"item":"creditcard-26"},"9":{"amount":4,"item":"plasticbottle"},"15":{"amount":1,"item":"orangejuice-1742060354"},"2":{"amount":625,"item":"dollars"},"3":{"amount":1,"item":"cellphone-1742046367"},"4":{"amount":2,"item":"sushi-1742061409"},"1":{"amount":1,"item":"fishingrod-1742066293"},"6":{"amount":1,"item":"identity-26"},"7":{"amount":1,"item":"debitcard-26"},"10":{"amount":1,"item":"canofcorn-1742048921"},"5":{"amount":3,"item":"hamburger-1742046367"}},"Weight":40,"Armour":0,"Health":190}');
INSERT INTO `playerdata` VALUES ('26', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Trucker":0,"Fisherman":4,"Minerman":0,"Hunting":0,"Boosting":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('26', 'nation_char', '{"chinHole":0.0,"shapeSecond":43,"ageing-color":0,"makeup":-1,"overlay":0,"bodyBlemishes":-1,"eyebrows-opacity":1.0,"eyes":2,"blush-opacity":1.0,"ageing-opacity":1.0,"ageing":-1,"lipstick":-1,"sunDamage-opacity":1.0,"noseBoneTwist":0.0,"shapeMix":0.80000001192092,"cheeksBoneWidth":0.0,"eyeBrownForward":-0.13,"eyebrows-color":0,"freckles":-1,"nosePeakLowering":0.0,"chinBoneLowering":0.0,"cheeksWidth":0.0,"blemishes":-1,"blemishes-color":0,"makeup-color":-1,"lipstick-opacity":1.0,"shapeThird":0,"chestHair-color":0,"addBodyBlemishes-color":0,"facialHair-color":0,"sunDamage":-1,"skinMix":0.79000002145767,"gender":"male","freckles-opacity":1.0,"complexion-opacity":1.0,"addBodyBlemishes":-1,"makeup-opacity":1.0,"bodyBlemishes-opacity":1.0,"lipstick-color":0,"neckThickness":0.82,"hair-color":0,"shapeFirst":31,"jawBoneBackLength":0.0,"chestHair":-1,"blush-color":0,"skinThird":0,"chestHair-opacity":1.0,"addBodyBlemishes-opacity":1.0,"nosePeakLength":0.0,"chinBoneWidth":0.01,"eyebrows":28,"complexion":-1,"complexion-color":0,"thirdMix":0.0,"facialHair-opacity":1.0,"sunDamage-color":0,"chinBoneLength":0.0,"freckles-color":0,"skinSecond":0,"eyesOpenning":0.04,"skinFirst":21,"facialHair":18,"blush":-1,"eyeBrownHigh":0.87,"cheeksBoneHigh":0.0,"noseWidth":-0.71,"hair-highlightcolor":0,"jawBoneWidth":0.1,"blemishes-opacity":1.0,"noseBoneHigh":0.0,"bodyBlemishes-color":0,"lipsThickness":-0.01,"nosePeakHeight":0.0,"hair":55}');
INSERT INTO `playerdata` VALUES ('26', 'Rolepass', '{"Points":4}');
INSERT INTO `playerdata` VALUES ('27', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('27', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('27', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('27', 'Clothings', '{"ear":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"shoes":{"texture":0,"item":35},"accessory":{"texture":0,"item":0},"glass":{"texture":3,"item":25},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"torso":{"texture":9,"item":81},"tshirt":{"texture":0,"item":2},"backpack":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"arms":{"texture":0,"item":0},"pants":{"texture":6,"item":67},"decals":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('27', 'Datatable', '{"Hunger":75,"Thirst":75,"Skin":"mp_f_freemode_01","Stress":0,"Pos":{"z":13.99,"x":-1008.3,"y":-2688.15},"Inventory":{"2":{"amount":1,"item":"gift"},"3":{"amount":1500,"item":"dollars"},"1":{"amount":1,"item":"identity-27"},"6":{"amount":1,"item":"cellphone-1742070204"},"4":{"amount":5,"item":"hamburger-1742070204"},"5":{"amount":2,"item":"water"}},"Weight":40,"Armour":0,"Health":200}');
INSERT INTO `playerdata` VALUES ('27', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('27', 'nation_char', '{"jawBoneBackLength":-1.0,"makeup-opacity":1.0,"blush":12,"facialHair":-1,"addBodyBlemishes-color":0,"bodyBlemishes-opacity":1.0,"cheeksWidth":0.24,"chestHair-color":0,"nosePeakHeight":-0.28,"cheeksBoneWidth":-1.0,"skinFirst":0,"freckles-color":0,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.0,"cheeksBoneHigh":-0.65,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"jawBoneWidth":-0.54,"chinBoneLength":-0.29,"nosePeakLowering":-0.13,"freckles":-1,"ageing":-1,"noseBoneTwist":0.0,"noseBoneHigh":0.48,"chinBoneLowering":-0.25,"bodyBlemishes-color":0,"skinSecond":4,"chestHair-opacity":1.0,"shapeSecond":0,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":0.31999999284744,"chestHair":-1,"thirdMix":0.0,"chinBoneWidth":-0.31,"addBodyBlemishes":-1,"hair-color":29,"hair-highlightcolor":29,"eyes":23,"gender":"female","makeup":-1,"lipstick-opacity":1.0,"chinHole":0.0,"freckles-opacity":1.0,"shapeFirst":45,"sunDamage-color":0,"noseWidth":-0.9,"blemishes-color":0,"facialHair-color":0,"eyebrows-opacity":1.0,"eyebrows-color":29,"lipstick":-1,"eyebrows":2,"eyeBrownForward":0.1,"bodyBlemishes":-1,"overlay":0,"skinMix":0.49000000953674,"complexion-color":0,"lipstick-color":0,"blemishes-opacity":1.0,"eyesOpenning":-0.18,"ageing-color":0,"complexion":-1,"nosePeakLength":0.35,"hair":37,"lipsThickness":-0.7,"sunDamage":-1,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"facialHair-opacity":1.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('28', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('28', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('28', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('28', 'Clothings', '{"backpack":{"texture":0,"item":0},"shoes":{"texture":0,"item":0},"torso":{"texture":0,"item":595},"accessory":{"texture":0,"item":49},"tshirt":{"texture":0,"item":15},"watch":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"glass":{"texture":0,"item":70},"decals":{"texture":0,"item":0},"arms":{"texture":0,"item":0},"pants":{"texture":0,"item":6},"hat":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('28', 'Datatable', '{"Pos":{"z":57.74,"y":-170.61,"x":545.04},"Skin":"mp_m_freemode_01","Armour":0,"Stress":0,"Weight":40,"Hunger":49,"Health":138,"Thirst":17,"Inventory":{"10":{"item":"hamburger-1742094656","amount":1},"9":{"item":"water","amount":1},"1":{"amount":1,"item":"WEAPON_BAT-1742077874"},"6":{"amount":1,"item":"cellphone-1742074998"},"5":{"item":"cigarette","amount":2},"8":{"amount":1,"item":"identity-28"},"7":{"amount":19,"item":"plasticbottle"},"2":{"amount":29229,"item":"dollars2"},"4":{"item":"canopener","amount":1},"3":{"item":"dollars","amount":256}}}');
INSERT INTO `playerdata` VALUES ('28', 'Experience', '{"Lumberman":0,"Trucker":0,"Driver":0,"Hunting":0,"Fisherman":0,"Minerman":0,"Boosting":0,"Garbageman":0,"Dismantle":0,"Transporter":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('28', 'nation_char', '{"addBodyBlemishes":-1,"shapeSecond":44,"eyebrows-color":0,"eyesOpenning":0.0,"chinBoneWidth":0.0,"gender":"male","cheeksBoneWidth":0.0,"shapeMix":0.63999998569488,"hair-color":0,"complexion":-1,"facialHair-color":0,"neckThickness":0.0,"blush":22,"chinBoneLowering":0.0,"freckles-color":0,"cheeksWidth":0.0,"skinFirst":17,"blemishes":-1,"noseBoneHigh":0.0,"noseBoneTwist":0.0,"sunDamage-color":0,"complexion-color":0,"bodyBlemishes":-1,"lipstick-color":0,"ageing":-1,"freckles":-1,"nosePeakLength":0.0,"chestHair-opacity":1.0,"makeup-opacity":1.0,"eyebrows-opacity":1.0,"blush-color":56,"eyebrows":1,"chinBoneLength":0.0,"jawBoneWidth":0.0,"freckles-opacity":1.0,"lipstick":-1,"bodyBlemishes-color":0,"skinThird":0,"hair-highlightcolor":0,"shapeFirst":31,"facialHair-opacity":1.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"jawBoneBackLength":0.0,"thirdMix":0.0,"ageing-opacity":1.0,"nosePeakLowering":0.0,"blemishes-color":0,"sunDamage-opacity":1.0,"makeup":-1,"chestHair-color":0,"eyeBrownHigh":0.0,"skinSecond":0,"blush-opacity":1.0,"blemishes-opacity":1.0,"addBodyBlemishes-color":0,"eyes":3,"shapeThird":0,"noseWidth":0.0,"cheeksBoneHigh":0.0,"complexion-opacity":1.0,"eyeBrownForward":0.0,"overlay":0,"chestHair":-1,"makeup-color":-1,"sunDamage":-1,"lipstick-opacity":1.0,"hair":21,"lipsThickness":0.0,"addBodyBlemishes-opacity":1.0,"chinHole":0.0,"nosePeakHeight":0.0,"facialHair":18,"skinMix":0.80000001192092}');
INSERT INTO `playerdata` VALUES ('28', 'Rolepass', '{"Free":0,"Finish":1743476400.0,"Points":0,"RolepassBuy":false,"Premium":0}');
INSERT INTO `playerdata` VALUES ('28', 'Tatuagens', '{"tattoos":["MP_Bea_M_Head_001","MP_Smuggler_Tattoo_011_M","MP_Vinewood_Tat_019_M","MP_Vinewood_Tat_028_M"],"overlay":0}');
INSERT INTO `playerdata` VALUES ('29', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('29', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('29', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('29', 'Clothings', '{"ear":{"item":-1,"texture":0},"hat":{"item":45,"texture":0},"shoes":{"item":162,"texture":3},"arms":{"item":101,"texture":1},"glass":{"item":36,"texture":1},"vest":{"item":0,"texture":0},"tshirt":{"item":38,"texture":0},"accessory":{"item":215,"texture":1},"torso":{"item":773,"texture":0},"backpack":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"pants":{"item":273,"texture":0},"decals":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('29', 'Datatable', '{"Hunger":49,"Stress":0,"Weight":40,"Thirst":15,"Pos":{"z":43.27,"x":301.03,"y":-595.8},"Inventory":{"2":{"amount":1,"item":"chickenfries-1742075422"},"3":{"amount":20,"item":"dollars"},"8":{"amount":1,"item":"plasticbottle"},"1":{"amount":1,"item":"identity-29"},"6":{"amount":1,"item":"cellphone-1742078567"},"4":{"amount":2,"item":"hamburger-1742078567"},"5":{"amount":1,"item":"water"}},"Skin":"mp_f_freemode_01","Armour":0,"Health":151}');
INSERT INTO `playerdata` VALUES ('29', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Boosting":0,"Fisherman":0,"Minerman":0,"Hunting":0,"Trucker":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('29', 'nation_char', '{"jawBoneBackLength":0.05,"makeup-opacity":0.8,"blush":5,"facialHair":-1,"addBodyBlemishes-color":0,"bodyBlemishes-opacity":1.0,"cheeksWidth":-0.05,"nosePeakLength":0.59,"nosePeakHeight":0.55,"cheeksBoneWidth":0.11,"lipsThickness":-0.22,"sunDamage":-1,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.08,"cheeksBoneHigh":-0.25,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"jawBoneWidth":0.07,"chinBoneLength":-0.47,"nosePeakLowering":0.22,"freckles":4,"ageing":-1,"noseBoneTwist":0.0,"noseBoneHigh":0.61,"chinBoneLowering":-0.36,"bodyBlemishes-color":0,"skinSecond":14,"overlay":0,"shapeSecond":45,"complexion-opacity":1.0,"blush-opacity":0.64,"shapeMix":0.09000000357627,"chestHair":10,"thirdMix":0.0,"chinBoneWidth":-0.03,"addBodyBlemishes":-1,"shapeFirst":21,"hair-highlightcolor":38,"sunDamage-color":0,"gender":"female","makeup":13,"lipstick-opacity":1.0,"chinHole":0.0,"skinFirst":34,"blemishes-color":0,"ageing-color":0,"eyeBrownForward":0.12,"chestHair-opacity":1.0,"hair-color":55,"complexion-color":0,"eyebrows-color":0,"noseWidth":-0.73,"eyebrows":11,"blemishes-opacity":1.0,"bodyBlemishes":-1,"lipstick":4,"skinMix":0.28000000119209,"eyebrows-opacity":1.0,"lipstick-color":0,"eyes":19,"eyesOpenning":0.11,"freckles-opacity":1.0,"complexion":5,"facialHair-color":0,"hair":9,"chestHair-color":0,"freckles-color":0,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"facialHair-opacity":1.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('30', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('30', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('30', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('30', 'Clothings', '{"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"glass":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"pants":{"texture":0,"item":0},"tshirt":{"texture":0,"item":1},"watch":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"accessory":{"texture":0,"item":0},"arms":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"torso":{"texture":0,"item":0},"shoes":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('30', 'Datatable', '{"Hunger":35,"Stress":0,"Weight":40,"Thirst":35,"Pos":{"z":29.49,"x":427.44,"y":-799.76},"Inventory":{"2":{"amount":1,"item":"gift"},"3":{"amount":1500,"item":"dollars"},"1":{"amount":1,"item":"identity-30"},"6":{"amount":1,"item":"cellphone-1742081614"},"4":{"amount":5,"item":"hamburger-1742081614"},"5":{"amount":2,"item":"water"}},"Skin":"mp_m_freemode_01","Armour":0,"Health":200}');
INSERT INTO `playerdata` VALUES ('30', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Boosting":0,"Fisherman":0,"Minerman":0,"Hunting":0,"Trucker":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('30', 'nation_char', '{"jawBoneBackLength":-0.49,"makeup-opacity":1.0,"blush":-1,"facialHair":-1,"addBodyBlemishes-color":0,"facialHair-color":0,"cheeksWidth":-0.43,"nosePeakLength":-0.37,"nosePeakHeight":-0.32,"cheeksBoneWidth":-0.61,"eyes":2,"sunDamage":-1,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.0,"cheeksBoneHigh":-0.68,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"jawBoneWidth":-0.67,"chinBoneLength":-0.45,"nosePeakLowering":-0.22,"freckles":-1,"ageing":-1,"noseBoneTwist":0.0,"noseBoneHigh":0.0,"chinBoneLowering":-0.24,"bodyBlemishes-color":0,"skinSecond":0,"overlay":0,"shapeSecond":0,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":0.80000001192092,"ageing-color":0,"thirdMix":0.0,"chinBoneWidth":-0.68,"addBodyBlemishes":-1,"shapeFirst":22,"hair-highlightcolor":0,"chestHair":-1,"gender":"male","complexion-color":0,"lipstick-opacity":1.0,"chinHole":0.0,"blemishes-color":0,"skinFirst":21,"eyeBrownForward":0.0,"makeup":-1,"noseWidth":-0.4,"eyesOpenning":0.0,"freckles-opacity":1.0,"eyebrows-color":0,"eyebrows-opacity":1.0,"eyebrows":-1,"freckles-color":0,"bodyBlemishes":-1,"chestHair-opacity":1.0,"skinMix":0.80000001192092,"lipstick":-1,"lipstick-color":0,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"chestHair-color":0,"complexion":-1,"hair-color":29,"hair":52,"facialHair-opacity":1.0,"blemishes-opacity":1.0,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"lipsThickness":0.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('30', 'Rolepass', '{"Free":0,"Finish":1743476400.0,"Points":0,"RolepassBuy":false,"Premium":0}');
INSERT INTO `playerdata` VALUES ('31', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('31', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('31', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('31', 'Clothings', '{"arms":{"texture":0,"item":303},"hat":{"texture":0,"item":-1},"shoes":{"texture":0,"item":35},"ear":{"texture":0,"item":-1},"glass":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"tshirt":{"texture":1,"item":382},"torso":{"texture":1,"item":744},"bracelet":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"accessory":{"texture":0,"item":181},"pants":{"texture":0,"item":15},"decals":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('31', 'Datatable', '{"Hunger":41,"Stress":0,"Weight":40,"Thirst":19,"Pos":{"z":43.25,"x":299.46,"y":-580.47},"Inventory":{"2":{"amount":1,"item":"cellphone-1742082445"},"3":{"amount":590,"item":"dollars"},"1":{"amount":1,"item":"identity-31"},"7":{"amount":1,"item":"plasticbottle"},"4":{"amount":4,"item":"hamburger-1742082445"},"5":{"amount":1,"item":"water"}},"Skin":"mp_f_freemode_01","Armour":0,"Health":165}');
INSERT INTO `playerdata` VALUES ('31', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Boosting":0,"Fisherman":0,"Minerman":0,"Hunting":0,"Trucker":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('31', 'nation_char', '{"jawBoneBackLength":-0.96,"blemishes-color":0,"blush":11,"facialHair":-1,"addBodyBlemishes-color":0,"facialHair-color":0,"cheeksWidth":-0.22,"chestHair-color":0,"nosePeakHeight":-0.13,"cheeksBoneWidth":-0.51,"eyes":1,"freckles-color":0,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.26,"cheeksBoneHigh":-0.05,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"jawBoneWidth":-0.14,"chinBoneLength":-0.05,"nosePeakLowering":-0.26,"freckles":-1,"noseWidth":-1.0,"noseBoneTwist":0.0,"noseBoneHigh":0.0,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"skinSecond":45,"chestHair-opacity":1.0,"shapeSecond":45,"complexion-opacity":1.0,"blush-opacity":0.96,"shapeMix":0.40000000596046,"chestHair":-1,"thirdMix":0.0,"chinBoneWidth":-0.01,"addBodyBlemishes":-1,"hair-color":20,"hair-highlightcolor":53,"sunDamage-color":0,"gender":"female","makeup":3,"lipstick-opacity":0.86,"chinHole":0.0,"facialHair-opacity":1.0,"skinFirst":45,"lipstick":4,"blemishes-opacity":1.0,"eyeBrownForward":-1.0,"overlay":0,"ageing":-1,"eyebrows-color":19,"makeup-opacity":1.0,"eyebrows":30,"shapeFirst":27,"bodyBlemishes":-1,"chinBoneLowering":0.19,"skinMix":0.5,"complexion-color":0,"lipstick-color":24,"bodyBlemishes-opacity":1.0,"eyesOpenning":0.6,"ageing-color":0,"complexion":5,"lipsThickness":-0.7,"hair":37,"sunDamage":-1,"freckles-opacity":1.0,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"nosePeakLength":0.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('32', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('32', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('32', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('32', 'Clothings', '{"ear":{"texture":2,"item":17},"hat":{"texture":0,"item":-1},"shoes":{"texture":2,"item":6},"arms":{"texture":0,"item":0},"glass":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15},"mask":{"texture":1,"item":155},"torso":{"texture":2,"item":0},"backpack":{"texture":0,"item":0},"accessory":{"texture":0,"item":0},"watch":{"texture":2,"item":14},"bracelet":{"texture":0,"item":-1},"pants":{"texture":12,"item":1},"decals":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('32', 'Datatable', '{"Hunger":76,"Thirst":76,"Skin":"mp_m_freemode_01","Stress":0,"Pos":{"z":28.73,"x":73.71,"y":-1229.77},"Inventory":{"2":{"amount":2274,"item":"dollars2"},"3":{"amount":970,"item":"dollars"},"1":{"amount":1,"item":"identity-32"},"6":{"amount":1,"item":"cellphone-1742082591"},"4":{"amount":5,"item":"hamburger-1742082591"},"5":{"amount":2,"item":"water"}},"Weight":40,"Armour":0,"Health":200}');
INSERT INTO `playerdata` VALUES ('32', 'Experience', '{"Dismantle":0,"Transporter":0,"Garbageman":0,"Driver":0,"Lumberman":0,"Boosting":0,"Fisherman":0,"Minerman":0,"Hunting":0,"Delivery":0,"Trucker":0}');
INSERT INTO `playerdata` VALUES ('32', 'nation_char', '{"jawBoneBackLength":0.0,"makeup-opacity":1.0,"blush":-1,"facialHair":16,"lipstick":-1,"bodyBlemishes-opacity":1.0,"cheeksWidth":0.0,"nosePeakLength":0.0,"nosePeakHeight":0.0,"cheeksBoneWidth":0.0,"eyes":20,"sunDamage":-1,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.0,"cheeksBoneHigh":0.0,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"jawBoneWidth":0.0,"chinBoneLength":0.0,"nosePeakLowering":0.0,"freckles":0,"noseWidth":0.0,"noseBoneTwist":0.0,"noseBoneHigh":0.0,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"skinSecond":16,"chestHair-opacity":1.0,"shapeSecond":44,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":1.0,"ageing-color":0,"thirdMix":0.0,"chinBoneWidth":0.0,"addBodyBlemishes":-1,"shapeFirst":31,"hair-highlightcolor":56,"chestHair-color":0,"gender":"male","eyeBrownForward":0.0,"lipstick-opacity":1.0,"chinHole":0.0,"sunDamage-color":0,"freckles-color":0,"facialHair-color":61,"skinFirst":45,"facialHair-opacity":1.0,"blemishes-color":0,"blemishes-opacity":1.0,"eyebrows-color":61,"ageing":-1,"eyebrows":30,"complexion-color":0,"bodyBlemishes":-1,"chinBoneLowering":0.0,"skinMix":0.80000001192092,"hair-color":56,"lipstick-color":0,"lipsThickness":0.0,"eyesOpenning":-0.05,"makeup":-1,"complexion":-1,"addBodyBlemishes-color":0,"hair":12,"overlay":0,"chestHair":-1,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"freckles-opacity":1.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('33', 'Ammos', '{"AMMO_9":150,"AMMO_45":250}');
INSERT INTO `playerdata` VALUES ('33', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('33', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('33', 'Clothings', '{"accessory":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"torso":{"item":640,"texture":16},"glass":{"item":3,"texture":0},"arms":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":237,"texture":0},"vest":{"item":77,"texture":0},"decals":{"item":0,"texture":0},"watch":{"item":16,"texture":0},"shoes":{"item":81,"texture":0},"bracelet":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"tshirt":{"item":237,"texture":0},"mask":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('33', 'Datatable', '{"Armour":11,"Health":190,"Hunger":38,"Pos":{"y":-846.67,"z":18.87,"x":-872.32},"Skin":"mp_m_freemode_01","Thirst":38,"Weight":40,"Inventory":{"10":{"amount":1,"item":"radio-1742423105"},"5":{"amount":1,"item":"WEAPON_SMG-1742423028-S9H9W0"},"6":{"amount":1,"item":"cellphone-1742102870"},"21":{"amount":1,"item":"debitcard-33"},"1":{"amount":1,"item":"handcuff-1742423005"},"2":{"amount":1,"item":"WEAPON_NIGHTSTICK-1742423122"},"3":{"amount":1,"item":"WEAPON_STUNGUN-1742423070"},"4":{"amount":1,"item":"WEAPON_COMBATPISTOL-1742423051-18299A"}},"Stress":0}');
INSERT INTO `playerdata` VALUES ('33', 'Experience', '{"Driver":0,"Taxi":22,"Minerman":0,"Boosting":0,"Trucker":0,"Dismantle":0,"Transporter":0,"Fisherman":0,"Delivery":0,"Garbageman":0,"Lumberman":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('33', 'nation_char', '{"jawBoneBackLength":0.0,"blemishes-color":0,"blush":-1,"facialHair":20,"lipstick":-1,"blemishes-opacity":1.0,"cheeksWidth":0.0,"nosePeakLength":-0.6,"nosePeakHeight":0.0,"cheeksBoneWidth":0.0,"lipsThickness":0.0,"sunDamage":-1,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":-0.1,"cheeksBoneHigh":0.0,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"facialHair-opacity":1.0,"chinBoneLength":0.0,"nosePeakLowering":-0.11,"freckles":-1,"ageing":-1,"noseBoneTwist":-0.21,"noseBoneHigh":-0.4,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"skinSecond":4,"overlay":0,"shapeSecond":13,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":0.5,"ageing-color":0,"thirdMix":0.0,"chinBoneWidth":0.0,"addBodyBlemishes":-1,"hair-color":0,"hair-highlightcolor":0,"addBodyBlemishes-color":0,"gender":"male","makeup":-1,"lipstick-opacity":1.0,"chinHole":0.0,"eyeBrownForward":-1.0,"chestHair":6,"noseWidth":0.0,"makeup-opacity":1.0,"chinBoneLowering":0.0,"jawBoneWidth":0.0,"eyes":0,"eyebrows-color":0,"complexion-color":0,"eyebrows":-1,"shapeFirst":31,"bodyBlemishes":-1,"skinMix":1.0,"freckles-opacity":1.0,"chestHair-opacity":1.0,"lipstick-color":0,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"facialHair-color":0,"complexion":-1,"skinFirst":21,"hair":127,"chestHair-color":0,"freckles-color":0,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"eyesOpenning":0.63,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('33', 'Rolepass', '{"Points":13,"Finish":1743476400.0,"Premium":0,"RolepassBuy":false,"Free":0}');
INSERT INTO `playerdata` VALUES ('34', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('34', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('34', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('34', 'Clothings', '{"ear":{"item":12,"texture":0},"vest":{"item":0,"texture":0},"glass":{"item":7,"texture":0},"arms":{"item":14,"texture":0},"decals":{"item":0,"texture":0},"shoes":{"item":9,"texture":0},"hat":{"item":-1,"texture":0},"torso":{"item":771,"texture":0},"tshirt":{"item":15,"texture":0},"bracelet":{"item":18,"texture":0},"backpack":{"item":119,"texture":0},"pants":{"item":6,"texture":0},"mask":{"item":0,"texture":0},"accessory":{"item":17,"texture":0},"watch":{"item":8,"texture":0}}');
INSERT INTO `playerdata` VALUES ('34', 'Datatable', '{"Stress":0,"Thirst":72,"Armour":0,"Pos":{"y":-927.49,"x":1149.49,"z":50.11},"Inventory":{"5":{"amount":2,"item":"water"},"4":{"amount":5,"item":"hamburger-1742090271"},"7":{"item":"cigarette","amount":7},"6":{"amount":1,"item":"cellphone-1742090271"},"9":{"item":"cannedsoup-1742099587","amount":1},"8":{"item":"cannedsoup-1742099550","amount":1},"1":{"amount":1,"item":"identity-34"},"10":{"item":"cannedsoup-1742099620","amount":1},"3":{"amount":45,"item":"dollars"},"2":{"item":"canofbeans-1742099215","amount":1}},"Weight":40,"Hunger":72,"Skin":"mp_f_freemode_01","Health":100}');
INSERT INTO `playerdata` VALUES ('34', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('34', 'nation_char', '{"jawBoneBackLength":0.0,"blemishes-color":0,"blush":-1,"facialHair":-1,"addBodyBlemishes-color":0,"blemishes-opacity":1.0,"cheeksWidth":0.26,"nosePeakLength":0.0,"nosePeakHeight":0.19,"cheeksBoneWidth":0.05,"eyes":12,"sunDamage":-1,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":-0.11,"cheeksBoneHigh":-0.58,"shapeThird":0,"neckThickness":0.0,"makeup-color":19,"blush-color":0,"jawBoneWidth":-0.27,"chinBoneLength":-0.25,"nosePeakLowering":-0.28,"freckles":-1,"noseWidth":-0.36,"noseBoneTwist":0.0,"noseBoneHigh":0.0,"chinBoneLowering":-0.1,"bodyBlemishes-color":0,"skinSecond":0,"overlay":0,"shapeSecond":2,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":0.33000001311302,"chestHair":2,"thirdMix":0.0,"chinBoneWidth":0.0,"addBodyBlemishes":-1,"shapeFirst":33,"hair-highlightcolor":3,"eyebrows-opacity":1.0,"gender":"female","eyeBrownForward":0.33,"lipstick-opacity":1.0,"chinHole":0.0,"skinFirst":21,"ageing-color":0,"sunDamage-color":0,"bodyBlemishes-opacity":1.0,"chestHair-opacity":1.0,"ageing":-1,"makeup-opacity":1.0,"eyebrows-color":1,"hair-color":3,"eyebrows":8,"facialHair-color":0,"bodyBlemishes":-1,"complexion-color":0,"freckles-opacity":1.0,"chestHair-color":0,"lipstick-color":4,"skinMix":0.20000000298023,"eyesOpenning":-0.4,"lipstick":1,"complexion":4,"lipsThickness":-0.42,"hair":18,"freckles-color":0,"makeup":7,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"facialHair-opacity":1.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('35', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('35', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('35', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('35', 'Clothings', '{"arms":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"shoes":{"item":34,"texture":0},"tshirt":{"item":15,"texture":0},"glass":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"torso":{"item":9,"texture":7},"pants":{"item":15,"texture":8},"decals":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('35', 'Datatable', '{"Hunger":92,"Thirst":92,"Skin":"mp_m_freemode_01","Stress":0,"Pos":{"z":13.95,"x":-975.85,"y":-2905.74},"Inventory":{"2":{"amount":1,"item":"gift"},"3":{"amount":1500,"item":"dollars"},"1":{"amount":1,"item":"identity-35"},"6":{"amount":1,"item":"cellphone-1742090597"},"4":{"amount":5,"item":"hamburger-1742090597"},"5":{"amount":2,"item":"water"}},"Weight":40,"Armour":0,"Health":200}');
INSERT INTO `playerdata` VALUES ('35', 'Experience', '[]');
INSERT INTO `playerdata` VALUES ('35', 'nation_char', '{"jawBoneBackLength":0.0,"blemishes-color":0,"blush":-1,"facialHair":3,"lipstick":-1,"bodyBlemishes-opacity":1.0,"cheeksWidth":0.0,"nosePeakLength":0.0,"nosePeakHeight":0.0,"cheeksBoneWidth":0.0,"eyes":0,"freckles-color":0,"sunDamage-opacity":1.0,"skinThird":0,"eyeBrownHigh":0.0,"cheeksBoneHigh":0.0,"shapeThird":0,"neckThickness":0.0,"makeup-color":-1,"blush-color":0,"facialHair-opacity":1.0,"chinBoneLength":0.0,"nosePeakLowering":0.0,"freckles":-1,"noseWidth":0.0,"noseBoneTwist":0.0,"noseBoneHigh":0.0,"chinBoneLowering":0.0,"bodyBlemishes-color":0,"skinSecond":0,"chestHair-opacity":1.0,"shapeSecond":0,"complexion-opacity":1.0,"blush-opacity":1.0,"shapeMix":0.80000001192092,"chestHair":-1,"thirdMix":0.0,"chinBoneWidth":0.0,"addBodyBlemishes":-1,"hair-color":29,"hair-highlightcolor":0,"lipsThickness":0.0,"gender":"male","complexion-color":0,"lipstick-opacity":1.0,"chinHole":0.0,"facialHair-color":29,"sunDamage-color":0,"makeup-opacity":1.0,"sunDamage":-1,"ageing-color":0,"makeup":-1,"jawBoneWidth":0.0,"eyebrows-color":0,"ageing":-1,"eyebrows":-1,"shapeFirst":21,"bodyBlemishes":-1,"chestHair-color":0,"freckles-opacity":1.0,"eyebrows-opacity":1.0,"lipstick-color":0,"blemishes-opacity":1.0,"eyesOpenning":0.0,"overlay":0,"complexion":-1,"skinFirst":21,"hair":72,"skinMix":0.80000001192092,"addBodyBlemishes-color":0,"ageing-opacity":1.0,"addBodyBlemishes-opacity":1.0,"eyeBrownForward":0.0,"blemishes":-1}');
INSERT INTO `playerdata` VALUES ('36', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('36', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('36', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('36', 'Clothings', '{"shoes":{"texture":0,"item":35},"pants":{"texture":3,"item":228},"mask":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"backpack":{"texture":0,"item":0},"decals":{"texture":0,"item":243},"accessory":{"texture":0,"item":0},"tshirt":{"texture":0,"item":2},"hat":{"texture":0,"item":-1},"watch":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"arms":{"texture":0,"item":15},"glass":{"texture":0,"item":-1},"torso":{"texture":0,"item":725},"bracelet":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('36', 'Datatable', '{"Inventory":{"5":{"item":"hamburger-1742096506","amount":4},"4":{"item":"plasticbottle","amount":2},"6":{"item":"identity-36","amount":1},"1":{"item":"cellphone-1742096506","amount":1},"3":{"item":"dollars","amount":1500}},"Thirst":100,"Armour":0,"Pos":{"y":-912.8,"x":230.51,"z":29.66},"Stress":0,"Weight":40,"Hunger":98,"Skin":"mp_f_freemode_01","Health":200}');
INSERT INTO `playerdata` VALUES ('36', 'Experience', '{"Fisherman":0,"Dismantle":0,"Minerman":0,"Lumberman":0,"Boosting":0,"Driver":0,"Garbageman":0,"Trucker":0,"Hunting":0,"Transporter":0,"Delivery":0}');
INSERT INTO `playerdata` VALUES ('36', 'nation_char', '{"hair-color":0,"eyeBrownHigh":0.0,"noseBoneHigh":0.0,"shapeMix":0.07999999821186,"eyes":0,"blemishes-opacity":1.0,"makeup-opacity":1.0,"sunDamage":-1,"noseBoneTwist":0.0,"lipstick":1,"shapeThird":0,"cheeksBoneWidth":0.0,"complexion-opacity":1.0,"chinBoneLowering":0.0,"chinBoneWidth":0.0,"blush-color":0,"ageing":-1,"gender":"female","blush":-1,"freckles-opacity":1.0,"nosePeakHeight":0.0,"chestHair":-1,"skinFirst":45,"thirdMix":0.0,"complexion":5,"chestHair-color":0,"bodyBlemishes-color":0,"facialHair-color":25,"nosePeakLowering":-0.14,"eyebrows-color":0,"blush-opacity":1.0,"overlay":0,"hair":27,"chinBoneLength":0.0,"jawBoneBackLength":-0.23,"ageing-opacity":1.0,"noseWidth":-1.0,"addBodyBlemishes-opacity":1.0,"makeup":0,"bodyBlemishes":-1,"cheeksWidth":0.0,"freckles":0,"skinThird":0,"nosePeakLength":0.87,"chestHair-opacity":1.0,"facialHair":-1,"skinSecond":0,"blemishes":-1,"eyeBrownForward":0.0,"eyebrows-opacity":1.0,"shapeSecond":6,"facialHair-opacity":1.0,"jawBoneWidth":-0.22,"blemishes-color":0,"sunDamage-opacity":1.0,"chinHole":0.0,"shapeFirst":45,"complexion-color":0,"lipsThickness":-0.73,"eyebrows":2,"addBodyBlemishes":-1,"bodyBlemishes-opacity":1.0,"neckThickness":0.0,"cheeksBoneHigh":0.0,"hair-highlightcolor":0,"skinMix":0.20000000298023,"makeup-color":-1,"lipstick-color":0,"lipstick-opacity":1.0,"addBodyBlemishes-color":0,"freckles-color":0,"eyesOpenning":0.84,"ageing-color":0,"sunDamage-color":0}');
INSERT INTO `playerdata` VALUES ('37', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('37', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('37', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('37', 'Clothings', '{"mask":{"item":0,"texture":0},"pants":{"item":17,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":68,"texture":2},"tshirt":{"item":262,"texture":0},"bracelet":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"arms":{"item":280,"texture":0},"decals":{"item":213,"texture":0},"glass":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"shoes":{"item":35,"texture":0},"accessory":{"item":0,"texture":0},"backpack":{"item":122,"texture":4},"torso":{"item":677,"texture":6}}');
INSERT INTO `playerdata` VALUES ('37', 'Datatable', '{"Hunger":0,"Stress":5,"Thirst":90,"Health":163,"Weight":40,"Skin":"mp_f_freemode_01","Inventory":{"3":{"item":"plasticbottle","amount":3},"2":{"item":"dollars","amount":1270},"1":{"item":"WEAPON_CROWBAR-1742278190","amount":1}},"Pos":{"x":258.95,"z":30.82,"y":-752.22},"Armour":0}');
INSERT INTO `playerdata` VALUES ('37', 'Driverlicense', '{"name":"Rubi Beckeer","issued":1742271116,"expiration":1744899116,"categories":{"2":"B"}}');
INSERT INTO `playerdata` VALUES ('37', 'Experience', '{"Dismantle":0,"Transporter":0,"Delivery":0,"Garbageman":0,"Fisherman":0,"Hunting":0,"Minerman":0,"Boosting":0,"Driver":0,"Lumberman":0,"Trucker":0}');
INSERT INTO `playerdata` VALUES ('37', 'nation_char', '{"skinSecond":0,"sunDamage":-1,"ageing":-1,"sunDamage-opacity":1.0,"shapeMix":0.0,"shapeThird":0,"ageing-opacity":1.0,"chinBoneLowering":0.0,"nosePeakHeight":0.0,"facialHair-color":0,"skinFirst":21,"shapeSecond":21,"eyebrows":7,"cheeksBoneHigh":-0.08,"blush-color":24,"jawBoneWidth":-0.1,"blush-opacity":1.0,"eyesOpenning":0.0,"thirdMix":0.0,"freckles-opacity":1.0,"chinBoneWidth":0.0,"skinThird":0,"makeup-color":-1,"sunDamage-color":0,"eyes":23,"nosePeakLength":1.0,"blush":4,"addBodyBlemishes-opacity":1.0,"noseBoneTwist":0.0,"hair":219,"ageing-color":0,"jawBoneBackLength":0.11,"addBodyBlemishes-color":0,"complexion-opacity":1.0,"facialHair":-1,"freckles-color":0,"blemishes-color":0,"lipstick":3,"complexion-color":0,"bodyBlemishes-color":0,"lipstick-opacity":1.0,"noseBoneHigh":0.0,"chestHair-color":0,"bodyBlemishes":-1,"eyebrows-opacity":1.0,"overlay":0,"chestHair":4,"addBodyBlemishes":-1,"chestHair-opacity":1.0,"facialHair-opacity":1.0,"chinHole":0.0,"eyebrows-color":61,"noseWidth":-1.0,"cheeksBoneWidth":-0.25,"lipstick-color":0,"blemishes-opacity":1.0,"complexion":-1,"hair-color":61,"nosePeakLowering":-0.73,"hair-highlightcolor":61,"chinBoneLength":0.0,"makeup":23,"eyeBrownForward":0.0,"blemishes":-1,"skinMix":0.20000000298023,"freckles":-1,"eyeBrownHigh":0.95,"gender":"female","neckThickness":0.0,"makeup-opacity":1.0,"cheeksWidth":-1.0,"bodyBlemishes-opacity":1.0,"lipsThickness":-1.0,"shapeFirst":21}');
INSERT INTO `playerdata` VALUES ('38', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('38', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('38', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('38', 'Clothings', '{"mask":{"texture":0,"item":0},"shoes":{"texture":0,"item":34},"accessory":{"texture":1,"item":228},"backpack":{"texture":0,"item":0},"pants":{"texture":8,"item":208},"arms":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"tshirt":{"texture":0,"item":15},"torso":{"texture":0,"item":570},"ear":{"texture":1,"item":42},"decals":{"texture":0,"item":0},"glass":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('38', 'Datatable', '{"Hunger":91,"Armour":0,"Pos":{"z":18.01,"x":-74.96,"y":-2004.64},"Health":200,"Stress":0,"Skin":"mp_m_freemode_01","Inventory":{"2":{"item":"dollars","amount":1450},"3":{"item":"hamburger-1742143115","amount":4},"4":{"item":"cellphone-1742143115","amount":1},"5":{"item":"identity-38","amount":1},"7":{"item":"plasticbottle","amount":1},"1":{"item":"water","amount":1}},"Thirst":82,"Weight":40}');
INSERT INTO `playerdata` VALUES ('38', 'Experience', '{"Minerman":0,"Garbageman":0,"Boosting":0,"Dismantle":0,"Transporter":0,"Lumberman":0,"Fisherman":0,"Delivery":0,"Trucker":0,"Hunting":0,"Driver":0}');
INSERT INTO `playerdata` VALUES ('38', 'nation_char', '{"blush":-1,"shapeSecond":0,"nosePeakLength":0.0,"freckles":-1,"freckles-color":0,"cheeksBoneWidth":0.0,"jawBoneBackLength":0.0,"neckThickness":0.0,"eyesOpenning":0.0,"hair":12,"eyes":27,"ageing":-1,"sunDamage":-1,"chestHair-color":0,"skinMix":0.72000002861022,"facialHair-color":29,"freckles-opacity":1.0,"lipstick":-1,"chinBoneLowering":0.0,"ageing-opacity":1.0,"lipstick-opacity":1.0,"chestHair-opacity":1.0,"complexion-color":0,"eyebrows":12,"overlay":0,"addBodyBlemishes-opacity":1.0,"skinFirst":21,"skinThird":0,"shapeFirst":21,"chestHair":-1,"cheeksWidth":-0.14,"hair-color":29,"shapeMix":0.81000000238418,"noseWidth":0.0,"eyeBrownHigh":0.0,"bodyBlemishes":-1,"lipstick-color":0,"blush-opacity":1.0,"noseBoneTwist":0.0,"sunDamage-color":0,"makeup-opacity":1.0,"eyebrows-opacity":1.0,"makeup":-1,"chinBoneLength":0.0,"makeup-color":-1,"addBodyBlemishes":-1,"complexion":-1,"blemishes-opacity":1.0,"nosePeakHeight":0.0,"blush-color":0,"complexion-opacity":1.0,"facialHair-opacity":1.0,"jawBoneWidth":0.0,"thirdMix":0.0,"sunDamage-opacity":1.0,"eyeBrownForward":0.0,"hair-highlightcolor":33,"lipsThickness":0.0,"noseBoneHigh":0.0,"bodyBlemishes-color":0,"shapeThird":0,"nosePeakLowering":0.0,"blemishes":-1,"chinBoneWidth":0.0,"facialHair":3,"chinHole":0.0,"cheeksBoneHigh":0.0,"gender":"male","skinSecond":3,"addBodyBlemishes-color":0,"eyebrows-color":0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"blemishes-color":0}');
INSERT INTO `playerdata` VALUES ('38', 'Rolepass', '{"Premium":0,"Points":0,"RolepassBuy":false,"Finish":1743476400.0,"Free":0}');
INSERT INTO `playerdata` VALUES ('39', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('39', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('39', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('39', 'Clothings', '{"arms":{"item":0,"texture":0},"mask":{"item":249,"texture":0},"backpack":{"item":0,"texture":0},"torso":{"item":247,"texture":2},"tshirt":{"item":8,"texture":0},"decals":{"item":0,"texture":0},"shoes":{"item":5,"texture":7},"ear":{"item":-1,"texture":0},"hat":{"item":131,"texture":14},"glass":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"pants":{"item":55,"texture":2},"bracelet":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"accessory":{"item":9,"texture":0}}');
INSERT INTO `playerdata` VALUES ('39', 'Datatable', '{"Health":200,"Pos":{"y":-2731.33,"z":20.2,"x":-1039.41},"Hunger":78,"Armour":0,"Skin":"mp_m_freemode_01","Inventory":{"5":{"item":"identity-39","amount":1},"6":{"item":"dollars","amount":1500},"1":{"item":"hamburger-1742183916","amount":5},"2":{"item":"water","amount":2},"3":{"item":"cellphone-1742183916","amount":1},"4":{"item":"gift","amount":1}},"Thirst":78,"Weight":40,"Stress":0}');
INSERT INTO `playerdata` VALUES ('39', 'Experience', '{"Delivery":0,"Lumberman":0,"Minerman":0,"Hunting":0,"Driver":0,"Boosting":0,"Transporter":0,"Trucker":0,"Garbageman":0,"Dismantle":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('39', 'nation_char', '{"blush":-1,"shapeMix":0.80000001192092,"lipstick-color":0,"hair":98,"blush-opacity":1.0,"sunDamage-opacity":1.0,"facialHair-color":0,"addBodyBlemishes-color":0,"noseWidth":0.0,"eyebrows":-1,"overlay":0,"blemishes":-1,"shapeSecond":4,"hair-highlightcolor":0,"sunDamage-color":0,"bodyBlemishes-opacity":1.0,"noseBoneHigh":0.0,"makeup":34,"skinMix":1.0,"cheeksBoneWidth":0.0,"makeup-color":-1,"eyebrows-opacity":1.0,"freckles-color":0,"lipstick":-1,"eyebrows-color":0,"addBodyBlemishes-opacity":1.0,"blemishes-color":0,"lipsThickness":0.0,"noseBoneTwist":0.0,"makeup-opacity":1.0,"eyesOpenning":1.0,"nosePeakLowering":0.0,"skinThird":0,"complexion-color":0,"bodyBlemishes":7,"gender":"male","cheeksWidth":0.0,"chestHair-color":0,"nosePeakLength":0.0,"ageing-opacity":1.0,"chinBoneLength":0.0,"hair-color":0,"freckles-opacity":1.0,"addBodyBlemishes":0,"blemishes-opacity":1.0,"cheeksBoneHigh":0.0,"eyes":28,"blush-color":0,"shapeThird":0,"thirdMix":0.0,"bodyBlemishes-color":0,"lipstick-opacity":1.0,"skinSecond":3,"nosePeakHeight":0.0,"shapeFirst":21,"freckles":-1,"chinHole":0.0,"skinFirst":21,"complexion-opacity":1.0,"eyeBrownHigh":0.0,"facialHair":-1,"eyeBrownForward":0.0,"facialHair-opacity":1.0,"ageing-color":0,"complexion":-1,"ageing":-1,"chinBoneWidth":0.0,"chestHair-opacity":1.0,"chinBoneLowering":0.0,"chestHair":6,"neckThickness":0.0,"jawBoneBackLength":0.0,"sunDamage":-1,"jawBoneWidth":0.0}');
INSERT INTO `playerdata` VALUES ('40', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('40', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('40', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('40', 'Clothings', '{"arms":{"item":0,"texture":0},"mask":{"item":121,"texture":0},"accessory":{"item":0,"texture":0},"torso":{"item":0,"texture":5},"tshirt":{"item":15,"texture":0},"decals":{"item":0,"texture":0},"shoes":{"item":34,"texture":0},"ear":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"glass":{"item":67,"texture":4},"watch":{"item":8,"texture":0},"pants":{"item":15,"texture":10},"bracelet":{"item":14,"texture":0},"backpack":{"item":0,"texture":0},"vest":{"item":11,"texture":4}}');
INSERT INTO `playerdata` VALUES ('40', 'Datatable', '{"Health":151,"Pos":{"y":-875.3,"z":30.41,"x":56.64},"Hunger":51,"Armour":0,"Skin":"mp_m_freemode_01","Inventory":{"5":{"item":"identity-40","amount":1},"6":{"item":"dollars","amount":1500},"1":{"item":"hamburger-1742195326","amount":5},"2":{"item":"water","amount":2},"3":{"item":"cellphone-1742195326","amount":1}},"Thirst":51,"Weight":40,"Stress":0}');
INSERT INTO `playerdata` VALUES ('40', 'Experience', '{"Delivery":0,"Lumberman":0,"Minerman":0,"Hunting":0,"Driver":0,"Transporter":0,"Trucker":0,"Garbageman":0,"Dismantle":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('40', 'nation_char', '{"blush":27,"shapeMix":0.6700000166893,"lipstick-color":0,"hair":21,"blush-opacity":1.0,"complexion":-1,"facialHair-color":29,"addBodyBlemishes-color":0,"noseWidth":0.5,"eyebrows":30,"overlay":0,"blemishes":-1,"shapeSecond":0,"hair-highlightcolor":61,"sunDamage-color":0,"bodyBlemishes-opacity":1.0,"noseBoneHigh":0.0,"makeup":28,"skinMix":0.80000001192092,"complexion-opacity":1.0,"makeup-color":-1,"eyebrows-opacity":1.0,"freckles-color":0,"lipstick":-1,"eyebrows-color":61,"addBodyBlemishes-opacity":1.0,"blemishes-color":0,"lipsThickness":-0.25,"noseBoneTwist":0.0,"makeup-opacity":1.0,"eyesOpenning":0.42,"nosePeakLowering":0.0,"skinThird":0,"complexion-color":0,"bodyBlemishes":-1,"gender":"male","cheeksWidth":-0.86,"chestHair-color":0,"nosePeakLength":0.0,"ageing-opacity":1.0,"chinBoneLength":0.33,"hair-color":38,"freckles-opacity":1.0,"addBodyBlemishes":-1,"facialHair-opacity":1.0,"cheeksBoneHigh":-1.0,"eyes":1,"blush-color":33,"shapeThird":0,"neckThickness":1.0,"bodyBlemishes-color":0,"lipstick-opacity":1.0,"skinFirst":21,"chestHair-opacity":1.0,"shapeFirst":21,"freckles":-1,"chinHole":0.0,"eyeBrownHigh":0.65,"eyeBrownForward":0.54,"ageing":-1,"facialHair":3,"sunDamage-opacity":1.0,"skinSecond":3,"ageing-color":0,"nosePeakHeight":0.0,"blemishes-opacity":1.0,"cheeksBoneWidth":0.57,"jawBoneBackLength":-0.23,"chinBoneLowering":-0.03,"chestHair":12,"thirdMix":0.0,"chinBoneWidth":0.0,"sunDamage":-1,"jawBoneWidth":0.55}');
INSERT INTO `playerdata` VALUES ('41', 'Ammos', '{"WEAPON_PETROLCAN_AMMO":2,"AMMO_556":145}');
INSERT INTO `playerdata` VALUES ('41', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('41', 'Backpack', '{"backpackm":1744583173,"backpackp":1744583166,"backpackg":1744583132}');
INSERT INTO `playerdata` VALUES ('41', 'Clothings', '{"tshirt":{"item":15,"texture":0},"shoes":{"item":166,"texture":11},"ear":{"item":44,"texture":0},"backpack":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"pants":{"item":11,"texture":0},"decals":{"item":194,"texture":0},"torso":{"item":577,"texture":2},"glass":{"item":71,"texture":7},"watch":{"item":10,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('41', 'Datatable', '{"Health":170,"Armour":0,"Weight":110,"Hunger":58,"Thirst":58,"Inventory":{"11":{"amount":1,"item":"WEAPON_M70-1742243466-QR2215"},"7":{"amount":4,"item":"nitro"},"2":{"amount":1,"item":"WEAPON_CARBINERIFLE_MK2-1742243618-5IF92Z"},"1":{"amount":1,"item":"WEAPON_PETROLCAN-M23DSJ"},"4":{"amount":258878,"item":"dollars"},"3":{"amount":250,"item":"AMMO_556"},"6":{"amount":9600,"item":"dollars2"},"5":{"amount":9,"item":"credential"}},"Stress":0,"Skin":"mp_m_freemode_01","Pos":{"x":558.84,"z":54.54,"y":-166.72}}');
INSERT INTO `playerdata` VALUES ('41', 'Experience', '{"lipstick":-1,"shapeMix":0.81999999284744,"complexion-opacity":1.0,"noseBoneTwist":0.02,"facialHair-color":0,"hair":79,"eyebrows":1,"eyebrows-opacity":1.0,"cheeksBoneHigh":-0.69,"Dismantle":0,"skinThird":0,"thirdMix":0.0,"makeup-opacity":1.0,"hair-highlightcolor":61,"ageing-color":0,"Lumberman":0,"Boosting":0,"lipstick-opacity":1.0,"makeup-color":56,"shapeSecond":0,"freckles-color":0,"blush-opacity":0.0,"nosePeakHeight":0.42,"neckThickness":0.15,"sunDamage":-1,"Transporter":0,"blush":-1,"Driver":0,"Delivery":0,"Trucker":0,"facialHair":20,"cheeksWidth":-0.35,"skinFirst":0,"Fisherman":0,"bodyBlemishes-color":0,"complexion":-1,"eyes":31,"sunDamage-color":0,"sunDamage-opacity":1.0,"chinBoneLowering":-0.23,"Hunting":0,"addBodyBlemishes":-1,"Garbageman":0,"chinBoneWidth":-0.43,"bodyBlemishes":-1,"blemishes":-1,"eyesOpenning":0.56,"chestHair":2,"jawBoneBackLength":-0.49,"nosePeakLength":1.0,"jawBoneWidth":-0.82,"hair-color":54,"eyeBrownHigh":0.81,"lipstick-color":0,"skinSecond":28,"noseBoneHigh":0.15,"complexion-color":0,"chinHole":0.21,"ageing":-1,"chinBoneLength":-0.01,"noseWidth":-0.81,"shapeFirst":45,"Minerman":0,"chestHair-opacity":1.0,"gender":"male","nosePeakLowering":-0.38,"bodyBlemishes-opacity":1.0,"addBodyBlemishes-opacity":1.0,"shapeThird":0,"overlay":0,"blemishes-color":0,"cheeksBoneWidth":-0.43,"eyeBrownForward":0.12,"chestHair-color":0,"facialHair-opacity":1.0,"blemishes-opacity":1.0,"makeup":31,"freckles-opacity":1.0,"blush-color":56,"addBodyBlemishes-color":0,"lipsThickness":-0.51,"ageing-opacity":1.0,"skinMix":0.80000001192092,"freckles":-1,"eyebrows-color":61}');
INSERT INTO `playerdata` VALUES ('41', 'nation_char', '{"complexion-opacity":1.0,"blush":-1,"lipstick-color":0,"bodyBlemishes-color":0,"blemishes":-1,"chinHole":0.21,"ageing-color":0,"chinBoneLength":-0.01,"nosePeakLowering":-0.38,"addBodyBlemishes-color":0,"facialHair-opacity":1.0,"freckles":-1,"makeup-color":56,"nosePeakLength":1.0,"shapeSecond":0,"hair":79,"skinFirst":0,"complexion":-1,"eyebrows-opacity":1.0,"shapeFirst":45,"shapeMix":0.81999999284744,"cheeksWidth":-0.35,"gender":"male","thirdMix":0.0,"skinThird":0,"chinBoneWidth":-0.43,"addBodyBlemishes-opacity":1.0,"cheeksBoneWidth":-0.43,"makeup-opacity":1.0,"skinSecond":28,"lipsThickness":-0.51,"eyeBrownHigh":0.81,"bodyBlemishes":-1,"eyes":31,"sunDamage":-1,"chestHair-opacity":1.0,"sunDamage-color":0,"ageing-opacity":1.0,"freckles-opacity":1.0,"chinBoneLowering":-0.23,"hair-highlightcolor":61,"noseBoneTwist":0.02,"ageing":-1,"cheeksBoneHigh":-0.69,"jawBoneBackLength":-0.49,"blush-color":56,"hair-color":54,"nosePeakHeight":0.42,"noseWidth":-0.81,"lipstick-opacity":1.0,"noseBoneHigh":0.15,"blemishes-opacity":1.0,"facialHair-color":0,"facialHair":20,"jawBoneWidth":-0.82,"addBodyBlemishes":-1,"bodyBlemishes-opacity":1.0,"blush-opacity":0.0,"eyebrows-color":61,"blemishes-color":0,"makeup":31,"skinMix":0.80000001192092,"shapeThird":0,"complexion-color":0,"chestHair":2,"freckles-color":0,"eyesOpenning":0.56,"eyebrows":1,"overlay":0,"lipstick":-1,"eyeBrownForward":0.12,"neckThickness":0.15,"sunDamage-opacity":1.0,"chestHair-color":0}');
INSERT INTO `playerdata` VALUES ('41', 'Rolepass', '{"Free":0,"Points":0,"Premium":0,"Finish":1743476400.0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('42', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('42', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('42', 'Backpack', '{"backpackp":1745021021,"backpackg":1745021015,"backpackm":1745021023}');
INSERT INTO `playerdata` VALUES ('42', 'Clothings', '{"mask":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"glass":{"item":-1,"texture":0},"shoes":{"item":5,"texture":0},"pants":{"item":6,"texture":0},"arms":{"item":1,"texture":0},"watch":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"torso":{"item":261,"texture":0},"accessory":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"vest":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('42', 'Datatable', '{"Health":158,"Weight":110,"Pos":{"z":58.32,"y":-145.84,"x":528.81},"Skin":"mp_m_freemode_01","Hunger":44,"Stress":8,"Thirst":46,"Armour":0,"Inventory":{"10":{"amount":3,"item":"spaghetti-1742428869"},"14":{"amount":1,"item":"vape-1742086110"},"3":{"amount":1,"item":"driverlicense-42-{\"expiration\":1745055667,\"name\":\"Lebron Jordan\",\"issued\":1742427667,\"categories\":{\"1\":\"A\"}}"},"2":{"amount":1,"item":"creditcard-42"},"5":{"amount":6,"item":"chickenfries-1742433295"},"4":{"amount":1,"item":"cellphone-1742309418"},"7":{"amount":1,"item":"gauze"},"6":{"amount":6,"item":"water"},"9":{"amount":1,"item":"identity-42"},"8":{"amount":1,"item":"hamburger-1742309418"},"1":{"amount":1,"item":"debitcard-42"},"31":{"amount":3,"item":"cola-1742431073"},"13":{"amount":1,"item":"cellphone-1742013086"},"11":{"amount":160,"item":"dollars"},"36":{"amount":4,"item":"chickenfries-1742431073"},"15":{"amount":4,"item":"cola-1742433295"}}}');
INSERT INTO `playerdata` VALUES ('42', 'Driverlicense', '{"expiration":1745055667,"name":"Lebron Jordan","issued":1742427667,"categories":{"1":"A"}}');
INSERT INTO `playerdata` VALUES ('42', 'Experience', '{"Dismantle":0,"Lumberman":0,"Driver":0,"Trucker":0,"Fisherman":0,"Delivery":0,"Garbageman":0,"Hunting":0,"Boosting":0,"Transporter":0,"Minerman":0}');
INSERT INTO `playerdata` VALUES ('42', 'nation_char', '{"hair":8,"addBodyBlemishes-opacity":1.0,"chestHair-opacity":1.0,"eyeBrownForward":0.0,"blemishes-opacity":1.0,"lipstick-opacity":1.0,"skinMix":0.83999997377395,"shapeMix":0.80000001192092,"eyebrows-opacity":1.0,"chinBoneWidth":0.0,"eyesOpenning":-0.69,"ageing-opacity":1.0,"eyebrows":30,"complexion":-1,"chestHair":-1,"shapeFirst":45,"addBodyBlemishes":-1,"skinThird":0,"gender":"male","nosePeakLength":0.0,"nosePeakHeight":0.0,"chinBoneLength":0.0,"blush-color":0,"bodyBlemishes":-1,"shapeThird":0,"chinBoneLowering":0.0,"freckles-opacity":1.0,"facialHair-opacity":1.0,"lipsThickness":-0.85,"ageing":-1,"blush-opacity":1.0,"jawBoneWidth":0.0,"hair-highlightcolor":0,"blush":-1,"facialHair-color":29,"sunDamage-opacity":1.0,"skinFirst":0,"makeup":-1,"sunDamage":-1,"bodyBlemishes-color":0,"noseBoneHigh":0.0,"blemishes":-1,"overlay":0,"makeup-opacity":1.0,"addBodyBlemishes-color":0,"makeup-color":-1,"complexion-opacity":1.0,"noseWidth":0.0,"blemishes-color":0,"chestHair-color":0,"eyeBrownHigh":0.28,"freckles":-1,"lipstick":-1,"lipstick-color":0,"eyebrows-color":29,"facialHair":2,"jawBoneBackLength":0.0,"cheeksBoneHigh":0.0,"hair-color":29,"thirdMix":0.0,"chinHole":0.0,"nosePeakLowering":0.0,"skinSecond":24,"eyes":9,"ageing-color":0,"neckThickness":0.0,"shapeSecond":18,"cheeksBoneWidth":0.0,"noseBoneTwist":0.0,"bodyBlemishes-opacity":1.0,"sunDamage-color":0,"freckles-color":0,"complexion-color":0,"cheeksWidth":0.0}');
INSERT INTO `playerdata` VALUES ('43', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('43', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('43', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('43', 'Clothings', '{"tshirt":{"texture":3,"item":346},"shoes":{"texture":2,"item":263},"ear":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"hat":{"texture":0,"item":-1},"accessory":{"texture":0,"item":204},"arms":{"texture":0,"item":357},"pants":{"texture":0,"item":240},"decals":{"texture":0,"item":228},"glass":{"texture":3,"item":68},"vest":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"torso":{"texture":0,"item":738},"bracelet":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('43', 'Datatable', '{"Health":195,"Armour":0,"Weight":40,"Hunger":31,"Thirst":31,"Inventory":{"8":{"amount":2,"item":"plasticbottle"},"7":{"amount":1,"item":"tangejuice-1742257198"},"9":{"amount":3,"item":"syringe"},"4":{"amount":415,"item":"dollars"},"3":{"amount":2,"item":"hamburger-1742345863"},"6":{"amount":1,"item":"identity-43"},"5":{"amount":3,"item":"hamburger-1742257172"},"10":{"amount":2,"item":"codeine"},"2":{"amount":1,"item":"cellphone-1742345863"},"1":{"amount":1,"item":"WEAPON_BAT-1742351697"},"13":{"amount":6,"item":"sushi-1742523992"},"12":{"amount":5,"item":"tangejuice-1742523513"},"11":{"amount":8,"item":"copper"}},"Stress":0,"Skin":"mp_f_freemode_01","Pos":{"x":-1229.22,"z":37.76,"y":-281.1}}');
INSERT INTO `playerdata` VALUES ('43', 'Experience', '{"Garbageman":0,"Dismantle":0,"Trucker":0,"Driver":0,"Minerman":0,"Hunting":0,"Transporter":0,"Lumberman":0,"Boosting":0,"Delivery":0,"Fisherman":0}');
INSERT INTO `playerdata` VALUES ('43', 'nation_char', '{"noseWidth":-0.43,"sunDamage-opacity":1.0,"addBodyBlemishes":-1,"ageing":-1,"jawBoneWidth":0.1,"lipstick-color":22,"thirdMix":0.0,"lipstick":7,"bodyBlemishes-opacity":1.0,"jawBoneBackLength":0.13,"sunDamage-color":0,"bodyBlemishes-color":0,"addBodyBlemishes-color":0,"makeup-opacity":1.0,"makeup-color":-1,"gender":"female","facialHair":-1,"eyes":0,"eyeBrownHigh":-0.06,"chinBoneLength":-0.12,"lipsThickness":-1.0,"eyeBrownForward":-0.1,"shapeMix":1.0,"eyebrows":30,"facialHair-color":0,"eyebrows-color":61,"addBodyBlemishes-opacity":1.0,"ageing-color":0,"ageing-opacity":1.0,"chinBoneLowering":-0.42,"blush-opacity":1.0,"blush":11,"sunDamage":-1,"facialHair-opacity":1.0,"cheeksWidth":-0.06,"chestHair-color":0,"chinHole":0.12,"nosePeakLowering":-0.18,"complexion-opacity":1.0,"freckles":-1,"freckles-color":0,"chestHair":-1,"shapeFirst":21,"shapeThird":0,"shapeSecond":21,"eyebrows-opacity":1.0,"bodyBlemishes":-1,"skinThird":0,"skinMix":0.20000000298023,"cheeksBoneHigh":-1.0,"blemishes":-1,"nosePeakLength":0.55,"overlay":0,"skinSecond":0,"hair-color":0,"skinFirst":21,"eyesOpenning":0.59,"hair":200,"blush-color":56,"freckles-opacity":1.0,"nosePeakHeight":0.0,"chinBoneWidth":-0.03,"blemishes-opacity":1.0,"noseBoneTwist":0.0,"hair-highlightcolor":61,"makeup":23,"chestHair-opacity":1.0,"lipstick-opacity":1.0,"blemishes-color":0,"complexion-color":0,"cheeksBoneWidth":0.06,"complexion":5,"noseBoneHigh":0.24,"neckThickness":0.0}');
INSERT INTO `playerdata` VALUES ('43', 'Rolepass', '{"Free":0,"Points":0,"Premium":0,"Finish":1743476400.0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('44', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('44', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('44', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('44', 'Clothings', '{"watch":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"pants":{"item":1,"texture":0},"ear":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":622,"texture":0},"decals":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"shoes":{"item":5,"texture":0},"hat":{"item":-1,"texture":0},"glass":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0}}');
INSERT INTO `playerdata` VALUES ('44', 'Datatable', '{"Thirst":22,"Armour":0,"Health":200,"Hunger":33,"Pos":{"z":51.02,"y":-220.44,"x":570.89},"Weight":40,"Inventory":{"6":{"item":"identity-44","amount":1},"5":{"item":"plasticbottle","amount":1},"8":{"item":"roadsigns","amount":4},"7":{"item":"acetone","amount":2},"2":{"item":"WEAPON_BAT-1742351712","amount":1},"1":{"item":"water","amount":1},"4":{"item":"dollars","amount":525},"3":{"item":"hamburger-1742347958","amount":4},"9":{"item":"cellphone-1742347958","amount":1}},"Stress":0,"Skin":"mp_m_freemode_01"}');
INSERT INTO `playerdata` VALUES ('44', 'Experience', '{"Hunting":0,"Dismantle":0,"Fisherman":0,"Transporter":0,"Minerman":0,"Boosting":0,"Delivery":0,"Lumberman":0,"Garbageman":0,"Trucker":0,"Driver":0}');
INSERT INTO `playerdata` VALUES ('44', 'nation_char', '{"noseWidth":0.0,"blush-color":0,"addBodyBlemishes":-1,"ageing":-1,"jawBoneWidth":0.58,"lipstick-color":0,"thirdMix":0.0,"lipstick":-1,"nosePeakHeight":0.0,"jawBoneBackLength":0.53,"sunDamage-color":0,"bodyBlemishes-color":0,"makeup":18,"makeup-opacity":1.0,"makeup-color":-1,"gender":"male","facialHair":3,"eyes":11,"eyeBrownHigh":0.0,"chinBoneLength":0.0,"lipsThickness":0.0,"eyeBrownForward":0.0,"shapeMix":0.0,"eyebrows":9,"facialHair-color":29,"eyebrows-color":0,"hair":1,"ageing-color":0,"ageing-opacity":1.0,"chinBoneLowering":0.0,"blush-opacity":1.0,"blush":-1,"sunDamage":-1,"overlay":0,"cheeksWidth":0.0,"chestHair-color":0,"chinHole":0.0,"nosePeakLowering":0.0,"complexion-opacity":1.0,"eyebrows-opacity":1.0,"freckles-color":0,"chestHair":6,"chinBoneWidth":0.0,"shapeThird":0,"eyesOpenning":0.37,"chestHair-opacity":1.0,"addBodyBlemishes-opacity":1.0,"shapeSecond":0,"skinMix":0.80000001192092,"skinFirst":24,"blemishes":-1,"nosePeakLength":0.0,"freckles":-1,"noseBoneHigh":0.0,"facialHair-opacity":1.0,"noseBoneTwist":0.0,"sunDamage-opacity":1.0,"addBodyBlemishes-color":0,"bodyBlemishes":-1,"freckles-opacity":1.0,"shapeFirst":21,"complexion-color":0,"blemishes-opacity":1.0,"bodyBlemishes-opacity":1.0,"hair-color":29,"cheeksBoneHigh":0.0,"skinThird":0,"lipstick-opacity":1.0,"blemishes-color":0,"hair-highlightcolor":29,"cheeksBoneWidth":0.0,"complexion":-1,"skinSecond":21,"neckThickness":0.0}');
INSERT INTO `playerdata` VALUES ('45', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('45', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('45', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('45', 'Clothings', '{"accessory":{"item":189,"texture":0},"backpack":{"item":0,"texture":0},"torso":{"item":15,"texture":0},"glass":{"item":63,"texture":0},"arms":{"item":15,"texture":0},"vest":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"shoes":{"item":34,"texture":0},"bracelet":{"item":-1,"texture":0},"hat":{"item":23,"texture":0},"tshirt":{"item":15,"texture":0},"pants":{"item":223,"texture":0}}');
INSERT INTO `playerdata` VALUES ('45', 'Datatable', '{"Armour":0,"Health":180,"Inventory":{"6":{"amount":1,"item":"identity-45"},"7":{"amount":1,"item":"debitcard-45"},"1":{"amount":2,"item":"water"},"2":{"amount":1,"item":"cellphone-1742348636"},"3":{"amount":3,"item":"hamburger-1742348636"}},"Pos":{"y":-1154.32,"z":29.28,"x":388.88},"Skin":"mp_m_freemode_01","Thirst":49,"Weight":40,"Hunger":44,"Stress":0}');
INSERT INTO `playerdata` VALUES ('45', 'Experience', '{"Driver":0,"Taxi":11,"Minerman":0,"Boosting":0,"Trucker":0,"Fisherman":0,"Transporter":0,"Garbageman":0,"Delivery":0,"Lumberman":0,"Dismantle":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('45', 'nation_char', '{"noseWidth":0.0,"sunDamage-opacity":1.0,"addBodyBlemishes":-1,"ageing":-1,"jawBoneWidth":0.0,"lipstick-color":0,"thirdMix":0.0,"lipstick":-1,"bodyBlemishes-opacity":1.0,"jawBoneBackLength":0.0,"sunDamage-color":0,"bodyBlemishes-color":0,"addBodyBlemishes-color":0,"makeup-opacity":1.0,"makeup-color":-1,"gender":"male","noseBoneTwist":0.0,"eyes":7,"eyeBrownHigh":0.0,"chinBoneLength":0.0,"lipsThickness":0.0,"eyeBrownForward":0.0,"shapeMix":0.80000001192092,"eyebrows":31,"facialHair-color":29,"eyebrows-color":0,"hair":21,"noseBoneHigh":0.0,"ageing-opacity":1.0,"chinBoneLowering":0.0,"blush-opacity":1.0,"blush":-1,"sunDamage":-1,"overlay":0,"cheeksWidth":0.0,"chestHair-color":0,"chinHole":0.0,"nosePeakLowering":0.0,"hair-color":29,"eyebrows-opacity":1.0,"freckles-color":0,"chestHair":3,"chinBoneWidth":0.0,"shapeThird":0,"shapeFirst":21,"skinThird":0,"chestHair-opacity":1.0,"bodyBlemishes":-1,"skinMix":0.0,"skinFirst":8,"blemishes":-1,"nosePeakLength":0.0,"facialHair":1,"cheeksBoneHigh":0.0,"makeup":4,"blush-color":0,"facialHair-opacity":1.0,"lipstick-opacity":1.0,"ageing-color":0,"freckles-opacity":1.0,"complexion":-1,"eyesOpenning":0.0,"blemishes-opacity":1.0,"nosePeakHeight":0.0,"complexion-opacity":1.0,"freckles":-1,"addBodyBlemishes-opacity":1.0,"hair-highlightcolor":29,"blemishes-color":0,"complexion-color":0,"cheeksBoneWidth":0.0,"skinSecond":0,"shapeSecond":0,"neckThickness":0.0}');
INSERT INTO `playerdata` VALUES ('45', 'Rolepass', '{"RolepassBuy":false,"Finish":1743476400.0,"Points":11,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('46', 'Ammos', '{"AMMO_556":159,"AMMO_9":116}');
INSERT INTO `playerdata` VALUES ('46', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('46', 'Backpack', '{"backpackp":1745085322,"backpackm":1745085337,"backpackg":1745085341}');
INSERT INTO `playerdata` VALUES ('46', 'Clothings', '{"bracelet":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"shoes":{"texture":2,"item":81},"arms":{"texture":0,"item":209},"pants":{"texture":1,"item":238},"vest":{"texture":0,"item":77},"tshirt":{"texture":0,"item":237},"torso":{"texture":4,"item":637},"backpack":{"texture":0,"item":0},"hat":{"texture":1,"item":214},"decals":{"texture":0,"item":-1},"glass":{"texture":0,"item":72},"accessory":{"texture":1,"item":0},"watch":{"texture":0,"item":-1},"mask":{"texture":13,"item":169}}');
INSERT INTO `playerdata` VALUES ('46', 'Datatable', '{"Stress":0,"Inventory":{"18":{"item":"radio-1742496673","amount":1},"11":{"item":"gdtkit","amount":5},"2":{"item":"WEAPON_COMBATPISTOL-1742493417-97E3P5","amount":1},"15":{"item":"identity-46","amount":1},"13":{"item":"AMMO_556","amount":210},"10":{"item":"debitcard-46","amount":1},"20":{"item":"receipt-46-1742532344-1750-5 BEBIDAR 5 BEBIDAS KOI SUHI","amount":1},"12":{"item":"AMMO_9","amount":50},"25":{"item":"shepherd","amount":1},"1":{"item":"WEAPON_HK416-1742491376-668QY4","amount":1},"8":{"item":"handcuff-1742491402","amount":1},"3":{"item":"handcuff-1742493475","amount":1},"19":{"item":"plasticbottle","amount":3},"5":{"item":"sushi-1742523992","amount":1},"4":{"item":"WEAPON_STUNGUN-1742493521","amount":1},"7":{"item":"cellphone-1742362739","amount":1},"6":{"item":"gsrkit","amount":5},"9":{"item":"dronecontrol-1742496776","amount":1},"14":{"item":"dollars","amount":46},"17":{"item":"WEAPON_SCARH-1742496668-C881U9","amount":1},"16":{"item":"acerolajuice-1742532187","amount":2}},"Armour":0,"Weight":110,"Skin":"mp_m_freemode_01","Health":198,"Hunger":53,"Thirst":76,"Pos":{"y":2877.66,"x":-2725.67,"z":1.62}}');
INSERT INTO `playerdata` VALUES ('46', 'Experience', '{"Hunting":0,"Lumberman":0,"Boosting":0,"Trucker":0,"Driver":0,"Transporter":0,"Delivery":0,"Fisherman":0,"Minerman":0,"Garbageman":0,"Taxi":3,"Dismantle":0}');
INSERT INTO `playerdata` VALUES ('46', 'nation_char', '{"eyebrows":30,"blemishes-opacity":1.0,"blemishes-color":0,"sunDamage-opacity":1.0,"shapeThird":0,"ageing-opacity":1.0,"thirdMix":0.0,"bodyBlemishes":-1,"blush":-1,"ageing-color":0,"eyebrows-opacity":1.0,"complexion-opacity":1.0,"facialHair-color":53,"chinHole":0.0,"noseBoneTwist":0.0,"cheeksWidth":0.0,"overlay":0,"eyeBrownHigh":0.5,"chestHair-opacity":1.0,"lipstick-color":0,"blemishes":0,"blush-opacity":1.0,"complexion":1,"hair-highlightcolor":54,"freckles-color":0,"skinSecond":0,"addBodyBlemishes-opacity":1.0,"chestHair":-1,"chinBoneLowering":0.0,"skinThird":0,"skinMix":0.4699999988079,"sunDamage-color":0,"facialHair":10,"makeup-opacity":1.0,"addBodyBlemishes":-1,"nosePeakLowering":0.0,"sunDamage":0,"jawBoneWidth":0.0,"hair-color":53,"bodyBlemishes-opacity":1.0,"eyesOpenning":0.0,"shapeSecond":0,"blush-color":0,"freckles-opacity":1.0,"hair":12,"nosePeakHeight":0.0,"makeup-color":-1,"lipstick":-1,"nosePeakLength":0.0,"skinFirst":21,"complexion-color":0,"lipstick-opacity":1.0,"eyeBrownForward":0.0,"makeup":12,"eyes":13,"cheeksBoneHigh":0.0,"gender":"male","cheeksBoneWidth":0.0,"shapeFirst":21,"noseWidth":-1.0,"ageing":0,"eyebrows-color":0,"noseBoneHigh":0.0,"chinBoneWidth":0.0,"jawBoneBackLength":0.0,"chinBoneLength":0.0,"addBodyBlemishes-color":0,"lipsThickness":0.0,"neckThickness":0.0,"facialHair-opacity":1.0,"shapeMix":0.57999998331069,"freckles":0,"chestHair-color":0,"bodyBlemishes-color":0}');
INSERT INTO `playerdata` VALUES ('46', 'Rolepass', '{"Finish":1743476400.0,"Free":0,"Premium":0,"Points":3,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('47', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('47', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('47', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('47', 'Clothings', '{"decals":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"arms":{"texture":0,"item":0},"glass":{"texture":0,"item":-1},"accessory":{"texture":0,"item":0},"torso":{"texture":0,"item":15},"pants":{"texture":0,"item":69},"backpack":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15},"ear":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"shoes":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('47', 'Datatable', '{"Armour":0,"Health":166,"Inventory":{"5":{"amount":4,"item":"hamburger-1742408200"},"6":{"amount":2,"item":"water"},"1":{"amount":1,"item":"identity-47"},"3":{"amount":1500,"item":"dollars"},"4":{"amount":1,"item":"cellphone-1742408200"}},"Pos":{"y":-1395.21,"z":28.83,"x":97.68},"Skin":"mp_m_freemode_01","Weight":40,"Thirst":61,"Hunger":90,"Stress":0}');
INSERT INTO `playerdata` VALUES ('47', 'Experience', '{"Driver":0,"Minerman":0,"Boosting":0,"Trucker":0,"Transporter":0,"Fisherman":0,"Garbageman":0,"Dismantle":0,"Lumberman":0,"Delivery":0,"Hunting":0}');
INSERT INTO `playerdata` VALUES ('47', 'nation_char', '{"hair":57,"bodyBlemishes-opacity":1.0,"overlay":0,"jawBoneWidth":1.0,"addBodyBlemishes":-1,"gender":"male","eyebrows-color":0,"complexion-opacity":1.0,"complexion-color":0,"chestHair":13,"facialHair-opacity":1.0,"skinMix":0.95999997854232,"hair-highlightcolor":0,"blush":-1,"blemishes":-1,"freckles-opacity":1.0,"makeup":58,"complexion":5,"makeup-color":-1,"skinThird":0,"bodyBlemishes":-1,"chinBoneLength":-0.38,"shapeFirst":21,"cheeksBoneHigh":-0.72,"sunDamage-opacity":1.0,"eyebrows-opacity":1.0,"chinBoneLowering":0.29,"sunDamage-color":0,"hair-color":0,"noseBoneTwist":0.0,"freckles":-1,"lipstick-opacity":0.51,"nosePeakLength":0.29,"eyebrows":30,"noseBoneHigh":0.46,"jawBoneBackLength":1.0,"ageing-color":0,"eyeBrownHigh":0.09,"cheeksWidth":0.07,"chinBoneWidth":0.02,"neckThickness":1.0,"blush-opacity":1.0,"noseWidth":-1.0,"nosePeakHeight":0.16,"chestHair-opacity":1.0,"facialHair-color":0,"addBodyBlemishes-color":0,"facialHair":16,"ageing-opacity":1.0,"skinFirst":45,"blemishes-opacity":1.0,"blush-color":56,"lipstick-color":0,"eyesOpenning":-1.0,"nosePeakLowering":-0.26,"blemishes-color":0,"shapeSecond":0,"shapeThird":0,"shapeMix":0.46000000834465,"lipstick":-1,"freckles-color":0,"chinHole":0.0,"eyeBrownForward":0.16,"cheeksBoneWidth":0.34,"lipsThickness":1.0,"ageing":-1,"makeup-opacity":1.0,"sunDamage":-1,"thirdMix":0.0,"addBodyBlemishes-opacity":1.0,"bodyBlemishes-color":0,"skinSecond":12,"chestHair-color":0,"eyes":30}');
INSERT INTO `playerdata` VALUES ('48', 'Ammos', '{"AMMO_762":70}');
INSERT INTO `playerdata` VALUES ('48', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('48', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('48', 'Clothings', '{"mask":{"texture":0,"item":0},"accessory":{"texture":1,"item":90},"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15},"bracelet":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"pants":{"texture":0,"item":233},"decals":{"texture":0,"item":0},"glass":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"shoes":{"texture":0,"item":34},"arms":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"torso":{"texture":2,"item":596}}');
INSERT INTO `playerdata` VALUES ('48', 'Datatable', '{"Hunger":45,"Stress":10,"Thirst":7,"Health":171,"Weight":40,"Skin":"mp_m_freemode_01","Inventory":{"4":{"item":"cellphone-1742416458","amount":1},"3":{"item":"dollars","amount":830},"6":{"item":"identity-48","amount":1},"8":{"item":"canopener","amount":1},"1":{"item":"plasticbottle","amount":1},"2":{"item":"WEAPON_AK47-1741977853","amount":1},"9":{"item":"water","amount":2}},"Pos":{"x":254.29,"z":30.82,"y":-751.2},"Armour":0}');
INSERT INTO `playerdata` VALUES ('48', 'Experience', '{"Dismantle":0,"Transporter":0,"Delivery":0,"Hunting":0,"Fisherman":0,"Minerman":0,"Garbageman":0,"Boosting":0,"Driver":0,"Lumberman":0,"Trucker":0}');
INSERT INTO `playerdata` VALUES ('48', 'nation_char', '{"hair":11,"bodyBlemishes-opacity":1.0,"overlay":0,"eyes":26,"facialHair-color":61,"facialHair":3,"eyebrows-color":61,"complexion-opacity":1.0,"complexion-color":0,"chestHair":8,"facialHair-opacity":1.0,"skinMix":0.80000001192092,"hair-highlightcolor":0,"ageing-opacity":1.0,"blemishes":-1,"freckles-opacity":1.0,"makeup":17,"complexion":5,"addBodyBlemishes-opacity":1.0,"skinThird":0,"bodyBlemishes":-1,"chinBoneLength":0.15,"shapeFirst":21,"cheeksBoneHigh":-1.0,"sunDamage-opacity":1.0,"shapeThird":0,"chinBoneLowering":0.15,"sunDamage-color":0,"hair-color":0,"noseBoneTwist":0.0,"freckles":-1,"lipstick-opacity":1.0,"nosePeakLength":1.0,"eyebrows":29,"noseBoneHigh":0.43,"jawBoneBackLength":0.0,"ageing-color":0,"eyeBrownHigh":1.0,"cheeksWidth":0.0,"chinBoneWidth":0.55,"neckThickness":0.0,"blush-opacity":1.0,"noseWidth":-0.61,"nosePeakHeight":0.22,"chestHair-opacity":1.0,"eyebrows-opacity":1.0,"addBodyBlemishes-color":0,"lipsThickness":-0.3,"lipstick-color":0,"skinFirst":14,"jawBoneWidth":0.0,"blush-color":56,"sunDamage":-1,"blemishes-color":0,"shapeMix":0.89999997615814,"eyesOpenning":0.61,"blemishes-opacity":1.0,"shapeSecond":0,"addBodyBlemishes":-1,"gender":"male","ageing":-1,"makeup-color":-1,"nosePeakLowering":-0.3,"cheeksBoneWidth":-0.41,"skinSecond":15,"blush":24,"makeup-opacity":1.0,"chinHole":0.0,"thirdMix":0.0,"lipstick":-1,"bodyBlemishes-color":0,"freckles-color":0,"chestHair-color":0,"eyeBrownForward":-0.3}');
INSERT INTO `playerdata` VALUES ('48', 'Rolepass', '{"RolepassBuy":false,"Finish":1743476400.0,"Points":0,"Premium":0,"Free":0}');
INSERT INTO `playerdata` VALUES ('48', 'Tatuagens', '{"overlay":0,"tattoos":["MP_MP_Biker_Tat_056_M","MP_MP_Biker_Tat_036_M","MP_Smuggler_Tattoo_020_M","MP_MP_Stunt_tat_045_M","FM_Tat_M_042","MP_MP_Stunt_tat_015_M","MP_MP_Stunt_tat_025_M"]}');
INSERT INTO `playerdata` VALUES ('49', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('49', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('49', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('49', 'Clothings', '{"hat":{"texture":0,"item":-1},"shoes":{"texture":0,"item":34},"glass":{"texture":0,"item":72},"ear":{"texture":0,"item":-1},"pants":{"texture":0,"item":224},"mask":{"texture":0,"item":0},"backpack":{"texture":0,"item":0},"watch":{"texture":0,"item":6},"decals":{"texture":0,"item":0},"torso":{"texture":0,"item":15},"bracelet":{"texture":0,"item":5},"vest":{"texture":0,"item":0},"accessory":{"texture":0,"item":12},"arms":{"texture":0,"item":15},"tshirt":{"texture":0,"item":15}}');
INSERT INTO `playerdata` VALUES ('49', 'Datatable', '{"Hunger":77,"Stress":0,"Thirst":77,"Health":190,"Weight":40,"Skin":"mp_m_freemode_01","Inventory":{"6":{"item":"water","amount":2},"11":{"item":"cellphone-1742577834","amount":1},"7":{"item":"hamburger-1742577834","amount":5},"16":{"item":"identity-49","amount":1}},"Pos":{"x":256.36,"z":30.82,"y":-750.72},"Armour":0}');
INSERT INTO `playerdata` VALUES ('49', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('49', 'nation_char', '{"shapeThird":0,"hair":3,"lipsThickness":0.0,"cheeksBoneHigh":0.0,"chestHair-color":0,"nosePeakLength":0.0,"eyebrows":30,"cheeksWidth":0.0,"lipstick-color":0,"chinBoneLowering":0.0,"addBodyBlemishes":-1,"facialHair-opacity":1.0,"blush-opacity":1.0,"blemishes-color":0,"freckles":-1,"noseWidth":0.0,"neckThickness":0.0,"gender":"male","eyebrows-color":0,"jawBoneWidth":0.0,"blush-color":56,"makeup-color":-1,"facialHair":3,"blush":31,"bodyBlemishes-opacity":1.0,"skinMix":0.80000001192092,"hair-color":54,"bodyBlemishes":-1,"overlay":0,"eyes":23,"complexion":-1,"blemishes":-1,"nosePeakHeight":0.0,"chinHole":0.0,"makeup-opacity":1.0,"addBodyBlemishes-opacity":1.0,"ageing-opacity":1.0,"noseBoneTwist":0.0,"shapeFirst":21,"freckles-opacity":1.0,"skinFirst":21,"chestHair-opacity":1.0,"blemishes-opacity":1.0,"noseBoneHigh":0.0,"eyesOpenning":0.0,"chestHair":12,"eyeBrownHigh":0.0,"freckles-color":0,"eyeBrownForward":0.0,"lipstick-opacity":1.0,"hair-highlightcolor":53,"shapeMix":1.0,"complexion-color":0,"addBodyBlemishes-color":0,"skinThird":0,"chinBoneWidth":0.0,"nosePeakLowering":0.0,"bodyBlemishes-color":0,"sunDamage":-1,"jawBoneBackLength":0.0,"makeup":4,"cheeksBoneWidth":0.0,"ageing-color":0,"chinBoneLength":0.0,"facialHair-color":0,"lipstick":-1,"sunDamage-color":0,"skinSecond":0,"eyebrows-opacity":1.0,"thirdMix":0.0,"complexion-opacity":1.0,"sunDamage-opacity":1.0,"shapeSecond":0,"ageing":-1}');
INSERT INTO `playerdata` VALUES ('50', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('50', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('50', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('50', 'Clothings', '{"backpack":{"texture":0,"item":0},"torso":{"texture":0,"item":0},"tshirt":{"texture":0,"item":1},"decals":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"watch":{"texture":0,"item":-1},"shoes":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"hat":{"texture":0,"item":-1},"glass":{"texture":0,"item":-1},"pants":{"texture":0,"item":0},"accessory":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"arms":{"texture":0,"item":0}}');
INSERT INTO `playerdata` VALUES ('50', 'Datatable', '{"Armour":0,"Hunger":73,"Pos":{"z":21.85,"y":-2841.45,"x":-1108.35},"Health":200,"Inventory":{"6":{"amount":2,"item":"water"},"1":{"amount":1500,"item":"dollars"},"3":{"amount":1,"item":"cellphone-1742605126"},"2":{"amount":1,"item":"identity-50"},"5":{"amount":5,"item":"hamburger-1742605126"},"4":{"amount":1,"item":"gift"}},"Weight":40,"Thirst":73,"Stress":0,"Skin":"mp_m_freemode_01"}');
INSERT INTO `playerdata` VALUES ('50', 'Experience', '{"Boosting":0}');
INSERT INTO `playerdata` VALUES ('50', 'nation_char', '{"hair-color":0,"ageing-opacity":1.0,"cheeksBoneHigh":0.0,"hair-highlightcolor":0,"blush-opacity":1.0,"makeup":-1,"makeup-color":-1,"bodyBlemishes":-1,"blemishes-opacity":1.0,"skinFirst":21,"chinBoneLowering":0.0,"complexion-opacity":1.0,"eyesOpenning":0.0,"blemishes":-1,"shapeFirst":21,"eyebrows-color":0,"shapeMix":0.80000001192092,"chestHair-opacity":1.0,"neckThickness":0.0,"sunDamage-opacity":1.0,"chinBoneWidth":0.0,"sunDamage":-1,"facialHair-color":0,"gender":"male","bodyBlemishes-opacity":1.0,"chinHole":0.0,"overlay":0,"blush":-1,"freckles":-1,"thirdMix":0.0,"skinThird":0,"facialHair-opacity":1.0,"jawBoneBackLength":0.0,"lipstick-opacity":1.0,"nosePeakLowering":0.0,"sunDamage-color":0,"shapeSecond":0,"eyes":0,"shapeThird":0,"chinBoneLength":0.0,"eyeBrownHigh":0.0,"noseWidth":0.0,"ageing-color":0,"cheeksWidth":0.0,"eyebrows-opacity":1.0,"hair":0,"jawBoneWidth":0.0,"addBodyBlemishes-color":0,"bodyBlemishes-color":0,"noseBoneHigh":0.0,"blush-color":0,"complexion-color":0,"addBodyBlemishes-opacity":1.0,"nosePeakLength":0.0,"lipstick":-1,"cheeksBoneWidth":0.0,"lipstick-color":0,"noseBoneTwist":0.0,"freckles-opacity":1.0,"facialHair":-1,"complexion":-1,"skinSecond":0,"ageing":-1,"eyebrows":-1,"chestHair":-1,"blemishes-color":0,"chestHair-color":0,"makeup-opacity":1.0,"lipsThickness":0.0,"freckles-color":0,"eyeBrownForward":0.0,"addBodyBlemishes":-1,"nosePeakHeight":0.0,"skinMix":0.80000001192092}');
INSERT INTO `playerdata` VALUES ('51', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('51', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('51', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('51', 'Clothings', '{"arms":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"shoes":{"item":0,"texture":0},"pants":{"item":0,"texture":0},"tshirt":{"item":1,"texture":0},"decals":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"glass":{"item":-1,"texture":0},"torso":{"item":9,"texture":0},"backpack":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('51', 'Datatable', '{"Weight":40,"Armour":0,"Inventory":{"1":{"amount":1,"item":"debitcard-1"},"2":{"data":{},"amount":1,"item":"suitcase-E6A8W2T2Q0"}},"Skin":"mp_f_freemode_01","Stress":0,"Thirst":87,"Pos":{"y":-1014.58,"x":184.7,"z":28.76},"Health":145,"Hunger":87}');
INSERT INTO `playerdata` VALUES ('51', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Fisherman":0,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('51', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"complexion-color":0,"noseWidth":-0.62,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"lipstick-opacity":0.99,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":-1,"chestHair-color":0,"blush":-1,"skinMix":0.0,"thirdMix":0.0,"skinFirst":26,"eyebrows":9,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"sunDamage-color":0,"cheeksWidth":0.0,"addBodyBlemishes":-1,"overlay":0,"hair":18,"sunDamage":-1,"chinBoneWidth":-0.64,"facialHair-color":0,"lipsThickness":-0.05,"chinBoneLowering":-0.44,"skinSecond":6,"lipstick-color":56,"nosePeakHeight":-0.58,"addBodyBlemishes-opacity":1.0,"makeup":5,"blemishes":-1,"hair-color":34,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"ageing-opacity":1.0,"complexion":-1,"freckles-opacity":1.0,"blush-opacity":1.0,"chestHair-opacity":1.0,"neckThickness":0.0,"blemishes-color":0,"lipstick":3,"eyeBrownHigh":1.0,"eyeBrownForward":0.0,"bodyBlemishes":-1,"shapeMix":1.0,"nosePeakLowering":-0.14,"gender":"female","noseBoneHigh":0.0,"eyesOpenning":-0.08,"shapeFirst":22,"jawBoneBackLength":-1.0,"eyebrows-color":0,"eyes":3,"sunDamage-opacity":1.0,"jawBoneWidth":-0.81,"chinBoneLength":-0.64,"cheeksBoneHigh":-0.12,"chinHole":0.28,"chestHair":0,"hair-highlightcolor":0,"freckles":0,"blemishes-opacity":1.0,"shapeSecond":29,"facialHair":-1,"noseBoneTwist":0.0,"freckles-color":0,"complexion-opacity":1.0,"nosePeakLength":0.32}');
INSERT INTO `playerdata` VALUES ('51', 'Rolepass', '{"Finish":1743476400.0,"Points":0,"Free":0,"Premium":0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('52', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('52', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('52', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('52', 'Clothings', '{"arms":{"item":15,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"shoes":{"item":18,"texture":0},"mask":{"item":0,"texture":0},"pants":{"item":17,"texture":0},"watch":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"tshirt":{"item":2,"texture":0},"ear":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"glass":{"item":-1,"texture":0},"torso":{"item":5,"texture":0},"backpack":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('52', 'Datatable', '{"Weight":40,"Armour":0,"Inventory":{"5":{"amount":500,"item":"dollars"},"4":{"amount":1,"item":"gift"},"6":{"amount":1,"item":"cellphone-1742863232"},"1":{"amount":2,"item":"water"},"3":{"amount":5,"item":"hamburger-1742863232"},"2":{"amount":1,"item":"identity-52"}},"Skin":"mp_f_freemode_01","Stress":0,"Thirst":79,"Pos":{"y":-1014.25,"x":184.57,"z":28.75},"Health":175,"Hunger":79}');
INSERT INTO `playerdata` VALUES ('52', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Fisherman":0,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('52', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"gender":"female","sunDamage-opacity":1.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"nosePeakLowering":-0.16,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":-1,"chestHair-color":0,"blush":2,"skinMix":0.47999998927116,"bodyBlemishes":-1,"skinFirst":45,"eyebrows":1,"cheeksBoneWidth":0.05,"eyeBrownForward":-1.0,"sunDamage-color":0,"cheeksWidth":0.0,"addBodyBlemishes":-1,"overlay":0,"hair":20,"sunDamage":-1,"chinBoneWidth":-0.56,"facialHair-color":0,"lipsThickness":-1.0,"chinBoneLowering":-0.07,"skinSecond":36,"lipstick-color":0,"nosePeakHeight":-0.07,"addBodyBlemishes-opacity":1.0,"makeup":6,"blemishes":-1,"hair-color":54,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"cheeksBoneHigh":0.67,"complexion":-1,"freckles-opacity":1.0,"eyeBrownHigh":-1.0,"chestHair-opacity":1.0,"shapeFirst":31,"blemishes-color":0,"lipstick":3,"complexion-color":0,"blemishes-opacity":1.0,"nosePeakLength":-0.6,"freckles-color":0,"eyebrows-color":0,"chestHair":4,"noseBoneHigh":-0.68,"eyesOpenning":0.28,"neckThickness":0.0,"jawBoneBackLength":-0.19,"noseWidth":-0.91,"eyes":2,"ageing-opacity":1.0,"shapeMix":0.0,"lipstick-opacity":1.0,"chinBoneLength":-1.0,"chinHole":0.0,"freckles":5,"hair-highlightcolor":56,"thirdMix":0.0,"blush-opacity":1.0,"makeup-opacity":1.0,"facialHair":-1,"noseBoneTwist":-0.17,"shapeSecond":0,"complexion-opacity":1.0,"jawBoneWidth":-1.0}');
INSERT INTO `playerdata` VALUES ('53', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('53', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('53', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('53', 'Clothings', '{"arms":{"item":0,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"shoes":{"item":6,"texture":1},"mask":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":236,"texture":1},"tshirt":{"item":57,"texture":0},"bracelet":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"torso":{"item":7,"texture":1},"glass":{"item":9,"texture":3},"watch":{"item":6,"texture":0},"backpack":{"item":121,"texture":0}}');
INSERT INTO `playerdata` VALUES ('53', 'Datatable', '{"Weight":40,"Armour":0,"Inventory":{"5":{"amount":1450,"item":"dollars"},"4":{"amount":1,"item":"plasticbottle"},"6":{"amount":1,"item":"cellphone-1742863327"},"1":{"amount":1,"item":"water"},"3":{"amount":5,"item":"hamburger-1742863327"},"2":{"amount":1,"item":"identity-53"}},"Skin":"mp_m_freemode_01","Stress":0,"Thirst":29,"Pos":{"y":-913.37,"x":225.49,"z":29.55},"Health":191,"Hunger":14}');
INSERT INTO `playerdata` VALUES ('53', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Fisherman":0,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('53', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"gender":"male","noseWidth":0.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"nosePeakLowering":0.0,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":-1,"chestHair-color":0,"blush":-1,"freckles":-1,"thirdMix":0.0,"skinFirst":36,"eyebrows":30,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"sunDamage-color":0,"cheeksWidth":0.0,"addBodyBlemishes":-1,"overlay":0,"hair":6,"sunDamage":-1,"chinBoneWidth":0.0,"facialHair-color":61,"lipsThickness":0.29,"chinBoneLowering":0.0,"skinSecond":45,"lipstick-color":7,"nosePeakHeight":0.0,"addBodyBlemishes-opacity":1.0,"makeup":-1,"blemishes":-1,"hair-color":54,"eyebrows-opacity":1.0,"chinBoneLength":0.0,"ageing-opacity":1.0,"complexion":-1,"freckles-opacity":1.0,"eyeBrownHigh":0.0,"chestHair-opacity":1.0,"bodyBlemishes-color":0,"blemishes-color":0,"lipstick":4,"neckThickness":0.0,"eyeBrownForward":-0.1,"facialHair":3,"blemishes-opacity":1.0,"freckles-color":0,"nosePeakLength":0.0,"noseBoneHigh":0.0,"eyesOpenning":-0.62,"shapeFirst":21,"jawBoneBackLength":0.0,"eyebrows-color":0,"eyes":23,"complexion-color":0,"sunDamage-opacity":1.0,"shapeMix":0.80000001192092,"lipstick-opacity":1.0,"chinHole":0.0,"cheeksBoneHigh":0.0,"hair-highlightcolor":0,"skinMix":0.50999999046325,"shapeSecond":0,"chestHair":-1,"jawBoneWidth":0.0,"noseBoneTwist":0.0,"blush-opacity":1.0,"complexion-opacity":1.0,"bodyBlemishes":-1}');
INSERT INTO `playerdata` VALUES ('53', 'Rolepass', '{"Finish":1743476400.0,"Points":0,"Free":0,"Premium":0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('54', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('54', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('54', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('54', 'Clothings', '{"accessory":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"shoes":{"item":5,"texture":0},"tshirt":{"item":15,"texture":0},"mask":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":624,"texture":0},"glass":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"pants":{"item":1,"texture":0}}');
INSERT INTO `playerdata` VALUES ('54', 'Datatable', '{"Weight":40,"Thirst":91,"Inventory":[],"Armour":0,"Skin":"mp_m_freemode_01","Stress":0,"Hunger":91,"Pos":{"x":199.6,"y":-862.37,"z":29.59},"Health":152}');
INSERT INTO `playerdata` VALUES ('54', 'Experience', '{"Lumberman":0,"Trucker":0,"Hunting":0,"Boosting":0,"Minerman":0,"Bus":1,"Fisherman":0,"Delivery":0,"Garbageman":0,"Dismantle":0,"Transporter":0,"Driver":0}');
INSERT INTO `playerdata` VALUES ('54', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"gender":"male","sunDamage-opacity":1.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"nosePeakLowering":0.0,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":-1,"chestHair-color":0,"blush":-1,"freckles":-1,"bodyBlemishes":-1,"skinFirst":3,"eyebrows":30,"cheeksBoneWidth":0.0,"eyeBrownForward":0.0,"sunDamage-color":0,"cheeksWidth":0.0,"addBodyBlemishes":-1,"overlay":0,"hair":50,"sunDamage":-1,"chinBoneWidth":0.0,"facialHair-color":29,"lipsThickness":0.0,"chinBoneLowering":0.0,"skinSecond":22,"eyebrows-color":0,"nosePeakHeight":0.0,"addBodyBlemishes-opacity":1.0,"shapeMix":0.80000001192092,"blemishes":-1,"hair-color":29,"eyebrows-opacity":1.0,"chinBoneLength":0.0,"ageing-opacity":1.0,"complexion":-1,"freckles-opacity":1.0,"blush-opacity":1.0,"chestHair-opacity":1.0,"makeup":-1,"blemishes-color":0,"lipstick":-1,"facialHair":3,"makeup-opacity":1.0,"lipstick-opacity":1.0,"shapeFirst":21,"noseWidth":0.0,"blemishes-opacity":1.0,"noseBoneHigh":0.0,"eyesOpenning":0.0,"neckThickness":0.0,"jawBoneBackLength":0.0,"complexion-color":0,"eyes":19,"lipstick-color":0,"eyeBrownHigh":0.0,"freckles-color":0,"bodyBlemishes-color":0,"chinHole":0.0,"cheeksBoneHigh":0.0,"hair-highlightcolor":35,"skinMix":0.76999998092651,"shapeSecond":0,"thirdMix":0.0,"nosePeakLength":0.0,"noseBoneTwist":0.0,"jawBoneWidth":0.0,"complexion-opacity":1.0,"chestHair":12}');
INSERT INTO `playerdata` VALUES ('54', 'Rolepass', '{"Premium":0,"Free":0,"Finish":1743476400.0,"RolepassBuy":false,"Points":1}');
INSERT INTO `playerdata` VALUES ('55', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('55', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('55', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('55', 'Clothings', '{"arms":{"item":137,"texture":0},"vest":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"watch":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":94,"texture":5},"decals":{"item":0,"texture":0},"shoes":{"item":0,"texture":0},"torso":{"item":15,"texture":0},"glass":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"backpack":{"item":29,"texture":0}}');
INSERT INTO `playerdata` VALUES ('55', 'Datatable', '{"Weight":40,"Armour":0,"Inventory":{"5":{"amount":1500,"item":"dollars"},"4":{"amount":1,"item":"gift"},"6":{"amount":1,"item":"cellphone-1742868407"},"1":{"amount":2,"item":"water"},"3":{"amount":4,"item":"hamburger-1742868407"},"2":{"amount":1,"item":"identity-55"}},"Skin":"mp_m_freemode_01","Stress":0,"Thirst":0,"Pos":{"y":-588.19,"x":324.55,"z":42.48},"Health":100,"Hunger":0}');
INSERT INTO `playerdata` VALUES ('55', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Fisherman":0,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('55', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"gender":"male","sunDamage-opacity":1.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"lipstick-opacity":1.0,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":14,"chestHair-color":0,"blush":-1,"skinMix":0.80000001192092,"shapeSecond":1,"skinFirst":0,"eyebrows":33,"cheeksBoneWidth":1.0,"makeup-opacity":1.0,"sunDamage-color":0,"cheeksWidth":-1.0,"addBodyBlemishes":-1,"overlay":0,"hair":30,"sunDamage":-1,"chinBoneWidth":1.0,"facialHair-color":34,"lipsThickness":1.0,"chinBoneLowering":-1.0,"skinSecond":9,"lipstick-color":56,"nosePeakHeight":1.0,"addBodyBlemishes-opacity":1.0,"shapeMix":1.0,"blemishes":-1,"hair-color":34,"eyebrows-opacity":1.0,"bodyBlemishes-color":0,"freckles-color":0,"complexion":-1,"freckles-opacity":1.0,"eyeBrownHigh":1.0,"chestHair-opacity":1.0,"nosePeakLength":1.0,"blemishes-color":0,"lipstick":3,"shapeFirst":31,"blush-opacity":1.0,"cheeksBoneHigh":1.0,"makeup":-1,"ageing-opacity":1.0,"eyebrows-color":1,"noseBoneHigh":-1.0,"eyesOpenning":-1.0,"neckThickness":1.0,"jawBoneBackLength":1.0,"blemishes-opacity":1.0,"eyes":0,"complexion-color":0,"noseWidth":1.0,"nosePeakLowering":-1.0,"bodyBlemishes":5,"chinHole":0.43,"chinBoneLength":1.0,"hair-highlightcolor":0,"freckles":4,"eyeBrownForward":1.0,"jawBoneWidth":1.0,"facialHair":2,"noseBoneTwist":1.0,"chestHair":-1,"complexion-opacity":1.0,"thirdMix":0.0}');
INSERT INTO `playerdata` VALUES ('56', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('56', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('56', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('56', 'Clothings', '{"watch":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"mask":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"tshirt":{"item":1,"texture":0},"shoes":{"item":0,"texture":0},"torso":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"glass":{"item":-1,"texture":0},"arms":{"item":0,"texture":0},"pants":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('56', 'Datatable', '{"Weight":40,"Pos":{"y":-466.86,"x":-2032.04,"z":11.37},"Inventory":{"5":{"item":"dollars","amount":1450},"6":{"item":"cellphone-1742871191","amount":1},"1":{"item":"water","amount":2},"3":{"item":"hamburger-1742871191","amount":3},"2":{"item":"identity-56","amount":1}},"Skin":"mp_m_freemode_01","Stress":0,"Thirst":51,"Hunger":85,"Health":200,"Armour":0}');
INSERT INTO `playerdata` VALUES ('56', 'Experience', '{"Boosting":0,"Hunting":0,"Trucker":0,"Driver":0,"Lumberman":0,"Transporter":0,"Delivery":0,"Dismantle":0,"Fisherman":0,"Minerman":0,"Garbageman":0}');
INSERT INTO `playerdata` VALUES ('56', 'nation_char', '{"blush-color":0,"shapeThird":0,"skinThird":0,"gender":"male","sunDamage-opacity":1.0,"bodyBlemishes-opacity":1.0,"ageing-color":0,"facialHair-opacity":1.0,"lipstick-opacity":1.0,"addBodyBlemishes-color":0,"makeup-color":-1,"ageing":-1,"chestHair-color":0,"blush":-1,"skinMix":0.80000001192092,"chestHair":-1,"skinFirst":21,"eyebrows":2,"cheeksBoneWidth":0.0,"makeup-opacity":1.0,"sunDamage-color":0,"cheeksWidth":0.0,"addBodyBlemishes":-1,"overlay":0,"hair":64,"sunDamage":-1,"chinBoneWidth":0.0,"facialHair-color":0,"lipsThickness":0.0,"chinBoneLowering":0.0,"skinSecond":0,"lipstick-color":0,"nosePeakHeight":0.0,"addBodyBlemishes-opacity":1.0,"makeup":-1,"blemishes":-1,"hair-color":29,"eyebrows-opacity":1.0,"chinBoneLength":0.0,"ageing-opacity":1.0,"complexion":-1,"freckles-opacity":1.0,"blush-opacity":1.0,"chestHair-opacity":1.0,"blemishes-opacity":1.0,"blemishes-color":0,"lipstick":-1,"thirdMix":0.0,"shapeMix":0.80000001192092,"nosePeakLowering":0.0,"eyeBrownForward":0.0,"eyeBrownHigh":0.28,"complexion-color":0,"noseBoneHigh":0.0,"eyesOpenning":0.0,"shapeFirst":21,"jawBoneBackLength":0.0,"noseWidth":0.0,"eyes":3,"cheeksBoneHigh":0.0,"eyebrows-color":0,"bodyBlemishes-color":0,"freckles-color":0,"chinHole":0.0,"bodyBlemishes":-1,"hair-highlightcolor":29,"freckles":-1,"facialHair":3,"neckThickness":0.0,"jawBoneWidth":0.0,"noseBoneTwist":0.0,"shapeSecond":0,"complexion-opacity":1.0,"nosePeakLength":0.0}');
INSERT INTO `playerdata` VALUES ('56', 'Rolepass', '{"Finish":1743476400.0,"Points":0,"Free":0,"Premium":0,"RolepassBuy":false}');
INSERT INTO `playerdata` VALUES ('57', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('57', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('57', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('57', 'Clothings', '{"accessory":{"texture":0,"item":0},"backpack":{"texture":0,"item":0},"shoes":{"texture":0,"item":16},"tshirt":{"texture":0,"item":7},"arms":{"texture":0,"item":7},"mask":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"ear":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"torso":{"texture":0,"item":252},"glass":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"pants":{"texture":0,"item":6},"bracelet":{"texture":0,"item":-1}}');
INSERT INTO `playerdata` VALUES ('57', 'Datatable', '{"Weight":40,"Thirst":15,"Inventory":{"3":{"item":"dollars","amount":982},"4":{"amount":1,"item":"hamburger-1742928612"},"5":{"amount":1,"item":"lighter-1742933794"},"6":{"amount":1,"item":"cellphone-1742928612"},"1":{"item":"pickaxe-1742873735","amount":1},"2":{"item":"identity-57","amount":1},"15":{"amount":1,"item":"water"},"16":{"amount":1,"item":"WEAPON_CROWBAR-1742873758"},"13":{"amount":2,"item":"plasticbottle"},"14":{"item":"canopener","amount":1},"10":{"amount":1,"item":"spoon"},"8":{"item":"silk","amount":1},"12":{"amount":1,"item":"debitcard-54"},"11":{"amount":1,"item":"creditcard-54"},"20":{"amount":1,"item":"WEAPON_PETROLCAN-5Z09W0"},"19":{"amount":1,"item":"WEAPON_PETROLCAN_AMMO"},"9":{"item":"vape-1742933795","amount":1},"7":{"item":"cigarette","amount":1},"18":{"amount":2,"item":"dollars"}},"Pos":{"x":199.75,"y":-865.1,"z":30.43},"Skin":"mp_m_freemode_01","Stress":0,"Hunger":54,"Health":152,"Armour":0}');
INSERT INTO `playerdata` VALUES ('57', 'Experience', '{"Lumberman":0,"Trucker":0,"Hunting":0,"Boosting":0,"Minerman":0,"Fisherman":0,"Delivery":0,"Garbageman":0,"Dismantle":0,"Transporter":0,"Driver":0}');
INSERT INTO `playerdata` VALUES ('57', 'nation_char', '{"bodyBlemishes-color":0,"chestHair":-1,"complexion":-1,"bodyBlemishes":-1,"complexion-opacity":1.0,"hair":112,"blemishes-color":0,"chinHole":0.0,"ageing":-1,"nosePeakLowering":0.0,"jawBoneWidth":0.0,"noseWidth":-0.38,"lipstick-opacity":1.0,"complexion-color":0,"sunDamage-opacity":1.0,"lipsThickness":0.0,"eyeBrownHigh":0.0,"shapeFirst":21,"cheeksBoneWidth":0.0,"shapeSecond":0,"chestHair-opacity":1.0,"freckles":-1,"lipstick-color":0,"overlay":0,"makeup-opacity":1.0,"jawBoneBackLength":0.0,"blush-color":0,"blush":-1,"gender":"male","eyes":0,"ageing-color":0,"hair-highlightcolor":0,"neckThickness":0.0,"skinFirst":21,"cheeksWidth":0.0,"facialHair-color":0,"chinBoneWidth":0.0,"blemishes-opacity":1.0,"nosePeakHeight":0.0,"noseBoneHigh":0.0,"skinSecond":0,"noseBoneTwist":0.0,"addBodyBlemishes-color":0,"addBodyBlemishes":-1,"eyesOpenning":0.0,"blemishes":-1,"freckles-opacity":1.0,"skinMix":0.80000001192092,"makeup":-1,"sunDamage":-1,"cheeksBoneHigh":0.0,"eyebrows":12,"skinThird":0,"lipstick":-1,"shapeMix":0.80000001192092,"eyebrows-color":0,"eyebrows-opacity":1.0,"addBodyBlemishes-opacity":1.0,"chinBoneLowering":0.0,"sunDamage-color":0,"bodyBlemishes-opacity":1.0,"blush-opacity":1.0,"chestHair-color":0,"facialHair-opacity":1.0,"thirdMix":0.0,"freckles-color":0,"shapeThird":0,"hair-color":0,"eyeBrownForward":0.0,"chinBoneLength":0.0,"makeup-color":-1,"ageing-opacity":1.0,"nosePeakLength":0.0,"facialHair":3}');
INSERT INTO `playerdata` VALUES ('57', 'Rolepass', '{"Premium":0,"Free":0,"Points":0,"RolepassBuy":false,"Finish":1743476400.0}');
INSERT INTO `playerdata` VALUES ('57', 'Tatuagens', '{"tattoos":["MP_LR_Tat_028_M","MP_LR_Tat_015_M","MP_LR_Tat_027_M","MP_LR_Tat_006_M","MP_LR_Tat_005_M","MP_LR_Tat_029_M","MP_LR_Tat_017_M","MP_LR_Tat_016_M","MP_LR_Tat_010_M","MP_LR_Tat_019_M","MP_LR_Tat_012_M"],"overlay":0}');
INSERT INTO `playerdata` VALUES ('58', 'Ammos', '[]');
INSERT INTO `playerdata` VALUES ('58', 'Attachs', '[]');
INSERT INTO `playerdata` VALUES ('58', 'Backpack', '[]');
INSERT INTO `playerdata` VALUES ('58', 'Clothings', '{"decals":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":47,"texture":0},"tshirt":{"item":129,"texture":0},"glass":{"item":67,"texture":1},"shoes":{"item":34,"texture":0},"arms":{"item":15,"texture":0},"hat":{"item":23,"texture":0},"bracelet":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":15,"texture":0},"mask":{"item":0,"texture":0}}');
INSERT INTO `playerdata` VALUES ('58', 'Datatable', '{"Health":194,"Inventory":{"4":{"amount":2,"item":"plasticbottle"},"5":{"amount":1,"item":"identity-58"},"6":{"amount":1,"item":"cellphone-1743005515"},"7":{"amount":1,"item":"radio-1743008802"},"1":{"amount":3,"item":"hamburger-1743005515"},"3":{"amount":300,"item":"dollars"}},"Thirst":27,"Stress":0,"Hunger":97,"Pos":{"x":400.22,"y":-1160.86,"z":29.28},"Weight":40,"Skin":"mp_m_freemode_01","Armour":0}');
INSERT INTO `playerdata` VALUES ('58', 'Experience', '{"Boosting":0,"Dismantle":0,"Hunting":0,"Garbageman":0,"Driver":0,"Trucker":0,"Minerman":0,"Fisherman":0,"Transporter":0,"Delivery":0,"Lumberman":0}');
INSERT INTO `playerdata` VALUES ('58', 'nation_char', '{"cheeksBoneHigh":-0.72,"jawBoneBackLength":-0.07,"addBodyBlemishes":-1,"addBodyBlemishes-opacity":1.0,"lipstick-opacity":1.0,"ageing":-1,"blush-color":63,"blemishes-color":0,"nosePeakLowering":-0.26,"eyesOpenning":0.69,"nosePeakLength":0.29,"cheeksBoneWidth":0.34,"chinBoneLowering":0.29,"eyes":29,"bodyBlemishes":-1,"freckles-opacity":1.0,"hair-highlightcolor":29,"eyebrows-color":0,"chinHole":0.0,"makeup":4,"lipstick-color":0,"eyeBrownHigh":1.0,"skinSecond":0,"chestHair-color":0,"shapeThird":0,"lipstick":-1,"cheeksWidth":0.07,"chestHair":11,"freckles":-1,"facialHair-color":29,"lipsThickness":-0.37,"blush-opacity":1.0,"addBodyBlemishes-color":0,"blush":30,"eyebrows":30,"shapeMix":0.47999998927116,"chestHair-opacity":1.0,"noseBoneHigh":0.46,"makeup-color":-1,"eyebrows-opacity":1.0,"sunDamage-color":0,"skinThird":0,"ageing-color":0,"shapeSecond":0,"complexion-opacity":1.0,"blemishes-opacity":1.0,"jawBoneWidth":0.34,"complexion-color":0,"sunDamage-opacity":1.0,"facialHair":3,"ageing-opacity":1.0,"facialHair-opacity":1.0,"overlay":0,"eyeBrownForward":-0.16,"neckThickness":0.58,"bodyBlemishes-opacity":1.0,"makeup-opacity":1.0,"sunDamage":-1,"hair":79,"blemishes":-1,"nosePeakHeight":0.16,"thirdMix":0.0,"complexion":5,"skinMix":0.75999999046325,"noseBoneTwist":0.0,"shapeFirst":21,"bodyBlemishes-color":0,"noseWidth":-0.08,"skinFirst":26,"hair-color":29,"chinBoneLength":-0.38,"gender":"male","freckles-color":0,"chinBoneWidth":0.02}');
INSERT INTO `playerdata` VALUES ('58', 'Rolepass', '{"Finish":1743476400.0,"RolepassBuy":false,"Points":0,"Premium":0,"Free":0}');

DROP TABLE IF EXISTS `pontos`;
CREATE TABLE `pontos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `entrada` datetime DEFAULT NULL,
  `saida` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `port`;
CREATE TABLE `port` (
  `portId` int(11) NOT NULL AUTO_INCREMENT,
  `identity` longtext DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `portType` longtext DEFAULT NULL,
  `serial` longtext DEFAULT NULL,
  `nidentity` longtext DEFAULT NULL,
  `exam` longtext DEFAULT NULL,
  `date` text DEFAULT NULL,
  PRIMARY KEY (`portId`),
  KEY `portId` (`portId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


DROP TABLE IF EXISTS `prison`;
CREATE TABLE `prison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `police` varchar(255) DEFAULT '0',
  `nuser_id` int(11) NOT NULL DEFAULT 0,
  `services` int(11) NOT NULL DEFAULT 0,
  `fines` int(20) NOT NULL DEFAULT 0,
  `text` longtext DEFAULT NULL,
  `date` text DEFAULT NULL,
  `cops` longtext NOT NULL DEFAULT '0',
  `association` longtext NOT NULL DEFAULT '0',
  `residual` text DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `prison` VALUES ('1', 'Attila Pena', '3', '20', '33800', '<p data-criminal="true">TRÁFICO DE MUNIÇÃO, AMEAÇA EXÓTICA (TERRORISMO), SUBORNO, TRÁFICO DE DROGAS, CAÇA ILEGAL, USO INDEVIDO DA FARDA POLICEL, ABANDONO DE VEÍCULO, ESTACIONAMENTO IRREGULAR, DIREÇÃO PERIGOSA, DIRIGIR NA CONTRAMÃO, DANO AO PATRIMÔNIO, DIREÇÃO COM VEÍCULO DANIFICADO, DANIFICAR VIATURA, UTILIZAR VEÍCULOS OFF-ROAD NA CIDADE,</p>', '16/03/2025 ás 01:17', '', '1', 'Sim', '*');
INSERT INTO `prison` VALUES ('2', 'Attila Pena', '34', '20', '8500', '<p data-criminal="true">TENTATIVA DE HOMICÍDIO, TENTATIVA DE HOMICÍDIO A POLICEL, LESÃO CORPORAL, AMEAÇA GRAVE À VIDA, ABANDONO DE VEÍCULO,</p>', '16/03/2025 ás 01:20', '', '', 'Não', '*');
INSERT INTO `prison` VALUES ('3', 'Attila Pena', '48', '25', '3100', '<p data-criminal="true">DIREÇÃO PERIGOSA, DIRIGIR NA CONTRAMÃO, DANO AO PATRIMÔNIO,</p>', '20/03/2025 ás 00:04', '', '', 'Não', '*');

DROP TABLE IF EXISTS `propertys`;
CREATE TABLE `propertys` (
  `Number` int(20) NOT NULL,
  `Passport` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `Keychain` int(11) NOT NULL DEFAULT 0,
  `Tax` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Number`) USING BTREE,
  KEY `Passport` (`Passport`),
  KEY `id` (`Number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `races`;
CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` int(3) NOT NULL DEFAULT 0,
  `Passport` int(5) NOT NULL DEFAULT 0,
  `Name` varchar(100) NOT NULL DEFAULT 'Individuo Indigente',
  `Vehicle` varchar(50) NOT NULL DEFAULT 'Sultan RS',
  `Points` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `Race` (`Race`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `races` VALUES ('1', '14', '2', 'Thiago Martins', '0', '196101');
INSERT INTO `races` VALUES ('2', '14', '41', 'Nicolas Adm', 'Calico', '242315');
INSERT INTO `races` VALUES ('3', '18', '15', 'Lasconne Seven', 'Toyota Supra A80', '263198');
INSERT INTO `races` VALUES ('4', '1', '41', 'Nicolas Adm', 'Typer Civic', '314691');
INSERT INTO `races` VALUES ('5', '21', '41', 'Nicolas Adm', 'Typer Civic', '327852');
INSERT INTO `races` VALUES ('6', '21', '15', 'Lasconne Seven', 'MITSUBISHI ECLIPSE', '327614');
INSERT INTO `races` VALUES ('7', '21', '2', 'Thiago Martins', '0', '336380');
INSERT INTO `races` VALUES ('8', '12', '41', 'Nicolas Adm', 'Typer Civic', '192224');
INSERT INTO `races` VALUES ('9', '12', '15', 'Lasconne Seven', 'Typer Civic', '192718');
INSERT INTO `races` VALUES ('10', '12', '2', 'Thiago Martins', '0', '184520');
INSERT INTO `races` VALUES ('11', '5', '3', 'Shelby Nuu', 'LANCER EVOLUTION', '288217');
INSERT INTO `races` VALUES ('12', '5', '41', 'Nicolas Adm', 'Typer Civic', '284881');
INSERT INTO `races` VALUES ('13', '5', '15', 'Lasconne Seven', 'Typer Civic', '285613');
INSERT INTO `races` VALUES ('14', '17', '2', 'Thiago Martins', '0', '315100');
INSERT INTO `races` VALUES ('15', '13', '2', 'Thiago Martins', '0', '146354');
INSERT INTO `races` VALUES ('16', '5', '2', 'Thiago Martins', '0', '264751');
INSERT INTO `races` VALUES ('17', '18', '2', 'Thiago Martins', '0', '271505');

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `victim_id` text DEFAULT NULL,
  `police_name` text DEFAULT NULL,
  `solved` text DEFAULT NULL,
  `victim_name` text DEFAULT NULL,
  `created_at` text DEFAULT NULL,
  `victim_report` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portId` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `reports` VALUES ('3', '37', 'Attila Pena', NULL, 'Rubi', '19/03/2025 ás 22:17', '<p>Em patrulha pela frente do Hospital no Sul, A mesma encontrava-se agredindo pessoas, sendo que ja tiinha desmaiado 3 vitimas.<br><br>Ao levar a mesma para Base em pelo para detela, apareceu um carro com som muito alto arremessando tijolos no oficial ate desmaialo. ao ficar consiente novamente a meliante ja não estava mas na base.</p>', '19/03/2025 ás 22:17');

DROP TABLE IF EXISTS `smartphone_bank_invoices`;
CREATE TABLE `smartphone_bank_invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payee_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_bank_invoices` VALUES ('1', '8', '1', 'tratamento + kit medico + primeiros socorros', '12500', '1', '1742098563', '1742426159');
INSERT INTO `smartphone_bank_invoices` VALUES ('2', '8', '23', 'reanimação', '3200', '1', '1742186423', '1742188169');
INSERT INTO `smartphone_bank_invoices` VALUES ('3', '8', '23', 'reanimação', '4000', '1', '1742186573', '1742188163');
INSERT INTO `smartphone_bank_invoices` VALUES ('4', '8', '9', 'bandagem 2x', '360', '1', '1742189275', '1742254945');
INSERT INTO `smartphone_bank_invoices` VALUES ('5', '8', '37', '2x reanimações + tratamento + custos op', '10000', '0', '1742190507', '1742190507');
INSERT INTO `smartphone_bank_invoices` VALUES ('6', '9', '46', 'Tratamento médico', '1000', '0', '1742531865', '1742531865');
INSERT INTO `smartphone_bank_invoices` VALUES ('7', '9', '46', 'Tratamento médico', '1000', '1', '1742531868', '1742531889');

DROP TABLE IF EXISTS `smartphone_blocks`;
CREATE TABLE `smartphone_blocks` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_calls`;
CREATE TABLE `smartphone_calls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `video` tinyint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_index` (`initiator`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_calls` VALUES ('1', '761-671', '938-801', '0', 'unanswered', '0', '0', '1741995107');
INSERT INTO `smartphone_calls` VALUES ('2', '511-983', '938-801', '0', 'unanswered', '0', '0', '1741997739');
INSERT INTO `smartphone_calls` VALUES ('3', '977-060', '660-013', '20', 'ok', '0', '0', '1741999821');
INSERT INTO `smartphone_calls` VALUES ('4', '977-060', '660-013', '56', 'ok', '0', '0', '1742005004');
INSERT INTO `smartphone_calls` VALUES ('5', '660-013', '977-060', '23', 'ok', '0', '0', '1742005249');
INSERT INTO `smartphone_calls` VALUES ('6', '977-060', '710-198', '47', 'ok', '0', '0', '1742005995');
INSERT INTO `smartphone_calls` VALUES ('7', '977-060', '710-198', '37', 'ok', '0', '0', '1742006594');
INSERT INTO `smartphone_calls` VALUES ('8', '679-147', '977-060', '0', 'ok', '0', '0', '1742048617');
INSERT INTO `smartphone_calls` VALUES ('9', '660-013', '035-545', '0', 'unanswered', '0', '0', '1742062546');
INSERT INTO `smartphone_calls` VALUES ('10', '977-060', '710-198', '0', 'unanswered', '0', '0', '1742068423');
INSERT INTO `smartphone_calls` VALUES ('11', '977-060', '660-013', '4', 'ok', '0', '0', '1742068453');
INSERT INTO `smartphone_calls` VALUES ('12', '977-060', '660-013', '0', 'unanswered', '0', '0', '1742068480');
INSERT INTO `smartphone_calls` VALUES ('13', '660-013', '977-060', '0', 'unanswered', '0', '0', '1742068858');
INSERT INTO `smartphone_calls` VALUES ('14', '660-013', '977-060', '0', 'unanswered', '0', '0', '1742068882');
INSERT INTO `smartphone_calls` VALUES ('15', '035-545', '670-873', '5', 'ok', '0', '0', '1742077818');
INSERT INTO `smartphone_calls` VALUES ('16', '511-983', '938-801', '6', 'ok', '1', '0', '1742083831');
INSERT INTO `smartphone_calls` VALUES ('17', '035-545', '670-873', '0', 'unanswered', '0', '0', '1742097570');
INSERT INTO `smartphone_calls` VALUES ('18', '035-545', '670-873', '16', 'ok', '0', '0', '1742097640');
INSERT INTO `smartphone_calls` VALUES ('19', '386-899', '160-369', '13', 'ok', '0', '0', '1742098230');
INSERT INTO `smartphone_calls` VALUES ('20', '977-060', '710-198', '45', 'ok', '0', '0', '1742098621');
INSERT INTO `smartphone_calls` VALUES ('21', '710-198', '977-060', '16', 'ok', '0', '0', '1742100654');
INSERT INTO `smartphone_calls` VALUES ('22', '539-378', '110-522', '27', 'ok', '0', '0', '1742179052');
INSERT INTO `smartphone_calls` VALUES ('23', '539-378', '110-522', '12', 'ok', '1', '0', '1742179100');
INSERT INTO `smartphone_calls` VALUES ('24', '539-378', '110-522', '45', 'ok', '0', '0', '1742179120');
INSERT INTO `smartphone_calls` VALUES ('25', '539-378', '110-522', '22', 'ok', '0', '0', '1742179590');
INSERT INTO `smartphone_calls` VALUES ('26', '670-873', '021-347', '30', 'ok', '0', '0', '1742313074');
INSERT INTO `smartphone_calls` VALUES ('27', '511-983', '710-198', '19', 'ok', '0', '0', '1742413324');
INSERT INTO `smartphone_calls` VALUES ('28', '021-347', '670-873', '29', 'ok', '0', '0', '1742426550');
INSERT INTO `smartphone_calls` VALUES ('29', '021-347', '670-873', '43', 'ok', '0', '0', '1742432800');
INSERT INTO `smartphone_calls` VALUES ('30', '977-060', '670-873', '16', 'ok', '0', '0', '1742433395');
INSERT INTO `smartphone_calls` VALUES ('31', '977-060', '670-873', '34', 'ok', '0', '0', '1742433611');
INSERT INTO `smartphone_calls` VALUES ('32', '511-983', '670-873', '17', 'ok', '0', '0', '1742433831');
INSERT INTO `smartphone_calls` VALUES ('33', '021-347', '035-545', '0', 'unanswered', '0', '0', '1742434811');
INSERT INTO `smartphone_calls` VALUES ('34', '670-873', '035-545', '69', 'ok', '0', '0', '1742435734');
INSERT INTO `smartphone_calls` VALUES ('35', '977-060', '214-186', '0', 'unanswered', '0', '0', '1742436756');
INSERT INTO `smartphone_calls` VALUES ('36', '977-060', '214-186', '13', 'ok', '0', '0', '1742436769');
INSERT INTO `smartphone_calls` VALUES ('37', '035-545', '670-873', '54', 'ok', '0', '0', '1742436857');
INSERT INTO `smartphone_calls` VALUES ('38', '977-060', '214-186', '15', 'ok', '0', '0', '1742437023');
INSERT INTO `smartphone_calls` VALUES ('39', '977-060', '214-186', '30', 'ok', '0', '0', '1742437114');
INSERT INTO `smartphone_calls` VALUES ('40', '214-186', '977-060', '0', 'refused', '0', '0', '1742437307');
INSERT INTO `smartphone_calls` VALUES ('41', '977-060', '214-186', '1', 'ok', '0', '0', '1742437324');
INSERT INTO `smartphone_calls` VALUES ('42', '670-873', '511-983', '0', 'unanswered', '0', '0', '1742437584');
INSERT INTO `smartphone_calls` VALUES ('43', '511-983', '222-222', '0', 'unanswered', '0', '0', '1742516404');
INSERT INTO `smartphone_calls` VALUES ('44', '222-222', '511-983', '23', 'ok', '0', '0', '1742519712');
INSERT INTO `smartphone_calls` VALUES ('45', '222-222', '511-983', '14', 'ok', '0', '0', '1742520823');
INSERT INTO `smartphone_calls` VALUES ('46', '035-545', '670-873', '39', 'ok', '0', '0', '1742531251');
INSERT INTO `smartphone_calls` VALUES ('47', '222-222', '511-983', '0', 'unanswered', '1', '0', '1742864391');
INSERT INTO `smartphone_calls` VALUES ('48', '511-983', '222-222', '19', 'ok', '1', '0', '1742864550');
INSERT INTO `smartphone_calls` VALUES ('49', '511-983', '222-222', '12', 'ok', '0', '0', '1742934930');
INSERT INTO `smartphone_calls` VALUES ('50', '511-983', '035-545', '0', 'unanswered', '0', '0', '1742945174');
INSERT INTO `smartphone_calls` VALUES ('51', '035-545', '511-983', '17', 'ok', '0', '0', '1742945186');

DROP TABLE IF EXISTS `smartphone_casino`;
CREATE TABLE `smartphone_casino` (
  `user_id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `double` bigint(20) NOT NULL DEFAULT 0,
  `crash` bigint(20) NOT NULL DEFAULT 0,
  `mine` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_casino` VALUES ('1', '156930', '30000', '26930', '0');
INSERT INTO `smartphone_casino` VALUES ('2', '8000', '-2000', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('3', '1661', '-1000', '-7339', '0');
INSERT INTO `smartphone_casino` VALUES ('4', '7000', '-21500', '-6500', '-1000');
INSERT INTO `smartphone_casino` VALUES ('9', '292', '0', '-218', '-490');
INSERT INTO `smartphone_casino` VALUES ('10', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('12', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('14', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('16', '34', '0', '-4366', '-600');
INSERT INTO `smartphone_casino` VALUES ('18', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('20', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('23', '9900', '-100', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('28', '22', '-28', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('42', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('44', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('48', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('51', '0', '-1500', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('52', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('57', '0', '0', '0', '0');
INSERT INTO `smartphone_casino` VALUES ('58', '0', '0', '0', '0');

DROP TABLE IF EXISTS `smartphone_contacts`;
CREATE TABLE `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_contacts` VALUES ('1', '761-671', '938-801', 'Japa');
INSERT INTO `smartphone_contacts` VALUES ('2', '710-198', '511-983', 'baiano');
INSERT INTO `smartphone_contacts` VALUES ('3', '710-198', '938-801', 'japa');
INSERT INTO `smartphone_contacts` VALUES ('4', '710-198', '977-060', 'shelby');
INSERT INTO `smartphone_contacts` VALUES ('5', '938-801', '710-198', 'connor');
INSERT INTO `smartphone_contacts` VALUES ('6', '938-801', '511-983', 'baiano ');
INSERT INTO `smartphone_contacts` VALUES ('7', '679-147', '977-060', 'Shelby');
INSERT INTO `smartphone_contacts` VALUES ('8', '035-545', '660-013', 'sushi');
INSERT INTO `smartphone_contacts` VALUES ('9', '977-060', '035-545', 'rosa');
INSERT INTO `smartphone_contacts` VALUES ('10', '539-378', '110-522', 'nicolas');
INSERT INTO `smartphone_contacts` VALUES ('11', '110-522', '539-378', 'Falcão');
INSERT INTO `smartphone_contacts` VALUES ('12', '035-545', '670-873', 'glarco');
INSERT INTO `smartphone_contacts` VALUES ('13', '386-899', '160-369', 'linda');
INSERT INTO `smartphone_contacts` VALUES ('14', '660-013', '035-545', 'RoSa original');
INSERT INTO `smartphone_contacts` VALUES ('15', '386-899', '107-913', 'russo');
INSERT INTO `smartphone_contacts` VALUES ('17', '173-535', '670-873', 'sertanejo');
INSERT INTO `smartphone_contacts` VALUES ('18', '173-535', '977-060', 'moco que me ajudou');
INSERT INTO `smartphone_contacts` VALUES ('19', '222-222', '110-522', 'irmão');
INSERT INTO `smartphone_contacts` VALUES ('20', '110-522', '222-222', 'TH');
INSERT INTO `smartphone_contacts` VALUES ('21', '035-545', '511-983', 'ATTILA BAIANO');
INSERT INTO `smartphone_contacts` VALUES ('22', '779-113', '670-873', 'Alcione cara de abobora');
INSERT INTO `smartphone_contacts` VALUES ('23', '670-873', '779-113', 'Ruby');
INSERT INTO `smartphone_contacts` VALUES ('24', '670-873', '173-535', 'Yumi');
INSERT INTO `smartphone_contacts` VALUES ('25', '670-873', '035-545', 'Rosa');
INSERT INTO `smartphone_contacts` VALUES ('26', '021-347', '670-873', 'Sertanejo');
INSERT INTO `smartphone_contacts` VALUES ('27', '511-983', '710-198', 'Connor');
INSERT INTO `smartphone_contacts` VALUES ('28', '035-545', '021-347', 'lebron');
INSERT INTO `smartphone_contacts` VALUES ('29', '021-347', '035-545', 'Rosa');
INSERT INTO `smartphone_contacts` VALUES ('30', '670-873', '511-983', 'Baianoo');
INSERT INTO `smartphone_contacts` VALUES ('31', '977-060', '214-186', 'Lascone');
INSERT INTO `smartphone_contacts` VALUES ('32', '977-060', '035-545', 'Rosa original');
INSERT INTO `smartphone_contacts` VALUES ('33', '222-222', '511-983', 'Attila');
INSERT INTO `smartphone_contacts` VALUES ('34', '511-983', '222-222', 'Thiago Martins');
INSERT INTO `smartphone_contacts` VALUES ('35', '511-983', '670-873', 'Sertanejo');
INSERT INTO `smartphone_contacts` VALUES ('36', '511-983', '035-545', 'Rosa KoiSushi');

DROP TABLE IF EXISTS `smartphone_gallery`;
CREATE TABLE `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_gallery` VALUES ('1', '10', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350192235173511268/1741981310250.jpg?ex=67d5d802&is=67d48682&hm=a2ea398188d37ea6ff695860aebcc049fd93b26b3e556c1fb1866e6bd21670b2&', '1741981310');
INSERT INTO `smartphone_gallery` VALUES ('2', '10', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350192536903221439/1741981381807.jpg?ex=67d5d84a&is=67d486ca&hm=665c484c2acd8a6652e3e3d58b23bbae27bdc83df52e959bdeb418d600da03ce&', '1741981382');
INSERT INTO `smartphone_gallery` VALUES ('3', '14', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350194843355447386/1741981935628.jpg?ex=67d5da70&is=67d488f0&hm=0be854c07945c1b1d0d50290aa9971368a778b53167f6c9f95ed9f1fa0884af9&', '1741981932');
INSERT INTO `smartphone_gallery` VALUES ('4', '14', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350195132280078498/1741982004386.jpg?ex=67d5dab4&is=67d48934&hm=44e768fb76900b33a93e98c7b4796d7a14d972452392e2a25db840ce64dbdf07&', '1741982001');
INSERT INTO `smartphone_gallery` VALUES ('5', '1', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350255402419228683/1741996374733.jpg?ex=67d612d6&is=67d4c156&hm=6c48fdf72fecc98518c84d1d6fab9752c3794b47945eb75c8927531ceeffbf55&', '1741996370');
INSERT INTO `smartphone_gallery` VALUES ('6', '1', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350255498129182721/1741996397447.jpg?ex=67d612ed&is=67d4c16d&hm=06e19996a99705ed18af34d501fc099b195a531ff47d5f90bf19a4aca96a4317&', '1741996393');
INSERT INTO `smartphone_gallery` VALUES ('7', '4', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350270721137442918/1742000026646.jpg?ex=67d6211a&is=67d4cf9a&hm=56cc12c907c5ae2dfa2138446ee5ef0ddd06cb614c6702dcdab6c67a5df92448&', '1742000023');
INSERT INTO `smartphone_gallery` VALUES ('8', '18', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350286131576574084/1742003698453.jpg?ex=67d62f74&is=67d4ddf4&hm=d422fc37c077b95eac06fa6eb2aae655e99f0620781fe29cbbbcf2f3bb334393&', '1742003697');
INSERT INTO `smartphone_gallery` VALUES ('9', '20', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350287274713288745/1742003975896.jpg?ex=67d63085&is=67d4df05&hm=3d73f26234ce908eed7b4beae94137633922f5e034cc8179f40d6a7f7d84c25a&', '1742003969');
INSERT INTO `smartphone_gallery` VALUES ('10', '16', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350288796561838131/1742004336747.jpg?ex=67d631f0&is=67d4e070&hm=ff85ea494373c50cc7971cfb914f26e519f3e105b6931181a65b5b5724eae1ef&', '1742004332');
INSERT INTO `smartphone_gallery` VALUES ('11', '16', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350289569345441813/1742004520670.jpg?ex=67d632a8&is=67d4e128&hm=2b4a38b1b64b4ba71e6c75addae50b835d09c034a4ee018ba8fa145f5562ec0c&', '1742004516');
INSERT INTO `smartphone_gallery` VALUES ('12', '4', '/tinder', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350518954669637722/1742059212545.jpg?ex=67d7084a&is=67d5b6ca&hm=ef88679d50a8473c44d97647b460c55a3d2b897eca4e686e515ddd00f68c684e&', '1742059206');
INSERT INTO `smartphone_gallery` VALUES ('13', '4', '/whatsapp', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350533026777661622/1742062567598.jpg?ex=67d71565&is=67d5c3e5&hm=692740fdebdac60fc40af2bdac861aea0057f30176f1299b57a76d88df0ed5bb&', '1742062561');
INSERT INTO `smartphone_gallery` VALUES ('14', '4', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350534082794360943/1742062819275.jpg?ex=67d71661&is=67d5c4e1&hm=68655e9bac45a3c9aad9e56bdd7f4d5d735723f051757c9f35c2b5b71912e61c&', '1742062813');
INSERT INTO `smartphone_gallery` VALUES ('15', '10', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350534116462035047/1742062822839.jpg?ex=67d71669&is=67d5c4e9&hm=9ebf5b30e570a7609d0295fd3d1ee40f9cfd35a7c74be19f7bb850bd2a009d72&', '1742062821');
INSERT INTO `smartphone_gallery` VALUES ('16', '10', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350535014118457404/1742063037095.jpg?ex=67d7173f&is=67d5c5bf&hm=f1ab4240aedb5413f33121da8f6134379df3621fa145987b5891235fd300cf89&', '1742063035');
INSERT INTO `smartphone_gallery` VALUES ('17', '10', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350543814552719430/1742065135164.jpg?ex=67d71f71&is=67d5cdf1&hm=847fa7b8a618d90811f639ae5e1ff8ac3abc7acc1c85cba7026fcf491937fe0c&', '1742065133');
INSERT INTO `smartphone_gallery` VALUES ('18', '28', '/tinder', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350590371708538990/1742076236968.jpg?ex=67d74acd&is=67d5f94d&hm=981a9afe43623aa80895fcd0ac3eebdc54c1607c8a6d552fa3a0963d8a493c0e&', '1742076233');
INSERT INTO `smartphone_gallery` VALUES ('19', '20', '/whatsapp', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350590974723620914/1742076382036.jpg?ex=67d74b5d&is=67d5f9dd&hm=2d1e692fdd7462d800e8dcbde8a292b43d4306f20d2d170078ff8b179b6a5560&', '1742076377');
INSERT INTO `smartphone_gallery` VALUES ('20', '16', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350600283721306226/1742078600583.jpg?ex=67d75408&is=67d60288&hm=a16be99184c049e87a4c69aee1a5b6fd71969cb74095ed6edde62dbe0b8a30ac&', '1742078596');
INSERT INTO `smartphone_gallery` VALUES ('21', '3', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350634504271691877/1742086759040.jpg?ex=67d773e7&is=67d62267&hm=fb6d34cd1cde3a6b58a921b12db23e96b89698564f8bff7399e9497198dcb819&', '1742086755');
INSERT INTO `smartphone_gallery` VALUES ('22', '8', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350642386891702462/1742088636785.jpg?ex=67d77b3e&is=67d629be&hm=040fbb95991eeba2060a1d076bb4d500b5847eacb7064d2f272eb8cc2c5b753c&', '1742088635');
INSERT INTO `smartphone_gallery` VALUES ('23', '4', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350643566833172490/1742088922586.jpg?ex=67d77c58&is=67d62ad8&hm=23f2ea21a9c6429ab4615d3661f91499baf5d0a0613c1009d7cddf4b8c489d52&', '1742088916');
INSERT INTO `smartphone_gallery` VALUES ('24', '1', '/', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350646361984340018/1742089586880.jpg?ex=67d77ef2&is=67d62d72&hm=0316977614a6a0ddd1900fad1b4e7c6e529f0baad288b69c003b29f0ceb003d8&', '1742089582');
INSERT INTO `smartphone_gallery` VALUES ('25', '36', '/whatsapp', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350680293207703623/1742097676131.jpg?ex=67d79e8c&is=67d64d0c&hm=762bd72ab66ccafc126efefcdddfd214639e86dee5fb1c88aebe3852fe98090d&', '1742097672');
INSERT INTO `smartphone_gallery` VALUES ('26', '38', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350875721689469020/1742144280108.jpg?ex=67d8548e&is=67d7030e&hm=e59a6a151cdbe75a6b28a10d921c8bb28d22890c6d18bd144b0343d7ba8cbe5e&', '1742144266');
INSERT INTO `smartphone_gallery` VALUES ('27', '10', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351006905895620716/1742175544842.jpg?ex=67d8ceba&is=67d77d3a&hm=ef1763ffd0988514fd1af764764fb93341924597f19aa84048f9db190846f85e&', '1742175543');
INSERT INTO `smartphone_gallery` VALUES ('28', '23', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351663371354640585/1742332060354.jpg?ex=67db321c&is=67d9e09c&hm=e15223d0e26c6ce0d38300ddd282746f05fe6cd64c23dc7b37aef8cf675b6fea&', '1742332056');
INSERT INTO `smartphone_gallery` VALUES ('29', '23', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351664628840796252/1742332360235.jpg?ex=67db3348&is=67d9e1c8&hm=91a0d8c468910be6a7412b13471df37af65f404b6ecb89a5fb3754e522364e4d&', '1742332356');
INSERT INTO `smartphone_gallery` VALUES ('30', '45', '/instagram', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351735625572683837/1742349284710.jpg?ex=67db7567&is=67da23e7&hm=330c7df98398638216c86dc5f1798abd54fa271640fb817f8e6af20a3b1d86bf&', '1742349283');

DROP TABLE IF EXISTS `smartphone_ifood_orders`;
CREATE TABLE `smartphone_ifood_orders` (
  `id` varchar(10) NOT NULL,
  `Passport` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_ifood_orders` VALUES ('0XTCR82WZ2', '12', '1', '1', '115', '15', '0', '1742078700');
INSERT INTO `smartphone_ifood_orders` VALUES ('2I8CHV3OZJ', '9', '1', '1', '215', '15', '0', '1742075422');
INSERT INTO `smartphone_ifood_orders` VALUES ('3Y47DCM3PH', '16', '1', '1', '60', '15', '0', '1742184650');
INSERT INTO `smartphone_ifood_orders` VALUES ('60H87XC0J5', '20', '1', '2', '99', '15', '0', '1742078427');
INSERT INTO `smartphone_ifood_orders` VALUES ('6512GK232P', '5', '1', '2', '135', '35', '0', '1742254904');
INSERT INTO `smartphone_ifood_orders` VALUES ('6ZKREE7MYO', '2', '1', '3', '230', '50', '0', '1742576560');
INSERT INTO `smartphone_ifood_orders` VALUES ('745JX3FB2D', '8', '1', '1', '185', '35', '0', '1742189058');
INSERT INTO `smartphone_ifood_orders` VALUES ('8L7C83CEXI', '16', '1', '1', '59', '15', '0', '1742077572');
INSERT INTO `smartphone_ifood_orders` VALUES ('8M9P88316Z', '9', '42', '1', '535', '35', '0', '1742313791');
INSERT INTO `smartphone_ifood_orders` VALUES ('92B133R3RM', '23', '1', '1', '185', '35', '0', '1742188260');
INSERT INTO `smartphone_ifood_orders` VALUES ('BZ6J8GB1FU', '12', '1', '1', '271', '15', '0', '1742181727');
INSERT INTO `smartphone_ifood_orders` VALUES ('H87XC0J5D0', '23', '9', '1', '175', '15', '0', '1742431073');
INSERT INTO `smartphone_ifood_orders` VALUES ('HNFC88M9P8', '12', '1', '2', '135', '15', '0', '1742182509');
INSERT INTO `smartphone_ifood_orders` VALUES ('I8CHV3OZJK', '16', '1', '2', '175', '15', '0', '1742184331');
INSERT INTO `smartphone_ifood_orders` VALUES ('K5P0FIQC1V', '23', '1', '3', '86', '50', '0', '1742597243');
INSERT INTO `smartphone_ifood_orders` VALUES ('N745JX3FB2', '23', '9', '1', '250', '50', '0', '1742433295');
INSERT INTO `smartphone_ifood_orders` VALUES ('R236HNFC88', '5', '1', '1', '785', '35', '0', '1742255117');
INSERT INTO `smartphone_ifood_orders` VALUES ('TBS50965ZB', '12', '1', '2', '175', '15', '0', '1742094656');
INSERT INTO `smartphone_ifood_orders` VALUES ('VZC2O135HI', '16', '1', '2', '71', '15', '0', '1742077216');
INSERT INTO `smartphone_ifood_orders` VALUES ('YO54K82QRY', '16', '1', '1', '165', '15', '0', '1742182775');
INSERT INTO `smartphone_ifood_orders` VALUES ('ZC2O135HIT', '9', '1', '1', '465', '15', '0', '1742184800');

DROP TABLE IF EXISTS `smartphone_instagram`;
CREATE TABLE `smartphone_instagram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_instagram` VALUES ('1', '10', 'Connor7', 'connor dygeras', 'TREM CARO 7', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350192235173511268/1741981310250.jpg?ex=67d5d802&is=67d48682&hm=a2ea398188d37ea6ff695860aebcc049fd93b26b3e556c1fb1866e6bd21670b2&', '0');
INSERT INTO `smartphone_instagram` VALUES ('2', '14', 'XT', 'KING XT', 'TENTA AE', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350194843355447386/1741981935628.jpg?ex=67d5da70&is=67d488f0&hm=0be854c07945c1b1d0d50290aa9971368a778b53167f6c9f95ed9f1fa0884af9&', '0');
INSERT INTO `smartphone_instagram` VALUES ('3', '1', 'attilapj', 'Atila', '', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350255402419228683/1741996374733.jpg?ex=67d612d6&is=67d4c156&hm=6c48fdf72fecc98518c84d1d6fab9752c3794b47945eb75c8927531ceeffbf55&', '1');
INSERT INTO `smartphone_instagram` VALUES ('4', '4', 'UBraga', 'Braga', 'Dono do: Koi sushi', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350270721137442918/1742000026646.jpg?ex=67d6211a&is=67d4cf9a&hm=56cc12c907c5ae2dfa2138446ee5ef0ddd06cb614c6702dcdab6c67a5df92448&', '0');
INSERT INTO `smartphone_instagram` VALUES ('5', '18', 'VITOR', 'JAPA', 'JAPA VITOR', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350286131576574084/1742003698453.jpg?ex=67d62f74&is=67d4ddf4&hm=d422fc37c077b95eac06fa6eb2aae655e99f0620781fe29cbbbcf2f3bb334393&', '0');
INSERT INTO `smartphone_instagram` VALUES ('6', '20', 'Menino_odio22', 'Yuri', 'brota na pista', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350287274713288745/1742003975896.jpg?ex=67d63085&is=67d4df05&hm=3d73f26234ce908eed7b4beae94137633922f5e034cc8179f40d6a7f7d84c25a&', '0');
INSERT INTO `smartphone_instagram` VALUES ('7', '16', 'nicol4s_prad0', 'Nicolas Prado', '26y l Carioca da gema l 3 BB, 2 banheira do GUGU, banido pelo Novak, 4 de ferias com Ex, ex cmd Speed, ex COT e atual dono da Auto Exotic', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350288796561838131/1742004336747.jpg?ex=67d631f0&is=67d4e070&hm=ff85ea494373c50cc7971cfb914f26e519f3e105b6931181a65b5b5724eae1ef&', '0');
INSERT INTO `smartphone_instagram` VALUES ('8', '3', 'Shelby', 'ShelbyNuu', 'Criminologia do crime mas conhecido como criminoso', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350634504271691877/1742086759040.jpg?ex=67d773e7&is=67d62267&hm=fb6d34cd1cde3a6b58a921b12db23e96b89698564f8bff7399e9497198dcb819&', '1');
INSERT INTO `smartphone_instagram` VALUES ('9', '8', 'Gagaryn', 'VGAGARYN', 'um cara diferenciado', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350642386891702462/1742088636785.jpg?ex=67d77b3e&is=67d629be&hm=040fbb95991eeba2060a1d076bb4d500b5847eacb7064d2f272eb8cc2c5b753c&', '0');
INSERT INTO `smartphone_instagram` VALUES ('10', '38', 'gugu', 'gugu', '', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350875721689469020/1742144280108.jpg?ex=67d8548e&is=67d7030e&hm=e59a6a151cdbe75a6b28a10d921c8bb28d22890c6d18bd144b0343d7ba8cbe5e&', '0');
INSERT INTO `smartphone_instagram` VALUES ('11', '23', 'RosA', 'RoSa original', 'Tudo na vida é passageiro, menos cobrador e motorista', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351663371354640585/1742332060354.jpg?ex=67db321c&is=67d9e09c&hm=e15223d0e26c6ce0d38300ddd282746f05fe6cd64c23dc7b37aef8cf675b6fea&', '0');
INSERT INTO `smartphone_instagram` VALUES ('12', '45', 'CABELINHO011', 'CABELINHO  SILVA ', '', 'https://cdn.discordapp.com/attachments/1302814736538271805/1351735625572683837/1742349284710.jpg?ex=67db7567&is=67da23e7&hm=330c7df98398638216c86dc5f1798abd54fa271640fb817f8e6af20a3b1d86bf&', '0');
INSERT INTO `smartphone_instagram` VALUES ('13', '2', 'Thiago', 'Thiago Martins', 'Desenvolvedor FullStack.', 'https://i.pinimg.com/736x/5f/8b/42/5f8b4275a6d923b1adeed1ab54c06b41.jpg', '1');

DROP TABLE IF EXISTS `smartphone_instagram_followers`;
CREATE TABLE `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_instagram_followers` VALUES ('1', '2');
INSERT INTO `smartphone_instagram_followers` VALUES ('3', '5');

DROP TABLE IF EXISTS `smartphone_instagram_likes`;
CREATE TABLE `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_instagram_likes` VALUES ('1', '1');
INSERT INTO `smartphone_instagram_likes` VALUES ('2', '1');
INSERT INTO `smartphone_instagram_likes` VALUES ('3', '4');
INSERT INTO `smartphone_instagram_likes` VALUES ('3', '5');
INSERT INTO `smartphone_instagram_likes` VALUES ('6', '4');
INSERT INTO `smartphone_instagram_likes` VALUES ('6', '6');
INSERT INTO `smartphone_instagram_likes` VALUES ('6', '7');
INSERT INTO `smartphone_instagram_likes` VALUES ('6', '11');
INSERT INTO `smartphone_instagram_likes` VALUES ('7', '1');
INSERT INTO `smartphone_instagram_likes` VALUES ('8', '3');
INSERT INTO `smartphone_instagram_likes` VALUES ('8', '11');
INSERT INTO `smartphone_instagram_likes` VALUES ('8', '12');

DROP TABLE IF EXISTS `smartphone_instagram_notifications`;
CREATE TABLE `smartphone_instagram_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `saw` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_instagram_notifications` VALUES ('8', '11', '12', 'CABELINHO  SILVA  curtiu sua publicação', '0', '1742349310');
INSERT INTO `smartphone_instagram_notifications` VALUES ('9', '5', '3', 'Atila seguiu você', '0', '1742516705');
INSERT INTO `smartphone_instagram_notifications` VALUES ('10', '11', '3', 'Atila curtiu sua publicação', '0', '1742516725');

DROP TABLE IF EXISTS `smartphone_instagram_posts`;
CREATE TABLE `smartphone_instagram_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `comments` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_instagram_posts` VALUES ('1', '1', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350192536903221439/1741981381807.jpg?ex=67d5d84a&is=67d486ca&hm=665c484c2acd8a6652e3e3d58b23bbae27bdc83df52e959bdeb418d600da03ce&', 'TREM CARO CHEGOU DE VIAGEM', '1741981396', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('2', '2', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350195132280078498/1741982004386.jpg?ex=67d5dab4&is=67d48934&hm=44e768fb76900b33a93e98c7b4796d7a14d972452392e2a25db840ce64dbdf07&', 'trem caro ta on', '1741982024', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('3', '3', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350255498129182721/1741996397447.jpg?ex=67d612ed&is=67d4c16d&hm=06e19996a99705ed18af34d501fc099b195a531ff47d5f90bf19a4aca96a4317&', 'Vida de pescador ', '1741996404', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('4', '5', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350286131576574084/1742003698453.jpg?ex=67d62f74&is=67d4ddf4&hm=d422fc37c077b95eac06fa6eb2aae655e99f0620781fe29cbbbcf2f3bb334393&', 'salve ', '1742003849', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('5', '7', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350289569345441813/1742004520670.jpg?ex=67d632a8&is=67d4e128&hm=2b4a38b1b64b4ba71e6c75addae50b835d09c034a4ee018ba8fa145f5562ec0c&', 'Já estamos por aqui...', '1742004539', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('6', '4', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350534082794360943/1742062819275.jpg?ex=67d71661&is=67d5c4e1&hm=68655e9bac45a3c9aad9e56bdd7f4d5d735723f051757c9f35c2b5b71912e61c&', 'Koi sushi, o melhor da culinaria oriental.', '1742062840', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('7', '1', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1351006905895620716/1742175544842.jpg?ex=67d8ceba&is=67d77d3a&hm=ef1763ffd0988514fd1af764764fb93341924597f19aa84048f9db190846f85e&', '...', '1742175548', '0');
INSERT INTO `smartphone_instagram_posts` VALUES ('8', '11', NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1351664628840796252/1742332360235.jpg?ex=67db3348&is=67d9e1c8&hm=91a0d8c468910be6a7412b13471df37af65f404b6ecb89a5fb3754e522364e4d&', 'A vida é bela mais é nós que fode ela', '1742332413', '0');

DROP TABLE IF EXISTS `smartphone_olx`;
CREATE TABLE `smartphone_olx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `images` varchar(1024) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_paypal_transactions`;
CREATE TABLE `smartphone_paypal_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'payment',
  `description` varchar(255) DEFAULT NULL,
  `value` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_tinder`;
CREATE TABLE `smartphone_tinder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(1024) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `show_gender` tinyint(4) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `show_tags` tinyint(4) NOT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `gender_index` (`gender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_tinder` VALUES ('1', '4', 'Braga Not', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350518954669637722/1742059212545.jpg?ex=67d7084a&is=67d5b6ca&hm=ef88679d50a8473c44d97647b460c55a3d2b897eca4e686e515ddd00f68c684e&', 'eu', '19', 'Male', '1', '["Heterossexual"]', '1', 'Female');
INSERT INTO `smartphone_tinder` VALUES ('2', '16', 'Nicolas Prado', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350288796561838131/1742004336747.jpg?ex=67d631f0&is=67d4e070&hm=ff85ea494373c50cc7971cfb914f26e519f3e105b6931181a65b5b5724eae1ef&', '26y l Carioca da gema l 3 BB, 2 banheira do GUGU, banido pelo Novak, 4 de ferias com Ex, ex cmd Speed, ex COT e atual dono da Auto Exotic', '26', 'Male', '1', '["Heterossexual"]', '1', 'Female');
INSERT INTO `smartphone_tinder` VALUES ('3', '28', 'paiaso do amor', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350590371708538990/1742076236968.jpg?ex=67d74acd&is=67d5f94d&hm=981a9afe43623aa80895fcd0ac3eebdc54c1607c8a6d552fa3a0963d8a493c0e&', 'n sei', '22', 'Male', '1', '["Heterossexual"]', '1', 'Female');

DROP TABLE IF EXISTS `smartphone_tinder_messages`;
CREATE TABLE `smartphone_tinder_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liked` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_tinder_rating`;
CREATE TABLE `smartphone_tinder_rating` (
  `profile_id` int(11) NOT NULL,
  `rated_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_id`,`rated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_tor_messages`;
CREATE TABLE `smartphone_tor_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(24) NOT NULL DEFAULT 'geral',
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_index` (`channel`),
  KEY `sender_index` (`sender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_tor_messages` VALUES ('1', 'geral', '4064611663', NULL, NULL, '.', '1742002296');
INSERT INTO `smartphone_tor_messages` VALUES ('2', 'geral', '3145310137', NULL, NULL, 'koe', '1742171225');
INSERT INTO `smartphone_tor_messages` VALUES ('3', 'geral', '504120757', NULL, NULL, 'compro c4', '1742518600');

DROP TABLE IF EXISTS `smartphone_tor_payments`;
CREATE TABLE `smartphone_tor_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_twitter_followers`;
CREATE TABLE `smartphone_twitter_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_twitter_likes`;
CREATE TABLE `smartphone_twitter_likes` (
  `tweet_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_twitter_profiles`;
CREATE TABLE `smartphone_twitter_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `bannerURL` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_twitter_tweets`;
CREATE TABLE `smartphone_twitter_tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` bigint(20) DEFAULT NULL,
  `content` varchar(280) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_uber_trips`;
CREATE TABLE `smartphone_uber_trips` (
  `id` varchar(10) NOT NULL,
  `Passport` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_rate` tinyint(4) DEFAULT 0,
  `driver_rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_weazel`;
CREATE TABLE `smartphone_weazel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `smartphone_whatsapp`;
CREATE TABLE `smartphone_whatsapp` (
  `owner` varchar(32) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `read_receipts` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_whatsapp` VALUES ('021-347', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('035-545', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('107-913', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('110-522', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350288796561838131/1742004336747.jpg?ex=67d631f0&is=67d4e070&hm=ff85ea494373c50cc7971cfb914f26e519f3e105b6931181a65b5b5724eae1ef&', '1');
INSERT INTO `smartphone_whatsapp` VALUES ('160-369', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('163-594', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('214-186', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('222-222', 'https://i.pinimg.com/736x/5f/8b/42/5f8b4275a6d923b1adeed1ab54c06b41.jpg', '1');
INSERT INTO `smartphone_whatsapp` VALUES ('244-689', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350680293207703623/1742097676131.jpg?ex=67d79e8c&is=67d64d0c&hm=762bd72ab66ccafc126efefcdddfd214639e86dee5fb1c88aebe3852fe98090d&', '1');
INSERT INTO `smartphone_whatsapp` VALUES ('251-738', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('319-864', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('352-917', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('386-899', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('496-749', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('511-983', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('602-098', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('660-013', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350533026777661622/1742062567598.jpg?ex=67d71565&is=67d5c3e5&hm=692740fdebdac60fc40af2bdac861aea0057f30176f1299b57a76d88df0ed5bb&', '0');
INSERT INTO `smartphone_whatsapp` VALUES ('670-873', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('679-147', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('683-211', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('686-858', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('779-113', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('828-858', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('908-000', NULL, '1');
INSERT INTO `smartphone_whatsapp` VALUES ('938-801', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350286131576574084/1742003698453.jpg?ex=67d62f74&is=67d4ddf4&hm=d422fc37c077b95eac06fa6eb2aae655e99f0620781fe29cbbbcf2f3bb334393&', '1');
INSERT INTO `smartphone_whatsapp` VALUES ('977-060', NULL, '1');

DROP TABLE IF EXISTS `smartphone_whatsapp_channels`;
CREATE TABLE `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_whatsapp_channels` VALUES ('1', '710-198', '511-983');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('2', '710-198', '938-801');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('3', '710-198', '977-060');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('4', '938-801', '511-983');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('5', '679-147', '977-060');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('6', '035-545', '660-013');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('7', '977-060', '035-545');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('8', '539-378', '110-522');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('9', '035-545', '670-873');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('10', '660-013', '977-060');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('11', '173-535', '670-873');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('12', '173-535', '977-060');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('13', '386-899', '160-369');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('14', '222-222', '110-522');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('15', '779-113', '670-873');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('16', '021-347', '670-873');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('17', '035-545', '021-347');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('18', '977-060', '214-186');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('19', '670-873', '511-983');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('20', '222-222', '511-983');
INSERT INTO `smartphone_whatsapp_channels` VALUES ('21', '035-545', '511-983');

DROP TABLE IF EXISTS `smartphone_whatsapp_groups`;
CREATE TABLE `smartphone_whatsapp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `members` varchar(2048) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_whatsapp_groups` VALUES ('1', 'Betim', 'https://fivem-static.jesteriruka.devstock/user.svg', '679-147', '[]', '1742048716');

DROP TABLE IF EXISTS `smartphone_whatsapp_messages`;
CREATE TABLE `smartphone_whatsapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `saw_at` bigint(20) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `channel_id_index` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `smartphone_whatsapp_messages` VALUES ('1', '1', '710-198', NULL, NULL, 'vs', NULL, '1', '1742413368', '1742002515');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('2', '2', '710-198', NULL, NULL, 'vs', NULL, '1', '1742002529', '1742002520');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('3', '3', '710-198', NULL, NULL, 'vs', NULL, '1', '1742002530', '1742002525');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('4', '3', '977-060', NULL, NULL, 'vs', NULL, '1', '1742006658', '1742002533');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('5', '4', '938-801', NULL, NULL, 'salve', NULL, '1', '1742083815', '1742002720');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('6', '3', '977-060', NULL, NULL, 'descolou o padre?', NULL, '1', '1742006658', '1742006276');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('7', '3', '710-198', NULL, NULL, '511-983', NULL, '1', '1742068402', '1742006666');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('8', '5', '679-147', NULL, NULL, 'Betim', NULL, '1', '1742068400', '1742048705');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('9', '1000000001', '679-147', NULL, NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350475012016046170/1742048732044.webm?ex=67d6df5d&is=67d58ddd&hm=acb72eb1dcd673f9a107f8912ea8f228689eebb617383b94013fe1cd43ab02f4&.webm', NULL, '0', '0', '1742048729');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('10', '1000000001', '679-147', NULL, NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350475196498182204/1742048776103.webm?ex=67d6df89&is=67d58e09&hm=7ac3859bfdce62ee2b27a1661177ebde56ab06eb34272e4d9d09ea5eab9d8277&.webm', NULL, '0', '0', '1742048773');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('11', '1000000001', '679-147', NULL, NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1350475702037905478/1742048896595.webm?ex=67d6e001&is=67d58e81&hm=bab6fe274fd54cfc55d3d6c984e67cb27fee1d84c33d439e7636ae782a789406&.webm', NULL, '0', '0', '1742048894');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('12', '6', '035-545', NULL, NULL, 'quero entrar pro time', NULL, '1', '1742061759', '1742061108');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('13', '7', '977-060', NULL, NULL, 'aowba', NULL, '1', '1742428584', '1742061288');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('14', '6', '660-013', NULL, NULL, 'alo', NULL, '1', '0', '1742061764');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('15', '6', '660-013', NULL, NULL, 'aqui na Koi sushi?', NULL, '1', '0', '1742062083');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('16', '6', '660-013', NULL, NULL, 'opaa?', NULL, '1', '0', '1742066986');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('17', '8', '539-378', NULL, NULL, 'oieeeeee', NULL, '1', '1742076455', '1742076365');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('18', '8', '539-378', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350590974723620914/1742076382036.jpg?ex=67d74b5d&is=67d5f9dd&hm=2d1e692fdd7462d800e8dcbde8a292b43d4306f20d2d170078ff8b179b6a5560&', NULL, '', NULL, '1', '1742076455', '1742076377');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('19', '9', '035-545', NULL, '[-1293.6,-1076.25,17.49]', '', NULL, '1', '1742078038', '1742077831');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('20', '10', '660-013', 'https://cdn.discordapp.com/attachments/1302814736538271805/1350643566833172490/1742088922586.jpg?ex=67d77c58&is=67d62ad8&hm=23f2ea21a9c6429ab4615d3661f91499baf5d0a0613c1009d7cddf4b8c489d52&', NULL, '', '660-013', '1', '0', '1742089193');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('21', '11', '173-535', NULL, '[427.42,-799.81,29.49]', '', NULL, '1', '1742090399', '1742090006');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('22', '11', '173-535', NULL, NULL, 'yumi', NULL, '1', '1742090399', '1742090011');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('23', '12', '173-535', NULL, NULL, 'oie moço', NULL, '1', '1742098608', '1742090027');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('24', '13', '386-899', NULL, NULL, 'cade vc', NULL, '0', '0', '1742170744');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('25', '14', '222-222', NULL, NULL, 'Fala tu', NULL, '1', '1742179308', '1742179302');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('26', '14', '110-522', NULL, NULL, 'opa', NULL, '1', '1742179311', '1742179311');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('27', '14', '222-222', NULL, NULL, 'Depois quero falar contigo', NULL, '1', '1742179326', '1742179321');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('28', '14', '110-522', NULL, NULL, 'qm é', NULL, '1', '1742179342', '1742179331');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('29', '14', '222-222', NULL, NULL, 'Seu irmão aqui', NULL, '1', '1742179341', '1742179333');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('30', '14', '110-522', NULL, NULL, 'ata', NULL, '1', '1742179342', '1742179342');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('31', '14', '110-522', NULL, NULL, 'cola na mec daqui uns 5min', NULL, '1', '1742179360', '1742179360');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('32', '14', '222-222', NULL, NULL, 'ja to aqui', NULL, '1', '1742179374', '1742179366');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('33', '14', '110-522', NULL, NULL, 'https://cdn.discordapp.com/attachments/1302814736538271805/1351022998735552592/1742179385348.webm?ex=67d8ddb7&is=67d78c37&hm=5195b141a875c0ed90414bb1bba7b676c792623c66625152e5e1ced1a6dad882&.webm', NULL, '1', '1742179380', '1742179379');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('34', '14', '222-222', NULL, NULL, 'beleza', NULL, '1', '1742179615', '1742179400');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('35', '14', '222-222', NULL, NULL, 'Vou resolver um bglh agora', NULL, '1', '1742179615', '1742179584');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('36', '14', '222-222', NULL, NULL, 'depois te encontro', NULL, '1', '1742179615', '1742179587');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('37', '14', '222-222', NULL, NULL, 'e falo contiigo', NULL, '1', '1742179615', '1742179592');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('38', '14', '222-222', NULL, NULL, 'amanhã sem falta', NULL, '1', '1742179615', '1742179595');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('39', '14', '110-522', NULL, NULL, 'ta bom', NULL, '1', '1742179672', '1742179626');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('40', '14', '110-522', NULL, NULL, 'eu to indo agr', NULL, '1', '1742179672', '1742179631');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('41', '14', '110-522', NULL, NULL, 'espera ai', NULL, '1', '1742179672', '1742179635');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('42', '14', '110-522', NULL, NULL, '1min', NULL, '1', '1742179672', '1742179637');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('43', '14', '222-222', NULL, NULL, 'eu já sai', NULL, '1', '1742179708', '1742179676');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('44', '14', '222-222', NULL, NULL, 'vou te encontrar amanhã', NULL, '1', '1742179708', '1742179683');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('45', '14', '222-222', NULL, NULL, 'é sobre aquele serviço que eu quero falar contigo', NULL, '1', '1742179708', '1742179694');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('46', '14', '222-222', NULL, NULL, 'resolvemos isso com mais calma depois', NULL, '1', '1742179708', '1742179702');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('47', '14', '110-522', NULL, NULL, 'ta bom', NULL, '1', '1742179713', '1742179713');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('48', '15', '779-113', NULL, NULL, 'Então', NULL, '1', '1742272709', '1742272700');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('49', '15', '779-113', NULL, NULL, 'O que queria te falar ontem que não deu', NULL, '1', '1742272709', '1742272708');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('50', '15', '779-113', NULL, NULL, 'Sobre o atilla', NULL, '1', '1742272713', '1742272712');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('51', '15', '779-113', NULL, NULL, 'Vc tem que ficar de olho é nele viu', NULL, '1', '1742272737', '1742272730');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('52', '15', '779-113', NULL, NULL, 'Quando voltei daqueles dias que fiquei ausente', NULL, '1', '1742272799', '1742272742');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('53', '15', '670-873', NULL, NULL, 'O que ele fez?', NULL, '1', '1742272744', '1742272744');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('54', '15', '779-113', NULL, NULL, 'Mandei msg pra ele pedindo desculpa né', NULL, '1', '1742272810', '1742272801');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('55', '15', '779-113', NULL, NULL, 'Por ter sumido', NULL, '1', '1742272810', '1742272804');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('56', '15', '779-113', NULL, NULL, 'Mnadei bem assim atilla boa noite', NULL, '1', '1742272813', '1742272813');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('57', '15', '779-113', NULL, NULL, 'Desculpe ter sumido esses dias', NULL, '1', '1742272837', '1742272823');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('58', '15', '779-113', NULL, NULL, 'Não estava muito bem', NULL, '1', '1742272837', '1742272827');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('59', '15', '779-113', NULL, NULL, 'Ele disse ooi minha querida', NULL, '1', '1742272843', '1742272842');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('60', '15', '670-873', NULL, NULL, 'e ele?', NULL, '1', '1742272856', '1742272845');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('61', '15', '779-113', NULL, NULL, 'Pensei que tinha me abandonado', NULL, '1', '1742272851', '1742272851');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('62', '15', '670-873', NULL, NULL, 'oxente', NULL, '1', '1742272856', '1742272856');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('63', '15', '670-873', NULL, NULL, 'como assim', NULL, '1', '1742272864', '1742272861');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('64', '15', '779-113', NULL, NULL, 'Eu disse oxi não abandonei ngm', NULL, '1', '1742272893', '1742272862');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('65', '15', '670-873', NULL, NULL, 'me abandonado', NULL, '1', '1742272864', '1742272864');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('66', '15', '670-873', NULL, NULL, '@@', NULL, '1', '1742272953', '1742272877');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('67', '15', '779-113', NULL, NULL, 'Ele disse nossa fiquei sem saber o que tinha acontecido', NULL, '1', '1742272893', '1742272893');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('68', '15', '779-113', NULL, NULL, 'Ai disse que eu tava desculpada', NULL, '1', '1742272913', '1742272913');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('69', '15', '779-113', NULL, NULL, 'Me mendou entrar na cidade pq estavam todos vcs lá', NULL, '1', '1742272937', '1742272927');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('70', '15', '670-873', NULL, NULL, 'mais e vc por acaso tinha nada com ele pra  ter abandonado ele mais mds', NULL, '1', '1742272953', '1742272932');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('71', '15', '779-113', NULL, NULL, 'Disse que tinha sentido saudade', NULL, '1', '1742272937', '1742272937');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('72', '15', '670-873', NULL, NULL, 'oia oia oia', NULL, '1', '1742272953', '1742272953');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('73', '15', '779-113', NULL, NULL, 'Disse que ama ficar cmg', NULL, '1', '1742273021', '1742273008');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('74', '15', '779-113', NULL, NULL, 'Que eu faço bem pra ele', NULL, '1', '1742273021', '1742273016');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('75', '15', '779-113', NULL, NULL, 'Que eu sou especial', NULL, '1', '1742273023', '1742273023');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('76', '15', '779-113', NULL, NULL, 'Tiro print e te mando se quiser', NULL, '1', '1742273072', '1742273039');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('77', '15', '670-873', NULL, NULL, 'eu ja tava de olho agora to mais ainda', NULL, '1', '1742273045', '1742273045');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('78', '15', '670-873', NULL, NULL, 'que história esquisita dele viu', NULL, '1', '1742273059', '1742273059');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('79', '15', '670-873', NULL, NULL, 'vai arruma outra pra gadear mais minino', NULL, '0', '0', '1742273069');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('80', '15', '779-113', NULL, NULL, 'Falou que fiz muita falta pra ele', NULL, '1', '1742273072', '1742273072');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('81', '15', '779-113', NULL, NULL, 'Ele disse essas coisas', NULL, '1', '1742273095', '1742273083');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('82', '15', '779-113', NULL, NULL, 'Se quiser te mando', NULL, '1', '1742273095', '1742273087');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('83', '15', '670-873', NULL, NULL, 'arrume uma cabrita pra fazer compania', NULL, '0', '0', '1742273089');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('84', '15', '779-113', NULL, NULL, 'Pra não achar que to mentindo', NULL, '1', '1742273095', '1742273095');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('85', '15', '670-873', NULL, NULL, 'eu sei que não tá', NULL, '0', '0', '1742273100');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('86', '16', '021-347', NULL, NULL, 'Opaa', NULL, '1', '1742312331', '1742312322');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('87', '16', '021-347', NULL, '[222.52,-897.13,29.6]', '', NULL, '1', '1742312331', '1742312325');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('88', '16', '670-873', NULL, NULL, 'vou te buscar ai', NULL, '1', '1742427286', '1742312336');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('89', '16', '670-873', NULL, NULL, 'toma um cha que tu bugadão faz tempo', NULL, '1', '1742427286', '1742312727');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('90', '9', '670-873', NULL, NULL, '021 347 Lebrom', NULL, '1', '1742436850', '1742319870');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('91', '9', '670-873', NULL, NULL, 'aprova o meu orçamento da mec', NULL, '1', '1742436850', '1742334663');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('92', '1', '710-198', NULL, NULL, 'jae', NULL, '1', '1742413368', '1742413359');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('93', '17', '035-545', NULL, NULL, 'aoba', NULL, '1', '1742428704', '1742428702');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('94', '17', '021-347', NULL, NULL, 'Opa', NULL, '1', '1742434137', '1742428713');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('95', '17', '021-347', NULL, NULL, 'CADE TU', NULL, '1', '1742434137', '1742434119');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('96', '17', '035-545', NULL, NULL, 'pega meu carro e vei pro hp', NULL, '1', '1742434789', '1742434146');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('97', '17', '035-545', NULL, NULL, 'tas onde', NULL, '1', '1742434831', '1742434831');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('98', '18', '977-060', NULL, '[10.34,-664.48,33.45]', '', NULL, '1', '1742437169', '1742437064');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('99', '18', '214-186', NULL, NULL, 'POLICIA CAPTURO ELE', NULL, '1', '1742437180', '1742437175');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('100', '18', '214-186', NULL, NULL, 'E A MULHER', NULL, '1', '1742437180', '1742437178');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('101', '18', '214-186', NULL, NULL, 'QUE TAVA COM ELE', NULL, '1', '1742437181', '1742437181');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('102', '18', '977-060', NULL, NULL, 'pqp', NULL, '1', '1742437253', '1742437187');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('103', '18', '977-060', NULL, NULL, 'e agr', NULL, '1', '1742437253', '1742437197');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('104', '18', '977-060', NULL, NULL, 'passa loc', NULL, '1', '1742437253', '1742437240');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('105', '18', '214-186', NULL, '[66.69,318.61,110.95]', '', NULL, '1', '1742437261', '1742437256');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('106', '18', '977-060', NULL, NULL, 'quando eu chega mira a arma', NULL, '1', '1742437784', '1742437312');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('107', '19', '670-873', NULL, NULL, 'ta aqui no HP', NULL, '1', '1742487919', '1742437628');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('108', '18', '977-060', NULL, NULL, 'ele guageto ?', NULL, '1', '1742437784', '1742437778');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('109', '18', '214-186', NULL, NULL, 'falo nada', NULL, '0', '0', '1742437788');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('110', '18', '214-186', NULL, NULL, 'vo ir de pm', NULL, '0', '0', '1742438762');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('111', '18', '214-186', NULL, NULL, 'dai seis poka acao', NULL, '0', '0', '1742438770');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('112', '20', '222-222', NULL, NULL, 'salve', NULL, '1', '1742487923', '1742487891');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('113', '9', '670-873', NULL, NULL, 'Prepara 10 sushi e 10 de acerola pra mim', NULL, '1', '1742532389', '1742532139');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('114', '19', '511-983', NULL, NULL, 'cristal me aprontou uma comigo filho', NULL, '1', '1742789471', '1742789466');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('115', '19', '511-983', NULL, NULL, 'pau quebrou aki em casa', NULL, '1', '1742789532', '1742789476');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('116', '19', '670-873', NULL, NULL, 'sério qual foi a onda?', NULL, '1', '1742789490', '1742789480');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('117', '19', '511-983', NULL, NULL, 'eu tava em live começoui  fala para olhar as msg no privado', NULL, '1', '1742789532', '1742789522');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('118', '19', '511-983', NULL, NULL, 'minha mulher q foi ver', NULL, '1', '1742789532', '1742789527');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('119', '19', '511-983', NULL, NULL, 'ai fudeu', NULL, '1', '1742789533', '1742789533');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('120', '19', '670-873', NULL, NULL, 'ave maria', NULL, '1', '1742789605', '1742789548');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('121', '19', '511-983', NULL, NULL, 'coisa do passdo qd ela surtou falou a minha mulher q tinha mandou umas msg pra ela', NULL, '1', '1742789649', '1742789554');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('122', '19', '511-983', NULL, NULL, 'ainda disse q a minha cidade er falida q nao enra mas aki', NULL, '1', '1742789649', '1742789569');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('123', '19', '670-873', NULL, NULL, 'ou seja ela surtou dinovo', NULL, '1', '1742789605', '1742789599');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('124', '19', '511-983', NULL, NULL, 'sim', NULL, '1', '1742789649', '1742789609');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('125', '19', '670-873', NULL, NULL, 'PQP ja sei que ela vai surtar comigo dinovo tambem e eu dessa vez vou deixar ela de mão', NULL, '1', '1742789637', '1742789631');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('126', '19', '670-873', NULL, NULL, 'loucura da peste é essa?', NULL, '1', '1742789641', '1742789641');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('127', '19', '511-983', NULL, NULL, 'maluca', NULL, '1', '1742789649', '1742789649');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('128', '19', '670-873', NULL, NULL, 'ela não sabe separar RP  não pelo que eu to vendo', NULL, '1', '1742789701', '1742789662');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('129', '19', '670-873', NULL, NULL, 'depois ela deve me falar algo ai eu te digo', NULL, '1', '1742789701', '1742789675');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('130', '19', '511-983', NULL, NULL, 'er', NULL, '1', '1742789732', '1742789716');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('131', '19', '511-983', NULL, NULL, 'ate bloqueia ela', NULL, '1', '1742789732', '1742789721');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('132', '19', '511-983', NULL, NULL, 'ma sminha esposa desbloqueou', NULL, '1', '1742789732', '1742789728');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('133', '19', '670-873', NULL, NULL, 'ela hj falou que não entrava mais na central mais não falou o que foi', NULL, '1', '1742789826', '1742789819');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('134', '19', '670-873', NULL, NULL, 'eu sabia que ela tinha feito merda', NULL, '1', '1742789829', '1742789829');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('135', '19', '511-983', NULL, NULL, 'maluca', NULL, '1', '1742789861', '1742789844');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('136', '19', '670-873', NULL, NULL, 'por que ela não quis falar o que houve', NULL, '1', '1742789844', '1742789844');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('137', '19', '511-983', NULL, NULL, 'ta vendo q a esposa do cara ta falando', NULL, '1', '1742789861', '1742789855');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('138', '19', '511-983', NULL, NULL, 'aia natural', NULL, '1', '1742789908', '1742789863');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('139', '19', '511-983', NULL, NULL, 'nao jogou tudo no ventilador', NULL, '1', '1742789908', '1742789871');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('140', '19', '511-983', NULL, NULL, 'a live aciu kkkk', NULL, '1', '1742789908', '1742789879');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('141', '19', '670-873', NULL, NULL, 'ela é o tipo de pssoa que quer falar o que quer sem pensar nos outros e não quer ouvir de ninguem', NULL, '1', '1742789892', '1742789885');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('142', '19', '511-983', NULL, NULL, 'minha esposa começou a discutir em live', NULL, '1', '1742789908', '1742789888');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('143', '19', '670-873', NULL, NULL, 'agora me dei conta disso', NULL, '1', '1742789892', '1742789892');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('144', '19', '511-983', NULL, NULL, 'foda', NULL, '1', '1742789908', '1742789900');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('145', '19', '511-983', NULL, NULL, 'qr bem longe', NULL, '1', '1742789908', '1742789906');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('146', '19', '670-873', NULL, NULL, 'somos dois', NULL, '1', '1742789924', '1742789914');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('147', '19', '670-873', NULL, NULL, 'ja vou começar me aastar', NULL, '1', '1742789928', '1742789928');
INSERT INTO `smartphone_whatsapp_messages` VALUES ('148', '19', '511-983', NULL, NULL, 'vc vai fazer bem', NULL, '1', '1742789938', '1742789938');

DROP TABLE IF EXISTS `taxs`;
CREATE TABLE `taxs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Hour` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Message` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Type` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `transactions` VALUES ('1', '1', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2', '2', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3', '2', 'entry', '14/03/2025', '50000', '5000');
INSERT INTO `transactions` VALUES ('4', '2', 'entry', '14/03/2025', '510', '55000');
INSERT INTO `transactions` VALUES ('5', '1', 'entry', '14/03/2025', '3500', '5000');
INSERT INTO `transactions` VALUES ('6', '1', 'entry', '14/03/2025', '20000', '8500');
INSERT INTO `transactions` VALUES ('7', '3', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('8', '1', 'entry', '14/03/2025', '3500', '28500');
INSERT INTO `transactions` VALUES ('9', '1', 'entry', '14/03/2025', '20000', '32000');
INSERT INTO `transactions` VALUES ('10', '1', 'exit', '14/03/2025', '400', '52000');
INSERT INTO `transactions` VALUES ('11', '1', 'entry', '14/03/2025', '13100', '51600');
INSERT INTO `transactions` VALUES ('12', '1', 'exit', '14/03/2025', '5', '64700');
INSERT INTO `transactions` VALUES ('13', '1', 'entry', '14/03/2025', '3500', '64695');
INSERT INTO `transactions` VALUES ('14', '1', 'entry', '14/03/2025', '13100', '68195');
INSERT INTO `transactions` VALUES ('15', '1', 'entry', '14/03/2025', '20000', '81295');
INSERT INTO `transactions` VALUES ('16', '4', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('17', '1', 'exit', '14/03/2025', '400', '101295');
INSERT INTO `transactions` VALUES ('18', '1', 'exit', '14/03/2025', '10', '100895');
INSERT INTO `transactions` VALUES ('19', '3', 'exit', '14/03/2025', '250', '5000');
INSERT INTO `transactions` VALUES ('20', '1', 'exit', '14/03/2025', '250', '100885');
INSERT INTO `transactions` VALUES ('21', '1', 'entry', '14/03/2025', '3500', '100635');
INSERT INTO `transactions` VALUES ('22', '1', 'entry', '14/03/2025', '13100', '104135');
INSERT INTO `transactions` VALUES ('23', '1', 'entry', '14/03/2025', '20000', '117235');
INSERT INTO `transactions` VALUES ('24', '2', 'exit', '14/03/2025', '250', '55510');
INSERT INTO `transactions` VALUES ('25', '2', 'exit', '14/03/2025', '120', '55260');
INSERT INTO `transactions` VALUES ('26', '2', 'entry', '14/03/2025', '20000', '55140');
INSERT INTO `transactions` VALUES ('27', '1', 'entry', '14/03/2025', '20000', '137235');
INSERT INTO `transactions` VALUES ('28', '1', 'entry', '14/03/2025', '3500', '157235');
INSERT INTO `transactions` VALUES ('29', '3', 'exit', '14/03/2025', '3', '4750');
INSERT INTO `transactions` VALUES ('30', '3', 'exit', '14/03/2025', '250', '4747');
INSERT INTO `transactions` VALUES ('31', '3', 'exit', '14/03/2025', '5', '4497');
INSERT INTO `transactions` VALUES ('32', '2', 'entry', '14/03/2025', '20000', '75140');
INSERT INTO `transactions` VALUES ('33', '5', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('34', '6', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('35', '7', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('36', '2', 'entry', '14/03/2025', '20000', '95140');
INSERT INTO `transactions` VALUES ('37', '1', 'entry', '14/03/2025', '20000', '160735');
INSERT INTO `transactions` VALUES ('38', '2', 'entry', '14/03/2025', '20000', '115140');
INSERT INTO `transactions` VALUES ('39', '8', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('40', '1', 'entry', '14/03/2025', '20000', '180735');
INSERT INTO `transactions` VALUES ('41', '2', 'entry', '14/03/2025', '20000', '135140');
INSERT INTO `transactions` VALUES ('42', '9', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('43', '10', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('44', '11', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('45', '1', 'entry', '14/03/2025', '20000', '200735');
INSERT INTO `transactions` VALUES ('46', '8', 'entry', '14/03/2025', '12100', '5000');
INSERT INTO `transactions` VALUES ('47', '12', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('48', '8', 'exit', '14/03/2025', '5000', '17100');
INSERT INTO `transactions` VALUES ('49', '13', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('50', '14', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('51', '15', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('52', '9', 'entry', '14/03/2025', '11100', '5000');
INSERT INTO `transactions` VALUES ('53', '16', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('54', '1', 'entry', '14/03/2025', '20000', '220735');
INSERT INTO `transactions` VALUES ('55', '1', 'entry', '14/03/2025', '3500', '240735');
INSERT INTO `transactions` VALUES ('56', '17', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('57', '9', 'entry', '14/03/2025', '11100', '16100');
INSERT INTO `transactions` VALUES ('58', '1', 'entry', '14/03/2025', '20000', '244235');
INSERT INTO `transactions` VALUES ('59', '2', 'exit', '14/03/2025', '7', '155140');
INSERT INTO `transactions` VALUES ('60', '2', 'exit', '14/03/2025', '400', '155133');
INSERT INTO `transactions` VALUES ('61', '9', 'entry', '14/03/2025', '11100', '27200');
INSERT INTO `transactions` VALUES ('62', '10', 'entry', '14/03/2025', '1500', '5000');
INSERT INTO `transactions` VALUES ('63', '2', 'entry', '14/03/2025', '20000', '154733');
INSERT INTO `transactions` VALUES ('64', '10', 'exit', '14/03/2025', '5000', '6500');
INSERT INTO `transactions` VALUES ('65', '10', 'exit', '14/03/2025', '50', '1500');
INSERT INTO `transactions` VALUES ('66', '10', 'exit', '14/03/2025', '1000', '1450');
INSERT INTO `transactions` VALUES ('67', '1', 'entry', '14/03/2025', '20000', '264235');
INSERT INTO `transactions` VALUES ('68', '1', 'entry', '14/03/2025', '3500', '284235');
INSERT INTO `transactions` VALUES ('69', '10', 'exit', '14/03/2025', '100', '450');
INSERT INTO `transactions` VALUES ('70', '9', 'entry', '14/03/2025', '11100', '38300');
INSERT INTO `transactions` VALUES ('71', '2', 'entry', '14/03/2025', '20000', '174733');
INSERT INTO `transactions` VALUES ('72', '16', 'entry', '14/03/2025', '3500', '5000');
INSERT INTO `transactions` VALUES ('73', '1', 'entry', '14/03/2025', '20000', '287735');
INSERT INTO `transactions` VALUES ('74', '1', 'entry', '14/03/2025', '3500', '307735');
INSERT INTO `transactions` VALUES ('75', '9', 'entry', '14/03/2025', '11100', '49400');
INSERT INTO `transactions` VALUES ('76', '10', 'exit', '14/03/2025', '90', '350');
INSERT INTO `transactions` VALUES ('77', '10', 'exit', '14/03/2025', '135', '260');
INSERT INTO `transactions` VALUES ('78', '10', 'exit', '14/03/2025', '20', '125');
INSERT INTO `transactions` VALUES ('79', '10', 'exit', '14/03/2025', '25', '105');
INSERT INTO `transactions` VALUES ('80', '2', 'entry', '14/03/2025', '20000', '194733');
INSERT INTO `transactions` VALUES ('81', '16', 'entry', '14/03/2025', '3500', '8500');
INSERT INTO `transactions` VALUES ('82', '16', 'exit', '14/03/2025', '2', '12000');
INSERT INTO `transactions` VALUES ('83', '16', 'exit', '14/03/2025', '100', '11998');
INSERT INTO `transactions` VALUES ('84', '1', 'entry', '14/03/2025', '20000', '311235');
INSERT INTO `transactions` VALUES ('85', '1', 'entry', '14/03/2025', '3500', '331235');
INSERT INTO `transactions` VALUES ('86', '16', 'exit', '14/03/2025', '100', '11898');
INSERT INTO `transactions` VALUES ('87', '16', 'exit', '14/03/2025', '100', '11798');
INSERT INTO `transactions` VALUES ('88', '16', 'exit', '14/03/2025', '133', '11698');
INSERT INTO `transactions` VALUES ('89', '16', 'exit', '14/03/2025', '650', '11565');
INSERT INTO `transactions` VALUES ('90', '9', 'entry', '14/03/2025', '11100', '60500');
INSERT INTO `transactions` VALUES ('91', '16', 'entry', '14/03/2025', '810', '10915');
INSERT INTO `transactions` VALUES ('92', '2', 'entry', '14/03/2025', '20000', '214733');
INSERT INTO `transactions` VALUES ('93', '16', 'entry', '14/03/2025', '3500', '11725');
INSERT INTO `transactions` VALUES ('94', '10', 'exit', '14/03/2025', '50', '80');
INSERT INTO `transactions` VALUES ('95', '1', 'entry', '14/03/2025', '20000', '334735');
INSERT INTO `transactions` VALUES ('96', '1', 'entry', '14/03/2025', '3500', '354735');
INSERT INTO `transactions` VALUES ('97', '18', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('98', '16', 'entry', '14/03/2025', '810', '15225');
INSERT INTO `transactions` VALUES ('99', '19', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('100', '10', 'entry', '14/03/2025', '10000', '30');
INSERT INTO `transactions` VALUES ('101', '10', 'exit', '14/03/2025', '100', '10030');
INSERT INTO `transactions` VALUES ('102', '1', 'entry', '14/03/2025', '20000', '358235');
INSERT INTO `transactions` VALUES ('103', '1', 'entry', '14/03/2025', '3500', '378235');
INSERT INTO `transactions` VALUES ('104', '10', 'entry', '14/03/2025', '980', '9930');
INSERT INTO `transactions` VALUES ('105', '10', 'exit', '14/03/2025', '5000', '10910');
INSERT INTO `transactions` VALUES ('106', '10', 'exit', '14/03/2025', '50', '5910');
INSERT INTO `transactions` VALUES ('107', '10', 'exit', '14/03/2025', '50', '5860');
INSERT INTO `transactions` VALUES ('108', '2', 'entry', '14/03/2025', '20000', '234733');
INSERT INTO `transactions` VALUES ('109', '10', 'exit', '14/03/2025', '150', '5810');
INSERT INTO `transactions` VALUES ('110', '10', 'exit', '14/03/2025', '50', '5660');
INSERT INTO `transactions` VALUES ('111', '12', 'entry', '14/03/2025', '10100', '5000');
INSERT INTO `transactions` VALUES ('112', '3', 'entry', '14/03/2025', '3500', '4492');
INSERT INTO `transactions` VALUES ('113', '3', 'entry', '14/03/2025', '12100', '7992');
INSERT INTO `transactions` VALUES ('114', '3', 'entry', '14/03/2025', '1', '20092');
INSERT INTO `transactions` VALUES ('115', '3', 'entry', '14/03/2025', '3500', '20093');
INSERT INTO `transactions` VALUES ('116', '3', 'entry', '14/03/2025', '3500', '23593');
INSERT INTO `transactions` VALUES ('117', '3', 'entry', '14/03/2025', '3500', '27093');
INSERT INTO `transactions` VALUES ('118', '3', 'entry', '14/03/2025', '2250', '30593');
INSERT INTO `transactions` VALUES ('119', '3', 'entry', '14/03/2025', '3500', '32843');
INSERT INTO `transactions` VALUES ('120', '3', 'entry', '14/03/2025', '3500', '36343');
INSERT INTO `transactions` VALUES ('121', '3', 'entry', '14/03/2025', '810', '39843');
INSERT INTO `transactions` VALUES ('122', '3', 'entry', '14/03/2025', '13100', '40653');
INSERT INTO `transactions` VALUES ('123', '3', 'entry', '14/03/2025', '500', '53753');
INSERT INTO `transactions` VALUES ('124', '9', 'exit', '14/03/2025', '910', '71600');
INSERT INTO `transactions` VALUES ('125', '12', 'entry', '14/03/2025', '10100', '15100');
INSERT INTO `transactions` VALUES ('126', '9', 'exit', '14/03/2025', '400', '70690');
INSERT INTO `transactions` VALUES ('127', '10', 'exit', '14/03/2025', '214', '5610');
INSERT INTO `transactions` VALUES ('128', '4', 'entry', '14/03/2025', '3500', '5000');
INSERT INTO `transactions` VALUES ('129', '1', 'entry', '14/03/2025', '3500', '381735');
INSERT INTO `transactions` VALUES ('130', '1', 'entry', '14/03/2025', '20000', '385235');
INSERT INTO `transactions` VALUES ('131', '9', 'entry', '14/03/2025', '11100', '70290');
INSERT INTO `transactions` VALUES ('132', '3', 'entry', '14/03/2025', '3500', '54253');
INSERT INTO `transactions` VALUES ('133', '3', 'entry', '14/03/2025', '12100', '57753');
INSERT INTO `transactions` VALUES ('134', '3', 'entry', '14/03/2025', '1', '69853');
INSERT INTO `transactions` VALUES ('135', '3', 'entry', '14/03/2025', '3500', '69854');
INSERT INTO `transactions` VALUES ('136', '3', 'entry', '14/03/2025', '3500', '73354');
INSERT INTO `transactions` VALUES ('137', '3', 'entry', '14/03/2025', '3500', '76854');
INSERT INTO `transactions` VALUES ('138', '3', 'entry', '14/03/2025', '2250', '80354');
INSERT INTO `transactions` VALUES ('139', '3', 'entry', '14/03/2025', '3500', '82604');
INSERT INTO `transactions` VALUES ('140', '3', 'entry', '14/03/2025', '3500', '86104');
INSERT INTO `transactions` VALUES ('141', '3', 'entry', '14/03/2025', '810', '89604');
INSERT INTO `transactions` VALUES ('142', '3', 'entry', '14/03/2025', '13100', '90414');
INSERT INTO `transactions` VALUES ('143', '3', 'entry', '14/03/2025', '500', '103514');
INSERT INTO `transactions` VALUES ('144', '10', 'exit', '14/03/2025', '50', '5396');
INSERT INTO `transactions` VALUES ('145', '10', 'exit', '14/03/2025', '50', '5346');
INSERT INTO `transactions` VALUES ('146', '16', 'exit', '14/03/2025', '400', '16035');
INSERT INTO `transactions` VALUES ('147', '10', 'exit', '14/03/2025', '79', '5296');
INSERT INTO `transactions` VALUES ('148', '16', 'entry', '14/03/2025', '88000', '15635');
INSERT INTO `transactions` VALUES ('149', '3', 'exit', '14/03/2025', '400', '104014');
INSERT INTO `transactions` VALUES ('150', '10', 'exit', '14/03/2025', '50', '5217');
INSERT INTO `transactions` VALUES ('151', '16', 'entry', '14/03/2025', '810', '103635');
INSERT INTO `transactions` VALUES ('152', '16', 'entry', '14/03/2025', '3500', '104445');
INSERT INTO `transactions` VALUES ('153', '12', 'entry', '14/03/2025', '10100', '25200');
INSERT INTO `transactions` VALUES ('154', '16', 'exit', '14/03/2025', '20', '107945');
INSERT INTO `transactions` VALUES ('155', '3', 'exit', '14/03/2025', '30802', '103614');
INSERT INTO `transactions` VALUES ('156', '16', 'entry', '14/03/2025', '30802', '107925');
INSERT INTO `transactions` VALUES ('157', '4', 'entry', '14/03/2025', '3500', '8500');
INSERT INTO `transactions` VALUES ('158', '3', 'entry', '14/03/2025', '3500', '72812');
INSERT INTO `transactions` VALUES ('159', '3', 'entry', '14/03/2025', '12100', '76312');
INSERT INTO `transactions` VALUES ('160', '3', 'entry', '14/03/2025', '1', '88412');
INSERT INTO `transactions` VALUES ('161', '3', 'entry', '14/03/2025', '3500', '88413');
INSERT INTO `transactions` VALUES ('162', '3', 'entry', '14/03/2025', '3500', '91913');
INSERT INTO `transactions` VALUES ('163', '3', 'entry', '14/03/2025', '3500', '95413');
INSERT INTO `transactions` VALUES ('164', '3', 'entry', '14/03/2025', '2250', '98913');
INSERT INTO `transactions` VALUES ('165', '3', 'entry', '14/03/2025', '3500', '101163');
INSERT INTO `transactions` VALUES ('166', '3', 'entry', '14/03/2025', '3500', '104663');
INSERT INTO `transactions` VALUES ('167', '3', 'entry', '14/03/2025', '810', '108163');
INSERT INTO `transactions` VALUES ('168', '3', 'entry', '14/03/2025', '13100', '108973');
INSERT INTO `transactions` VALUES ('169', '3', 'entry', '14/03/2025', '500', '122073');
INSERT INTO `transactions` VALUES ('170', '1', 'exit', '14/03/2025', '300', '405235');
INSERT INTO `transactions` VALUES ('171', '12', 'entry', '14/03/2025', '300', '35300');
INSERT INTO `transactions` VALUES ('172', '1', 'exit', '14/03/2025', '100', '404935');
INSERT INTO `transactions` VALUES ('173', '9', 'entry', '14/03/2025', '100', '81390');
INSERT INTO `transactions` VALUES ('174', '3', 'exit', '14/03/2025', '600', '122573');
INSERT INTO `transactions` VALUES ('175', '4', 'entry', '14/03/2025', '600', '12000');
INSERT INTO `transactions` VALUES ('176', '1', 'entry', '14/03/2025', '3500', '404835');
INSERT INTO `transactions` VALUES ('177', '1', 'entry', '14/03/2025', '20000', '408335');
INSERT INTO `transactions` VALUES ('178', '10', 'exit', '14/03/2025', '50', '5167');
INSERT INTO `transactions` VALUES ('179', '16', 'exit', '14/03/2025', '2000', '138727');
INSERT INTO `transactions` VALUES ('180', '16', 'exit', '14/03/2025', '2000', '136727');
INSERT INTO `transactions` VALUES ('181', '16', 'exit', '14/03/2025', '2000', '134727');
INSERT INTO `transactions` VALUES ('182', '16', 'exit', '14/03/2025', '4140', '132727');
INSERT INTO `transactions` VALUES ('183', '16', 'exit', '14/03/2025', '400', '128587');
INSERT INTO `transactions` VALUES ('184', '20', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('185', '9', 'entry', '14/03/2025', '11100', '81490');
INSERT INTO `transactions` VALUES ('186', '16', 'entry', '14/03/2025', '810', '128187');
INSERT INTO `transactions` VALUES ('187', '16', 'entry', '14/03/2025', '3500', '128997');
INSERT INTO `transactions` VALUES ('188', '3', 'exit', '14/03/2025', '1000', '121973');
INSERT INTO `transactions` VALUES ('189', '12', 'entry', '14/03/2025', '1000', '35600');
INSERT INTO `transactions` VALUES ('190', '12', 'entry', '14/03/2025', '10100', '36600');
INSERT INTO `transactions` VALUES ('191', '4', 'entry', '14/03/2025', '3500', '12600');
INSERT INTO `transactions` VALUES ('192', '3', 'entry', '14/03/2025', '3500', '120973');
INSERT INTO `transactions` VALUES ('193', '3', 'entry', '14/03/2025', '12100', '124473');
INSERT INTO `transactions` VALUES ('194', '3', 'entry', '14/03/2025', '1', '136573');
INSERT INTO `transactions` VALUES ('195', '3', 'entry', '14/03/2025', '3500', '136574');
INSERT INTO `transactions` VALUES ('196', '3', 'entry', '14/03/2025', '3500', '140074');
INSERT INTO `transactions` VALUES ('197', '3', 'entry', '14/03/2025', '3500', '143574');
INSERT INTO `transactions` VALUES ('198', '3', 'entry', '14/03/2025', '2250', '147074');
INSERT INTO `transactions` VALUES ('199', '3', 'entry', '14/03/2025', '3500', '149324');
INSERT INTO `transactions` VALUES ('200', '3', 'entry', '14/03/2025', '3500', '152824');
INSERT INTO `transactions` VALUES ('201', '3', 'entry', '14/03/2025', '810', '156324');
INSERT INTO `transactions` VALUES ('202', '3', 'entry', '14/03/2025', '13100', '157134');
INSERT INTO `transactions` VALUES ('203', '3', 'entry', '14/03/2025', '500', '170234');
INSERT INTO `transactions` VALUES ('204', '2', 'entry', '14/03/2025', '20000', '254733');
INSERT INTO `transactions` VALUES ('205', '4', 'exit', '14/03/2025', '500', '16100');
INSERT INTO `transactions` VALUES ('206', '2', 'exit', '14/03/2025', '7', '274733');
INSERT INTO `transactions` VALUES ('207', '1', 'entry', '14/03/2025', '3500', '428335');
INSERT INTO `transactions` VALUES ('208', '1', 'entry', '14/03/2025', '20000', '431835');
INSERT INTO `transactions` VALUES ('209', '1', 'entry', '14/03/2025', '60000', '451835');
INSERT INTO `transactions` VALUES ('210', '3', 'exit', '14/03/2025', '60000', '170734');
INSERT INTO `transactions` VALUES ('211', '10', 'entry', '14/03/2025', '98445', '5117');
INSERT INTO `transactions` VALUES ('212', '16', 'entry', '14/03/2025', '810', '132497');
INSERT INTO `transactions` VALUES ('213', '2', 'entry', '14/03/2025', '50000', '274726');
INSERT INTO `transactions` VALUES ('214', '3', 'exit', '14/03/2025', '50000', '110734');
INSERT INTO `transactions` VALUES ('215', '10', 'exit', '14/03/2025', '50', '103562');
INSERT INTO `transactions` VALUES ('216', '16', 'entry', '14/03/2025', '3500', '133307');
INSERT INTO `transactions` VALUES ('217', '21', 'entry', '14/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('218', '9', 'exit', '14/03/2025', '400', '92590');
INSERT INTO `transactions` VALUES ('219', '12', 'entry', '14/03/2025', '10100', '46700');
INSERT INTO `transactions` VALUES ('220', '3', 'entry', '14/03/2025', '3500', '60734');
INSERT INTO `transactions` VALUES ('221', '3', 'entry', '14/03/2025', '12100', '64234');
INSERT INTO `transactions` VALUES ('222', '3', 'entry', '14/03/2025', '1', '76334');
INSERT INTO `transactions` VALUES ('223', '3', 'entry', '14/03/2025', '3500', '76335');
INSERT INTO `transactions` VALUES ('224', '3', 'entry', '14/03/2025', '3500', '79835');
INSERT INTO `transactions` VALUES ('225', '3', 'entry', '14/03/2025', '3500', '83335');
INSERT INTO `transactions` VALUES ('226', '3', 'entry', '14/03/2025', '2250', '86835');
INSERT INTO `transactions` VALUES ('227', '3', 'entry', '14/03/2025', '3500', '89085');
INSERT INTO `transactions` VALUES ('228', '3', 'entry', '14/03/2025', '3500', '92585');
INSERT INTO `transactions` VALUES ('229', '3', 'entry', '14/03/2025', '810', '96085');
INSERT INTO `transactions` VALUES ('230', '3', 'entry', '14/03/2025', '13100', '96895');
INSERT INTO `transactions` VALUES ('231', '3', 'entry', '14/03/2025', '500', '109995');
INSERT INTO `transactions` VALUES ('232', '10', 'entry', '14/03/2025', '2500', '103512');
INSERT INTO `transactions` VALUES ('233', '10', 'exit', '14/03/2025', '5000', '106012');
INSERT INTO `transactions` VALUES ('234', '10', 'exit', '14/03/2025', '50', '101012');
INSERT INTO `transactions` VALUES ('235', '10', 'exit', '14/03/2025', '50', '100962');
INSERT INTO `transactions` VALUES ('236', '2', 'entry', '14/03/2025', '20000', '324726');
INSERT INTO `transactions` VALUES ('237', '20', 'entry', '14/03/2025', '100000', '5000');
INSERT INTO `transactions` VALUES ('238', '20', 'entry', '14/03/2025', '1400', '105000');
INSERT INTO `transactions` VALUES ('239', '3', 'exit', '14/03/2025', '72750', '110495');
INSERT INTO `transactions` VALUES ('240', '16', 'entry', '14/03/2025', '72750', '136807');
INSERT INTO `transactions` VALUES ('241', '16', 'exit', '14/03/2025', '36', '209557');
INSERT INTO `transactions` VALUES ('242', '10', 'exit', '14/03/2025', '50', '100912');
INSERT INTO `transactions` VALUES ('243', '1', 'entry', '14/03/2025', '3500', '511835');
INSERT INTO `transactions` VALUES ('244', '1', 'entry', '14/03/2025', '20000', '515335');
INSERT INTO `transactions` VALUES ('245', '9', 'entry', '14/03/2025', '11100', '92190');
INSERT INTO `transactions` VALUES ('246', '16', 'exit', '14/03/2025', '400', '209521');
INSERT INTO `transactions` VALUES ('247', '16', 'exit', '14/03/2025', '1', '209121');
INSERT INTO `transactions` VALUES ('248', '20', 'entry', '14/03/2025', '3250', '106400');
INSERT INTO `transactions` VALUES ('249', '10', 'exit', '14/03/2025', '180', '100862');
INSERT INTO `transactions` VALUES ('250', '10', 'exit', '14/03/2025', '150', '100682');
INSERT INTO `transactions` VALUES ('251', '20', 'exit', '14/03/2025', '190', '109650');
INSERT INTO `transactions` VALUES ('252', '16', 'entry', '14/03/2025', '810', '209120');
INSERT INTO `transactions` VALUES ('253', '16', 'entry', '14/03/2025', '3500', '209930');
INSERT INTO `transactions` VALUES ('254', '4', 'exit', '14/03/2025', '60', '15600');
INSERT INTO `transactions` VALUES ('255', '12', 'entry', '14/03/2025', '10100', '56800');
INSERT INTO `transactions` VALUES ('256', '10', 'exit', '14/03/2025', '50', '100532');
INSERT INTO `transactions` VALUES ('257', '20', 'exit', '14/03/2025', '590', '109460');
INSERT INTO `transactions` VALUES ('258', '3', 'entry', '14/03/2025', '3500', '37745');
INSERT INTO `transactions` VALUES ('259', '3', 'entry', '14/03/2025', '12100', '41245');
INSERT INTO `transactions` VALUES ('260', '3', 'entry', '14/03/2025', '1', '53345');
INSERT INTO `transactions` VALUES ('261', '3', 'entry', '14/03/2025', '3500', '53346');
INSERT INTO `transactions` VALUES ('262', '3', 'entry', '14/03/2025', '3500', '56846');
INSERT INTO `transactions` VALUES ('263', '3', 'entry', '14/03/2025', '3500', '60346');
INSERT INTO `transactions` VALUES ('264', '3', 'entry', '14/03/2025', '2250', '63846');
INSERT INTO `transactions` VALUES ('265', '3', 'entry', '14/03/2025', '3500', '66096');
INSERT INTO `transactions` VALUES ('266', '3', 'entry', '14/03/2025', '3500', '69596');
INSERT INTO `transactions` VALUES ('267', '3', 'entry', '14/03/2025', '810', '73096');
INSERT INTO `transactions` VALUES ('268', '20', 'entry', '14/03/2025', '810', '108870');
INSERT INTO `transactions` VALUES ('269', '3', 'entry', '14/03/2025', '13100', '73906');
INSERT INTO `transactions` VALUES ('270', '3', 'entry', '14/03/2025', '500', '87006');
INSERT INTO `transactions` VALUES ('271', '10', 'exit', '14/03/2025', '3575', '100482');
INSERT INTO `transactions` VALUES ('272', '2', 'entry', '14/03/2025', '20000', '344726');
INSERT INTO `transactions` VALUES ('273', '16', 'exit', '14/03/2025', '400', '213430');
INSERT INTO `transactions` VALUES ('274', '3', 'exit', '14/03/2025', '1000', '87506');
INSERT INTO `transactions` VALUES ('275', '12', 'entry', '14/03/2025', '1000', '66900');
INSERT INTO `transactions` VALUES ('276', '3', 'entry', '14/03/2025', '125', '86506');
INSERT INTO `transactions` VALUES ('277', '9', 'exit', '14/03/2025', '125', '103290');
INSERT INTO `transactions` VALUES ('278', '4', 'entry', '14/03/2025', '3500', '15540');
INSERT INTO `transactions` VALUES ('279', '1', 'entry', '14/03/2025', '3500', '535335');
INSERT INTO `transactions` VALUES ('280', '1', 'entry', '14/03/2025', '20000', '538835');
INSERT INTO `transactions` VALUES ('281', '9', 'entry', '14/03/2025', '11100', '103165');
INSERT INTO `transactions` VALUES ('282', '16', 'exit', '14/03/2025', '400', '213030');
INSERT INTO `transactions` VALUES ('283', '4', 'entry', '14/03/2025', '125', '19040');
INSERT INTO `transactions` VALUES ('284', '9', 'exit', '14/03/2025', '125', '114265');
INSERT INTO `transactions` VALUES ('285', '16', 'exit', '14/03/2025', '400', '212630');
INSERT INTO `transactions` VALUES ('286', '20', 'exit', '14/03/2025', '1', '109680');
INSERT INTO `transactions` VALUES ('287', '20', 'entry', '14/03/2025', '3250', '109679');
INSERT INTO `transactions` VALUES ('288', '16', 'entry', '14/03/2025', '810', '212230');
INSERT INTO `transactions` VALUES ('289', '16', 'entry', '14/03/2025', '3500', '213040');
INSERT INTO `transactions` VALUES ('290', '16', 'exit', '14/03/2025', '400', '216540');
INSERT INTO `transactions` VALUES ('291', '12', 'entry', '14/03/2025', '10100', '67900');
INSERT INTO `transactions` VALUES ('292', '4', 'exit', '14/03/2025', '200', '19165');
INSERT INTO `transactions` VALUES ('293', '10', 'exit', '14/03/2025', '50', '96907');
INSERT INTO `transactions` VALUES ('294', '3', 'entry', '14/03/2025', '3500', '86631');
INSERT INTO `transactions` VALUES ('295', '3', 'entry', '14/03/2025', '12100', '90131');
INSERT INTO `transactions` VALUES ('296', '3', 'entry', '14/03/2025', '1', '102231');
INSERT INTO `transactions` VALUES ('297', '3', 'entry', '14/03/2025', '3500', '102232');
INSERT INTO `transactions` VALUES ('298', '3', 'entry', '14/03/2025', '3500', '105732');
INSERT INTO `transactions` VALUES ('299', '3', 'entry', '14/03/2025', '3500', '109232');
INSERT INTO `transactions` VALUES ('300', '3', 'entry', '14/03/2025', '2250', '112732');
INSERT INTO `transactions` VALUES ('301', '3', 'entry', '14/03/2025', '3500', '114982');
INSERT INTO `transactions` VALUES ('302', '3', 'entry', '14/03/2025', '3500', '118482');
INSERT INTO `transactions` VALUES ('303', '3', 'entry', '14/03/2025', '810', '121982');
INSERT INTO `transactions` VALUES ('304', '20', 'entry', '14/03/2025', '810', '112929');
INSERT INTO `transactions` VALUES ('305', '3', 'entry', '14/03/2025', '13100', '122792');
INSERT INTO `transactions` VALUES ('306', '3', 'entry', '14/03/2025', '500', '135892');
INSERT INTO `transactions` VALUES ('307', '4', 'exit', '14/03/2025', '130', '18965');
INSERT INTO `transactions` VALUES ('308', '2', 'entry', '14/03/2025', '20000', '364726');
INSERT INTO `transactions` VALUES ('309', '2', 'exit', '15/03/2025', '300', '384726');
INSERT INTO `transactions` VALUES ('310', '4', 'entry', '15/03/2025', '5000', '18835');
INSERT INTO `transactions` VALUES ('311', '3', 'exit', '15/03/2025', '5000', '136392');
INSERT INTO `transactions` VALUES ('312', '22', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('313', '10', 'exit', '15/03/2025', '50', '96857');
INSERT INTO `transactions` VALUES ('314', '10', 'exit', '15/03/2025', '120', '96807');
INSERT INTO `transactions` VALUES ('315', '10', 'exit', '15/03/2025', '30', '96687');
INSERT INTO `transactions` VALUES ('316', '10', 'entry', '15/03/2025', '1724', '96657');
INSERT INTO `transactions` VALUES ('317', '1', 'entry', '15/03/2025', '5000', '558835');
INSERT INTO `transactions` VALUES ('318', '10', 'exit', '15/03/2025', '20', '98381');
INSERT INTO `transactions` VALUES ('319', '8', 'exit', '15/03/2025', '50', '12100');
INSERT INTO `transactions` VALUES ('320', '3', 'entry', '15/03/2025', '3500', '131392');
INSERT INTO `transactions` VALUES ('321', '3', 'entry', '15/03/2025', '500', '134892');
INSERT INTO `transactions` VALUES ('322', '3', 'entry', '15/03/2025', '3500', '135392');
INSERT INTO `transactions` VALUES ('323', '3', 'entry', '15/03/2025', '3500', '138892');
INSERT INTO `transactions` VALUES ('324', '3', 'entry', '15/03/2025', '3500', '142392');
INSERT INTO `transactions` VALUES ('325', '3', 'entry', '15/03/2025', '1', '145892');
INSERT INTO `transactions` VALUES ('326', '1', 'entry', '15/03/2025', '20000', '563835');
INSERT INTO `transactions` VALUES ('327', '3', 'entry', '15/03/2025', '12100', '145893');
INSERT INTO `transactions` VALUES ('328', '3', 'entry', '15/03/2025', '13100', '157993');
INSERT INTO `transactions` VALUES ('329', '3', 'entry', '15/03/2025', '810', '171093');
INSERT INTO `transactions` VALUES ('330', '3', 'entry', '15/03/2025', '3500', '171903');
INSERT INTO `transactions` VALUES ('331', '3', 'entry', '15/03/2025', '2250', '175403');
INSERT INTO `transactions` VALUES ('332', '2', 'entry', '15/03/2025', '20000', '384426');
INSERT INTO `transactions` VALUES ('333', '3', 'entry', '15/03/2025', '3500', '177653');
INSERT INTO `transactions` VALUES ('334', '3', 'entry', '15/03/2025', '500', '181153');
INSERT INTO `transactions` VALUES ('335', '3', 'entry', '15/03/2025', '3500', '181653');
INSERT INTO `transactions` VALUES ('336', '3', 'entry', '15/03/2025', '3500', '185153');
INSERT INTO `transactions` VALUES ('337', '3', 'entry', '15/03/2025', '3500', '188653');
INSERT INTO `transactions` VALUES ('338', '3', 'entry', '15/03/2025', '1', '192153');
INSERT INTO `transactions` VALUES ('339', '1', 'entry', '15/03/2025', '20000', '583835');
INSERT INTO `transactions` VALUES ('340', '3', 'entry', '15/03/2025', '12100', '192154');
INSERT INTO `transactions` VALUES ('341', '3', 'entry', '15/03/2025', '13100', '204254');
INSERT INTO `transactions` VALUES ('342', '3', 'entry', '15/03/2025', '810', '217354');
INSERT INTO `transactions` VALUES ('343', '3', 'entry', '15/03/2025', '3500', '218164');
INSERT INTO `transactions` VALUES ('344', '3', 'entry', '15/03/2025', '2250', '221664');
INSERT INTO `transactions` VALUES ('345', '23', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('346', '9', 'exit', '15/03/2025', '50', '114140');
INSERT INTO `transactions` VALUES ('347', '8', 'exit', '15/03/2025', '50', '12050');
INSERT INTO `transactions` VALUES ('348', '8', 'exit', '15/03/2025', '1245', '12000');
INSERT INTO `transactions` VALUES ('349', '1', 'entry', '15/03/2025', '20000', '603835');
INSERT INTO `transactions` VALUES ('350', '8', 'exit', '15/03/2025', '45', '10755');
INSERT INTO `transactions` VALUES ('351', '9', 'exit', '15/03/2025', '45', '114090');
INSERT INTO `transactions` VALUES ('352', '2', 'exit', '15/03/2025', '250', '404426');
INSERT INTO `transactions` VALUES ('353', '8', 'exit', '15/03/2025', '3500', '10710');
INSERT INTO `transactions` VALUES ('354', '2', 'exit', '15/03/2025', '180', '404176');
INSERT INTO `transactions` VALUES ('355', '9', 'exit', '15/03/2025', '2000', '114045');
INSERT INTO `transactions` VALUES ('356', '8', 'exit', '15/03/2025', '2000', '7210');
INSERT INTO `transactions` VALUES ('357', '2', 'exit', '15/03/2025', '40', '403996');
INSERT INTO `transactions` VALUES ('358', '2', 'exit', '15/03/2025', '60', '403956');
INSERT INTO `transactions` VALUES ('359', '2', 'entry', '15/03/2025', '13100', '403896');
INSERT INTO `transactions` VALUES ('360', '2', 'entry', '15/03/2025', '20000', '416996');
INSERT INTO `transactions` VALUES ('361', '8', 'exit', '15/03/2025', '400', '5210');
INSERT INTO `transactions` VALUES ('362', '8', 'exit', '15/03/2025', '2300', '4810');
INSERT INTO `transactions` VALUES ('363', '8', 'exit', '15/03/2025', '1900', '2510');
INSERT INTO `transactions` VALUES ('364', '2', 'entry', '15/03/2025', '20000', '436996');
INSERT INTO `transactions` VALUES ('365', '23', 'exit', '15/03/2025', '30', '5000');
INSERT INTO `transactions` VALUES ('366', '2', 'entry', '15/03/2025', '13100', '456996');
INSERT INTO `transactions` VALUES ('367', '8', 'entry', '15/03/2025', '12100', '610');
INSERT INTO `transactions` VALUES ('368', '9', 'exit', '15/03/2025', '1000', '112045');
INSERT INTO `transactions` VALUES ('369', '1', 'entry', '15/03/2025', '13100', '623835');
INSERT INTO `transactions` VALUES ('370', '1', 'entry', '15/03/2025', '20000', '636935');
INSERT INTO `transactions` VALUES ('371', '1', 'entry', '15/03/2025', '3500', '656935');
INSERT INTO `transactions` VALUES ('372', '23', 'exit', '15/03/2025', '120', '4970');
INSERT INTO `transactions` VALUES ('373', '9', 'exit', '15/03/2025', '120', '111045');
INSERT INTO `transactions` VALUES ('374', '9', 'exit', '15/03/2025', '565', '110925');
INSERT INTO `transactions` VALUES ('375', '23', 'exit', '15/03/2025', '565', '4850');
INSERT INTO `transactions` VALUES ('376', '24', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('377', '8', 'exit', '15/03/2025', '30', '12710');
INSERT INTO `transactions` VALUES ('378', '23', 'exit', '15/03/2025', '50', '4285');
INSERT INTO `transactions` VALUES ('379', '23', 'exit', '15/03/2025', '64', '4235');
INSERT INTO `transactions` VALUES ('380', '8', 'exit', '15/03/2025', '400', '12680');
INSERT INTO `transactions` VALUES ('381', '9', 'exit', '15/03/2025', '400', '110360');
INSERT INTO `transactions` VALUES ('382', '9', 'exit', '15/03/2025', '400', '109960');
INSERT INTO `transactions` VALUES ('383', '9', 'entry', '15/03/2025', '11100', '109560');
INSERT INTO `transactions` VALUES ('384', '2', 'entry', '15/03/2025', '20000', '470096');
INSERT INTO `transactions` VALUES ('385', '8', 'entry', '15/03/2025', '12100', '12280');
INSERT INTO `transactions` VALUES ('386', '9', 'exit', '15/03/2025', '25', '120660');
INSERT INTO `transactions` VALUES ('387', '9', 'exit', '15/03/2025', '45', '120635');
INSERT INTO `transactions` VALUES ('388', '1', 'entry', '15/03/2025', '13100', '660435');
INSERT INTO `transactions` VALUES ('389', '1', 'entry', '15/03/2025', '20000', '673535');
INSERT INTO `transactions` VALUES ('390', '1', 'entry', '15/03/2025', '3500', '693535');
INSERT INTO `transactions` VALUES ('391', '2', 'exit', '15/03/2025', '200', '490096');
INSERT INTO `transactions` VALUES ('392', '9', 'entry', '15/03/2025', '11100', '120590');
INSERT INTO `transactions` VALUES ('393', '23', 'entry', '15/03/2025', '40000', '4171');
INSERT INTO `transactions` VALUES ('394', '9', 'entry', '15/03/2025', '40000', '131690');
INSERT INTO `transactions` VALUES ('395', '1', 'entry', '15/03/2025', '40000', '697035');
INSERT INTO `transactions` VALUES ('396', '9', 'exit', '15/03/2025', '50', '171690');
INSERT INTO `transactions` VALUES ('397', '1', 'entry', '15/03/2025', '13100', '737035');
INSERT INTO `transactions` VALUES ('398', '1', 'entry', '15/03/2025', '20000', '750135');
INSERT INTO `transactions` VALUES ('399', '1', 'entry', '15/03/2025', '3500', '770135');
INSERT INTO `transactions` VALUES ('400', '24', 'entry', '15/03/2025', '1350', '5000');
INSERT INTO `transactions` VALUES ('401', '24', 'exit', '15/03/2025', '500', '6350');
INSERT INTO `transactions` VALUES ('402', '24', 'exit', '15/03/2025', '100', '5850');
INSERT INTO `transactions` VALUES ('403', '24', 'entry', '15/03/2025', '1000', '5750');
INSERT INTO `transactions` VALUES ('404', '9', 'entry', '15/03/2025', '11100', '171640');
INSERT INTO `transactions` VALUES ('405', '24', 'entry', '15/03/2025', '1000', '6750');
INSERT INTO `transactions` VALUES ('406', '1', 'entry', '15/03/2025', '13100', '773635');
INSERT INTO `transactions` VALUES ('407', '1', 'entry', '15/03/2025', '20000', '786735');
INSERT INTO `transactions` VALUES ('408', '1', 'entry', '15/03/2025', '3500', '806735');
INSERT INTO `transactions` VALUES ('409', '23', 'exit', '15/03/2025', '750', '44171');
INSERT INTO `transactions` VALUES ('410', '9', 'exit', '15/03/2025', '750', '182740');
INSERT INTO `transactions` VALUES ('411', '8', 'exit', '15/03/2025', '400', '24380');
INSERT INTO `transactions` VALUES ('412', '8', 'exit', '15/03/2025', '50', '23980');
INSERT INTO `transactions` VALUES ('413', '8', 'exit', '15/03/2025', '400', '23930');
INSERT INTO `transactions` VALUES ('414', '8', 'entry', '15/03/2025', '12100', '23530');
INSERT INTO `transactions` VALUES ('415', '8', 'entry', '15/03/2025', '12100', '35630');
INSERT INTO `transactions` VALUES ('416', '8', 'entry', '15/03/2025', '12100', '47730');
INSERT INTO `transactions` VALUES ('417', '4', 'exit', '15/03/2025', '2000', '23835');
INSERT INTO `transactions` VALUES ('418', '4', 'exit', '15/03/2025', '1000', '21835');
INSERT INTO `transactions` VALUES ('419', '4', 'exit', '15/03/2025', '3500', '20835');
INSERT INTO `transactions` VALUES ('420', '4', 'exit', '15/03/2025', '2500', '17335');
INSERT INTO `transactions` VALUES ('421', '4', 'entry', '15/03/2025', '100', '14835');
INSERT INTO `transactions` VALUES ('422', '4', 'entry', '15/03/2025', '100', '14935');
INSERT INTO `transactions` VALUES ('423', '4', 'exit', '15/03/2025', '2000', '15035');
INSERT INTO `transactions` VALUES ('424', '4', 'exit', '15/03/2025', '5000', '13035');
INSERT INTO `transactions` VALUES ('425', '4', 'exit', '15/03/2025', '1000', '8035');
INSERT INTO `transactions` VALUES ('426', '4', 'exit', '15/03/2025', '1000', '7035');
INSERT INTO `transactions` VALUES ('427', '4', 'exit', '15/03/2025', '5000', '6035');
INSERT INTO `transactions` VALUES ('428', '4', 'exit', '15/03/2025', '1000', '1035');
INSERT INTO `transactions` VALUES ('429', '4', 'entry', '15/03/2025', '2000', '35');
INSERT INTO `transactions` VALUES ('430', '4', 'entry', '15/03/2025', '2000', '2035');
INSERT INTO `transactions` VALUES ('431', '4', 'entry', '15/03/2025', '2000', '4035');
INSERT INTO `transactions` VALUES ('432', '4', 'entry', '15/03/2025', '2000', '6035');
INSERT INTO `transactions` VALUES ('433', '4', 'entry', '15/03/2025', '2000', '8035');
INSERT INTO `transactions` VALUES ('434', '4', 'entry', '15/03/2025', '2000', '10035');
INSERT INTO `transactions` VALUES ('435', '4', 'entry', '15/03/2025', '2000', '12035');
INSERT INTO `transactions` VALUES ('436', '4', 'entry', '15/03/2025', '2000', '14035');
INSERT INTO `transactions` VALUES ('437', '4', 'entry', '15/03/2025', '2000', '16035');
INSERT INTO `transactions` VALUES ('438', '4', 'entry', '15/03/2025', '2000', '18035');
INSERT INTO `transactions` VALUES ('439', '4', 'entry', '15/03/2025', '2000', '20035');
INSERT INTO `transactions` VALUES ('440', '4', 'entry', '15/03/2025', '100', '22035');
INSERT INTO `transactions` VALUES ('441', '4', 'entry', '15/03/2025', '100', '22135');
INSERT INTO `transactions` VALUES ('442', '4', 'entry', '15/03/2025', '100', '22235');
INSERT INTO `transactions` VALUES ('443', '4', 'entry', '15/03/2025', '100', '22335');
INSERT INTO `transactions` VALUES ('444', '4', 'entry', '15/03/2025', '100', '22435');
INSERT INTO `transactions` VALUES ('445', '4', 'exit', '15/03/2025', '5000', '22535');
INSERT INTO `transactions` VALUES ('446', '4', 'exit', '15/03/2025', '5000', '17535');
INSERT INTO `transactions` VALUES ('447', '4', 'exit', '15/03/2025', '100', '12535');
INSERT INTO `transactions` VALUES ('448', '4', 'exit', '15/03/2025', '50', '12435');
INSERT INTO `transactions` VALUES ('449', '4', 'exit', '15/03/2025', '25', '12385');
INSERT INTO `transactions` VALUES ('450', '4', 'exit', '15/03/2025', '25', '12360');
INSERT INTO `transactions` VALUES ('451', '4', 'exit', '15/03/2025', '25', '12335');
INSERT INTO `transactions` VALUES ('452', '4', 'exit', '15/03/2025', '30', '12310');
INSERT INTO `transactions` VALUES ('453', '4', 'exit', '15/03/2025', '1000', '12280');
INSERT INTO `transactions` VALUES ('454', '4', 'exit', '15/03/2025', '25', '11280');
INSERT INTO `transactions` VALUES ('455', '4', 'exit', '15/03/2025', '30', '11255');
INSERT INTO `transactions` VALUES ('456', '4', 'exit', '15/03/2025', '50', '11225');
INSERT INTO `transactions` VALUES ('457', '4', 'exit', '15/03/2025', '125', '11175');
INSERT INTO `transactions` VALUES ('458', '4', 'exit', '15/03/2025', '45', '11050');
INSERT INTO `transactions` VALUES ('459', '4', 'exit', '15/03/2025', '25', '11005');
INSERT INTO `transactions` VALUES ('460', '4', 'exit', '15/03/2025', '90', '10980');
INSERT INTO `transactions` VALUES ('461', '4', 'exit', '15/03/2025', '90', '10890');
INSERT INTO `transactions` VALUES ('462', '4', 'exit', '15/03/2025', '50', '10800');
INSERT INTO `transactions` VALUES ('463', '4', 'exit', '15/03/2025', '100', '10750');
INSERT INTO `transactions` VALUES ('464', '4', 'entry', '15/03/2025', '2000', '10650');
INSERT INTO `transactions` VALUES ('465', '4', 'entry', '15/03/2025', '2000', '12650');
INSERT INTO `transactions` VALUES ('466', '4', 'entry', '15/03/2025', '2000', '14650');
INSERT INTO `transactions` VALUES ('467', '4', 'entry', '15/03/2025', '2000', '16650');
INSERT INTO `transactions` VALUES ('468', '4', 'entry', '15/03/2025', '2000', '18650');
INSERT INTO `transactions` VALUES ('469', '4', 'entry', '15/03/2025', '2000', '20650');
INSERT INTO `transactions` VALUES ('470', '4', 'entry', '15/03/2025', '2000', '22650');
INSERT INTO `transactions` VALUES ('471', '4', 'entry', '15/03/2025', '2000', '24650');
INSERT INTO `transactions` VALUES ('472', '4', 'entry', '15/03/2025', '2000', '26650');
INSERT INTO `transactions` VALUES ('473', '4', 'entry', '15/03/2025', '2000', '28650');
INSERT INTO `transactions` VALUES ('474', '4', 'entry', '15/03/2025', '2000', '30650');
INSERT INTO `transactions` VALUES ('475', '4', 'entry', '15/03/2025', '500', '32650');
INSERT INTO `transactions` VALUES ('476', '4', 'entry', '15/03/2025', '500', '33150');
INSERT INTO `transactions` VALUES ('477', '4', 'entry', '15/03/2025', '100', '33650');
INSERT INTO `transactions` VALUES ('478', '25', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('479', '26', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('480', '5', 'exit', '15/03/2025', '720', '5000');
INSERT INTO `transactions` VALUES ('481', '5', 'exit', '15/03/2025', '300', '4280');
INSERT INTO `transactions` VALUES ('482', '5', 'exit', '15/03/2025', '520', '3980');
INSERT INTO `transactions` VALUES ('483', '5', 'exit', '15/03/2025', '190', '3460');
INSERT INTO `transactions` VALUES ('484', '5', 'exit', '15/03/2025', '70', '3270');
INSERT INTO `transactions` VALUES ('485', '12', 'exit', '15/03/2025', '250', '78000');
INSERT INTO `transactions` VALUES ('486', '12', 'exit', '15/03/2025', '250', '77750');
INSERT INTO `transactions` VALUES ('487', '9', 'exit', '15/03/2025', '50', '181990');
INSERT INTO `transactions` VALUES ('488', '9', 'exit', '15/03/2025', '270', '181940');
INSERT INTO `transactions` VALUES ('489', '9', 'exit', '15/03/2025', '25', '181670');
INSERT INTO `transactions` VALUES ('490', '3', 'entry', '15/03/2025', '3500', '223914');
INSERT INTO `transactions` VALUES ('491', '3', 'entry', '15/03/2025', '1', '227414');
INSERT INTO `transactions` VALUES ('492', '3', 'entry', '15/03/2025', '13100', '227415');
INSERT INTO `transactions` VALUES ('493', '3', 'entry', '15/03/2025', '3500', '240515');
INSERT INTO `transactions` VALUES ('494', '3', 'entry', '15/03/2025', '3500', '244015');
INSERT INTO `transactions` VALUES ('495', '3', 'entry', '15/03/2025', '2250', '247515');
INSERT INTO `transactions` VALUES ('496', '3', 'entry', '15/03/2025', '810', '249765');
INSERT INTO `transactions` VALUES ('497', '3', 'entry', '15/03/2025', '500', '250575');
INSERT INTO `transactions` VALUES ('498', '3', 'entry', '15/03/2025', '12100', '251075');
INSERT INTO `transactions` VALUES ('499', '3', 'entry', '15/03/2025', '3500', '263175');
INSERT INTO `transactions` VALUES ('500', '3', 'entry', '15/03/2025', '3500', '266675');
INSERT INTO `transactions` VALUES ('501', '5', 'entry', '15/03/2025', '12100', '3200');
INSERT INTO `transactions` VALUES ('502', '9', 'exit', '15/03/2025', '890', '181645');
INSERT INTO `transactions` VALUES ('503', '3', 'exit', '15/03/2025', '100', '270175');
INSERT INTO `transactions` VALUES ('504', '5', 'exit', '15/03/2025', '10000', '15300');
INSERT INTO `transactions` VALUES ('505', '3', 'entry', '15/03/2025', '10000', '270075');
INSERT INTO `transactions` VALUES ('506', '3', 'exit', '15/03/2025', '20000', '280075');
INSERT INTO `transactions` VALUES ('507', '5', 'entry', '15/03/2025', '20000', '5300');
INSERT INTO `transactions` VALUES ('508', '5', 'exit', '15/03/2025', '2000', '25300');
INSERT INTO `transactions` VALUES ('509', '5', 'exit', '15/03/2025', '500', '23300');
INSERT INTO `transactions` VALUES ('510', '5', 'exit', '15/03/2025', '3800', '22800');
INSERT INTO `transactions` VALUES ('511', '5', 'exit', '15/03/2025', '1500', '19000');
INSERT INTO `transactions` VALUES ('512', '5', 'exit', '15/03/2025', '7500', '17500');
INSERT INTO `transactions` VALUES ('513', '5', 'exit', '15/03/2025', '1150', '10000');
INSERT INTO `transactions` VALUES ('514', '9', 'exit', '15/03/2025', '50', '180755');
INSERT INTO `transactions` VALUES ('515', '3', 'exit', '15/03/2025', '100', '260075');
INSERT INTO `transactions` VALUES ('516', '2', 'exit', '15/03/2025', '290', '489896');
INSERT INTO `transactions` VALUES ('517', '1', 'entry', '15/03/2025', '3500', '810235');
INSERT INTO `transactions` VALUES ('518', '1', 'entry', '15/03/2025', '13100', '813735');
INSERT INTO `transactions` VALUES ('519', '1', 'entry', '15/03/2025', '20000', '826835');
INSERT INTO `transactions` VALUES ('520', '1', 'entry', '15/03/2025', '3500', '846835');
INSERT INTO `transactions` VALUES ('521', '2', 'exit', '15/03/2025', '120', '489606');
INSERT INTO `transactions` VALUES ('522', '3', 'entry', '15/03/2025', '13100', '259975');
INSERT INTO `transactions` VALUES ('523', '3', 'entry', '15/03/2025', '500', '273075');
INSERT INTO `transactions` VALUES ('524', '3', 'entry', '15/03/2025', '2250', '273575');
INSERT INTO `transactions` VALUES ('525', '3', 'entry', '15/03/2025', '3500', '275825');
INSERT INTO `transactions` VALUES ('526', '3', 'entry', '15/03/2025', '3500', '279325');
INSERT INTO `transactions` VALUES ('527', '3', 'entry', '15/03/2025', '3500', '282825');
INSERT INTO `transactions` VALUES ('528', '3', 'entry', '15/03/2025', '1', '286325');
INSERT INTO `transactions` VALUES ('529', '3', 'entry', '15/03/2025', '3500', '286326');
INSERT INTO `transactions` VALUES ('530', '3', 'entry', '15/03/2025', '3500', '289826');
INSERT INTO `transactions` VALUES ('531', '3', 'entry', '15/03/2025', '12100', '293326');
INSERT INTO `transactions` VALUES ('532', '3', 'entry', '15/03/2025', '810', '305426');
INSERT INTO `transactions` VALUES ('533', '5', 'entry', '15/03/2025', '12100', '8850');
INSERT INTO `transactions` VALUES ('534', '9', 'exit', '15/03/2025', '50', '180705');
INSERT INTO `transactions` VALUES ('535', '2', 'entry', '15/03/2025', '20000', '489486');
INSERT INTO `transactions` VALUES ('536', '3', 'entry', '15/03/2025', '3500', '306236');
INSERT INTO `transactions` VALUES ('537', '3', 'exit', '15/03/2025', '1460', '309736');
INSERT INTO `transactions` VALUES ('538', '23', 'exit', '15/03/2025', '3500', '43421');
INSERT INTO `transactions` VALUES ('539', '23', 'exit', '15/03/2025', '3500', '39921');
INSERT INTO `transactions` VALUES ('540', '23', 'exit', '15/03/2025', '2500', '36421');
INSERT INTO `transactions` VALUES ('541', '9', 'exit', '15/03/2025', '270', '180655');
INSERT INTO `transactions` VALUES ('542', '10', 'exit', '15/03/2025', '50', '98361');
INSERT INTO `transactions` VALUES ('543', '23', 'exit', '15/03/2025', '1000', '33921');
INSERT INTO `transactions` VALUES ('544', '1', 'entry', '15/03/2025', '3500', '850335');
INSERT INTO `transactions` VALUES ('545', '1', 'entry', '15/03/2025', '13100', '853835');
INSERT INTO `transactions` VALUES ('546', '1', 'entry', '15/03/2025', '20000', '866935');
INSERT INTO `transactions` VALUES ('547', '1', 'entry', '15/03/2025', '3500', '886935');
INSERT INTO `transactions` VALUES ('548', '3', 'entry', '15/03/2025', '13100', '308276');
INSERT INTO `transactions` VALUES ('549', '3', 'entry', '15/03/2025', '500', '321376');
INSERT INTO `transactions` VALUES ('550', '3', 'entry', '15/03/2025', '2250', '321876');
INSERT INTO `transactions` VALUES ('551', '3', 'entry', '15/03/2025', '3500', '324126');
INSERT INTO `transactions` VALUES ('552', '3', 'entry', '15/03/2025', '3500', '327626');
INSERT INTO `transactions` VALUES ('553', '3', 'entry', '15/03/2025', '3500', '331126');
INSERT INTO `transactions` VALUES ('554', '3', 'entry', '15/03/2025', '1', '334626');
INSERT INTO `transactions` VALUES ('555', '3', 'entry', '15/03/2025', '3500', '334627');
INSERT INTO `transactions` VALUES ('556', '3', 'entry', '15/03/2025', '3500', '338127');
INSERT INTO `transactions` VALUES ('557', '3', 'entry', '15/03/2025', '12100', '341627');
INSERT INTO `transactions` VALUES ('558', '3', 'entry', '15/03/2025', '810', '353727');
INSERT INTO `transactions` VALUES ('559', '10', 'entry', '15/03/2025', '2500', '98311');
INSERT INTO `transactions` VALUES ('560', '10', 'exit', '15/03/2025', '100', '100811');
INSERT INTO `transactions` VALUES ('561', '10', 'exit', '15/03/2025', '100', '100711');
INSERT INTO `transactions` VALUES ('562', '10', 'exit', '15/03/2025', '100', '100611');
INSERT INTO `transactions` VALUES ('563', '1', 'exit', '15/03/2025', '20000', '890435');
INSERT INTO `transactions` VALUES ('564', '10', 'exit', '15/03/2025', '5000', '100511');
INSERT INTO `transactions` VALUES ('565', '2', 'entry', '15/03/2025', '3500', '509486');
INSERT INTO `transactions` VALUES ('566', '10', 'exit', '15/03/2025', '50', '95511');
INSERT INTO `transactions` VALUES ('567', '1', 'exit', '15/03/2025', '500', '870435');
INSERT INTO `transactions` VALUES ('568', '10', 'exit', '15/03/2025', '120', '95461');
INSERT INTO `transactions` VALUES ('569', '10', 'exit', '15/03/2025', '30', '95341');
INSERT INTO `transactions` VALUES ('570', '10', 'exit', '15/03/2025', '180', '95311');
INSERT INTO `transactions` VALUES ('571', '1', 'exit', '15/03/2025', '500', '869935');
INSERT INTO `transactions` VALUES ('572', '23', 'exit', '15/03/2025', '25', '32921');
INSERT INTO `transactions` VALUES ('573', '1', 'exit', '15/03/2025', '500', '869435');
INSERT INTO `transactions` VALUES ('574', '5', 'entry', '15/03/2025', '12100', '20950');
INSERT INTO `transactions` VALUES ('575', '1', 'exit', '15/03/2025', '500', '868935');
INSERT INTO `transactions` VALUES ('576', '23', 'exit', '15/03/2025', '50', '32896');
INSERT INTO `transactions` VALUES ('577', '1', 'exit', '15/03/2025', '500', '868435');
INSERT INTO `transactions` VALUES ('578', '10', 'exit', '15/03/2025', '3500', '95131');
INSERT INTO `transactions` VALUES ('579', '1', 'exit', '15/03/2025', '500', '867935');
INSERT INTO `transactions` VALUES ('580', '1', 'exit', '15/03/2025', '500', '867435');
INSERT INTO `transactions` VALUES ('581', '1', 'exit', '15/03/2025', '500', '866935');
INSERT INTO `transactions` VALUES ('582', '1', 'exit', '15/03/2025', '500', '866435');
INSERT INTO `transactions` VALUES ('583', '1', 'exit', '15/03/2025', '500', '865935');
INSERT INTO `transactions` VALUES ('584', '1', 'exit', '15/03/2025', '500', '865435');
INSERT INTO `transactions` VALUES ('585', '3', 'entry', '15/03/2025', '3500', '354537');
INSERT INTO `transactions` VALUES ('586', '1', 'exit', '15/03/2025', '500', '864935');
INSERT INTO `transactions` VALUES ('587', '1', 'exit', '15/03/2025', '500', '864435');
INSERT INTO `transactions` VALUES ('588', '1', 'exit', '15/03/2025', '500', '863935');
INSERT INTO `transactions` VALUES ('589', '1', 'entry', '15/03/2025', '3500', '863435');
INSERT INTO `transactions` VALUES ('590', '1', 'entry', '15/03/2025', '13100', '866935');
INSERT INTO `transactions` VALUES ('591', '1', 'entry', '15/03/2025', '20000', '880035');
INSERT INTO `transactions` VALUES ('592', '1', 'entry', '15/03/2025', '3500', '900035');
INSERT INTO `transactions` VALUES ('593', '1', 'exit', '15/03/2025', '500', '903535');
INSERT INTO `transactions` VALUES ('594', '1', 'exit', '15/03/2025', '500', '903035');
INSERT INTO `transactions` VALUES ('595', '3', 'entry', '15/03/2025', '13100', '358037');
INSERT INTO `transactions` VALUES ('596', '3', 'entry', '15/03/2025', '500', '371137');
INSERT INTO `transactions` VALUES ('597', '3', 'entry', '15/03/2025', '3500', '371637');
INSERT INTO `transactions` VALUES ('598', '3', 'entry', '15/03/2025', '2250', '375137');
INSERT INTO `transactions` VALUES ('599', '3', 'entry', '15/03/2025', '3500', '377387');
INSERT INTO `transactions` VALUES ('600', '3', 'entry', '15/03/2025', '3500', '380887');
INSERT INTO `transactions` VALUES ('601', '3', 'entry', '15/03/2025', '3500', '384387');
INSERT INTO `transactions` VALUES ('602', '3', 'entry', '15/03/2025', '1', '387887');
INSERT INTO `transactions` VALUES ('603', '3', 'entry', '15/03/2025', '3500', '387888');
INSERT INTO `transactions` VALUES ('604', '3', 'entry', '15/03/2025', '12100', '391388');
INSERT INTO `transactions` VALUES ('605', '3', 'entry', '15/03/2025', '810', '403488');
INSERT INTO `transactions` VALUES ('606', '1', 'exit', '15/03/2025', '500', '902535');
INSERT INTO `transactions` VALUES ('607', '1', 'exit', '15/03/2025', '500', '902035');
INSERT INTO `transactions` VALUES ('608', '1', 'exit', '15/03/2025', '500', '901535');
INSERT INTO `transactions` VALUES ('609', '23', 'exit', '15/03/2025', '100', '32846');
INSERT INTO `transactions` VALUES ('610', '1', 'exit', '15/03/2025', '500', '901035');
INSERT INTO `transactions` VALUES ('611', '10', 'exit', '15/03/2025', '50', '91631');
INSERT INTO `transactions` VALUES ('612', '5', 'entry', '15/03/2025', '12100', '33050');
INSERT INTO `transactions` VALUES ('613', '20', 'exit', '15/03/2025', '120', '113739');
INSERT INTO `transactions` VALUES ('614', '15', 'entry', '15/03/2025', '1000', '5000');
INSERT INTO `transactions` VALUES ('615', '10', 'exit', '15/03/2025', '5000', '91581');
INSERT INTO `transactions` VALUES ('616', '10', 'exit', '15/03/2025', '50', '86581');
INSERT INTO `transactions` VALUES ('617', '23', 'exit', '15/03/2025', '500', '32746');
INSERT INTO `transactions` VALUES ('618', '10', 'exit', '15/03/2025', '50', '86531');
INSERT INTO `transactions` VALUES ('619', '3', 'entry', '15/03/2025', '3500', '404298');
INSERT INTO `transactions` VALUES ('620', '10', 'exit', '15/03/2025', '100', '86481');
INSERT INTO `transactions` VALUES ('621', '1', 'entry', '15/03/2025', '3500', '900535');
INSERT INTO `transactions` VALUES ('622', '1', 'entry', '15/03/2025', '13100', '904035');
INSERT INTO `transactions` VALUES ('623', '1', 'entry', '15/03/2025', '20000', '917135');
INSERT INTO `transactions` VALUES ('624', '1', 'entry', '15/03/2025', '3500', '937135');
INSERT INTO `transactions` VALUES ('625', '10', 'exit', '15/03/2025', '264', '86381');
INSERT INTO `transactions` VALUES ('626', '23', 'exit', '15/03/2025', '150', '32246');
INSERT INTO `transactions` VALUES ('627', '4', 'exit', '15/03/2025', '50', '33750');
INSERT INTO `transactions` VALUES ('628', '23', 'entry', '15/03/2025', '7500', '32096');
INSERT INTO `transactions` VALUES ('629', '4', 'exit', '15/03/2025', '125', '33700');
INSERT INTO `transactions` VALUES ('630', '4', 'exit', '15/03/2025', '125', '33575');
INSERT INTO `transactions` VALUES ('631', '23', 'exit', '15/03/2025', '50', '39596');
INSERT INTO `transactions` VALUES ('632', '10', 'exit', '15/03/2025', '975', '86117');
INSERT INTO `transactions` VALUES ('633', '4', 'entry', '15/03/2025', '3500', '33450');
INSERT INTO `transactions` VALUES ('634', '4', 'exit', '15/03/2025', '1000', '36950');
INSERT INTO `transactions` VALUES ('635', '10', 'exit', '15/03/2025', '50', '85142');
INSERT INTO `transactions` VALUES ('636', '10', 'exit', '15/03/2025', '50', '85092');
INSERT INTO `transactions` VALUES ('637', '10', 'exit', '15/03/2025', '158', '85042');
INSERT INTO `transactions` VALUES ('638', '20', 'entry', '15/03/2025', '3250', '113619');
INSERT INTO `transactions` VALUES ('639', '20', 'entry', '15/03/2025', '810', '116869');
INSERT INTO `transactions` VALUES ('640', '10', 'exit', '15/03/2025', '20', '84884');
INSERT INTO `transactions` VALUES ('641', '23', 'exit', '15/03/2025', '975', '39546');
INSERT INTO `transactions` VALUES ('642', '5', 'entry', '15/03/2025', '12100', '45150');
INSERT INTO `transactions` VALUES ('643', '5', 'exit', '15/03/2025', '1080', '57250');
INSERT INTO `transactions` VALUES ('644', '1', 'exit', '15/03/2025', '1000', '940635');
INSERT INTO `transactions` VALUES ('645', '3', 'entry', '15/03/2025', '13100', '407798');
INSERT INTO `transactions` VALUES ('646', '3', 'entry', '15/03/2025', '500', '420898');
INSERT INTO `transactions` VALUES ('647', '3', 'entry', '15/03/2025', '3500', '421398');
INSERT INTO `transactions` VALUES ('648', '3', 'entry', '15/03/2025', '2250', '424898');
INSERT INTO `transactions` VALUES ('649', '3', 'entry', '15/03/2025', '3500', '427148');
INSERT INTO `transactions` VALUES ('650', '3', 'entry', '15/03/2025', '3500', '430648');
INSERT INTO `transactions` VALUES ('651', '3', 'entry', '15/03/2025', '3500', '434148');
INSERT INTO `transactions` VALUES ('652', '3', 'entry', '15/03/2025', '1', '437648');
INSERT INTO `transactions` VALUES ('653', '3', 'entry', '15/03/2025', '3500', '437649');
INSERT INTO `transactions` VALUES ('654', '3', 'entry', '15/03/2025', '12100', '441149');
INSERT INTO `transactions` VALUES ('655', '3', 'entry', '15/03/2025', '3500', '453249');
INSERT INTO `transactions` VALUES ('656', '3', 'entry', '15/03/2025', '810', '456749');
INSERT INTO `transactions` VALUES ('657', '4', 'entry', '15/03/2025', '3500', '35950');
INSERT INTO `transactions` VALUES ('658', '5', 'exit', '15/03/2025', '750', '56170');
INSERT INTO `transactions` VALUES ('659', '1', 'entry', '15/03/2025', '3500', '939635');
INSERT INTO `transactions` VALUES ('660', '1', 'entry', '15/03/2025', '13100', '943135');
INSERT INTO `transactions` VALUES ('661', '1', 'entry', '15/03/2025', '20000', '956235');
INSERT INTO `transactions` VALUES ('662', '1', 'entry', '15/03/2025', '3500', '976235');
INSERT INTO `transactions` VALUES ('663', '5', 'entry', '15/03/2025', '12100', '55420');
INSERT INTO `transactions` VALUES ('664', '10', 'exit', '15/03/2025', '50', '84864');
INSERT INTO `transactions` VALUES ('665', '10', 'exit', '15/03/2025', '50', '84814');
INSERT INTO `transactions` VALUES ('666', '10', 'exit', '15/03/2025', '50', '84764');
INSERT INTO `transactions` VALUES ('667', '8', 'exit', '15/03/2025', '1090', '59830');
INSERT INTO `transactions` VALUES ('668', '10', 'exit', '15/03/2025', '50', '84714');
INSERT INTO `transactions` VALUES ('669', '8', 'exit', '15/03/2025', '400', '58740');
INSERT INTO `transactions` VALUES ('670', '10', 'exit', '15/03/2025', '50', '84664');
INSERT INTO `transactions` VALUES ('671', '3', 'entry', '15/03/2025', '13100', '457559');
INSERT INTO `transactions` VALUES ('672', '3', 'entry', '15/03/2025', '500', '470659');
INSERT INTO `transactions` VALUES ('673', '3', 'entry', '15/03/2025', '3500', '471159');
INSERT INTO `transactions` VALUES ('674', '3', 'entry', '15/03/2025', '2250', '474659');
INSERT INTO `transactions` VALUES ('675', '3', 'entry', '15/03/2025', '3500', '476909');
INSERT INTO `transactions` VALUES ('676', '3', 'entry', '15/03/2025', '3500', '480409');
INSERT INTO `transactions` VALUES ('677', '3', 'entry', '15/03/2025', '3500', '483909');
INSERT INTO `transactions` VALUES ('678', '3', 'entry', '15/03/2025', '1', '487409');
INSERT INTO `transactions` VALUES ('679', '3', 'entry', '15/03/2025', '3500', '487410');
INSERT INTO `transactions` VALUES ('680', '3', 'entry', '15/03/2025', '12100', '490910');
INSERT INTO `transactions` VALUES ('681', '3', 'entry', '15/03/2025', '3500', '503010');
INSERT INTO `transactions` VALUES ('682', '3', 'entry', '15/03/2025', '810', '506510');
INSERT INTO `transactions` VALUES ('683', '10', 'exit', '15/03/2025', '50', '84614');
INSERT INTO `transactions` VALUES ('684', '4', 'entry', '15/03/2025', '3500', '39450');
INSERT INTO `transactions` VALUES ('685', '4', 'entry', '15/03/2025', '1000', '42950');
INSERT INTO `transactions` VALUES ('686', '8', 'exit', '15/03/2025', '1000', '58340');
INSERT INTO `transactions` VALUES ('687', '10', 'exit', '15/03/2025', '347', '84564');
INSERT INTO `transactions` VALUES ('688', '8', 'exit', '15/03/2025', '400', '57340');
INSERT INTO `transactions` VALUES ('689', '10', 'exit', '15/03/2025', '120', '84217');
INSERT INTO `transactions` VALUES ('690', '1', 'entry', '15/03/2025', '3500', '979735');
INSERT INTO `transactions` VALUES ('691', '1', 'entry', '15/03/2025', '13100', '983235');
INSERT INTO `transactions` VALUES ('692', '1', 'entry', '15/03/2025', '20000', '996335');
INSERT INTO `transactions` VALUES ('693', '1', 'entry', '15/03/2025', '3500', '1016335');
INSERT INTO `transactions` VALUES ('694', '5', 'entry', '15/03/2025', '12100', '67520');
INSERT INTO `transactions` VALUES ('695', '10', 'exit', '15/03/2025', '3', '84097');
INSERT INTO `transactions` VALUES ('696', '10', 'exit', '15/03/2025', '387', '84094');
INSERT INTO `transactions` VALUES ('697', '8', 'entry', '15/03/2025', '12100', '56940');
INSERT INTO `transactions` VALUES ('698', '10', 'exit', '15/03/2025', '50', '83707');
INSERT INTO `transactions` VALUES ('699', '3', 'entry', '15/03/2025', '2500', '507320');
INSERT INTO `transactions` VALUES ('700', '3', 'entry', '15/03/2025', '2500', '509820');
INSERT INTO `transactions` VALUES ('701', '5', 'entry', '15/03/2025', '2500', '79620');
INSERT INTO `transactions` VALUES ('702', '5', 'entry', '15/03/2025', '2500', '82120');
INSERT INTO `transactions` VALUES ('703', '23', 'entry', '15/03/2025', '2500', '38571');
INSERT INTO `transactions` VALUES ('704', '23', 'entry', '15/03/2025', '2500', '41071');
INSERT INTO `transactions` VALUES ('705', '11', 'entry', '15/03/2025', '2500', '5000');
INSERT INTO `transactions` VALUES ('706', '11', 'entry', '15/03/2025', '2500', '7500');
INSERT INTO `transactions` VALUES ('707', '10', 'exit', '15/03/2025', '50', '83657');
INSERT INTO `transactions` VALUES ('708', '10', 'exit', '15/03/2025', '50', '83607');
INSERT INTO `transactions` VALUES ('709', '10', 'exit', '15/03/2025', '425', '83557');
INSERT INTO `transactions` VALUES ('710', '8', 'exit', '15/03/2025', '3500', '69040');
INSERT INTO `transactions` VALUES ('711', '10', 'exit', '15/03/2025', '725', '83132');
INSERT INTO `transactions` VALUES ('712', '8', 'exit', '15/03/2025', '1000', '65540');
INSERT INTO `transactions` VALUES ('713', '8', 'exit', '15/03/2025', '2500', '64540');
INSERT INTO `transactions` VALUES ('714', '23', 'exit', '15/03/2025', '50', '43571');
INSERT INTO `transactions` VALUES ('715', '10', 'exit', '15/03/2025', '50', '82407');
INSERT INTO `transactions` VALUES ('716', '12', 'entry', '15/03/2025', '1000', '77500');
INSERT INTO `transactions` VALUES ('717', '23', 'exit', '15/03/2025', '1000', '43521');
INSERT INTO `transactions` VALUES ('718', '4', 'entry', '15/03/2025', '3500', '43950');
INSERT INTO `transactions` VALUES ('719', '1', 'entry', '15/03/2025', '13100', '1019835');
INSERT INTO `transactions` VALUES ('720', '1', 'entry', '15/03/2025', '3500', '1032935');
INSERT INTO `transactions` VALUES ('721', '1', 'entry', '15/03/2025', '20000', '1036435');
INSERT INTO `transactions` VALUES ('722', '1', 'entry', '15/03/2025', '3500', '1056435');
INSERT INTO `transactions` VALUES ('723', '11', 'entry', '15/03/2025', '5000', '10000');
INSERT INTO `transactions` VALUES ('724', '23', 'exit', '15/03/2025', '100', '42521');
INSERT INTO `transactions` VALUES ('725', '10', 'exit', '15/03/2025', '50', '82357');
INSERT INTO `transactions` VALUES ('726', '8', 'entry', '15/03/2025', '12100', '62040');
INSERT INTO `transactions` VALUES ('727', '23', 'exit', '15/03/2025', '100', '42421');
INSERT INTO `transactions` VALUES ('728', '20', 'exit', '15/03/2025', '3500', '117679');
INSERT INTO `transactions` VALUES ('729', '20', 'exit', '15/03/2025', '120', '114179');
INSERT INTO `transactions` VALUES ('730', '23', 'exit', '15/03/2025', '1000', '42321');
INSERT INTO `transactions` VALUES ('731', '10', 'exit', '15/03/2025', '50', '82307');
INSERT INTO `transactions` VALUES ('732', '23', 'exit', '15/03/2025', '100', '41321');
INSERT INTO `transactions` VALUES ('733', '23', 'exit', '15/03/2025', '100', '41221');
INSERT INTO `transactions` VALUES ('734', '10', 'exit', '15/03/2025', '400', '82257');
INSERT INTO `transactions` VALUES ('735', '20', 'exit', '15/03/2025', '180', '114059');
INSERT INTO `transactions` VALUES ('736', '23', 'exit', '15/03/2025', '100', '41121');
INSERT INTO `transactions` VALUES ('737', '23', 'exit', '15/03/2025', '5000', '41021');
INSERT INTO `transactions` VALUES ('738', '23', 'exit', '15/03/2025', '100', '36021');
INSERT INTO `transactions` VALUES ('739', '20', 'exit', '15/03/2025', '25', '113879');
INSERT INTO `transactions` VALUES ('740', '23', 'exit', '15/03/2025', '100', '35921');
INSERT INTO `transactions` VALUES ('741', '23', 'exit', '15/03/2025', '100', '35821');
INSERT INTO `transactions` VALUES ('742', '23', 'exit', '15/03/2025', '100', '35721');
INSERT INTO `transactions` VALUES ('743', '23', 'exit', '15/03/2025', '100', '35621');
INSERT INTO `transactions` VALUES ('744', '10', 'exit', '15/03/2025', '50', '81857');
INSERT INTO `transactions` VALUES ('745', '15', 'entry', '15/03/2025', '10000', '6000');
INSERT INTO `transactions` VALUES ('746', '3', 'exit', '15/03/2025', '10000', '512320');
INSERT INTO `transactions` VALUES ('747', '23', 'exit', '15/03/2025', '50', '35521');
INSERT INTO `transactions` VALUES ('748', '10', 'exit', '15/03/2025', '2500', '81807');
INSERT INTO `transactions` VALUES ('749', '11', 'entry', '15/03/2025', '12100', '15000');
INSERT INTO `transactions` VALUES ('750', '20', 'exit', '15/03/2025', '400', '113854');
INSERT INTO `transactions` VALUES ('751', '12', 'entry', '15/03/2025', '10100', '78500');
INSERT INTO `transactions` VALUES ('752', '10', 'entry', '15/03/2025', '2500', '79307');
INSERT INTO `transactions` VALUES ('753', '10', 'exit', '15/03/2025', '1000', '81807');
INSERT INTO `transactions` VALUES ('754', '15', 'exit', '15/03/2025', '720', '16000');
INSERT INTO `transactions` VALUES ('755', '20', 'exit', '15/03/2025', '7', '113454');
INSERT INTO `transactions` VALUES ('756', '10', 'exit', '15/03/2025', '50', '80807');
INSERT INTO `transactions` VALUES ('757', '20', 'entry', '15/03/2025', '810', '113447');
INSERT INTO `transactions` VALUES ('758', '15', 'exit', '15/03/2025', '10000', '15280');
INSERT INTO `transactions` VALUES ('759', '15', 'exit', '15/03/2025', '3500', '5280');
INSERT INTO `transactions` VALUES ('760', '15', 'exit', '15/03/2025', '45', '1780');
INSERT INTO `transactions` VALUES ('761', '20', 'entry', '15/03/2025', '3250', '114257');
INSERT INTO `transactions` VALUES ('762', '1', 'entry', '15/03/2025', '20000', '1059935');
INSERT INTO `transactions` VALUES ('763', '10', 'exit', '15/03/2025', '120', '80757');
INSERT INTO `transactions` VALUES ('764', '15', 'exit', '15/03/2025', '15', '1735');
INSERT INTO `transactions` VALUES ('765', '3', 'entry', '15/03/2025', '13100', '502320');
INSERT INTO `transactions` VALUES ('766', '3', 'entry', '15/03/2025', '3500', '515420');
INSERT INTO `transactions` VALUES ('767', '3', 'entry', '15/03/2025', '12100', '518920');
INSERT INTO `transactions` VALUES ('768', '3', 'entry', '15/03/2025', '3500', '531020');
INSERT INTO `transactions` VALUES ('769', '3', 'entry', '15/03/2025', '500', '534520');
INSERT INTO `transactions` VALUES ('770', '3', 'entry', '15/03/2025', '3500', '535020');
INSERT INTO `transactions` VALUES ('771', '4', 'entry', '15/03/2025', '3500', '47450');
INSERT INTO `transactions` VALUES ('772', '3', 'entry', '15/03/2025', '3500', '538520');
INSERT INTO `transactions` VALUES ('773', '3', 'entry', '15/03/2025', '3500', '542020');
INSERT INTO `transactions` VALUES ('774', '3', 'entry', '15/03/2025', '1', '545520');
INSERT INTO `transactions` VALUES ('775', '3', 'entry', '15/03/2025', '3500', '545521');
INSERT INTO `transactions` VALUES ('776', '3', 'entry', '15/03/2025', '810', '549021');
INSERT INTO `transactions` VALUES ('777', '3', 'entry', '15/03/2025', '2250', '549831');
INSERT INTO `transactions` VALUES ('778', '8', 'exit', '15/03/2025', '400', '74140');
INSERT INTO `transactions` VALUES ('779', '10', 'entry', '15/03/2025', '20', '80637');
INSERT INTO `transactions` VALUES ('780', '20', 'exit', '15/03/2025', '10', '117507');
INSERT INTO `transactions` VALUES ('781', '27', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('782', '20', 'entry', '15/03/2025', '15000', '117497');
INSERT INTO `transactions` VALUES ('783', '8', 'exit', '15/03/2025', '15000', '73740');
INSERT INTO `transactions` VALUES ('784', '15', 'exit', '15/03/2025', '250', '1720');
INSERT INTO `transactions` VALUES ('785', '10', 'exit', '15/03/2025', '50', '80657');
INSERT INTO `transactions` VALUES ('786', '12', 'entry', '15/03/2025', '10100', '88600');
INSERT INTO `transactions` VALUES ('787', '20', 'entry', '15/03/2025', '810', '132497');
INSERT INTO `transactions` VALUES ('788', '20', 'entry', '15/03/2025', '3250', '133307');
INSERT INTO `transactions` VALUES ('789', '8', 'entry', '15/03/2025', '12100', '58740');
INSERT INTO `transactions` VALUES ('790', '3', 'entry', '15/03/2025', '13100', '552081');
INSERT INTO `transactions` VALUES ('791', '3', 'entry', '15/03/2025', '3500', '565181');
INSERT INTO `transactions` VALUES ('792', '3', 'entry', '15/03/2025', '12100', '568681');
INSERT INTO `transactions` VALUES ('793', '3', 'entry', '15/03/2025', '3500', '580781');
INSERT INTO `transactions` VALUES ('794', '3', 'entry', '15/03/2025', '500', '584281');
INSERT INTO `transactions` VALUES ('795', '3', 'entry', '15/03/2025', '3500', '584781');
INSERT INTO `transactions` VALUES ('796', '4', 'entry', '15/03/2025', '3500', '50950');
INSERT INTO `transactions` VALUES ('797', '3', 'entry', '15/03/2025', '3500', '588281');
INSERT INTO `transactions` VALUES ('798', '3', 'entry', '15/03/2025', '3500', '591781');
INSERT INTO `transactions` VALUES ('799', '3', 'entry', '15/03/2025', '1', '595281');
INSERT INTO `transactions` VALUES ('800', '3', 'entry', '15/03/2025', '3500', '595282');
INSERT INTO `transactions` VALUES ('801', '3', 'entry', '15/03/2025', '810', '598782');
INSERT INTO `transactions` VALUES ('802', '3', 'entry', '15/03/2025', '2250', '599592');
INSERT INTO `transactions` VALUES ('803', '15', 'entry', '15/03/2025', '3500', '1470');
INSERT INTO `transactions` VALUES ('804', '23', 'entry', '15/03/2025', '7500', '35471');
INSERT INTO `transactions` VALUES ('805', '12', 'entry', '15/03/2025', '10100', '98700');
INSERT INTO `transactions` VALUES ('806', '20', 'entry', '15/03/2025', '810', '136557');
INSERT INTO `transactions` VALUES ('807', '20', 'entry', '15/03/2025', '3250', '137367');
INSERT INTO `transactions` VALUES ('808', '20', 'exit', '15/03/2025', '120', '140617');
INSERT INTO `transactions` VALUES ('809', '20', 'exit', '15/03/2025', '120', '140497');
INSERT INTO `transactions` VALUES ('810', '1', 'entry', '15/03/2025', '20000', '1079935');
INSERT INTO `transactions` VALUES ('811', '23', 'exit', '15/03/2025', '225', '42971');
INSERT INTO `transactions` VALUES ('812', '9', 'exit', '15/03/2025', '50', '180385');
INSERT INTO `transactions` VALUES ('813', '3', 'entry', '15/03/2025', '13100', '601842');
INSERT INTO `transactions` VALUES ('814', '3', 'entry', '15/03/2025', '3500', '614942');
INSERT INTO `transactions` VALUES ('815', '3', 'entry', '15/03/2025', '12100', '618442');
INSERT INTO `transactions` VALUES ('816', '3', 'entry', '15/03/2025', '3500', '630542');
INSERT INTO `transactions` VALUES ('817', '3', 'entry', '15/03/2025', '500', '634042');
INSERT INTO `transactions` VALUES ('818', '3', 'entry', '15/03/2025', '3500', '634542');
INSERT INTO `transactions` VALUES ('819', '3', 'entry', '15/03/2025', '3500', '638042');
INSERT INTO `transactions` VALUES ('820', '3', 'entry', '15/03/2025', '3500', '641542');
INSERT INTO `transactions` VALUES ('821', '3', 'entry', '15/03/2025', '1', '645042');
INSERT INTO `transactions` VALUES ('822', '3', 'entry', '15/03/2025', '3500', '645043');
INSERT INTO `transactions` VALUES ('823', '3', 'entry', '15/03/2025', '810', '648543');
INSERT INTO `transactions` VALUES ('824', '3', 'entry', '15/03/2025', '2250', '649353');
INSERT INTO `transactions` VALUES ('825', '20', 'exit', '15/03/2025', '2000', '140377');
INSERT INTO `transactions` VALUES ('826', '23', 'exit', '15/03/2025', '425', '42746');
INSERT INTO `transactions` VALUES ('827', '20', 'exit', '15/03/2025', '400', '138377');
INSERT INTO `transactions` VALUES ('828', '9', 'exit', '15/03/2025', '400', '180335');
INSERT INTO `transactions` VALUES ('829', '15', 'entry', '15/03/2025', '3500', '4970');
INSERT INTO `transactions` VALUES ('830', '20', 'entry', '15/03/2025', '810', '137977');
INSERT INTO `transactions` VALUES ('831', '20', 'entry', '15/03/2025', '3250', '138787');
INSERT INTO `transactions` VALUES ('832', '20', 'entry', '15/03/2025', '29700', '142037');
INSERT INTO `transactions` VALUES ('833', '9', 'exit', '15/03/2025', '29700', '179935');
INSERT INTO `transactions` VALUES ('834', '20', 'exit', '15/03/2025', '14', '171737');
INSERT INTO `transactions` VALUES ('835', '16', 'exit', '15/03/2025', '1', '216140');
INSERT INTO `transactions` VALUES ('836', '20', 'entry', '15/03/2025', '1', '171723');
INSERT INTO `transactions` VALUES ('837', '28', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('838', '1', 'entry', '15/03/2025', '20000', '1099935');
INSERT INTO `transactions` VALUES ('839', '16', 'exit', '15/03/2025', '250', '216139');
INSERT INTO `transactions` VALUES ('840', '9', 'exit', '15/03/2025', '215', '150235');
INSERT INTO `transactions` VALUES ('841', '16', 'exit', '15/03/2025', '900', '215889');
INSERT INTO `transactions` VALUES ('842', '3', 'entry', '15/03/2025', '13100', '651603');
INSERT INTO `transactions` VALUES ('843', '3', 'entry', '15/03/2025', '3500', '664703');
INSERT INTO `transactions` VALUES ('844', '3', 'entry', '15/03/2025', '12100', '668203');
INSERT INTO `transactions` VALUES ('845', '3', 'entry', '15/03/2025', '3500', '680303');
INSERT INTO `transactions` VALUES ('846', '3', 'entry', '15/03/2025', '500', '683803');
INSERT INTO `transactions` VALUES ('847', '3', 'entry', '15/03/2025', '3500', '684303');
INSERT INTO `transactions` VALUES ('848', '3', 'entry', '15/03/2025', '3500', '687803');
INSERT INTO `transactions` VALUES ('849', '3', 'entry', '15/03/2025', '3500', '691303');
INSERT INTO `transactions` VALUES ('850', '3', 'entry', '15/03/2025', '1', '694803');
INSERT INTO `transactions` VALUES ('851', '3', 'entry', '15/03/2025', '3500', '694804');
INSERT INTO `transactions` VALUES ('852', '3', 'entry', '15/03/2025', '810', '698304');
INSERT INTO `transactions` VALUES ('853', '3', 'entry', '15/03/2025', '2250', '699114');
INSERT INTO `transactions` VALUES ('854', '1', 'entry', '15/03/2025', '15', '1119935');
INSERT INTO `transactions` VALUES ('855', '9', 'exit', '15/03/2025', '100', '150020');
INSERT INTO `transactions` VALUES ('856', '23', 'exit', '15/03/2025', '215', '42321');
INSERT INTO `transactions` VALUES ('857', '16', 'exit', '15/03/2025', '128', '214989');
INSERT INTO `transactions` VALUES ('858', '1', 'entry', '15/03/2025', '15', '1119950');
INSERT INTO `transactions` VALUES ('859', '16', 'exit', '15/03/2025', '274', '214861');
INSERT INTO `transactions` VALUES ('860', '16', 'exit', '15/03/2025', '400', '214587');
INSERT INTO `transactions` VALUES ('861', '9', 'exit', '15/03/2025', '975', '149920');
INSERT INTO `transactions` VALUES ('862', '9', 'exit', '15/03/2025', '750', '148945');
INSERT INTO `transactions` VALUES ('863', '20', 'entry', '15/03/2025', '810', '171724');
INSERT INTO `transactions` VALUES ('864', '23', 'exit', '15/03/2025', '1130', '42106');
INSERT INTO `transactions` VALUES ('865', '20', 'entry', '15/03/2025', '3250', '172534');
INSERT INTO `transactions` VALUES ('866', '16', 'entry', '15/03/2025', '3500', '214187');
INSERT INTO `transactions` VALUES ('867', '16', 'entry', '15/03/2025', '810', '217687');
INSERT INTO `transactions` VALUES ('868', '23', 'exit', '15/03/2025', '50', '40976');
INSERT INTO `transactions` VALUES ('869', '9', 'exit', '15/03/2025', '800', '148195');
INSERT INTO `transactions` VALUES ('870', '20', 'entry', '15/03/2025', '800', '175784');
INSERT INTO `transactions` VALUES ('871', '16', 'exit', '15/03/2025', '71', '218497');
INSERT INTO `transactions` VALUES ('872', '20', 'exit', '15/03/2025', '400', '176584');
INSERT INTO `transactions` VALUES ('873', '16', 'exit', '15/03/2025', '400', '218426');
INSERT INTO `transactions` VALUES ('874', '3', 'entry', '15/03/2025', '13100', '701364');
INSERT INTO `transactions` VALUES ('875', '3', 'entry', '15/03/2025', '3500', '714464');
INSERT INTO `transactions` VALUES ('876', '3', 'entry', '15/03/2025', '12100', '717964');
INSERT INTO `transactions` VALUES ('877', '3', 'entry', '15/03/2025', '3500', '730064');
INSERT INTO `transactions` VALUES ('878', '3', 'entry', '15/03/2025', '500', '733564');
INSERT INTO `transactions` VALUES ('879', '3', 'entry', '15/03/2025', '3500', '734064');
INSERT INTO `transactions` VALUES ('880', '3', 'entry', '15/03/2025', '3500', '737564');
INSERT INTO `transactions` VALUES ('881', '3', 'entry', '15/03/2025', '3500', '741064');
INSERT INTO `transactions` VALUES ('882', '3', 'entry', '15/03/2025', '1', '744564');
INSERT INTO `transactions` VALUES ('883', '3', 'entry', '15/03/2025', '3500', '744565');
INSERT INTO `transactions` VALUES ('884', '3', 'entry', '15/03/2025', '810', '748065');
INSERT INTO `transactions` VALUES ('885', '3', 'entry', '15/03/2025', '2250', '748875');
INSERT INTO `transactions` VALUES ('886', '16', 'exit', '15/03/2025', '400', '218026');
INSERT INTO `transactions` VALUES ('887', '1', 'entry', '15/03/2025', '15', '1119965');
INSERT INTO `transactions` VALUES ('888', '16', 'exit', '15/03/2025', '59', '217626');
INSERT INTO `transactions` VALUES ('889', '16', 'exit', '15/03/2025', '5000', '217567');
INSERT INTO `transactions` VALUES ('890', '9', 'exit', '15/03/2025', '50', '147395');
INSERT INTO `transactions` VALUES ('891', '1', 'entry', '15/03/2025', '15', '1119980');
INSERT INTO `transactions` VALUES ('892', '20', 'exit', '15/03/2025', '33', '176184');
INSERT INTO `transactions` VALUES ('893', '9', 'exit', '15/03/2025', '250', '147345');
INSERT INTO `transactions` VALUES ('894', '9', 'exit', '15/03/2025', '50', '147095');
INSERT INTO `transactions` VALUES ('895', '20', 'entry', '15/03/2025', '33', '176151');
INSERT INTO `transactions` VALUES ('896', '28', 'exit', '15/03/2025', '500', '5000');
INSERT INTO `transactions` VALUES ('897', '20', 'entry', '15/03/2025', '810', '176184');
INSERT INTO `transactions` VALUES ('898', '20', 'exit', '15/03/2025', '99', '176994');
INSERT INTO `transactions` VALUES ('899', '20', 'entry', '15/03/2025', '3250', '176895');
INSERT INTO `transactions` VALUES ('900', '16', 'entry', '15/03/2025', '3500', '212567');
INSERT INTO `transactions` VALUES ('901', '16', 'entry', '15/03/2025', '810', '216067');
INSERT INTO `transactions` VALUES ('902', '16', 'exit', '15/03/2025', '400', '216877');
INSERT INTO `transactions` VALUES ('903', '23', 'entry', '15/03/2025', '10000', '40926');
INSERT INTO `transactions` VALUES ('904', '1', 'entry', '15/03/2025', '15', '1119995');
INSERT INTO `transactions` VALUES ('905', '29', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('906', '9', 'exit', '15/03/2025', '100', '147045');
INSERT INTO `transactions` VALUES ('907', '12', 'exit', '15/03/2025', '115', '108800');
INSERT INTO `transactions` VALUES ('908', '20', 'exit', '15/03/2025', '250', '180145');
INSERT INTO `transactions` VALUES ('909', '1', 'entry', '15/03/2025', '15', '1120010');
INSERT INTO `transactions` VALUES ('910', '9', 'exit', '15/03/2025', '425', '146945');
INSERT INTO `transactions` VALUES ('911', '4', 'entry', '15/03/2025', '3500', '54450');
INSERT INTO `transactions` VALUES ('912', '20', 'exit', '15/03/2025', '1000', '179895');
INSERT INTO `transactions` VALUES ('913', '9', 'entry', '15/03/2025', '1000', '146520');
INSERT INTO `transactions` VALUES ('914', '16', 'exit', '15/03/2025', '250', '216477');
INSERT INTO `transactions` VALUES ('915', '3', 'entry', '15/03/2025', '13100', '751125');
INSERT INTO `transactions` VALUES ('916', '3', 'entry', '15/03/2025', '3500', '764225');
INSERT INTO `transactions` VALUES ('917', '3', 'entry', '15/03/2025', '12100', '767725');
INSERT INTO `transactions` VALUES ('918', '3', 'entry', '15/03/2025', '3500', '779825');
INSERT INTO `transactions` VALUES ('919', '3', 'entry', '15/03/2025', '500', '783325');
INSERT INTO `transactions` VALUES ('920', '3', 'entry', '15/03/2025', '3500', '783825');
INSERT INTO `transactions` VALUES ('921', '3', 'entry', '15/03/2025', '3500', '787325');
INSERT INTO `transactions` VALUES ('922', '3', 'entry', '15/03/2025', '3500', '790825');
INSERT INTO `transactions` VALUES ('923', '3', 'entry', '15/03/2025', '1', '794325');
INSERT INTO `transactions` VALUES ('924', '3', 'entry', '15/03/2025', '3500', '794326');
INSERT INTO `transactions` VALUES ('925', '3', 'entry', '15/03/2025', '810', '797826');
INSERT INTO `transactions` VALUES ('926', '3', 'entry', '15/03/2025', '2250', '798636');
INSERT INTO `transactions` VALUES ('927', '4', 'entry', '15/03/2025', '13100', '57950');
INSERT INTO `transactions` VALUES ('928', '1', 'entry', '15/03/2025', '20000', '1120025');
INSERT INTO `transactions` VALUES ('929', '9', 'entry', '15/03/2025', '1000', '147520');
INSERT INTO `transactions` VALUES ('930', '20', 'entry', '15/03/2025', '810', '178895');
INSERT INTO `transactions` VALUES ('931', '12', 'entry', '15/03/2025', '1000', '108685');
INSERT INTO `transactions` VALUES ('932', '28', 'exit', '15/03/2025', '1000', '4500');
INSERT INTO `transactions` VALUES ('933', '16', 'exit', '15/03/2025', '100', '216227');
INSERT INTO `transactions` VALUES ('934', '20', 'entry', '15/03/2025', '3250', '179705');
INSERT INTO `transactions` VALUES ('935', '16', 'entry', '15/03/2025', '3500', '216127');
INSERT INTO `transactions` VALUES ('936', '16', 'entry', '15/03/2025', '810', '219627');
INSERT INTO `transactions` VALUES ('937', '9', 'exit', '15/03/2025', '100', '148520');
INSERT INTO `transactions` VALUES ('938', '5', 'exit', '15/03/2025', '50', '84620');
INSERT INTO `transactions` VALUES ('939', '16', 'exit', '15/03/2025', '100', '220437');
INSERT INTO `transactions` VALUES ('940', '4', 'entry', '15/03/2025', '3500', '71050');
INSERT INTO `transactions` VALUES ('941', '23', 'exit', '15/03/2025', '50', '50926');
INSERT INTO `transactions` VALUES ('942', '4', 'exit', '15/03/2025', '190', '74550');
INSERT INTO `transactions` VALUES ('943', '8', 'exit', '15/03/2025', '10000', '70840');
INSERT INTO `transactions` VALUES ('944', '9', 'entry', '15/03/2025', '11100', '148420');
INSERT INTO `transactions` VALUES ('945', '3', 'entry', '15/03/2025', '13100', '800886');
INSERT INTO `transactions` VALUES ('946', '3', 'entry', '15/03/2025', '3500', '813986');
INSERT INTO `transactions` VALUES ('947', '3', 'entry', '15/03/2025', '12100', '817486');
INSERT INTO `transactions` VALUES ('948', '3', 'entry', '15/03/2025', '3500', '829586');
INSERT INTO `transactions` VALUES ('949', '3', 'entry', '15/03/2025', '500', '833086');
INSERT INTO `transactions` VALUES ('950', '3', 'entry', '15/03/2025', '3500', '833586');
INSERT INTO `transactions` VALUES ('951', '3', 'entry', '15/03/2025', '3500', '837086');
INSERT INTO `transactions` VALUES ('952', '3', 'entry', '15/03/2025', '3500', '840586');
INSERT INTO `transactions` VALUES ('953', '3', 'entry', '15/03/2025', '1', '844086');
INSERT INTO `transactions` VALUES ('954', '3', 'entry', '15/03/2025', '3500', '844087');
INSERT INTO `transactions` VALUES ('955', '3', 'entry', '15/03/2025', '810', '847587');
INSERT INTO `transactions` VALUES ('956', '3', 'entry', '15/03/2025', '2250', '848397');
INSERT INTO `transactions` VALUES ('957', '16', 'exit', '15/03/2025', '400', '220337');
INSERT INTO `transactions` VALUES ('958', '18', 'entry', '15/03/2025', '20000', '5000');
INSERT INTO `transactions` VALUES ('959', '1', 'exit', '15/03/2025', '20000', '1140025');
INSERT INTO `transactions` VALUES ('960', '4', 'entry', '15/03/2025', '13100', '74360');
INSERT INTO `transactions` VALUES ('961', '1', 'entry', '15/03/2025', '20000', '1120025');
INSERT INTO `transactions` VALUES ('962', '30', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('963', '5', 'exit', '15/03/2025', '1075', '84570');
INSERT INTO `transactions` VALUES ('964', '5', 'exit', '15/03/2025', '3000', '83495');
INSERT INTO `transactions` VALUES ('965', '5', 'exit', '15/03/2025', '3000', '80495');
INSERT INTO `transactions` VALUES ('966', '5', 'exit', '15/03/2025', '3800', '77495');
INSERT INTO `transactions` VALUES ('967', '5', 'exit', '15/03/2025', '5000', '73695');
INSERT INTO `transactions` VALUES ('968', '5', 'exit', '15/03/2025', '7500', '68695');
INSERT INTO `transactions` VALUES ('969', '5', 'exit', '15/03/2025', '500', '61195');
INSERT INTO `transactions` VALUES ('970', '5', 'exit', '15/03/2025', '500', '60695');
INSERT INTO `transactions` VALUES ('971', '5', 'exit', '15/03/2025', '100', '60195');
INSERT INTO `transactions` VALUES ('972', '3', 'exit', '15/03/2025', '250', '850647');
INSERT INTO `transactions` VALUES ('973', '5', 'exit', '15/03/2025', '120', '60095');
INSERT INTO `transactions` VALUES ('974', '31', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('975', '32', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('976', '5', 'exit', '15/03/2025', '45', '59975');
INSERT INTO `transactions` VALUES ('977', '5', 'exit', '15/03/2025', '45', '59930');
INSERT INTO `transactions` VALUES ('978', '5', 'exit', '15/03/2025', '45', '59885');
INSERT INTO `transactions` VALUES ('979', '5', 'entry', '15/03/2025', '12100', '59840');
INSERT INTO `transactions` VALUES ('980', '4', 'entry', '15/03/2025', '3500', '87460');
INSERT INTO `transactions` VALUES ('981', '23', 'entry', '15/03/2025', '3000', '50876');
INSERT INTO `transactions` VALUES ('982', '23', 'exit', '15/03/2025', '150', '53876');
INSERT INTO `transactions` VALUES ('983', '9', 'entry', '15/03/2025', '11100', '159520');
INSERT INTO `transactions` VALUES ('984', '23', 'exit', '15/03/2025', '300', '53726');
INSERT INTO `transactions` VALUES ('985', '3', 'entry', '15/03/2025', '13100', '850397');
INSERT INTO `transactions` VALUES ('986', '3', 'entry', '15/03/2025', '3500', '863497');
INSERT INTO `transactions` VALUES ('987', '3', 'entry', '15/03/2025', '12100', '866997');
INSERT INTO `transactions` VALUES ('988', '3', 'entry', '15/03/2025', '3500', '879097');
INSERT INTO `transactions` VALUES ('989', '3', 'entry', '15/03/2025', '500', '882597');
INSERT INTO `transactions` VALUES ('990', '3', 'entry', '15/03/2025', '3500', '883097');
INSERT INTO `transactions` VALUES ('991', '3', 'entry', '15/03/2025', '3500', '886597');
INSERT INTO `transactions` VALUES ('992', '3', 'entry', '15/03/2025', '3500', '890097');
INSERT INTO `transactions` VALUES ('993', '3', 'entry', '15/03/2025', '1', '893597');
INSERT INTO `transactions` VALUES ('994', '3', 'entry', '15/03/2025', '3500', '893598');
INSERT INTO `transactions` VALUES ('995', '3', 'entry', '15/03/2025', '810', '897098');
INSERT INTO `transactions` VALUES ('996', '3', 'entry', '15/03/2025', '2250', '897908');
INSERT INTO `transactions` VALUES ('997', '4', 'entry', '15/03/2025', '13100', '90960');
INSERT INTO `transactions` VALUES ('998', '1', 'entry', '15/03/2025', '20000', '1140025');
INSERT INTO `transactions` VALUES ('999', '23', 'exit', '15/03/2025', '610', '53426');
INSERT INTO `transactions` VALUES ('1000', '29', 'exit', '15/03/2025', '710', '5000');
INSERT INTO `transactions` VALUES ('1001', '5', 'entry', '15/03/2025', '12100', '71940');
INSERT INTO `transactions` VALUES ('1002', '23', 'entry', '15/03/2025', '3000', '52816');
INSERT INTO `transactions` VALUES ('1003', '33', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1004', '5', 'exit', '15/03/2025', '50', '84040');
INSERT INTO `transactions` VALUES ('1005', '29', 'exit', '15/03/2025', '500', '4290');
INSERT INTO `transactions` VALUES ('1006', '5', 'exit', '15/03/2025', '100', '83990');
INSERT INTO `transactions` VALUES ('1007', '29', 'exit', '15/03/2025', '200', '3790');
INSERT INTO `transactions` VALUES ('1008', '3', 'exit', '15/03/2025', '250', '900158');
INSERT INTO `transactions` VALUES ('1009', '4', 'exit', '15/03/2025', '2000', '104060');
INSERT INTO `transactions` VALUES ('1010', '23', 'exit', '15/03/2025', '320', '55816');
INSERT INTO `transactions` VALUES ('1011', '5', 'exit', '15/03/2025', '100', '83890');
INSERT INTO `transactions` VALUES ('1012', '5', 'exit', '15/03/2025', '1000', '83790');
INSERT INTO `transactions` VALUES ('1013', '4', 'entry', '15/03/2025', '13100', '102060');
INSERT INTO `transactions` VALUES ('1014', '4', 'entry', '15/03/2025', '3500', '115160');
INSERT INTO `transactions` VALUES ('1015', '5', 'exit', '15/03/2025', '2500', '82790');
INSERT INTO `transactions` VALUES ('1016', '5', 'exit', '15/03/2025', '3500', '80290');
INSERT INTO `transactions` VALUES ('1017', '5', 'exit', '15/03/2025', '320', '76790');
INSERT INTO `transactions` VALUES ('1018', '23', 'entry', '15/03/2025', '3000', '55496');
INSERT INTO `transactions` VALUES ('1019', '5', 'exit', '15/03/2025', '1000', '76470');
INSERT INTO `transactions` VALUES ('1020', '5', 'exit', '15/03/2025', '2500', '75470');
INSERT INTO `transactions` VALUES ('1021', '5', 'exit', '15/03/2025', '3500', '72970');
INSERT INTO `transactions` VALUES ('1022', '29', 'exit', '15/03/2025', '600', '3590');
INSERT INTO `transactions` VALUES ('1023', '5', 'exit', '15/03/2025', '100', '69470');
INSERT INTO `transactions` VALUES ('1024', '5', 'exit', '15/03/2025', '100', '69370');
INSERT INTO `transactions` VALUES ('1025', '9', 'exit', '15/03/2025', '400', '170620');
INSERT INTO `transactions` VALUES ('1026', '5', 'exit', '15/03/2025', '100', '69270');
INSERT INTO `transactions` VALUES ('1027', '5', 'exit', '15/03/2025', '100', '69170');
INSERT INTO `transactions` VALUES ('1028', '12', 'exit', '15/03/2025', '135', '109685');
INSERT INTO `transactions` VALUES ('1029', '3', 'entry', '15/03/2025', '3500', '899908');
INSERT INTO `transactions` VALUES ('1030', '3', 'entry', '15/03/2025', '3500', '903408');
INSERT INTO `transactions` VALUES ('1031', '3', 'entry', '15/03/2025', '500', '906908');
INSERT INTO `transactions` VALUES ('1032', '3', 'entry', '15/03/2025', '3500', '907408');
INSERT INTO `transactions` VALUES ('1033', '3', 'entry', '15/03/2025', '3500', '910908');
INSERT INTO `transactions` VALUES ('1034', '3', 'entry', '15/03/2025', '3500', '914408');
INSERT INTO `transactions` VALUES ('1035', '3', 'entry', '15/03/2025', '1', '917908');
INSERT INTO `transactions` VALUES ('1036', '3', 'entry', '15/03/2025', '3500', '917909');
INSERT INTO `transactions` VALUES ('1037', '3', 'entry', '15/03/2025', '810', '921409');
INSERT INTO `transactions` VALUES ('1038', '3', 'entry', '15/03/2025', '2250', '922219');
INSERT INTO `transactions` VALUES ('1039', '12', 'entry', '15/03/2025', '135', '109550');
INSERT INTO `transactions` VALUES ('1040', '12', 'exit', '15/03/2025', '175', '109685');
INSERT INTO `transactions` VALUES ('1041', '5', 'exit', '15/03/2025', '300', '69070');
INSERT INTO `transactions` VALUES ('1042', '5', 'exit', '15/03/2025', '60', '68770');
INSERT INTO `transactions` VALUES ('1043', '12', 'entry', '15/03/2025', '175', '109510');
INSERT INTO `transactions` VALUES ('1044', '11', 'exit', '15/03/2025', '17100', '27100');
INSERT INTO `transactions` VALUES ('1045', '11', 'exit', '15/03/2025', '3800', '10000');
INSERT INTO `transactions` VALUES ('1046', '5', 'exit', '15/03/2025', '240', '68710');
INSERT INTO `transactions` VALUES ('1047', '11', 'exit', '15/03/2025', '2300', '6200');
INSERT INTO `transactions` VALUES ('1048', '5', 'entry', '15/03/2025', '13100', '68470');
INSERT INTO `transactions` VALUES ('1049', '5', 'entry', '15/03/2025', '12100', '81570');
INSERT INTO `transactions` VALUES ('1050', '1', 'entry', '15/03/2025', '20000', '1160025');
INSERT INTO `transactions` VALUES ('1051', '11', 'exit', '15/03/2025', '30', '3900');
INSERT INTO `transactions` VALUES ('1052', '11', 'exit', '15/03/2025', '500', '3870');
INSERT INTO `transactions` VALUES ('1053', '8', 'exit', '15/03/2025', '50', '60840');
INSERT INTO `transactions` VALUES ('1054', '11', 'exit', '15/03/2025', '25', '3370');
INSERT INTO `transactions` VALUES ('1055', '11', 'exit', '15/03/2025', '3000', '3345');
INSERT INTO `transactions` VALUES ('1056', '11', 'entry', '15/03/2025', '12100', '345');
INSERT INTO `transactions` VALUES ('1057', '1', 'exit', '15/03/2025', '400', '1180025');
INSERT INTO `transactions` VALUES ('1058', '4', 'exit', '15/03/2025', '400', '118660');
INSERT INTO `transactions` VALUES ('1059', '1', 'entry', '15/03/2025', '400', '1179625');
INSERT INTO `transactions` VALUES ('1060', '4', 'entry', '15/03/2025', '13100', '118260');
INSERT INTO `transactions` VALUES ('1061', '4', 'entry', '15/03/2025', '3500', '131360');
INSERT INTO `transactions` VALUES ('1062', '1', 'exit', '15/03/2025', '400', '1180025');
INSERT INTO `transactions` VALUES ('1063', '18', 'entry', '15/03/2025', '1754', '25000');
INSERT INTO `transactions` VALUES ('1064', '23', 'entry', '15/03/2025', '3000', '58496');
INSERT INTO `transactions` VALUES ('1065', '3', 'exit', '15/03/2025', '900', '924469');
INSERT INTO `transactions` VALUES ('1066', '1', 'entry', '15/03/2025', '900', '1179625');
INSERT INTO `transactions` VALUES ('1067', '5', 'exit', '15/03/2025', '760', '93670');
INSERT INTO `transactions` VALUES ('1068', '5', 'exit', '15/03/2025', '300', '92910');
INSERT INTO `transactions` VALUES ('1069', '3', 'entry', '15/03/2025', '3500', '923569');
INSERT INTO `transactions` VALUES ('1070', '3', 'entry', '15/03/2025', '3500', '927069');
INSERT INTO `transactions` VALUES ('1071', '3', 'entry', '15/03/2025', '500', '930569');
INSERT INTO `transactions` VALUES ('1072', '3', 'entry', '15/03/2025', '3500', '931069');
INSERT INTO `transactions` VALUES ('1073', '3', 'entry', '15/03/2025', '3500', '934569');
INSERT INTO `transactions` VALUES ('1074', '3', 'entry', '15/03/2025', '3500', '938069');
INSERT INTO `transactions` VALUES ('1075', '3', 'entry', '15/03/2025', '1', '941569');
INSERT INTO `transactions` VALUES ('1076', '3', 'entry', '15/03/2025', '3500', '941570');
INSERT INTO `transactions` VALUES ('1077', '3', 'entry', '15/03/2025', '810', '945070');
INSERT INTO `transactions` VALUES ('1078', '3', 'entry', '15/03/2025', '2250', '945880');
INSERT INTO `transactions` VALUES ('1079', '28', 'exit', '15/03/2025', '50', '3500');
INSERT INTO `transactions` VALUES ('1080', '5', 'entry', '15/03/2025', '13100', '92610');
INSERT INTO `transactions` VALUES ('1081', '5', 'entry', '15/03/2025', '12100', '105710');
INSERT INTO `transactions` VALUES ('1082', '1', 'exit', '15/03/2025', '177', '1180525');
INSERT INTO `transactions` VALUES ('1083', '8', 'entry', '15/03/2025', '12100', '60790');
INSERT INTO `transactions` VALUES ('1084', '1', 'entry', '15/03/2025', '177', '1180348');
INSERT INTO `transactions` VALUES ('1085', '5', 'exit', '15/03/2025', '200', '117810');
INSERT INTO `transactions` VALUES ('1086', '11', 'entry', '15/03/2025', '12100', '12445');
INSERT INTO `transactions` VALUES ('1087', '8', 'exit', '15/03/2025', '150', '72890');
INSERT INTO `transactions` VALUES ('1088', '5', 'exit', '15/03/2025', '500', '117610');
INSERT INTO `transactions` VALUES ('1089', '8', 'exit', '15/03/2025', '100', '72740');
INSERT INTO `transactions` VALUES ('1090', '9', 'exit', '15/03/2025', '250', '170220');
INSERT INTO `transactions` VALUES ('1091', '3', 'exit', '15/03/2025', '980', '948130');
INSERT INTO `transactions` VALUES ('1092', '1', 'exit', '15/03/2025', '400', '1180525');
INSERT INTO `transactions` VALUES ('1093', '5', 'exit', '15/03/2025', '1175', '117110');
INSERT INTO `transactions` VALUES ('1094', '5', 'exit', '15/03/2025', '40', '115935');
INSERT INTO `transactions` VALUES ('1095', '11', 'exit', '15/03/2025', '25', '24545');
INSERT INTO `transactions` VALUES ('1096', '5', 'exit', '15/03/2025', '11000', '115895');
INSERT INTO `transactions` VALUES ('1097', '11', 'exit', '15/03/2025', '50', '24520');
INSERT INTO `transactions` VALUES ('1098', '34', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1099', '3', 'entry', '15/03/2025', '3500', '947150');
INSERT INTO `transactions` VALUES ('1100', '3', 'entry', '15/03/2025', '3500', '950650');
INSERT INTO `transactions` VALUES ('1101', '3', 'entry', '15/03/2025', '500', '954150');
INSERT INTO `transactions` VALUES ('1102', '3', 'entry', '15/03/2025', '3500', '954650');
INSERT INTO `transactions` VALUES ('1103', '3', 'entry', '15/03/2025', '3500', '958150');
INSERT INTO `transactions` VALUES ('1104', '3', 'entry', '15/03/2025', '3500', '961650');
INSERT INTO `transactions` VALUES ('1105', '3', 'entry', '15/03/2025', '1', '965150');
INSERT INTO `transactions` VALUES ('1106', '3', 'entry', '15/03/2025', '3500', '965151');
INSERT INTO `transactions` VALUES ('1107', '3', 'entry', '15/03/2025', '810', '968651');
INSERT INTO `transactions` VALUES ('1108', '3', 'entry', '15/03/2025', '2250', '969461');
INSERT INTO `transactions` VALUES ('1109', '11', 'exit', '15/03/2025', '150', '24470');
INSERT INTO `transactions` VALUES ('1110', '1', 'entry', '15/03/2025', '20000', '1180125');
INSERT INTO `transactions` VALUES ('1111', '23', 'exit', '15/03/2025', '50', '61496');
INSERT INTO `transactions` VALUES ('1112', '1', 'entry', '15/03/2025', '3500', '1200125');
INSERT INTO `transactions` VALUES ('1113', '35', 'entry', '15/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1114', '8', 'entry', '15/03/2025', '12100', '72640');
INSERT INTO `transactions` VALUES ('1115', '23', 'exit', '15/03/2025', '250', '61446');
INSERT INTO `transactions` VALUES ('1116', '12', 'exit', '15/03/2025', '90', '109685');
INSERT INTO `transactions` VALUES ('1117', '8', 'exit', '15/03/2025', '45', '84740');
INSERT INTO `transactions` VALUES ('1118', '8', 'exit', '15/03/2025', '45', '84695');
INSERT INTO `transactions` VALUES ('1119', '8', 'exit', '15/03/2025', '45', '84650');
INSERT INTO `transactions` VALUES ('1120', '8', 'exit', '15/03/2025', '45', '84605');
INSERT INTO `transactions` VALUES ('1121', '8', 'exit', '15/03/2025', '15', '84560');
INSERT INTO `transactions` VALUES ('1122', '23', 'exit', '15/03/2025', '450', '61196');
INSERT INTO `transactions` VALUES ('1123', '8', 'exit', '15/03/2025', '65', '84545');
INSERT INTO `transactions` VALUES ('1124', '4', 'entry', '15/03/2025', '13100', '134860');
INSERT INTO `transactions` VALUES ('1125', '4', 'entry', '15/03/2025', '3500', '147960');
INSERT INTO `transactions` VALUES ('1126', '8', 'exit', '15/03/2025', '65', '84480');
INSERT INTO `transactions` VALUES ('1127', '8', 'exit', '15/03/2025', '65', '84415');
INSERT INTO `transactions` VALUES ('1128', '8', 'exit', '15/03/2025', '30', '84350');
INSERT INTO `transactions` VALUES ('1129', '8', 'exit', '15/03/2025', '350', '84320');
INSERT INTO `transactions` VALUES ('1130', '8', 'exit', '15/03/2025', '350', '83970');
INSERT INTO `transactions` VALUES ('1131', '9', 'entry', '15/03/2025', '11100', '169970');
INSERT INTO `transactions` VALUES ('1132', '11', 'exit', '15/03/2025', '100', '24320');
INSERT INTO `transactions` VALUES ('1133', '11', 'entry', '15/03/2025', '12100', '24220');
INSERT INTO `transactions` VALUES ('1134', '12', 'exit', '15/03/2025', '710', '109595');
INSERT INTO `transactions` VALUES ('1135', '3', 'entry', '15/03/2025', '3500', '971711');
INSERT INTO `transactions` VALUES ('1136', '3', 'entry', '15/03/2025', '3500', '975211');
INSERT INTO `transactions` VALUES ('1137', '3', 'entry', '15/03/2025', '500', '978711');
INSERT INTO `transactions` VALUES ('1138', '3', 'entry', '15/03/2025', '3500', '979211');
INSERT INTO `transactions` VALUES ('1139', '3', 'entry', '15/03/2025', '3500', '982711');
INSERT INTO `transactions` VALUES ('1140', '3', 'entry', '15/03/2025', '3500', '986211');
INSERT INTO `transactions` VALUES ('1141', '3', 'entry', '15/03/2025', '1', '989711');
INSERT INTO `transactions` VALUES ('1142', '3', 'entry', '15/03/2025', '3500', '989712');
INSERT INTO `transactions` VALUES ('1143', '3', 'entry', '15/03/2025', '810', '993212');
INSERT INTO `transactions` VALUES ('1144', '3', 'entry', '15/03/2025', '2250', '994022');
INSERT INTO `transactions` VALUES ('1145', '23', 'entry', '15/03/2025', '3000', '60746');
INSERT INTO `transactions` VALUES ('1146', '11', 'exit', '15/03/2025', '100', '36320');
INSERT INTO `transactions` VALUES ('1147', '11', 'exit', '15/03/2025', '100', '36220');
INSERT INTO `transactions` VALUES ('1148', '8', 'entry', '15/03/2025', '12100', '83620');
INSERT INTO `transactions` VALUES ('1149', '1', 'entry', '15/03/2025', '3500', '1203625');
INSERT INTO `transactions` VALUES ('1150', '1', 'entry', '15/03/2025', '20000', '1207125');
INSERT INTO `transactions` VALUES ('1151', '8', 'exit', '15/03/2025', '50', '95720');
INSERT INTO `transactions` VALUES ('1152', '28', 'exit', '15/03/2025', '400', '3450');
INSERT INTO `transactions` VALUES ('1153', '8', 'exit', '15/03/2025', '350', '95670');
INSERT INTO `transactions` VALUES ('1154', '8', 'exit', '15/03/2025', '100', '95320');
INSERT INTO `transactions` VALUES ('1155', '8', 'entry', '16/03/2025', '1000', '95220');
INSERT INTO `transactions` VALUES ('1156', '23', 'exit', '16/03/2025', '1000', '63746');
INSERT INTO `transactions` VALUES ('1157', '23', 'exit', '16/03/2025', '50', '62746');
INSERT INTO `transactions` VALUES ('1158', '12', 'exit', '16/03/2025', '175', '108885');
INSERT INTO `transactions` VALUES ('1159', '1', 'entry', '16/03/2025', '15', '1227125');
INSERT INTO `transactions` VALUES ('1160', '12', 'exit', '16/03/2025', '175', '108710');
INSERT INTO `transactions` VALUES ('1161', '1', 'entry', '16/03/2025', '15', '1227140');
INSERT INTO `transactions` VALUES ('1162', '12', 'exit', '16/03/2025', '100', '108535');
INSERT INTO `transactions` VALUES ('1163', '9', 'exit', '16/03/2025', '50', '181070');
INSERT INTO `transactions` VALUES ('1164', '23', 'exit', '16/03/2025', '100', '62696');
INSERT INTO `transactions` VALUES ('1165', '23', 'exit', '16/03/2025', '100', '62596');
INSERT INTO `transactions` VALUES ('1166', '23', 'exit', '16/03/2025', '100', '62496');
INSERT INTO `transactions` VALUES ('1167', '9', 'entry', '16/03/2025', '11100', '181020');
INSERT INTO `transactions` VALUES ('1168', '1', 'entry', '16/03/2025', '20000', '1227155');
INSERT INTO `transactions` VALUES ('1169', '1', 'entry', '16/03/2025', '13100', '1247155');
INSERT INTO `transactions` VALUES ('1170', '23', 'entry', '16/03/2025', '3000', '62396');
INSERT INTO `transactions` VALUES ('1171', '23', 'exit', '16/03/2025', '100', '65396');
INSERT INTO `transactions` VALUES ('1172', '3', 'entry', '16/03/2025', '2250', '996272');
INSERT INTO `transactions` VALUES ('1173', '3', 'entry', '16/03/2025', '3500', '998522');
INSERT INTO `transactions` VALUES ('1174', '3', 'entry', '16/03/2025', '1', '1002022');
INSERT INTO `transactions` VALUES ('1175', '3', 'entry', '16/03/2025', '500', '1002023');
INSERT INTO `transactions` VALUES ('1176', '3', 'entry', '16/03/2025', '810', '1002523');
INSERT INTO `transactions` VALUES ('1177', '3', 'entry', '16/03/2025', '3500', '1003333');
INSERT INTO `transactions` VALUES ('1178', '3', 'entry', '16/03/2025', '3500', '1006833');
INSERT INTO `transactions` VALUES ('1179', '3', 'entry', '16/03/2025', '3500', '1010333');
INSERT INTO `transactions` VALUES ('1180', '3', 'entry', '16/03/2025', '3500', '1013833');
INSERT INTO `transactions` VALUES ('1181', '3', 'entry', '16/03/2025', '3500', '1017333');
INSERT INTO `transactions` VALUES ('1182', '3', 'exit', '16/03/2025', '400', '1020833');
INSERT INTO `transactions` VALUES ('1183', '8', 'entry', '16/03/2025', '12100', '96220');
INSERT INTO `transactions` VALUES ('1184', '8', 'exit', '16/03/2025', '15', '108320');
INSERT INTO `transactions` VALUES ('1185', '3', 'exit', '16/03/2025', '260', '1020433');
INSERT INTO `transactions` VALUES ('1186', '9', 'exit', '16/03/2025', '319', '192120');
INSERT INTO `transactions` VALUES ('1187', '9', 'exit', '16/03/2025', '400', '191801');
INSERT INTO `transactions` VALUES ('1188', '36', 'entry', '16/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1189', '23', 'exit', '16/03/2025', '400', '65296');
INSERT INTO `transactions` VALUES ('1190', '9', 'exit', '16/03/2025', '50', '191401');
INSERT INTO `transactions` VALUES ('1191', '12', 'entry', '16/03/2025', '10100', '108435');
INSERT INTO `transactions` VALUES ('1192', '12', 'exit', '16/03/2025', '100', '118535');
INSERT INTO `transactions` VALUES ('1193', '9', 'entry', '16/03/2025', '11100', '191351');
INSERT INTO `transactions` VALUES ('1194', '1', 'entry', '16/03/2025', '20000', '1260255');
INSERT INTO `transactions` VALUES ('1195', '1', 'entry', '16/03/2025', '13100', '1280255');
INSERT INTO `transactions` VALUES ('1196', '23', 'entry', '16/03/2025', '3000', '64896');
INSERT INTO `transactions` VALUES ('1197', '8', 'exit', '16/03/2025', '700', '108305');
INSERT INTO `transactions` VALUES ('1198', '8', 'exit', '16/03/2025', '195', '107605');
INSERT INTO `transactions` VALUES ('1199', '8', 'exit', '16/03/2025', '400', '107410');
INSERT INTO `transactions` VALUES ('1200', '3', 'entry', '16/03/2025', '2250', '1020173');
INSERT INTO `transactions` VALUES ('1201', '3', 'entry', '16/03/2025', '3500', '1022423');
INSERT INTO `transactions` VALUES ('1202', '3', 'entry', '16/03/2025', '1', '1025923');
INSERT INTO `transactions` VALUES ('1203', '3', 'entry', '16/03/2025', '500', '1025924');
INSERT INTO `transactions` VALUES ('1204', '3', 'entry', '16/03/2025', '810', '1026424');
INSERT INTO `transactions` VALUES ('1205', '3', 'entry', '16/03/2025', '3500', '1027234');
INSERT INTO `transactions` VALUES ('1206', '3', 'entry', '16/03/2025', '3500', '1030734');
INSERT INTO `transactions` VALUES ('1207', '3', 'entry', '16/03/2025', '3500', '1034234');
INSERT INTO `transactions` VALUES ('1208', '3', 'entry', '16/03/2025', '3500', '1037734');
INSERT INTO `transactions` VALUES ('1209', '3', 'entry', '16/03/2025', '3500', '1041234');
INSERT INTO `transactions` VALUES ('1210', '9', 'exit', '16/03/2025', '50', '202451');
INSERT INTO `transactions` VALUES ('1211', '8', 'entry', '16/03/2025', '12100', '107010');
INSERT INTO `transactions` VALUES ('1212', '12', 'exit', '16/03/2025', '910', '118435');
INSERT INTO `transactions` VALUES ('1213', '9', 'exit', '16/03/2025', '1000', '202401');
INSERT INTO `transactions` VALUES ('1214', '9', 'exit', '16/03/2025', '50', '201401');
INSERT INTO `transactions` VALUES ('1215', '9', 'exit', '16/03/2025', '50', '201351');
INSERT INTO `transactions` VALUES ('1216', '10', 'exit', '16/03/2025', '50', '80607');
INSERT INTO `transactions` VALUES ('1217', '8', 'entry', '16/03/2025', '12500', '119110');
INSERT INTO `transactions` VALUES ('1218', '1', 'exit', '16/03/2025', '12500', '1293355');
INSERT INTO `transactions` VALUES ('1219', '10', 'exit', '16/03/2025', '100', '80557');
INSERT INTO `transactions` VALUES ('1220', '10', 'exit', '16/03/2025', '50', '80457');
INSERT INTO `transactions` VALUES ('1221', '10', 'exit', '16/03/2025', '50', '80407');
INSERT INTO `transactions` VALUES ('1222', '12', 'exit', '16/03/2025', '330', '117525');
INSERT INTO `transactions` VALUES ('1223', '9', 'entry', '16/03/2025', '11100', '201301');
INSERT INTO `transactions` VALUES ('1224', '1', 'entry', '16/03/2025', '20000', '1280855');
INSERT INTO `transactions` VALUES ('1225', '1', 'entry', '16/03/2025', '13100', '1300855');
INSERT INTO `transactions` VALUES ('1226', '23', 'entry', '16/03/2025', '3000', '67896');
INSERT INTO `transactions` VALUES ('1227', '9', 'exit', '16/03/2025', '195', '212401');
INSERT INTO `transactions` VALUES ('1228', '23', 'exit', '16/03/2025', '663', '70896');
INSERT INTO `transactions` VALUES ('1229', '9', 'entry', '16/03/2025', '663', '212206');
INSERT INTO `transactions` VALUES ('1230', '10', 'exit', '16/03/2025', '50', '80357');
INSERT INTO `transactions` VALUES ('1231', '3', 'entry', '16/03/2025', '2250', '1044734');
INSERT INTO `transactions` VALUES ('1232', '3', 'entry', '16/03/2025', '3500', '1046984');
INSERT INTO `transactions` VALUES ('1233', '3', 'entry', '16/03/2025', '1', '1050484');
INSERT INTO `transactions` VALUES ('1234', '3', 'entry', '16/03/2025', '500', '1050485');
INSERT INTO `transactions` VALUES ('1235', '3', 'entry', '16/03/2025', '810', '1050985');
INSERT INTO `transactions` VALUES ('1236', '3', 'entry', '16/03/2025', '3500', '1051795');
INSERT INTO `transactions` VALUES ('1237', '3', 'entry', '16/03/2025', '3500', '1055295');
INSERT INTO `transactions` VALUES ('1238', '3', 'entry', '16/03/2025', '3500', '1058795');
INSERT INTO `transactions` VALUES ('1239', '3', 'entry', '16/03/2025', '3500', '1062295');
INSERT INTO `transactions` VALUES ('1240', '3', 'entry', '16/03/2025', '3500', '1065795');
INSERT INTO `transactions` VALUES ('1241', '10', 'entry', '16/03/2025', '50000', '80307');
INSERT INTO `transactions` VALUES ('1242', '3', 'exit', '16/03/2025', '50000', '1069295');
INSERT INTO `transactions` VALUES ('1243', '8', 'exit', '16/03/2025', '100', '131610');
INSERT INTO `transactions` VALUES ('1244', '8', 'exit', '16/03/2025', '100', '131510');
INSERT INTO `transactions` VALUES ('1245', '8', 'exit', '16/03/2025', '100', '131410');
INSERT INTO `transactions` VALUES ('1246', '8', 'entry', '16/03/2025', '12100', '131310');
INSERT INTO `transactions` VALUES ('1247', '8', 'exit', '16/03/2025', '100', '143410');
INSERT INTO `transactions` VALUES ('1248', '23', 'exit', '16/03/2025', '1000', '70233');
INSERT INTO `transactions` VALUES ('1249', '9', 'entry', '16/03/2025', '1000', '212869');
INSERT INTO `transactions` VALUES ('1250', '8', 'exit', '16/03/2025', '50', '143310');
INSERT INTO `transactions` VALUES ('1251', '8', 'exit', '16/03/2025', '400', '143260');
INSERT INTO `transactions` VALUES ('1252', '9', 'exit', '16/03/2025', '45', '213869');
INSERT INTO `transactions` VALUES ('1253', '10', 'exit', '16/03/2025', '2000', '130307');
INSERT INTO `transactions` VALUES ('1254', '1', 'exit', '16/03/2025', '1000', '1313955');
INSERT INTO `transactions` VALUES ('1255', '1', 'exit', '16/03/2025', '700', '1312955');
INSERT INTO `transactions` VALUES ('1256', '1', 'exit', '16/03/2025', '100', '1312255');
INSERT INTO `transactions` VALUES ('1257', '1', 'exit', '16/03/2025', '100', '1312155');
INSERT INTO `transactions` VALUES ('1258', '1', 'exit', '16/03/2025', '100', '1312055');
INSERT INTO `transactions` VALUES ('1259', '1', 'entry', '16/03/2025', '20000', '1311955');
INSERT INTO `transactions` VALUES ('1260', '1', 'entry', '16/03/2025', '13100', '1331955');
INSERT INTO `transactions` VALUES ('1261', '23', 'entry', '16/03/2025', '3000', '69233');
INSERT INTO `transactions` VALUES ('1262', '9', 'exit', '16/03/2025', '125', '213824');
INSERT INTO `transactions` VALUES ('1263', '3', 'entry', '16/03/2025', '2250', '1019295');
INSERT INTO `transactions` VALUES ('1264', '3', 'entry', '16/03/2025', '3500', '1021545');
INSERT INTO `transactions` VALUES ('1265', '3', 'entry', '16/03/2025', '1', '1025045');
INSERT INTO `transactions` VALUES ('1266', '3', 'entry', '16/03/2025', '500', '1025046');
INSERT INTO `transactions` VALUES ('1267', '3', 'entry', '16/03/2025', '810', '1025546');
INSERT INTO `transactions` VALUES ('1268', '3', 'entry', '16/03/2025', '3500', '1026356');
INSERT INTO `transactions` VALUES ('1269', '3', 'entry', '16/03/2025', '3500', '1029856');
INSERT INTO `transactions` VALUES ('1270', '3', 'entry', '16/03/2025', '3500', '1033356');
INSERT INTO `transactions` VALUES ('1271', '3', 'entry', '16/03/2025', '3500', '1036856');
INSERT INTO `transactions` VALUES ('1272', '3', 'entry', '16/03/2025', '3500', '1040356');
INSERT INTO `transactions` VALUES ('1273', '8', 'entry', '16/03/2025', '12100', '142860');
INSERT INTO `transactions` VALUES ('1274', '9', 'exit', '16/03/2025', '327', '213699');
INSERT INTO `transactions` VALUES ('1275', '23', 'exit', '16/03/2025', '327', '72233');
INSERT INTO `transactions` VALUES ('1276', '10', 'exit', '16/03/2025', '400', '128307');
INSERT INTO `transactions` VALUES ('1277', '37', 'entry', '16/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1278', '8', 'exit', '16/03/2025', '1000', '154960');
INSERT INTO `transactions` VALUES ('1279', '23', 'entry', '16/03/2025', '3000', '71906');
INSERT INTO `transactions` VALUES ('1280', '1', 'exit', '16/03/2025', '1190', '1345055');
INSERT INTO `transactions` VALUES ('1281', '10', 'exit', '16/03/2025', '50', '127907');
INSERT INTO `transactions` VALUES ('1282', '8', 'exit', '16/03/2025', '30', '153960');
INSERT INTO `transactions` VALUES ('1283', '8', 'exit', '16/03/2025', '425', '153930');
INSERT INTO `transactions` VALUES ('1284', '8', 'exit', '16/03/2025', '350', '153505');
INSERT INTO `transactions` VALUES ('1285', '8', 'exit', '16/03/2025', '120', '153155');
INSERT INTO `transactions` VALUES ('1286', '1', 'exit', '16/03/2025', '150', '1343865');
INSERT INTO `transactions` VALUES ('1287', '8', 'exit', '16/03/2025', '120', '153035');
INSERT INTO `transactions` VALUES ('1288', '10', 'exit', '16/03/2025', '50', '127857');
INSERT INTO `transactions` VALUES ('1289', '8', 'exit', '16/03/2025', '1000', '152915');
INSERT INTO `transactions` VALUES ('1290', '8', 'exit', '16/03/2025', '2500', '151915');
INSERT INTO `transactions` VALUES ('1291', '8', 'exit', '16/03/2025', '3500', '149415');
INSERT INTO `transactions` VALUES ('1292', '9', 'exit', '16/03/2025', '50', '213372');
INSERT INTO `transactions` VALUES ('1293', '9', 'exit', '16/03/2025', '50', '213322');
INSERT INTO `transactions` VALUES ('1294', '3', 'exit', '16/03/2025', '500', '1043856');
INSERT INTO `transactions` VALUES ('1295', '1', 'entry', '16/03/2025', '13100', '1343715');
INSERT INTO `transactions` VALUES ('1296', '1', 'entry', '16/03/2025', '20000', '1356815');
INSERT INTO `transactions` VALUES ('1297', '1', 'exit', '16/03/2025', '150', '1376815');
INSERT INTO `transactions` VALUES ('1298', '8', 'entry', '16/03/2025', '12100', '145915');
INSERT INTO `transactions` VALUES ('1299', '1', 'exit', '16/03/2025', '300', '1376665');
INSERT INTO `transactions` VALUES ('1300', '23', 'entry', '16/03/2025', '3000', '74906');
INSERT INTO `transactions` VALUES ('1301', '3', 'entry', '16/03/2025', '2250', '1043356');
INSERT INTO `transactions` VALUES ('1302', '3', 'entry', '16/03/2025', '3500', '1045606');
INSERT INTO `transactions` VALUES ('1303', '3', 'entry', '16/03/2025', '1', '1049106');
INSERT INTO `transactions` VALUES ('1304', '3', 'entry', '16/03/2025', '500', '1049107');
INSERT INTO `transactions` VALUES ('1305', '3', 'entry', '16/03/2025', '810', '1049607');
INSERT INTO `transactions` VALUES ('1306', '3', 'entry', '16/03/2025', '3500', '1050417');
INSERT INTO `transactions` VALUES ('1307', '3', 'entry', '16/03/2025', '3500', '1053917');
INSERT INTO `transactions` VALUES ('1308', '3', 'entry', '16/03/2025', '3500', '1057417');
INSERT INTO `transactions` VALUES ('1309', '3', 'entry', '16/03/2025', '3500', '1060917');
INSERT INTO `transactions` VALUES ('1310', '3', 'entry', '16/03/2025', '3500', '1064417');
INSERT INTO `transactions` VALUES ('1311', '23', 'exit', '16/03/2025', '25', '77906');
INSERT INTO `transactions` VALUES ('1312', '9', 'exit', '16/03/2025', '750', '213272');
INSERT INTO `transactions` VALUES ('1313', '9', 'exit', '16/03/2025', '400', '212522');
INSERT INTO `transactions` VALUES ('1314', '8', 'exit', '16/03/2025', '45', '158015');
INSERT INTO `transactions` VALUES ('1315', '8', 'exit', '16/03/2025', '25', '157970');
INSERT INTO `transactions` VALUES ('1316', '1', 'exit', '16/03/2025', '500', '1376365');
INSERT INTO `transactions` VALUES ('1317', '8', 'exit', '16/03/2025', '15', '157945');
INSERT INTO `transactions` VALUES ('1318', '1', 'exit', '16/03/2025', '500', '1375865');
INSERT INTO `transactions` VALUES ('1319', '8', 'exit', '16/03/2025', '45', '157930');
INSERT INTO `transactions` VALUES ('1320', '1', 'exit', '16/03/2025', '500', '1375365');
INSERT INTO `transactions` VALUES ('1321', '8', 'exit', '16/03/2025', '45', '157885');
INSERT INTO `transactions` VALUES ('1322', '1', 'exit', '16/03/2025', '500', '1374865');
INSERT INTO `transactions` VALUES ('1323', '8', 'exit', '16/03/2025', '45', '157840');
INSERT INTO `transactions` VALUES ('1324', '8', 'exit', '16/03/2025', '150', '157795');
INSERT INTO `transactions` VALUES ('1325', '23', 'exit', '16/03/2025', '250', '77881');
INSERT INTO `transactions` VALUES ('1326', '1', 'entry', '16/03/2025', '13100', '1374365');
INSERT INTO `transactions` VALUES ('1327', '1', 'entry', '16/03/2025', '20000', '1387465');
INSERT INTO `transactions` VALUES ('1328', '9', 'exit', '16/03/2025', '75', '212122');
INSERT INTO `transactions` VALUES ('1329', '8', 'exit', '16/03/2025', '400', '157645');
INSERT INTO `transactions` VALUES ('1330', '23', 'entry', '16/03/2025', '3000', '77631');
INSERT INTO `transactions` VALUES ('1331', '23', 'entry', '16/03/2025', '800', '80631');
INSERT INTO `transactions` VALUES ('1332', '1', 'exit', '16/03/2025', '800', '1407465');
INSERT INTO `transactions` VALUES ('1333', '9', 'exit', '16/03/2025', '400', '212047');
INSERT INTO `transactions` VALUES ('1334', '23', 'exit', '16/03/2025', '324', '81431');
INSERT INTO `transactions` VALUES ('1335', '23', 'exit', '16/03/2025', '250', '81107');
INSERT INTO `transactions` VALUES ('1336', '23', 'exit', '16/03/2025', '400', '80857');
INSERT INTO `transactions` VALUES ('1337', '1', 'entry', '16/03/2025', '13100', '1406665');
INSERT INTO `transactions` VALUES ('1338', '1', 'entry', '16/03/2025', '20000', '1419765');
INSERT INTO `transactions` VALUES ('1339', '23', 'exit', '16/03/2025', '600', '80457');
INSERT INTO `transactions` VALUES ('1340', '23', 'entry', '16/03/2025', '3000', '79857');
INSERT INTO `transactions` VALUES ('1341', '37', 'entry', '16/03/2025', '3500', '5000');
INSERT INTO `transactions` VALUES ('1342', '23', 'exit', '16/03/2025', '70', '82857');
INSERT INTO `transactions` VALUES ('1343', '23', 'exit', '16/03/2025', '300', '82787');
INSERT INTO `transactions` VALUES ('1344', '23', 'exit', '16/03/2025', '20', '82487');
INSERT INTO `transactions` VALUES ('1345', '23', 'exit', '16/03/2025', '20', '82467');
INSERT INTO `transactions` VALUES ('1346', '23', 'exit', '16/03/2025', '200', '82447');
INSERT INTO `transactions` VALUES ('1347', '23', 'exit', '16/03/2025', '200', '82247');
INSERT INTO `transactions` VALUES ('1348', '1', 'entry', '16/03/2025', '13100', '1439765');
INSERT INTO `transactions` VALUES ('1349', '1', 'entry', '16/03/2025', '20000', '1452865');
INSERT INTO `transactions` VALUES ('1350', '23', 'entry', '16/03/2025', '3000', '82047');
INSERT INTO `transactions` VALUES ('1351', '9', 'exit', '16/03/2025', '750', '211647');
INSERT INTO `transactions` VALUES ('1352', '9', 'exit', '16/03/2025', '250', '210897');
INSERT INTO `transactions` VALUES ('1353', '1', 'entry', '16/03/2025', '13100', '1472865');
INSERT INTO `transactions` VALUES ('1354', '1', 'entry', '16/03/2025', '20000', '1485965');
INSERT INTO `transactions` VALUES ('1355', '9', 'exit', '16/03/2025', '400', '210647');
INSERT INTO `transactions` VALUES ('1356', '23', 'exit', '16/03/2025', '400', '85047');
INSERT INTO `transactions` VALUES ('1357', '37', 'entry', '16/03/2025', '3500', '8500');
INSERT INTO `transactions` VALUES ('1358', '9', 'exit', '16/03/2025', '20', '210247');
INSERT INTO `transactions` VALUES ('1359', '5', 'exit', '16/03/2025', '120', '104895');
INSERT INTO `transactions` VALUES ('1360', '5', 'exit', '16/03/2025', '2260', '104775');
INSERT INTO `transactions` VALUES ('1361', '5', 'exit', '16/03/2025', '2630', '102515');
INSERT INTO `transactions` VALUES ('1362', '5', 'exit', '16/03/2025', '2630', '99885');
INSERT INTO `transactions` VALUES ('1363', '5', 'entry', '16/03/2025', '13100', '97255');
INSERT INTO `transactions` VALUES ('1364', '5', 'entry', '16/03/2025', '12100', '110355');
INSERT INTO `transactions` VALUES ('1365', '5', 'exit', '16/03/2025', '30', '122455');
INSERT INTO `transactions` VALUES ('1366', '5', 'exit', '16/03/2025', '2100', '122425');
INSERT INTO `transactions` VALUES ('1367', '5', 'exit', '16/03/2025', '500', '120325');
INSERT INTO `transactions` VALUES ('1368', '5', 'exit', '16/03/2025', '500', '119825');
INSERT INTO `transactions` VALUES ('1369', '5', 'exit', '16/03/2025', '3800', '119325');
INSERT INTO `transactions` VALUES ('1370', '5', 'exit', '16/03/2025', '2900', '115525');
INSERT INTO `transactions` VALUES ('1371', '5', 'exit', '16/03/2025', '2500', '112625');
INSERT INTO `transactions` VALUES ('1372', '5', 'exit', '16/03/2025', '100', '110125');
INSERT INTO `transactions` VALUES ('1373', '5', 'exit', '16/03/2025', '100', '110025');
INSERT INTO `transactions` VALUES ('1374', '5', 'entry', '16/03/2025', '13100', '109925');
INSERT INTO `transactions` VALUES ('1375', '5', 'entry', '16/03/2025', '12100', '123025');
INSERT INTO `transactions` VALUES ('1376', '5', 'entry', '16/03/2025', '13100', '135125');
INSERT INTO `transactions` VALUES ('1377', '5', 'entry', '16/03/2025', '12100', '148225');
INSERT INTO `transactions` VALUES ('1378', '5', 'exit', '16/03/2025', '2000', '160325');
INSERT INTO `transactions` VALUES ('1379', '5', 'entry', '16/03/2025', '13100', '158325');
INSERT INTO `transactions` VALUES ('1380', '5', 'entry', '16/03/2025', '12100', '171425');
INSERT INTO `transactions` VALUES ('1381', '5', 'exit', '16/03/2025', '5000', '183525');
INSERT INTO `transactions` VALUES ('1382', '5', 'exit', '16/03/2025', '8000', '178525');
INSERT INTO `transactions` VALUES ('1383', '5', 'exit', '16/03/2025', '12000', '170525');
INSERT INTO `transactions` VALUES ('1384', '5', 'exit', '16/03/2025', '45', '158525');
INSERT INTO `transactions` VALUES ('1385', '5', 'exit', '16/03/2025', '45', '158480');
INSERT INTO `transactions` VALUES ('1386', '5', 'exit', '16/03/2025', '45', '158435');
INSERT INTO `transactions` VALUES ('1387', '5', 'exit', '16/03/2025', '45', '158390');
INSERT INTO `transactions` VALUES ('1388', '5', 'exit', '16/03/2025', '30', '158345');
INSERT INTO `transactions` VALUES ('1389', '5', 'exit', '16/03/2025', '90', '158315');
INSERT INTO `transactions` VALUES ('1390', '5', 'exit', '16/03/2025', '30', '158225');
INSERT INTO `transactions` VALUES ('1391', '5', 'entry', '16/03/2025', '13100', '158195');
INSERT INTO `transactions` VALUES ('1392', '5', 'entry', '16/03/2025', '12100', '171295');
INSERT INTO `transactions` VALUES ('1393', '5', 'entry', '16/03/2025', '13100', '183395');
INSERT INTO `transactions` VALUES ('1394', '5', 'entry', '16/03/2025', '12100', '196495');
INSERT INTO `transactions` VALUES ('1395', '5', 'exit', '16/03/2025', '120', '208595');
INSERT INTO `transactions` VALUES ('1396', '5', 'exit', '16/03/2025', '30', '208475');
INSERT INTO `transactions` VALUES ('1397', '5', 'exit', '16/03/2025', '100', '208445');
INSERT INTO `transactions` VALUES ('1398', '5', 'entry', '16/03/2025', '13100', '208345');
INSERT INTO `transactions` VALUES ('1399', '5', 'entry', '16/03/2025', '12100', '221445');
INSERT INTO `transactions` VALUES ('1400', '5', 'entry', '16/03/2025', '13100', '233545');
INSERT INTO `transactions` VALUES ('1401', '5', 'entry', '16/03/2025', '12100', '246645');
INSERT INTO `transactions` VALUES ('1402', '5', 'exit', '16/03/2025', '50', '258745');
INSERT INTO `transactions` VALUES ('1403', '5', 'entry', '16/03/2025', '5000', '258695');
INSERT INTO `transactions` VALUES ('1404', '5', 'entry', '16/03/2025', '13100', '263695');
INSERT INTO `transactions` VALUES ('1405', '5', 'entry', '16/03/2025', '12100', '276795');
INSERT INTO `transactions` VALUES ('1406', '5', 'entry', '16/03/2025', '7500', '288895');
INSERT INTO `transactions` VALUES ('1407', '5', 'exit', '16/03/2025', '45', '296395');
INSERT INTO `transactions` VALUES ('1408', '5', 'exit', '16/03/2025', '45', '296350');
INSERT INTO `transactions` VALUES ('1409', '5', 'exit', '16/03/2025', '45', '296305');
INSERT INTO `transactions` VALUES ('1410', '5', 'entry', '16/03/2025', '13100', '296260');
INSERT INTO `transactions` VALUES ('1411', '5', 'entry', '16/03/2025', '12100', '309360');
INSERT INTO `transactions` VALUES ('1412', '5', 'exit', '16/03/2025', '12500', '321460');
INSERT INTO `transactions` VALUES ('1413', '5', 'exit', '16/03/2025', '7500', '308960');
INSERT INTO `transactions` VALUES ('1414', '5', 'exit', '16/03/2025', '1000', '301460');
INSERT INTO `transactions` VALUES ('1415', '12', 'entry', '16/03/2025', '5000', '117195');
INSERT INTO `transactions` VALUES ('1416', '5', 'exit', '16/03/2025', '5000', '300460');
INSERT INTO `transactions` VALUES ('1417', '5', 'entry', '16/03/2025', '13100', '295460');
INSERT INTO `transactions` VALUES ('1418', '5', 'entry', '16/03/2025', '12100', '308560');
INSERT INTO `transactions` VALUES ('1419', '1', 'entry', '16/03/2025', '13100', '1505965');
INSERT INTO `transactions` VALUES ('1420', '12', 'entry', '16/03/2025', '10100', '122195');
INSERT INTO `transactions` VALUES ('1421', '12', 'exit', '16/03/2025', '620', '132295');
INSERT INTO `transactions` VALUES ('1422', '38', 'entry', '16/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1423', '12', 'exit', '16/03/2025', '90', '131675');
INSERT INTO `transactions` VALUES ('1424', '37', 'entry', '16/03/2025', '3500', '12000');
INSERT INTO `transactions` VALUES ('1425', '1', 'entry', '16/03/2025', '1000', '1519065');
INSERT INTO `transactions` VALUES ('1426', '5', 'entry', '16/03/2025', '13100', '320660');
INSERT INTO `transactions` VALUES ('1427', '5', 'entry', '16/03/2025', '12100', '333760');
INSERT INTO `transactions` VALUES ('1428', '1', 'entry', '16/03/2025', '13100', '1520065');
INSERT INTO `transactions` VALUES ('1429', '12', 'exit', '16/03/2025', '340', '131585');
INSERT INTO `transactions` VALUES ('1430', '12', 'entry', '16/03/2025', '10100', '131245');
INSERT INTO `transactions` VALUES ('1431', '5', 'exit', '16/03/2025', '180', '345860');
INSERT INTO `transactions` VALUES ('1432', '37', 'entry', '16/03/2025', '3500', '15500');
INSERT INTO `transactions` VALUES ('1433', '1', 'entry', '16/03/2025', '1000', '1533165');
INSERT INTO `transactions` VALUES ('1434', '5', 'entry', '16/03/2025', '13100', '345680');
INSERT INTO `transactions` VALUES ('1435', '5', 'exit', '16/03/2025', '50', '358780');
INSERT INTO `transactions` VALUES ('1436', '37', 'entry', '16/03/2025', '3500', '19000');
INSERT INTO `transactions` VALUES ('1437', '1', 'entry', '16/03/2025', '13100', '1534165');
INSERT INTO `transactions` VALUES ('1438', '5', 'entry', '16/03/2025', '12100', '358730');
INSERT INTO `transactions` VALUES ('1439', '37', 'entry', '16/03/2025', '3500', '22500');
INSERT INTO `transactions` VALUES ('1440', '1', 'entry', '16/03/2025', '3500', '1547265');
INSERT INTO `transactions` VALUES ('1441', '1', 'entry', '16/03/2025', '13100', '1550765');
INSERT INTO `transactions` VALUES ('1442', '1', 'exit', '16/03/2025', '400', '1563865');
INSERT INTO `transactions` VALUES ('1443', '1', 'exit', '16/03/2025', '400', '1563465');
INSERT INTO `transactions` VALUES ('1444', '1', 'exit', '16/03/2025', '100', '1563065');
INSERT INTO `transactions` VALUES ('1445', '1', 'exit', '16/03/2025', '100', '1562965');
INSERT INTO `transactions` VALUES ('1446', '1', 'exit', '16/03/2025', '2000', '1562865');
INSERT INTO `transactions` VALUES ('1447', '8', 'exit', '16/03/2025', '50', '157245');
INSERT INTO `transactions` VALUES ('1448', '1', 'exit', '16/03/2025', '400', '1560865');
INSERT INTO `transactions` VALUES ('1449', '1', 'entry', '16/03/2025', '3500', '1560465');
INSERT INTO `transactions` VALUES ('1450', '1', 'entry', '16/03/2025', '13100', '1563965');
INSERT INTO `transactions` VALUES ('1451', '8', 'entry', '16/03/2025', '12100', '157195');
INSERT INTO `transactions` VALUES ('1452', '8', 'exit', '16/03/2025', '150', '169295');
INSERT INTO `transactions` VALUES ('1453', '8', 'exit', '16/03/2025', '700', '169145');
INSERT INTO `transactions` VALUES ('1454', '8', 'exit', '16/03/2025', '185', '168445');
INSERT INTO `transactions` VALUES ('1455', '8', 'exit', '16/03/2025', '500', '168260');
INSERT INTO `transactions` VALUES ('1456', '8', 'exit', '16/03/2025', '500', '167760');
INSERT INTO `transactions` VALUES ('1457', '8', 'exit', '16/03/2025', '500', '167260');
INSERT INTO `transactions` VALUES ('1458', '8', 'exit', '16/03/2025', '195', '166760');
INSERT INTO `transactions` VALUES ('1459', '8', 'exit', '16/03/2025', '1210', '166565');
INSERT INTO `transactions` VALUES ('1460', '4', 'entry', '16/03/2025', '2000', '151460');
INSERT INTO `transactions` VALUES ('1461', '4', 'entry', '16/03/2025', '2000', '153460');
INSERT INTO `transactions` VALUES ('1462', '4', 'entry', '16/03/2025', '2000', '155460');
INSERT INTO `transactions` VALUES ('1463', '4', 'entry', '16/03/2025', '2000', '157460');
INSERT INTO `transactions` VALUES ('1464', '4', 'entry', '16/03/2025', '2000', '159460');
INSERT INTO `transactions` VALUES ('1465', '4', 'entry', '16/03/2025', '2000', '161460');
INSERT INTO `transactions` VALUES ('1466', '4', 'entry', '16/03/2025', '2000', '163460');
INSERT INTO `transactions` VALUES ('1467', '4', 'entry', '16/03/2025', '100', '165460');
INSERT INTO `transactions` VALUES ('1468', '4', 'entry', '16/03/2025', '100', '165560');
INSERT INTO `transactions` VALUES ('1469', '1', 'entry', '16/03/2025', '12100', '1577065');
INSERT INTO `transactions` VALUES ('1470', '1', 'entry', '16/03/2025', '3500', '1589165');
INSERT INTO `transactions` VALUES ('1471', '1', 'entry', '16/03/2025', '13100', '1592665');
INSERT INTO `transactions` VALUES ('1472', '4', 'entry', '16/03/2025', '3500', '165660');
INSERT INTO `transactions` VALUES ('1473', '1', 'entry', '16/03/2025', '3500', '1605765');
INSERT INTO `transactions` VALUES ('1474', '16', 'exit', '16/03/2025', '100', '219937');
INSERT INTO `transactions` VALUES ('1475', '16', 'exit', '16/03/2025', '100', '219837');
INSERT INTO `transactions` VALUES ('1476', '16', 'exit', '16/03/2025', '120', '219737');
INSERT INTO `transactions` VALUES ('1477', '16', 'exit', '16/03/2025', '850', '219617');
INSERT INTO `transactions` VALUES ('1478', '16', 'exit', '16/03/2025', '350', '218767');
INSERT INTO `transactions` VALUES ('1479', '16', 'exit', '16/03/2025', '400', '218417');
INSERT INTO `transactions` VALUES ('1480', '16', 'exit', '16/03/2025', '100', '218017');
INSERT INTO `transactions` VALUES ('1481', '10', 'exit', '16/03/2025', '50', '127807');
INSERT INTO `transactions` VALUES ('1482', '10', 'exit', '16/03/2025', '50', '127757');
INSERT INTO `transactions` VALUES ('1483', '10', 'entry', '16/03/2025', '5207', '127707');
INSERT INTO `transactions` VALUES ('1484', '16', 'entry', '16/03/2025', '810', '217917');
INSERT INTO `transactions` VALUES ('1485', '1', 'entry', '16/03/2025', '3500', '1609265');
INSERT INTO `transactions` VALUES ('1486', '16', 'entry', '16/03/2025', '3500', '218727');
INSERT INTO `transactions` VALUES ('1487', '10', 'exit', '16/03/2025', '50', '132914');
INSERT INTO `transactions` VALUES ('1488', '10', 'exit', '16/03/2025', '50', '132864');
INSERT INTO `transactions` VALUES ('1489', '16', 'entry', '16/03/2025', '810', '222227');
INSERT INTO `transactions` VALUES ('1490', '4', 'exit', '16/03/2025', '3800', '169160');
INSERT INTO `transactions` VALUES ('1491', '4', 'exit', '16/03/2025', '12500', '165360');
INSERT INTO `transactions` VALUES ('1492', '10', 'exit', '16/03/2025', '1000', '132814');
INSERT INTO `transactions` VALUES ('1493', '1', 'entry', '16/03/2025', '3500', '1612765');
INSERT INTO `transactions` VALUES ('1494', '16', 'entry', '16/03/2025', '3500', '223037');
INSERT INTO `transactions` VALUES ('1495', '16', 'exit', '16/03/2025', '400', '226537');
INSERT INTO `transactions` VALUES ('1496', '1', 'exit', '16/03/2025', '400', '1616265');
INSERT INTO `transactions` VALUES ('1497', '16', 'entry', '16/03/2025', '400', '226137');
INSERT INTO `transactions` VALUES ('1498', '16', 'exit', '16/03/2025', '150', '226537');
INSERT INTO `transactions` VALUES ('1499', '16', 'entry', '16/03/2025', '810', '226387');
INSERT INTO `transactions` VALUES ('1500', '16', 'exit', '16/03/2025', '400', '227197');
INSERT INTO `transactions` VALUES ('1501', '1', 'exit', '16/03/2025', '400', '1615865');
INSERT INTO `transactions` VALUES ('1502', '1', 'exit', '16/03/2025', '150', '1615465');
INSERT INTO `transactions` VALUES ('1503', '16', 'entry', '16/03/2025', '3500', '226797');
INSERT INTO `transactions` VALUES ('1504', '4', 'entry', '16/03/2025', '3500', '152860');
INSERT INTO `transactions` VALUES ('1505', '1', 'entry', '16/03/2025', '3500', '1615315');
INSERT INTO `transactions` VALUES ('1506', '10', 'exit', '16/03/2025', '50', '131814');
INSERT INTO `transactions` VALUES ('1507', '10', 'exit', '16/03/2025', '50', '131764');
INSERT INTO `transactions` VALUES ('1508', '10', 'exit', '16/03/2025', '50', '131714');
INSERT INTO `transactions` VALUES ('1509', '1', 'entry', '16/03/2025', '1000', '1618815');
INSERT INTO `transactions` VALUES ('1510', '10', 'exit', '16/03/2025', '50', '131664');
INSERT INTO `transactions` VALUES ('1511', '10', 'exit', '16/03/2025', '50', '131614');
INSERT INTO `transactions` VALUES ('1512', '16', 'entry', '16/03/2025', '810', '230297');
INSERT INTO `transactions` VALUES ('1513', '4', 'exit', '16/03/2025', '400', '156360');
INSERT INTO `transactions` VALUES ('1514', '28', 'exit', '16/03/2025', '1000', '3050');
INSERT INTO `transactions` VALUES ('1515', '16', 'entry', '16/03/2025', '3500', '231107');
INSERT INTO `transactions` VALUES ('1516', '4', 'entry', '16/03/2025', '13100', '155960');
INSERT INTO `transactions` VALUES ('1517', '4', 'entry', '16/03/2025', '3500', '169060');
INSERT INTO `transactions` VALUES ('1518', '28', 'exit', '16/03/2025', '270', '2050');
INSERT INTO `transactions` VALUES ('1519', '10', 'exit', '16/03/2025', '400', '131564');
INSERT INTO `transactions` VALUES ('1520', '1', 'entry', '16/03/2025', '3500', '1619815');
INSERT INTO `transactions` VALUES ('1521', '10', 'exit', '16/03/2025', '120', '131164');
INSERT INTO `transactions` VALUES ('1522', '10', 'exit', '16/03/2025', '180', '131044');
INSERT INTO `transactions` VALUES ('1523', '28', 'exit', '16/03/2025', '600', '1780');
INSERT INTO `transactions` VALUES ('1524', '1', 'entry', '16/03/2025', '1000', '1623315');
INSERT INTO `transactions` VALUES ('1525', '16', 'entry', '16/03/2025', '810', '234607');
INSERT INTO `transactions` VALUES ('1526', '10', 'exit', '16/03/2025', '50', '130864');
INSERT INTO `transactions` VALUES ('1527', '10', 'exit', '16/03/2025', '120', '130814');
INSERT INTO `transactions` VALUES ('1528', '16', 'entry', '16/03/2025', '3500', '235417');
INSERT INTO `transactions` VALUES ('1529', '1', 'entry', '16/03/2025', '3500', '1624315');
INSERT INTO `transactions` VALUES ('1530', '16', 'exit', '16/03/2025', '150', '238917');
INSERT INTO `transactions` VALUES ('1531', '1', 'exit', '16/03/2025', '550', '1627815');
INSERT INTO `transactions` VALUES ('1532', '1', 'entry', '16/03/2025', '1000', '1627265');
INSERT INTO `transactions` VALUES ('1533', '12', 'exit', '16/03/2025', '1950', '141345');
INSERT INTO `transactions` VALUES ('1534', '10', 'exit', '16/03/2025', '400', '130694');
INSERT INTO `transactions` VALUES ('1535', '10', 'exit', '16/03/2025', '285', '130294');
INSERT INTO `transactions` VALUES ('1536', '16', 'entry', '16/03/2025', '810', '238767');
INSERT INTO `transactions` VALUES ('1537', '10', 'exit', '16/03/2025', '50', '130009');
INSERT INTO `transactions` VALUES ('1538', '16', 'entry', '16/03/2025', '3500', '239577');
INSERT INTO `transactions` VALUES ('1539', '16', 'exit', '16/03/2025', '225', '243077');
INSERT INTO `transactions` VALUES ('1540', '1', 'entry', '16/03/2025', '3500', '1628265');
INSERT INTO `transactions` VALUES ('1541', '10', 'exit', '16/03/2025', '400', '129959');
INSERT INTO `transactions` VALUES ('1542', '2', 'exit', '16/03/2025', '1510', '512986');
INSERT INTO `transactions` VALUES ('1543', '1', 'entry', '16/03/2025', '1000', '1631765');
INSERT INTO `transactions` VALUES ('1544', '1', 'entry', '16/03/2025', '3500', '1632765');
INSERT INTO `transactions` VALUES ('1545', '12', 'exit', '16/03/2025', '205', '139395');
INSERT INTO `transactions` VALUES ('1546', '12', 'entry', '16/03/2025', '205', '139190');
INSERT INTO `transactions` VALUES ('1547', '12', 'exit', '16/03/2025', '231', '139395');
INSERT INTO `transactions` VALUES ('1548', '12', 'entry', '16/03/2025', '231', '139164');
INSERT INTO `transactions` VALUES ('1549', '1', 'entry', '16/03/2025', '13100', '1636265');
INSERT INTO `transactions` VALUES ('1550', '2', 'entry', '16/03/2025', '20000', '511476');
INSERT INTO `transactions` VALUES ('1551', '2', 'entry', '16/03/2025', '13100', '531476');
INSERT INTO `transactions` VALUES ('1552', '1', 'entry', '16/03/2025', '3500', '1649365');
INSERT INTO `transactions` VALUES ('1553', '1', 'entry', '16/03/2025', '1000', '1652865');
INSERT INTO `transactions` VALUES ('1554', '16', 'exit', '16/03/2025', '400', '242852');
INSERT INTO `transactions` VALUES ('1555', '16', 'entry', '16/03/2025', '810', '242452');
INSERT INTO `transactions` VALUES ('1556', '1', 'entry', '16/03/2025', '3500', '1653865');
INSERT INTO `transactions` VALUES ('1557', '10', 'exit', '16/03/2025', '50', '129559');
INSERT INTO `transactions` VALUES ('1558', '16', 'exit', '16/03/2025', '150', '243262');
INSERT INTO `transactions` VALUES ('1559', '10', 'entry', '16/03/2025', '5319', '129509');
INSERT INTO `transactions` VALUES ('1560', '10', 'exit', '16/03/2025', '100', '134828');
INSERT INTO `transactions` VALUES ('1561', '10', 'exit', '16/03/2025', '100', '134728');
INSERT INTO `transactions` VALUES ('1562', '1', 'entry', '16/03/2025', '13100', '1657365');
INSERT INTO `transactions` VALUES ('1563', '10', 'exit', '16/03/2025', '100', '134628');
INSERT INTO `transactions` VALUES ('1564', '10', 'exit', '16/03/2025', '100', '134528');
INSERT INTO `transactions` VALUES ('1565', '23', 'exit', '16/03/2025', '50', '84647');
INSERT INTO `transactions` VALUES ('1566', '10', 'exit', '16/03/2025', '100', '134428');
INSERT INTO `transactions` VALUES ('1567', '2', 'entry', '16/03/2025', '20000', '544576');
INSERT INTO `transactions` VALUES ('1568', '10', 'exit', '16/03/2025', '100', '134328');
INSERT INTO `transactions` VALUES ('1569', '10', 'exit', '16/03/2025', '100', '134228');
INSERT INTO `transactions` VALUES ('1570', '2', 'exit', '16/03/2025', '250', '564576');
INSERT INTO `transactions` VALUES ('1571', '1', 'entry', '16/03/2025', '3500', '1670465');
INSERT INTO `transactions` VALUES ('1572', '10', 'exit', '16/03/2025', '100', '134128');
INSERT INTO `transactions` VALUES ('1573', '10', 'exit', '16/03/2025', '100', '134028');
INSERT INTO `transactions` VALUES ('1574', '10', 'exit', '16/03/2025', '100', '133928');
INSERT INTO `transactions` VALUES ('1575', '1', 'entry', '16/03/2025', '1000', '1673965');
INSERT INTO `transactions` VALUES ('1576', '12', 'exit', '16/03/2025', '50', '139395');
INSERT INTO `transactions` VALUES ('1577', '16', 'entry', '16/03/2025', '3500', '243112');
INSERT INTO `transactions` VALUES ('1578', '16', 'entry', '16/03/2025', '810', '246612');
INSERT INTO `transactions` VALUES ('1579', '1', 'entry', '16/03/2025', '3500', '1674965');
INSERT INTO `transactions` VALUES ('1580', '10', 'exit', '16/03/2025', '100', '133828');
INSERT INTO `transactions` VALUES ('1581', '10', 'exit', '16/03/2025', '100', '133728');
INSERT INTO `transactions` VALUES ('1582', '10', 'exit', '16/03/2025', '100', '133628');
INSERT INTO `transactions` VALUES ('1583', '23', 'entry', '16/03/2025', '2500', '84597');
INSERT INTO `transactions` VALUES ('1584', '10', 'exit', '16/03/2025', '50', '133528');
INSERT INTO `transactions` VALUES ('1585', '23', 'exit', '16/03/2025', '100', '87097');
INSERT INTO `transactions` VALUES ('1586', '23', 'exit', '16/03/2025', '100', '86997');
INSERT INTO `transactions` VALUES ('1587', '23', 'exit', '16/03/2025', '100', '86897');
INSERT INTO `transactions` VALUES ('1588', '12', 'exit', '16/03/2025', '250', '139345');
INSERT INTO `transactions` VALUES ('1589', '20', 'entry', '16/03/2025', '14400', '182955');
INSERT INTO `transactions` VALUES ('1590', '2', 'exit', '16/03/2025', '14400', '564326');
INSERT INTO `transactions` VALUES ('1591', '20', 'exit', '16/03/2025', '7', '197355');
INSERT INTO `transactions` VALUES ('1592', '20', 'exit', '16/03/2025', '50', '197348');
INSERT INTO `transactions` VALUES ('1593', '20', 'exit', '16/03/2025', '400', '197298');
INSERT INTO `transactions` VALUES ('1594', '23', 'exit', '16/03/2025', '50', '86797');
INSERT INTO `transactions` VALUES ('1595', '23', 'entry', '16/03/2025', '3000', '86747');
INSERT INTO `transactions` VALUES ('1596', '23', 'exit', '16/03/2025', '400', '89747');
INSERT INTO `transactions` VALUES ('1597', '1', 'entry', '16/03/2025', '13100', '1678465');
INSERT INTO `transactions` VALUES ('1598', '20', 'exit', '16/03/2025', '10', '196898');
INSERT INTO `transactions` VALUES ('1599', '23', 'exit', '16/03/2025', '50', '89347');
INSERT INTO `transactions` VALUES ('1600', '1', 'entry', '16/03/2025', '3500', '1691565');
INSERT INTO `transactions` VALUES ('1601', '23', 'exit', '16/03/2025', '5000', '89297');
INSERT INTO `transactions` VALUES ('1602', '20', 'exit', '16/03/2025', '75', '196888');
INSERT INTO `transactions` VALUES ('1603', '23', 'exit', '16/03/2025', '50', '84297');
INSERT INTO `transactions` VALUES ('1604', '20', 'entry', '16/03/2025', '75', '196813');
INSERT INTO `transactions` VALUES ('1605', '10', 'exit', '16/03/2025', '50', '133478');
INSERT INTO `transactions` VALUES ('1606', '20', 'entry', '16/03/2025', '810', '196888');
INSERT INTO `transactions` VALUES ('1607', '10', 'exit', '16/03/2025', '50', '133428');
INSERT INTO `transactions` VALUES ('1608', '1', 'entry', '16/03/2025', '1000', '1695065');
INSERT INTO `transactions` VALUES ('1609', '16', 'entry', '16/03/2025', '3500', '247422');
INSERT INTO `transactions` VALUES ('1610', '16', 'entry', '16/03/2025', '810', '250922');
INSERT INTO `transactions` VALUES ('1611', '12', 'exit', '16/03/2025', '21', '139095');
INSERT INTO `transactions` VALUES ('1612', '20', 'entry', '16/03/2025', '21', '197698');
INSERT INTO `transactions` VALUES ('1613', '1', 'entry', '16/03/2025', '3500', '1696065');
INSERT INTO `transactions` VALUES ('1614', '12', 'exit', '16/03/2025', '21179', '139074');
INSERT INTO `transactions` VALUES ('1615', '20', 'entry', '16/03/2025', '21179', '197719');
INSERT INTO `transactions` VALUES ('1616', '20', 'exit', '16/03/2025', '10', '218898');
INSERT INTO `transactions` VALUES ('1617', '16', 'exit', '17/03/2025', '400', '251732');
INSERT INTO `transactions` VALUES ('1618', '1', 'exit', '17/03/2025', '400', '1699565');
INSERT INTO `transactions` VALUES ('1619', '1', 'exit', '17/03/2025', '200', '1699165');
INSERT INTO `transactions` VALUES ('1620', '12', 'exit', '17/03/2025', '271', '117895');
INSERT INTO `transactions` VALUES ('1621', '1', 'entry', '17/03/2025', '15', '1698965');
INSERT INTO `transactions` VALUES ('1622', '9', 'exit', '17/03/2025', '50', '210227');
INSERT INTO `transactions` VALUES ('1623', '9', 'exit', '17/03/2025', '465', '210177');
INSERT INTO `transactions` VALUES ('1624', '12', 'exit', '17/03/2025', '135', '117624');
INSERT INTO `transactions` VALUES ('1625', '9', 'exit', '17/03/2025', '465', '209712');
INSERT INTO `transactions` VALUES ('1626', '16', 'exit', '17/03/2025', '400', '251332');
INSERT INTO `transactions` VALUES ('1627', '9', 'entry', '17/03/2025', '465', '209247');
INSERT INTO `transactions` VALUES ('1628', '1', 'entry', '17/03/2025', '15', '1698980');
INSERT INTO `transactions` VALUES ('1629', '16', 'exit', '17/03/2025', '165', '250932');
INSERT INTO `transactions` VALUES ('1630', '1', 'entry', '17/03/2025', '15', '1698995');
INSERT INTO `transactions` VALUES ('1631', '8', 'exit', '17/03/2025', '60', '165355');
INSERT INTO `transactions` VALUES ('1632', '16', 'exit', '17/03/2025', '400', '250767');
INSERT INTO `transactions` VALUES ('1633', '8', 'exit', '17/03/2025', '75', '165295');
INSERT INTO `transactions` VALUES ('1634', '8', 'exit', '17/03/2025', '45', '165220');
INSERT INTO `transactions` VALUES ('1635', '23', 'exit', '17/03/2025', '50', '84247');
INSERT INTO `transactions` VALUES ('1636', '8', 'exit', '17/03/2025', '90', '165175');
INSERT INTO `transactions` VALUES ('1637', '8', 'exit', '17/03/2025', '90', '165085');
INSERT INTO `transactions` VALUES ('1638', '16', 'entry', '17/03/2025', '400', '250367');
INSERT INTO `transactions` VALUES ('1639', '1', 'exit', '17/03/2025', '400', '1699010');
INSERT INTO `transactions` VALUES ('1640', '8', 'exit', '17/03/2025', '30', '164995');
INSERT INTO `transactions` VALUES ('1641', '12', 'exit', '17/03/2025', '620', '117489');
INSERT INTO `transactions` VALUES ('1642', '8', 'exit', '17/03/2025', '50', '164965');
INSERT INTO `transactions` VALUES ('1643', '1', 'entry', '17/03/2025', '3500', '1698610');
INSERT INTO `transactions` VALUES ('1644', '1', 'entry', '17/03/2025', '13100', '1702110');
INSERT INTO `transactions` VALUES ('1645', '1', 'entry', '17/03/2025', '3500', '1715210');
INSERT INTO `transactions` VALUES ('1646', '16', 'entry', '17/03/2025', '3500', '250767');
INSERT INTO `transactions` VALUES ('1647', '16', 'entry', '17/03/2025', '810', '254267');
INSERT INTO `transactions` VALUES ('1648', '23', 'exit', '17/03/2025', '250', '84197');
INSERT INTO `transactions` VALUES ('1649', '8', 'exit', '17/03/2025', '400', '164915');
INSERT INTO `transactions` VALUES ('1650', '16', 'exit', '17/03/2025', '500', '255077');
INSERT INTO `transactions` VALUES ('1651', '23', 'entry', '17/03/2025', '500', '83947');
INSERT INTO `transactions` VALUES ('1652', '12', 'entry', '17/03/2025', '10100', '116869');
INSERT INTO `transactions` VALUES ('1653', '23', 'exit', '17/03/2025', '2', '84447');
INSERT INTO `transactions` VALUES ('1654', '16', 'exit', '17/03/2025', '700', '254577');
INSERT INTO `transactions` VALUES ('1655', '23', 'entry', '17/03/2025', '5000', '84445');
INSERT INTO `transactions` VALUES ('1656', '8', 'exit', '17/03/2025', '5000', '164515');
INSERT INTO `transactions` VALUES ('1657', '23', 'exit', '17/03/2025', '100', '89445');
INSERT INTO `transactions` VALUES ('1658', '23', 'exit', '17/03/2025', '100', '89345');
INSERT INTO `transactions` VALUES ('1659', '9', 'exit', '17/03/2025', '400', '209712');
INSERT INTO `transactions` VALUES ('1660', '39', 'entry', '17/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1661', '16', 'exit', '17/03/2025', '175', '253877');
INSERT INTO `transactions` VALUES ('1662', '23', 'entry', '17/03/2025', '3000', '89245');
INSERT INTO `transactions` VALUES ('1663', '1', 'entry', '17/03/2025', '15', '1718710');
INSERT INTO `transactions` VALUES ('1664', '1', 'exit', '17/03/2025', '150', '1718725');
INSERT INTO `transactions` VALUES ('1665', '16', 'exit', '17/03/2025', '60', '253702');
INSERT INTO `transactions` VALUES ('1666', '8', 'exit', '17/03/2025', '250', '159515');
INSERT INTO `transactions` VALUES ('1667', '16', 'exit', '17/03/2025', '996', '253642');
INSERT INTO `transactions` VALUES ('1668', '9', 'exit', '17/03/2025', '465', '209312');
INSERT INTO `transactions` VALUES ('1669', '1', 'entry', '17/03/2025', '15', '1718575');
INSERT INTO `transactions` VALUES ('1670', '1', 'entry', '17/03/2025', '15', '1718590');
INSERT INTO `transactions` VALUES ('1671', '23', 'exit', '17/03/2025', '27', '92245');
INSERT INTO `transactions` VALUES ('1672', '37', 'entry', '17/03/2025', '3500', '26000');
INSERT INTO `transactions` VALUES ('1673', '16', 'exit', '17/03/2025', '400', '252646');
INSERT INTO `transactions` VALUES ('1674', '8', 'exit', '17/03/2025', '400', '159265');
INSERT INTO `transactions` VALUES ('1675', '23', 'entry', '17/03/2025', '3500', '92218');
INSERT INTO `transactions` VALUES ('1676', '16', 'exit', '17/03/2025', '750', '252246');
INSERT INTO `transactions` VALUES ('1677', '16', 'entry', '17/03/2025', '3500', '251496');
INSERT INTO `transactions` VALUES ('1678', '8', 'entry', '17/03/2025', '12100', '158865');
INSERT INTO `transactions` VALUES ('1679', '16', 'entry', '17/03/2025', '810', '254996');
INSERT INTO `transactions` VALUES ('1680', '8', 'exit', '17/03/2025', '50', '170965');
INSERT INTO `transactions` VALUES ('1681', '16', 'exit', '17/03/2025', '100', '255806');
INSERT INTO `transactions` VALUES ('1682', '1', 'entry', '17/03/2025', '3500', '1718605');
INSERT INTO `transactions` VALUES ('1683', '9', 'exit', '17/03/2025', '910', '208847');
INSERT INTO `transactions` VALUES ('1684', '8', 'exit', '17/03/2025', '65', '170915');
INSERT INTO `transactions` VALUES ('1685', '8', 'exit', '17/03/2025', '350', '170850');
INSERT INTO `transactions` VALUES ('1686', '23', 'entry', '17/03/2025', '3000', '95718');
INSERT INTO `transactions` VALUES ('1687', '8', 'exit', '17/03/2025', '95', '170500');
INSERT INTO `transactions` VALUES ('1688', '8', 'entry', '17/03/2025', '95', '170405');
INSERT INTO `transactions` VALUES ('1689', '23', 'exit', '17/03/2025', '670', '98718');
INSERT INTO `transactions` VALUES ('1690', '8', 'exit', '17/03/2025', '191', '170500');
INSERT INTO `transactions` VALUES ('1691', '8', 'entry', '17/03/2025', '191', '170309');
INSERT INTO `transactions` VALUES ('1692', '37', 'entry', '17/03/2025', '3500', '29500');
INSERT INTO `transactions` VALUES ('1693', '23', 'exit', '17/03/2025', '400', '98048');
INSERT INTO `transactions` VALUES ('1694', '23', 'entry', '17/03/2025', '3500', '97648');
INSERT INTO `transactions` VALUES ('1695', '8', 'entry', '17/03/2025', '12100', '170500');
INSERT INTO `transactions` VALUES ('1696', '8', 'exit', '17/03/2025', '400', '182600');
INSERT INTO `transactions` VALUES ('1697', '1', 'exit', '17/03/2025', '140', '1722105');
INSERT INTO `transactions` VALUES ('1698', '1', 'entry', '17/03/2025', '140', '1721965');
INSERT INTO `transactions` VALUES ('1699', '1', 'entry', '17/03/2025', '3500', '1722105');
INSERT INTO `transactions` VALUES ('1700', '9', 'exit', '17/03/2025', '195', '207937');
INSERT INTO `transactions` VALUES ('1701', '8', 'exit', '17/03/2025', '400', '182200');
INSERT INTO `transactions` VALUES ('1702', '23', 'exit', '17/03/2025', '2', '101148');
INSERT INTO `transactions` VALUES ('1703', '23', 'exit', '17/03/2025', '250', '101146');
INSERT INTO `transactions` VALUES ('1704', '23', 'entry', '17/03/2025', '3000', '100896');
INSERT INTO `transactions` VALUES ('1705', '23', 'exit', '17/03/2025', '185', '103896');
INSERT INTO `transactions` VALUES ('1706', '23', 'exit', '17/03/2025', '4000', '103711');
INSERT INTO `transactions` VALUES ('1707', '8', 'entry', '17/03/2025', '4000', '181800');
INSERT INTO `transactions` VALUES ('1708', '23', 'exit', '17/03/2025', '3200', '99711');
INSERT INTO `transactions` VALUES ('1709', '8', 'entry', '17/03/2025', '3200', '185800');
INSERT INTO `transactions` VALUES ('1710', '1', 'entry', '17/03/2025', '35', '1725605');
INSERT INTO `transactions` VALUES ('1711', '37', 'entry', '17/03/2025', '3500', '33000');
INSERT INTO `transactions` VALUES ('1712', '23', 'entry', '17/03/2025', '3500', '96511');
INSERT INTO `transactions` VALUES ('1713', '9', 'entry', '17/03/2025', '11100', '207742');
INSERT INTO `transactions` VALUES ('1714', '8', 'exit', '17/03/2025', '1245', '189000');
INSERT INTO `transactions` VALUES ('1715', '8', 'entry', '17/03/2025', '12100', '187755');
INSERT INTO `transactions` VALUES ('1716', '8', 'exit', '17/03/2025', '400', '199855');
INSERT INTO `transactions` VALUES ('1717', '23', 'exit', '17/03/2025', '373', '100011');
INSERT INTO `transactions` VALUES ('1718', '8', 'exit', '17/03/2025', '185', '199455');
INSERT INTO `transactions` VALUES ('1719', '23', 'entry', '17/03/2025', '746', '99638');
INSERT INTO `transactions` VALUES ('1720', '8', 'exit', '17/03/2025', '746', '199270');
INSERT INTO `transactions` VALUES ('1721', '1', 'entry', '17/03/2025', '35', '1725640');
INSERT INTO `transactions` VALUES ('1722', '23', 'exit', '17/03/2025', '75', '100384');
INSERT INTO `transactions` VALUES ('1723', '23', 'exit', '17/03/2025', '75', '100309');
INSERT INTO `transactions` VALUES ('1724', '8', 'exit', '17/03/2025', '30000', '198524');
INSERT INTO `transactions` VALUES ('1725', '23', 'entry', '17/03/2025', '3000', '100234');
INSERT INTO `transactions` VALUES ('1726', '8', 'exit', '17/03/2025', '120', '168524');
INSERT INTO `transactions` VALUES ('1727', '8', 'exit', '17/03/2025', '195', '168404');
INSERT INTO `transactions` VALUES ('1728', '8', 'exit', '17/03/2025', '700', '168209');
INSERT INTO `transactions` VALUES ('1729', '23', 'exit', '17/03/2025', '400', '103234');
INSERT INTO `transactions` VALUES ('1730', '8', 'exit', '17/03/2025', '65', '167509');
INSERT INTO `transactions` VALUES ('1731', '23', 'exit', '17/03/2025', '400', '102834');
INSERT INTO `transactions` VALUES ('1732', '23', 'exit', '17/03/2025', '400', '102434');
INSERT INTO `transactions` VALUES ('1733', '37', 'entry', '17/03/2025', '3500', '36500');
INSERT INTO `transactions` VALUES ('1734', '23', 'entry', '17/03/2025', '3500', '102034');
INSERT INTO `transactions` VALUES ('1735', '9', 'entry', '17/03/2025', '11100', '218842');
INSERT INTO `transactions` VALUES ('1736', '8', 'entry', '17/03/2025', '2600', '167444');
INSERT INTO `transactions` VALUES ('1737', '23', 'exit', '17/03/2025', '2600', '105534');
INSERT INTO `transactions` VALUES ('1738', '8', 'entry', '17/03/2025', '12100', '170044');
INSERT INTO `transactions` VALUES ('1739', '9', 'exit', '17/03/2025', '2350', '229942');
INSERT INTO `transactions` VALUES ('1740', '9', 'exit', '17/03/2025', '2500', '227592');
INSERT INTO `transactions` VALUES ('1741', '23', 'exit', '17/03/2025', '50', '102934');
INSERT INTO `transactions` VALUES ('1742', '23', 'exit', '17/03/2025', '400', '102884');
INSERT INTO `transactions` VALUES ('1743', '8', 'entry', '17/03/2025', '2000', '182144');
INSERT INTO `transactions` VALUES ('1744', '8', 'exit', '17/03/2025', '2000', '184144');
INSERT INTO `transactions` VALUES ('1745', '8', 'entry', '17/03/2025', '2000', '182144');
INSERT INTO `transactions` VALUES ('1746', '8', 'entry', '17/03/2025', '2000', '184144');
INSERT INTO `transactions` VALUES ('1747', '8', 'entry', '17/03/2025', '2000', '186144');
INSERT INTO `transactions` VALUES ('1748', '23', 'entry', '17/03/2025', '3000', '102484');
INSERT INTO `transactions` VALUES ('1749', '23', 'exit', '17/03/2025', '100', '105484');
INSERT INTO `transactions` VALUES ('1750', '23', 'exit', '17/03/2025', '100', '105384');
INSERT INTO `transactions` VALUES ('1751', '37', 'entry', '17/03/2025', '3500', '40000');
INSERT INTO `transactions` VALUES ('1752', '23', 'entry', '17/03/2025', '3500', '105284');
INSERT INTO `transactions` VALUES ('1753', '9', 'entry', '17/03/2025', '11100', '225092');
INSERT INTO `transactions` VALUES ('1754', '23', 'exit', '17/03/2025', '50', '108784');
INSERT INTO `transactions` VALUES ('1755', '8', 'entry', '17/03/2025', '12100', '188144');
INSERT INTO `transactions` VALUES ('1756', '23', 'exit', '17/03/2025', '30', '108734');
INSERT INTO `transactions` VALUES ('1757', '23', 'exit', '17/03/2025', '425', '108704');
INSERT INTO `transactions` VALUES ('1758', '8', 'exit', '17/03/2025', '185', '200244');
INSERT INTO `transactions` VALUES ('1759', '8', 'exit', '17/03/2025', '65', '200059');
INSERT INTO `transactions` VALUES ('1760', '8', 'exit', '17/03/2025', '235', '199994');
INSERT INTO `transactions` VALUES ('1761', '23', 'entry', '17/03/2025', '3000', '108279');
INSERT INTO `transactions` VALUES ('1762', '23', 'exit', '17/03/2025', '400', '111279');
INSERT INTO `transactions` VALUES ('1763', '9', 'exit', '17/03/2025', '50', '236192');
INSERT INTO `transactions` VALUES ('1764', '23', 'exit', '17/03/2025', '250', '110879');
INSERT INTO `transactions` VALUES ('1765', '23', 'entry', '17/03/2025', '3500', '110629');
INSERT INTO `transactions` VALUES ('1766', '9', 'entry', '17/03/2025', '11100', '236142');
INSERT INTO `transactions` VALUES ('1767', '9', 'exit', '17/03/2025', '15', '247242');
INSERT INTO `transactions` VALUES ('1768', '9', 'exit', '17/03/2025', '320', '247227');
INSERT INTO `transactions` VALUES ('1769', '9', 'exit', '17/03/2025', '2000', '246907');
INSERT INTO `transactions` VALUES ('1770', '9', 'exit', '17/03/2025', '100', '244907');
INSERT INTO `transactions` VALUES ('1771', '23', 'entry', '17/03/2025', '3000', '114129');
INSERT INTO `transactions` VALUES ('1772', '23', 'exit', '17/03/2025', '400', '117129');
INSERT INTO `transactions` VALUES ('1773', '23', 'exit', '17/03/2025', '50', '116729');
INSERT INTO `transactions` VALUES ('1774', '9', 'exit', '17/03/2025', '350', '244807');
INSERT INTO `transactions` VALUES ('1775', '40', 'entry', '17/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1776', '9', 'exit', '17/03/2025', '5000', '244457');
INSERT INTO `transactions` VALUES ('1777', '9', 'exit', '17/03/2025', '5000', '239457');
INSERT INTO `transactions` VALUES ('1778', '1', 'entry', '17/03/2025', '13100', '1725675');
INSERT INTO `transactions` VALUES ('1779', '9', 'exit', '17/03/2025', '5000', '234457');
INSERT INTO `transactions` VALUES ('1780', '23', 'exit', '17/03/2025', '5000', '116679');
INSERT INTO `transactions` VALUES ('1781', '23', 'exit', '17/03/2025', '100', '111679');
INSERT INTO `transactions` VALUES ('1782', '23', 'entry', '17/03/2025', '3500', '111579');
INSERT INTO `transactions` VALUES ('1783', '9', 'entry', '17/03/2025', '11100', '229457');
INSERT INTO `transactions` VALUES ('1784', '23', 'exit', '17/03/2025', '350', '115079');
INSERT INTO `transactions` VALUES ('1785', '9', 'exit', '17/03/2025', '400', '240557');
INSERT INTO `transactions` VALUES ('1786', '23', 'exit', '17/03/2025', '2000', '114729');
INSERT INTO `transactions` VALUES ('1787', '23', 'exit', '17/03/2025', '50', '112729');
INSERT INTO `transactions` VALUES ('1788', '23', 'exit', '17/03/2025', '50', '112679');
INSERT INTO `transactions` VALUES ('1789', '23', 'entry', '17/03/2025', '3000', '112629');
INSERT INTO `transactions` VALUES ('1790', '23', 'exit', '17/03/2025', '50', '115629');
INSERT INTO `transactions` VALUES ('1791', '23', 'exit', '17/03/2025', '400', '115579');
INSERT INTO `transactions` VALUES ('1792', '23', 'exit', '17/03/2025', '400', '115179');
INSERT INTO `transactions` VALUES ('1793', '23', 'exit', '17/03/2025', '50', '114779');
INSERT INTO `transactions` VALUES ('1794', '1', 'entry', '17/03/2025', '13100', '1738775');
INSERT INTO `transactions` VALUES ('1795', '23', 'exit', '17/03/2025', '400', '114729');
INSERT INTO `transactions` VALUES ('1796', '23', 'entry', '17/03/2025', '3500', '114329');
INSERT INTO `transactions` VALUES ('1797', '9', 'entry', '17/03/2025', '11100', '240157');
INSERT INTO `transactions` VALUES ('1798', '37', 'entry', '17/03/2025', '3500', '43500');
INSERT INTO `transactions` VALUES ('1799', '23', 'exit', '17/03/2025', '2', '117829');
INSERT INTO `transactions` VALUES ('1800', '23', 'exit', '17/03/2025', '50', '117827');
INSERT INTO `transactions` VALUES ('1801', '23', 'entry', '17/03/2025', '3000', '117777');
INSERT INTO `transactions` VALUES ('1802', '23', 'exit', '17/03/2025', '50', '120777');
INSERT INTO `transactions` VALUES ('1803', '23', 'entry', '17/03/2025', '3500', '120727');
INSERT INTO `transactions` VALUES ('1804', '5', 'exit', '17/03/2025', '50', '370830');
INSERT INTO `transactions` VALUES ('1805', '5', 'exit', '17/03/2025', '500', '370780');
INSERT INTO `transactions` VALUES ('1806', '5', 'exit', '17/03/2025', '500', '370280');
INSERT INTO `transactions` VALUES ('1807', '5', 'entry', '17/03/2025', '12100', '369780');
INSERT INTO `transactions` VALUES ('1808', '23', 'exit', '17/03/2025', '50', '124227');
INSERT INTO `transactions` VALUES ('1809', '23', 'exit', '17/03/2025', '50', '124177');
INSERT INTO `transactions` VALUES ('1810', '23', 'exit', '17/03/2025', '50', '124127');
INSERT INTO `transactions` VALUES ('1811', '23', 'entry', '17/03/2025', '3500', '124077');
INSERT INTO `transactions` VALUES ('1812', '23', 'exit', '17/03/2025', '400', '127577');
INSERT INTO `transactions` VALUES ('1813', '23', 'exit', '17/03/2025', '6', '127177');
INSERT INTO `transactions` VALUES ('1814', '23', 'exit', '17/03/2025', '150', '127171');
INSERT INTO `transactions` VALUES ('1815', '23', 'exit', '17/03/2025', '100', '127021');
INSERT INTO `transactions` VALUES ('1816', '23', 'exit', '17/03/2025', '100', '126921');
INSERT INTO `transactions` VALUES ('1817', '23', 'entry', '17/03/2025', '3000', '126821');
INSERT INTO `transactions` VALUES ('1818', '23', 'entry', '17/03/2025', '3500', '129821');
INSERT INTO `transactions` VALUES ('1819', '23', 'exit', '17/03/2025', '350', '133321');
INSERT INTO `transactions` VALUES ('1820', '23', 'exit', '17/03/2025', '8000', '132971');
INSERT INTO `transactions` VALUES ('1821', '10', 'exit', '17/03/2025', '50', '133378');
INSERT INTO `transactions` VALUES ('1822', '10', 'exit', '17/03/2025', '400', '133328');
INSERT INTO `transactions` VALUES ('1823', '10', 'exit', '17/03/2025', '120', '132928');
INSERT INTO `transactions` VALUES ('1824', '10', 'exit', '17/03/2025', '120', '132808');
INSERT INTO `transactions` VALUES ('1825', '10', 'exit', '17/03/2025', '50', '132688');
INSERT INTO `transactions` VALUES ('1826', '7', 'exit', '17/03/2025', '1060', '5000');
INSERT INTO `transactions` VALUES ('1827', '10', 'exit', '17/03/2025', '30', '132638');
INSERT INTO `transactions` VALUES ('1828', '10', 'exit', '17/03/2025', '60', '132608');
INSERT INTO `transactions` VALUES ('1829', '41', 'entry', '17/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1830', '41', 'exit', '17/03/2025', '690', '5000');
INSERT INTO `transactions` VALUES ('1831', '10', 'exit', '17/03/2025', '50', '132548');
INSERT INTO `transactions` VALUES ('1832', '10', 'exit', '17/03/2025', '50', '132498');
INSERT INTO `transactions` VALUES ('1833', '10', 'exit', '17/03/2025', '50', '132448');
INSERT INTO `transactions` VALUES ('1834', '10', 'exit', '17/03/2025', '50', '132398');
INSERT INTO `transactions` VALUES ('1835', '10', 'entry', '17/03/2025', '3384', '132348');
INSERT INTO `transactions` VALUES ('1836', '10', 'exit', '17/03/2025', '180', '135732');
INSERT INTO `transactions` VALUES ('1837', '10', 'exit', '17/03/2025', '1000', '135552');
INSERT INTO `transactions` VALUES ('1838', '9', 'exit', '17/03/2025', '50', '251257');
INSERT INTO `transactions` VALUES ('1839', '5', 'exit', '17/03/2025', '50', '381880');
INSERT INTO `transactions` VALUES ('1840', '10', 'exit', '17/03/2025', '50', '134552');
INSERT INTO `transactions` VALUES ('1841', '9', 'exit', '17/03/2025', '910', '251207');
INSERT INTO `transactions` VALUES ('1842', '9', 'exit', '17/03/2025', '90', '250297');
INSERT INTO `transactions` VALUES ('1843', '10', 'exit', '17/03/2025', '50', '134502');
INSERT INTO `transactions` VALUES ('1844', '10', 'exit', '17/03/2025', '50', '134452');
INSERT INTO `transactions` VALUES ('1845', '10', 'exit', '17/03/2025', '60', '134402');
INSERT INTO `transactions` VALUES ('1846', '9', 'exit', '17/03/2025', '195', '250207');
INSERT INTO `transactions` VALUES ('1847', '10', 'exit', '17/03/2025', '20', '134342');
INSERT INTO `transactions` VALUES ('1848', '9', 'exit', '17/03/2025', '30', '250012');
INSERT INTO `transactions` VALUES ('1849', '9', 'exit', '17/03/2025', '30', '249982');
INSERT INTO `transactions` VALUES ('1850', '9', 'exit', '17/03/2025', '30', '249952');
INSERT INTO `transactions` VALUES ('1851', '9', 'entry', '17/03/2025', '4300', '249922');
INSERT INTO `transactions` VALUES ('1852', '5', 'exit', '17/03/2025', '4300', '381830');
INSERT INTO `transactions` VALUES ('1853', '5', 'entry', '17/03/2025', '12100', '377530');
INSERT INTO `transactions` VALUES ('1854', '9', 'entry', '17/03/2025', '4300', '254222');
INSERT INTO `transactions` VALUES ('1855', '10', 'exit', '17/03/2025', '4300', '134322');
INSERT INTO `transactions` VALUES ('1856', '9', 'entry', '17/03/2025', '1000', '258522');
INSERT INTO `transactions` VALUES ('1857', '4', 'exit', '17/03/2025', '1000', '172560');
INSERT INTO `transactions` VALUES ('1858', '10', 'exit', '17/03/2025', '50', '130022');
INSERT INTO `transactions` VALUES ('1859', '10', 'exit', '17/03/2025', '50', '129972');
INSERT INTO `transactions` VALUES ('1860', '9', 'exit', '17/03/2025', '195', '259522');
INSERT INTO `transactions` VALUES ('1861', '4', 'entry', '17/03/2025', '12100', '171560');
INSERT INTO `transactions` VALUES ('1862', '4', 'entry', '17/03/2025', '3500', '183660');
INSERT INTO `transactions` VALUES ('1863', '9', 'exit', '17/03/2025', '50', '259327');
INSERT INTO `transactions` VALUES ('1864', '11', 'entry', '17/03/2025', '12100', '36120');
INSERT INTO `transactions` VALUES ('1865', '5', 'exit', '17/03/2025', '7500', '389630');
INSERT INTO `transactions` VALUES ('1866', '5', 'exit', '17/03/2025', '3000', '382130');
INSERT INTO `transactions` VALUES ('1867', '4', 'exit', '17/03/2025', '27000', '187160');
INSERT INTO `transactions` VALUES ('1868', '9', 'entry', '17/03/2025', '11100', '259277');
INSERT INTO `transactions` VALUES ('1869', '4', 'entry', '17/03/2025', '12100', '160160');
INSERT INTO `transactions` VALUES ('1870', '4', 'entry', '17/03/2025', '3500', '172260');
INSERT INTO `transactions` VALUES ('1871', '5', 'exit', '17/03/2025', '250', '379130');
INSERT INTO `transactions` VALUES ('1872', '11', 'entry', '17/03/2025', '12100', '48220');
INSERT INTO `transactions` VALUES ('1873', '5', 'entry', '17/03/2025', '12100', '378880');
INSERT INTO `transactions` VALUES ('1874', '5', 'exit', '17/03/2025', '250', '390980');
INSERT INTO `transactions` VALUES ('1875', '5', 'exit', '17/03/2025', '250', '390730');
INSERT INTO `transactions` VALUES ('1876', '5', 'exit', '17/03/2025', '135', '390480');
INSERT INTO `transactions` VALUES ('1877', '1', 'entry', '17/03/2025', '35', '1751875');
INSERT INTO `transactions` VALUES ('1878', '5', 'exit', '17/03/2025', '785', '390345');
INSERT INTO `transactions` VALUES ('1879', '9', 'exit', '17/03/2025', '360', '270377');
INSERT INTO `transactions` VALUES ('1880', '1', 'entry', '17/03/2025', '35', '1751910');
INSERT INTO `transactions` VALUES ('1881', '11', 'entry', '17/03/2025', '12100', '60320');
INSERT INTO `transactions` VALUES ('1882', '5', 'entry', '17/03/2025', '12100', '389560');
INSERT INTO `transactions` VALUES ('1883', '33', 'entry', '17/03/2025', '20000', '5000');
INSERT INTO `transactions` VALUES ('1884', '5', 'exit', '17/03/2025', '20000', '401660');
INSERT INTO `transactions` VALUES ('1885', '5', 'exit', '17/03/2025', '2100', '381660');
INSERT INTO `transactions` VALUES ('1886', '5', 'exit', '17/03/2025', '500', '379560');
INSERT INTO `transactions` VALUES ('1887', '5', 'exit', '17/03/2025', '4500', '379060');
INSERT INTO `transactions` VALUES ('1888', '5', 'exit', '17/03/2025', '8750', '374560');
INSERT INTO `transactions` VALUES ('1889', '5', 'exit', '17/03/2025', '1150', '365810');
INSERT INTO `transactions` VALUES ('1890', '11', 'entry', '17/03/2025', '12100', '72420');
INSERT INTO `transactions` VALUES ('1891', '5', 'entry', '17/03/2025', '12100', '364660');
INSERT INTO `transactions` VALUES ('1892', '5', 'exit', '17/03/2025', '490', '376760');
INSERT INTO `transactions` VALUES ('1893', '11', 'exit', '17/03/2025', '2350', '84520');
INSERT INTO `transactions` VALUES ('1894', '11', 'exit', '17/03/2025', '350', '82170');
INSERT INTO `transactions` VALUES ('1895', '2', 'entry', '17/03/2025', '20000', '549926');
INSERT INTO `transactions` VALUES ('1896', '11', 'entry', '17/03/2025', '12100', '81820');
INSERT INTO `transactions` VALUES ('1897', '37', 'exit', '18/03/2025', '740', '47000');
INSERT INTO `transactions` VALUES ('1898', '37', 'exit', '18/03/2025', '740', '46260');
INSERT INTO `transactions` VALUES ('1899', '9', 'exit', '18/03/2025', '5000', '270017');
INSERT INTO `transactions` VALUES ('1900', '37', 'exit', '18/03/2025', '5000', '45520');
INSERT INTO `transactions` VALUES ('1901', '9', 'exit', '18/03/2025', '100', '265017');
INSERT INTO `transactions` VALUES ('1902', '37', 'entry', '18/03/2025', '3500', '40520');
INSERT INTO `transactions` VALUES ('1903', '37', 'exit', '18/03/2025', '2000', '44020');
INSERT INTO `transactions` VALUES ('1904', '9', 'entry', '18/03/2025', '11100', '264917');
INSERT INTO `transactions` VALUES ('1905', '9', 'exit', '18/03/2025', '350', '276017');
INSERT INTO `transactions` VALUES ('1906', '9', 'exit', '18/03/2025', '350', '275667');
INSERT INTO `transactions` VALUES ('1907', '37', 'exit', '18/03/2025', '200', '42020');
INSERT INTO `transactions` VALUES ('1908', '9', 'entry', '18/03/2025', '11100', '275317');
INSERT INTO `transactions` VALUES ('1909', '37', 'entry', '18/03/2025', '3500', '41820');
INSERT INTO `transactions` VALUES ('1910', '37', 'entry', '18/03/2025', '7100', '45320');
INSERT INTO `transactions` VALUES ('1911', '23', 'exit', '18/03/2025', '50', '124971');
INSERT INTO `transactions` VALUES ('1912', '9', 'entry', '18/03/2025', '11100', '286417');
INSERT INTO `transactions` VALUES ('1913', '23', 'exit', '18/03/2025', '125', '124921');
INSERT INTO `transactions` VALUES ('1914', '23', 'exit', '18/03/2025', '400', '124796');
INSERT INTO `transactions` VALUES ('1915', '9', 'exit', '18/03/2025', '180', '297517');
INSERT INTO `transactions` VALUES ('1916', '23', 'exit', '18/03/2025', '75', '124396');
INSERT INTO `transactions` VALUES ('1917', '37', 'exit', '18/03/2025', '1460', '52420');
INSERT INTO `transactions` VALUES ('1918', '23', 'entry', '18/03/2025', '100000', '124321');
INSERT INTO `transactions` VALUES ('1919', '9', 'exit', '18/03/2025', '100000', '297337');
INSERT INTO `transactions` VALUES ('1920', '23', 'entry', '18/03/2025', '2500', '224321');
INSERT INTO `transactions` VALUES ('1921', '23', 'exit', '18/03/2025', '200000', '226821');
INSERT INTO `transactions` VALUES ('1922', '37', 'entry', '18/03/2025', '3500', '50960');
INSERT INTO `transactions` VALUES ('1923', '23', 'exit', '18/03/2025', '50', '26821');
INSERT INTO `transactions` VALUES ('1924', '23', 'entry', '18/03/2025', '3500', '26771');
INSERT INTO `transactions` VALUES ('1925', '37', 'entry', '18/03/2025', '7100', '54460');
INSERT INTO `transactions` VALUES ('1926', '23', 'entry', '18/03/2025', '3000', '30271');
INSERT INTO `transactions` VALUES ('1927', '9', 'entry', '18/03/2025', '11100', '197337');
INSERT INTO `transactions` VALUES ('1928', '23', 'exit', '18/03/2025', '34', '33271');
INSERT INTO `transactions` VALUES ('1929', '23', 'exit', '18/03/2025', '1', '33237');
INSERT INTO `transactions` VALUES ('1930', '23', 'exit', '18/03/2025', '400', '33236');
INSERT INTO `transactions` VALUES ('1931', '37', 'entry', '18/03/2025', '3500', '61560');
INSERT INTO `transactions` VALUES ('1932', '23', 'exit', '18/03/2025', '400', '32836');
INSERT INTO `transactions` VALUES ('1933', '9', 'exit', '18/03/2025', '100', '208437');
INSERT INTO `transactions` VALUES ('1934', '23', 'entry', '18/03/2025', '3500', '32436');
INSERT INTO `transactions` VALUES ('1935', '37', 'entry', '18/03/2025', '7100', '65060');
INSERT INTO `transactions` VALUES ('1936', '23', 'entry', '18/03/2025', '3000', '35936');
INSERT INTO `transactions` VALUES ('1937', '23', 'exit', '18/03/2025', '7', '38936');
INSERT INTO `transactions` VALUES ('1938', '37', 'exit', '18/03/2025', '50000', '72160');
INSERT INTO `transactions` VALUES ('1939', '9', 'exit', '18/03/2025', '120', '208337');
INSERT INTO `transactions` VALUES ('1940', '23', 'exit', '18/03/2025', '120', '38929');
INSERT INTO `transactions` VALUES ('1941', '23', 'exit', '18/03/2025', '120', '38809');
INSERT INTO `transactions` VALUES ('1942', '9', 'exit', '18/03/2025', '120', '208217');
INSERT INTO `transactions` VALUES ('1943', '23', 'exit', '18/03/2025', '425', '38689');
INSERT INTO `transactions` VALUES ('1944', '9', 'entry', '18/03/2025', '11100', '208097');
INSERT INTO `transactions` VALUES ('1945', '23', 'entry', '18/03/2025', '3420', '38264');
INSERT INTO `transactions` VALUES ('1946', '37', 'exit', '18/03/2025', '3420', '22160');
INSERT INTO `transactions` VALUES ('1947', '23', 'exit', '18/03/2025', '1', '41684');
INSERT INTO `transactions` VALUES ('1948', '9', 'exit', '18/03/2025', '400', '219197');
INSERT INTO `transactions` VALUES ('1949', '23', 'exit', '18/03/2025', '400', '41683');
INSERT INTO `transactions` VALUES ('1950', '37', 'exit', '18/03/2025', '400', '18740');
INSERT INTO `transactions` VALUES ('1951', '23', 'exit', '18/03/2025', '60', '41283');
INSERT INTO `transactions` VALUES ('1952', '37', 'entry', '18/03/2025', '3500', '18340');
INSERT INTO `transactions` VALUES ('1953', '23', 'exit', '18/03/2025', '400', '41223');
INSERT INTO `transactions` VALUES ('1954', '23', 'entry', '18/03/2025', '3500', '40823');
INSERT INTO `transactions` VALUES ('1955', '37', 'entry', '18/03/2025', '7100', '21840');
INSERT INTO `transactions` VALUES ('1956', '23', 'entry', '18/03/2025', '3000', '44323');
INSERT INTO `transactions` VALUES ('1957', '9', 'exit', '18/03/2025', '100', '218797');
INSERT INTO `transactions` VALUES ('1958', '9', 'exit', '18/03/2025', '750', '218697');
INSERT INTO `transactions` VALUES ('1959', '23', 'exit', '18/03/2025', '50', '47323');
INSERT INTO `transactions` VALUES ('1960', '23', 'exit', '18/03/2025', '50', '47273');
INSERT INTO `transactions` VALUES ('1961', '37', 'entry', '18/03/2025', '3500', '28940');
INSERT INTO `transactions` VALUES ('1962', '23', 'entry', '18/03/2025', '3500', '47223');
INSERT INTO `transactions` VALUES ('1963', '23', 'entry', '18/03/2025', '3000', '50723');
INSERT INTO `transactions` VALUES ('1964', '9', 'exit', '18/03/2025', '975', '217947');
INSERT INTO `transactions` VALUES ('1965', '9', 'exit', '18/03/2025', '750', '216972');
INSERT INTO `transactions` VALUES ('1966', '23', 'exit', '18/03/2025', '400', '53723');
INSERT INTO `transactions` VALUES ('1967', '23', 'exit', '18/03/2025', '50', '53323');
INSERT INTO `transactions` VALUES ('1968', '23', 'exit', '18/03/2025', '50', '53273');
INSERT INTO `transactions` VALUES ('1969', '37', 'entry', '18/03/2025', '3500', '32440');
INSERT INTO `transactions` VALUES ('1970', '42', 'entry', '18/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('1971', '5', 'exit', '18/03/2025', '50', '376270');
INSERT INTO `transactions` VALUES ('1972', '5', 'exit', '18/03/2025', '1120', '376220');
INSERT INTO `transactions` VALUES ('1973', '5', 'exit', '18/03/2025', '300', '375100');
INSERT INTO `transactions` VALUES ('1974', '5', 'exit', '18/03/2025', '250', '374800');
INSERT INTO `transactions` VALUES ('1975', '23', 'exit', '18/03/2025', '50', '53223');
INSERT INTO `transactions` VALUES ('1976', '5', 'exit', '18/03/2025', '1000', '374550');
INSERT INTO `transactions` VALUES ('1977', '9', 'exit', '18/03/2025', '50', '216222');
INSERT INTO `transactions` VALUES ('1978', '23', 'exit', '18/03/2025', '400', '53173');
INSERT INTO `transactions` VALUES ('1979', '9', 'exit', '18/03/2025', '50', '216172');
INSERT INTO `transactions` VALUES ('1980', '1', 'entry', '18/03/2025', '12100', '1751945');
INSERT INTO `transactions` VALUES ('1981', '23', 'entry', '18/03/2025', '3500', '52773');
INSERT INTO `transactions` VALUES ('1982', '5', 'entry', '18/03/2025', '12100', '373550');
INSERT INTO `transactions` VALUES ('1983', '9', 'exit', '18/03/2025', '535', '216122');
INSERT INTO `transactions` VALUES ('1984', '9', 'entry', '18/03/2025', '535', '215587');
INSERT INTO `transactions` VALUES ('1985', '9', 'exit', '18/03/2025', '535', '216122');
INSERT INTO `transactions` VALUES ('1986', '5', 'exit', '18/03/2025', '550', '385650');
INSERT INTO `transactions` VALUES ('1987', '23', 'exit', '18/03/2025', '750', '56273');
INSERT INTO `transactions` VALUES ('1988', '42', 'entry', '18/03/2025', '35', '5000');
INSERT INTO `transactions` VALUES ('1989', '42', 'exit', '18/03/2025', '200', '5035');
INSERT INTO `transactions` VALUES ('1990', '9', 'exit', '18/03/2025', '3500', '215587');
INSERT INTO `transactions` VALUES ('1991', '23', 'entry', '18/03/2025', '3500', '55523');
INSERT INTO `transactions` VALUES ('1992', '9', 'entry', '18/03/2025', '11100', '212087');
INSERT INTO `transactions` VALUES ('1993', '23', 'entry', '18/03/2025', '3500', '59023');
INSERT INTO `transactions` VALUES ('1994', '9', 'exit', '18/03/2025', '400', '223187');
INSERT INTO `transactions` VALUES ('1995', '23', 'entry', '18/03/2025', '3000', '62523');
INSERT INTO `transactions` VALUES ('1996', '4', 'exit', '18/03/2025', '170000', '175760');
INSERT INTO `transactions` VALUES ('1997', '2', 'exit', '18/03/2025', '400', '569926');
INSERT INTO `transactions` VALUES ('1998', '23', 'exit', '18/03/2025', '27', '65523');
INSERT INTO `transactions` VALUES ('1999', '23', 'entry', '18/03/2025', '10000', '65496');
INSERT INTO `transactions` VALUES ('2000', '2', 'exit', '18/03/2025', '10000', '569526');
INSERT INTO `transactions` VALUES ('2001', '4', 'entry', '18/03/2025', '12100', '5760');
INSERT INTO `transactions` VALUES ('2002', '4', 'entry', '18/03/2025', '3500', '17860');
INSERT INTO `transactions` VALUES ('2003', '23', 'entry', '18/03/2025', '3500', '75496');
INSERT INTO `transactions` VALUES ('2004', '23', 'entry', '18/03/2025', '3000', '78996');
INSERT INTO `transactions` VALUES ('2005', '2', 'entry', '18/03/2025', '20000', '559526');
INSERT INTO `transactions` VALUES ('2006', '4', 'entry', '18/03/2025', '13100', '21360');
INSERT INTO `transactions` VALUES ('2007', '23', 'entry', '18/03/2025', '28000', '81996');
INSERT INTO `transactions` VALUES ('2008', '4', 'exit', '18/03/2025', '28000', '34460');
INSERT INTO `transactions` VALUES ('2009', '4', 'entry', '18/03/2025', '12100', '6460');
INSERT INTO `transactions` VALUES ('2010', '4', 'entry', '18/03/2025', '3500', '18560');
INSERT INTO `transactions` VALUES ('2011', '23', 'exit', '18/03/2025', '400', '109996');
INSERT INTO `transactions` VALUES ('2012', '23', 'entry', '18/03/2025', '3500', '109596');
INSERT INTO `transactions` VALUES ('2013', '9', 'exit', '18/03/2025', '975', '222787');
INSERT INTO `transactions` VALUES ('2014', '9', 'exit', '18/03/2025', '750', '221812');
INSERT INTO `transactions` VALUES ('2015', '23', 'entry', '18/03/2025', '3000', '113096');
INSERT INTO `transactions` VALUES ('2016', '2', 'entry', '18/03/2025', '20000', '579526');
INSERT INTO `transactions` VALUES ('2017', '23', 'exit', '18/03/2025', '2500', '116096');
INSERT INTO `transactions` VALUES ('2018', '4', 'entry', '18/03/2025', '13100', '22060');
INSERT INTO `transactions` VALUES ('2019', '23', 'exit', '18/03/2025', '400', '113596');
INSERT INTO `transactions` VALUES ('2020', '23', 'exit', '18/03/2025', '100', '113196');
INSERT INTO `transactions` VALUES ('2021', '23', 'exit', '18/03/2025', '250', '113096');
INSERT INTO `transactions` VALUES ('2022', '4', 'entry', '18/03/2025', '3500', '35160');
INSERT INTO `transactions` VALUES ('2023', '4', 'entry', '18/03/2025', '12100', '38660');
INSERT INTO `transactions` VALUES ('2024', '23', 'exit', '18/03/2025', '123', '112846');
INSERT INTO `transactions` VALUES ('2025', '23', 'entry', '18/03/2025', '3500', '112723');
INSERT INTO `transactions` VALUES ('2026', '23', 'exit', '18/03/2025', '150', '116223');
INSERT INTO `transactions` VALUES ('2027', '4', 'exit', '18/03/2025', '400', '50760');
INSERT INTO `transactions` VALUES ('2028', '23', 'entry', '18/03/2025', '3250', '116073');
INSERT INTO `transactions` VALUES ('2029', '2', 'entry', '18/03/2025', '20000', '599526');
INSERT INTO `transactions` VALUES ('2030', '23', 'exit', '18/03/2025', '400', '119323');
INSERT INTO `transactions` VALUES ('2031', '23', 'exit', '18/03/2025', '250', '118923');
INSERT INTO `transactions` VALUES ('2032', '9', 'exit', '18/03/2025', '250', '221062');
INSERT INTO `transactions` VALUES ('2033', '9', 'exit', '18/03/2025', '316', '220812');
INSERT INTO `transactions` VALUES ('2034', '9', 'exit', '18/03/2025', '250', '220496');
INSERT INTO `transactions` VALUES ('2035', '9', 'exit', '18/03/2025', '150', '220246');
INSERT INTO `transactions` VALUES ('2036', '4', 'entry', '18/03/2025', '3500', '50360');
INSERT INTO `transactions` VALUES ('2037', '4', 'entry', '18/03/2025', '12100', '53860');
INSERT INTO `transactions` VALUES ('2038', '4', 'exit', '18/03/2025', '400', '65960');
INSERT INTO `transactions` VALUES ('2039', '4', 'exit', '18/03/2025', '400', '65560');
INSERT INTO `transactions` VALUES ('2040', '23', 'entry', '18/03/2025', '3500', '118673');
INSERT INTO `transactions` VALUES ('2041', '23', 'exit', '18/03/2025', '250', '122173');
INSERT INTO `transactions` VALUES ('2042', '23', 'exit', '18/03/2025', '150', '121923');
INSERT INTO `transactions` VALUES ('2043', '9', 'exit', '18/03/2025', '750', '220096');
INSERT INTO `transactions` VALUES ('2044', '23', 'entry', '18/03/2025', '3250', '121773');
INSERT INTO `transactions` VALUES ('2045', '2', 'entry', '18/03/2025', '20000', '619526');
INSERT INTO `transactions` VALUES ('2046', '4', 'entry', '18/03/2025', '13100', '65160');
INSERT INTO `transactions` VALUES ('2047', '9', 'exit', '18/03/2025', '50', '219346');
INSERT INTO `transactions` VALUES ('2048', '9', 'exit', '18/03/2025', '50', '219296');
INSERT INTO `transactions` VALUES ('2049', '33', 'exit', '18/03/2025', '95', '25000');
INSERT INTO `transactions` VALUES ('2050', '33', 'entry', '18/03/2025', '95', '24905');
INSERT INTO `transactions` VALUES ('2051', '33', 'entry', '18/03/2025', '4700', '25000');
INSERT INTO `transactions` VALUES ('2052', '23', 'exit', '18/03/2025', '50', '125023');
INSERT INTO `transactions` VALUES ('2053', '33', 'entry', '18/03/2025', '4700', '29700');
INSERT INTO `transactions` VALUES ('2054', '23', 'exit', '18/03/2025', '100', '124973');
INSERT INTO `transactions` VALUES ('2055', '23', 'exit', '18/03/2025', '100', '124873');
INSERT INTO `transactions` VALUES ('2056', '23', 'exit', '18/03/2025', '100', '124773');
INSERT INTO `transactions` VALUES ('2057', '23', 'entry', '18/03/2025', '3250', '124673');
INSERT INTO `transactions` VALUES ('2058', '23', 'entry', '18/03/2025', '3500', '127923');
INSERT INTO `transactions` VALUES ('2059', '23', 'exit', '18/03/2025', '400', '131423');
INSERT INTO `transactions` VALUES ('2060', '23', 'entry', '18/03/2025', '3250', '131023');
INSERT INTO `transactions` VALUES ('2061', '23', 'entry', '18/03/2025', '3500', '134273');
INSERT INTO `transactions` VALUES ('2062', '9', 'exit', '18/03/2025', '535', '219246');
INSERT INTO `transactions` VALUES ('2063', '9', 'entry', '18/03/2025', '535', '218711');
INSERT INTO `transactions` VALUES ('2064', '9', 'exit', '18/03/2025', '135', '219246');
INSERT INTO `transactions` VALUES ('2065', '9', 'exit', '18/03/2025', '400', '219111');
INSERT INTO `transactions` VALUES ('2066', '33', 'entry', '18/03/2025', '4700', '34400');
INSERT INTO `transactions` VALUES ('2067', '9', 'exit', '18/03/2025', '50', '218711');
INSERT INTO `transactions` VALUES ('2068', '33', 'exit', '18/03/2025', '30000', '39100');
INSERT INTO `transactions` VALUES ('2069', '33', 'exit', '18/03/2025', '30', '9100');
INSERT INTO `transactions` VALUES ('2070', '33', 'exit', '18/03/2025', '2000', '9070');
INSERT INTO `transactions` VALUES ('2071', '33', 'exit', '18/03/2025', '2100', '7070');
INSERT INTO `transactions` VALUES ('2072', '33', 'exit', '18/03/2025', '500', '4970');
INSERT INTO `transactions` VALUES ('2073', '33', 'exit', '18/03/2025', '1150', '4470');
INSERT INTO `transactions` VALUES ('2074', '33', 'entry', '18/03/2025', '4700', '3320');
INSERT INTO `transactions` VALUES ('2075', '1', 'entry', '18/03/2025', '3500', '1764045');
INSERT INTO `transactions` VALUES ('2076', '1', 'entry', '18/03/2025', '12100', '1767545');
INSERT INTO `transactions` VALUES ('2077', '9', 'exit', '18/03/2025', '750', '218661');
INSERT INTO `transactions` VALUES ('2078', '2', 'exit', '18/03/2025', '1210', '639526');
INSERT INTO `transactions` VALUES ('2079', '9', 'exit', '18/03/2025', '120', '217911');
INSERT INTO `transactions` VALUES ('2080', '9', 'exit', '18/03/2025', '750', '217791');
INSERT INTO `transactions` VALUES ('2081', '1', 'entry', '18/03/2025', '12100', '1779645');
INSERT INTO `transactions` VALUES ('2082', '1', 'exit', '18/03/2025', '1190', '1791745');
INSERT INTO `transactions` VALUES ('2083', '43', 'entry', '18/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2084', '1', 'entry', '18/03/2025', '12100', '1790555');
INSERT INTO `transactions` VALUES ('2085', '1', 'exit', '18/03/2025', '250', '1802655');
INSERT INTO `transactions` VALUES ('2086', '1', 'exit', '18/03/2025', '400', '1802405');
INSERT INTO `transactions` VALUES ('2087', '44', 'entry', '18/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2088', '1', 'exit', '18/03/2025', '1190', '1802005');
INSERT INTO `transactions` VALUES ('2089', '45', 'entry', '18/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2090', '1', 'entry', '18/03/2025', '11100', '1800815');
INSERT INTO `transactions` VALUES ('2091', '10', 'exit', '18/03/2025', '50', '156922');
INSERT INTO `transactions` VALUES ('2092', '10', 'exit', '18/03/2025', '400', '156872');
INSERT INTO `transactions` VALUES ('2093', '10', 'exit', '18/03/2025', '50', '156472');
INSERT INTO `transactions` VALUES ('2094', '10', 'exit', '18/03/2025', '400', '156422');
INSERT INTO `transactions` VALUES ('2095', '10', 'exit', '18/03/2025', '250', '156022');
INSERT INTO `transactions` VALUES ('2096', '10', 'exit', '18/03/2025', '50', '155772');
INSERT INTO `transactions` VALUES ('2097', '10', 'exit', '18/03/2025', '50', '155722');
INSERT INTO `transactions` VALUES ('2098', '10', 'exit', '18/03/2025', '120', '155672');
INSERT INTO `transactions` VALUES ('2099', '1', 'entry', '18/03/2025', '11100', '1811915');
INSERT INTO `transactions` VALUES ('2100', '16', 'exit', '18/03/2025', '400', '255706');
INSERT INTO `transactions` VALUES ('2101', '21', 'entry', '18/03/2025', '100000', '5000');
INSERT INTO `transactions` VALUES ('2102', '1', 'exit', '18/03/2025', '100000', '1823015');
INSERT INTO `transactions` VALUES ('2103', '21', 'entry', '18/03/2025', '100000', '105000');
INSERT INTO `transactions` VALUES ('2104', '1', 'exit', '18/03/2025', '100000', '1723015');
INSERT INTO `transactions` VALUES ('2105', '16', 'exit', '18/03/2025', '650', '255306');
INSERT INTO `transactions` VALUES ('2106', '10', 'exit', '18/03/2025', '50', '155552');
INSERT INTO `transactions` VALUES ('2107', '10', 'exit', '18/03/2025', '50', '155502');
INSERT INTO `transactions` VALUES ('2108', '10', 'exit', '18/03/2025', '50', '155452');
INSERT INTO `transactions` VALUES ('2109', '10', 'exit', '18/03/2025', '50', '155402');
INSERT INTO `transactions` VALUES ('2110', '45', 'entry', '18/03/2025', '788', '5000');
INSERT INTO `transactions` VALUES ('2111', '21', 'exit', '19/03/2025', '16', '205000');
INSERT INTO `transactions` VALUES ('2112', '16', 'exit', '19/03/2025', '8', '254656');
INSERT INTO `transactions` VALUES ('2113', '1', 'entry', '19/03/2025', '11100', '1623015');
INSERT INTO `transactions` VALUES ('2114', '16', 'exit', '19/03/2025', '900', '254648');
INSERT INTO `transactions` VALUES ('2115', '16', 'entry', '19/03/2025', '810', '253748');
INSERT INTO `transactions` VALUES ('2116', '21', 'exit', '19/03/2025', '201', '204984');
INSERT INTO `transactions` VALUES ('2117', '45', 'entry', '19/03/2025', '1141', '5788');
INSERT INTO `transactions` VALUES ('2118', '16', 'exit', '19/03/2025', '400', '254558');
INSERT INTO `transactions` VALUES ('2119', '21', 'exit', '19/03/2025', '400', '204783');
INSERT INTO `transactions` VALUES ('2120', '16', 'exit', '19/03/2025', '400', '254158');
INSERT INTO `transactions` VALUES ('2121', '16', 'exit', '19/03/2025', '8', '253758');
INSERT INTO `transactions` VALUES ('2122', '16', 'exit', '19/03/2025', '100', '253750');
INSERT INTO `transactions` VALUES ('2123', '16', 'exit', '19/03/2025', '100', '253650');
INSERT INTO `transactions` VALUES ('2124', '9', 'exit', '19/03/2025', '50', '217041');
INSERT INTO `transactions` VALUES ('2125', '9', 'exit', '19/03/2025', '225', '216991');
INSERT INTO `transactions` VALUES ('2126', '9', 'exit', '19/03/2025', '50', '216766');
INSERT INTO `transactions` VALUES ('2127', '9', 'exit', '19/03/2025', '50', '216716');
INSERT INTO `transactions` VALUES ('2128', '9', 'exit', '19/03/2025', '50', '216666');
INSERT INTO `transactions` VALUES ('2129', '37', 'entry', '19/03/2025', '7100', '35940');
INSERT INTO `transactions` VALUES ('2130', '9', 'exit', '19/03/2025', '750', '216616');
INSERT INTO `transactions` VALUES ('2131', '23', 'exit', '19/03/2025', '50', '137773');
INSERT INTO `transactions` VALUES ('2132', '9', 'exit', '19/03/2025', '400', '215866');
INSERT INTO `transactions` VALUES ('2133', '23', 'exit', '19/03/2025', '200', '137723');
INSERT INTO `transactions` VALUES ('2134', '23', 'exit', '19/03/2025', '100', '137523');
INSERT INTO `transactions` VALUES ('2135', '23', 'exit', '19/03/2025', '50', '137423');
INSERT INTO `transactions` VALUES ('2136', '9', 'exit', '19/03/2025', '975', '215466');
INSERT INTO `transactions` VALUES ('2137', '9', 'exit', '19/03/2025', '750', '214491');
INSERT INTO `transactions` VALUES ('2138', '23', 'exit', '19/03/2025', '750', '137373');
INSERT INTO `transactions` VALUES ('2139', '23', 'entry', '19/03/2025', '3250', '136623');
INSERT INTO `transactions` VALUES ('2140', '23', 'entry', '19/03/2025', '3500', '139873');
INSERT INTO `transactions` VALUES ('2141', '46', 'entry', '19/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2142', '46', 'entry', '19/03/2025', '1000', '5000');
INSERT INTO `transactions` VALUES ('2143', '46', 'entry', '19/03/2025', '100', '6000');
INSERT INTO `transactions` VALUES ('2144', '46', 'entry', '19/03/2025', '100', '6100');
INSERT INTO `transactions` VALUES ('2145', '46', 'entry', '19/03/2025', '100', '6200');
INSERT INTO `transactions` VALUES ('2146', '46', 'entry', '19/03/2025', '100', '6300');
INSERT INTO `transactions` VALUES ('2147', '1', 'exit', '19/03/2025', '5', '1634115');
INSERT INTO `transactions` VALUES ('2148', '1', 'exit', '19/03/2025', '1190', '1634110');
INSERT INTO `transactions` VALUES ('2149', '3', 'entry', '19/03/2025', '3500', '1067917');
INSERT INTO `transactions` VALUES ('2150', '3', 'entry', '19/03/2025', '2250', '1071417');
INSERT INTO `transactions` VALUES ('2151', '3', 'entry', '19/03/2025', '3500', '1073667');
INSERT INTO `transactions` VALUES ('2152', '3', 'entry', '19/03/2025', '500', '1077167');
INSERT INTO `transactions` VALUES ('2153', '3', 'entry', '19/03/2025', '3500', '1077667');
INSERT INTO `transactions` VALUES ('2154', '3', 'entry', '19/03/2025', '3500', '1081167');
INSERT INTO `transactions` VALUES ('2155', '3', 'entry', '19/03/2025', '3500', '1084667');
INSERT INTO `transactions` VALUES ('2156', '3', 'entry', '19/03/2025', '810', '1088167');
INSERT INTO `transactions` VALUES ('2157', '3', 'entry', '19/03/2025', '1', '1088977');
INSERT INTO `transactions` VALUES ('2158', '3', 'entry', '19/03/2025', '3500', '1088978');
INSERT INTO `transactions` VALUES ('2159', '4', 'exit', '19/03/2025', '1830', '78260');
INSERT INTO `transactions` VALUES ('2160', '47', 'entry', '19/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2161', '4', 'entry', '19/03/2025', '13100', '76430');
INSERT INTO `transactions` VALUES ('2162', '4', 'entry', '19/03/2025', '3500', '89530');
INSERT INTO `transactions` VALUES ('2163', '4', 'entry', '19/03/2025', '12100', '93030');
INSERT INTO `transactions` VALUES ('2164', '4', 'exit', '19/03/2025', '400', '105130');
INSERT INTO `transactions` VALUES ('2165', '4', 'exit', '19/03/2025', '400', '104730');
INSERT INTO `transactions` VALUES ('2166', '1', 'exit', '19/03/2025', '123', '1632920');
INSERT INTO `transactions` VALUES ('2167', '4', 'entry', '19/03/2025', '75000', '104330');
INSERT INTO `transactions` VALUES ('2168', '1', 'entry', '19/03/2025', '3500', '1632797');
INSERT INTO `transactions` VALUES ('2169', '4', 'exit', '19/03/2025', '100', '179330');
INSERT INTO `transactions` VALUES ('2170', '4', 'exit', '19/03/2025', '100', '179230');
INSERT INTO `transactions` VALUES ('2171', '4', 'exit', '19/03/2025', '100', '179130');
INSERT INTO `transactions` VALUES ('2172', '4', 'exit', '19/03/2025', '5000', '179030');
INSERT INTO `transactions` VALUES ('2173', '4', 'exit', '19/03/2025', '50', '174030');
INSERT INTO `transactions` VALUES ('2174', '4', 'entry', '19/03/2025', '13100', '173980');
INSERT INTO `transactions` VALUES ('2175', '4', 'entry', '19/03/2025', '3500', '187080');
INSERT INTO `transactions` VALUES ('2176', '4', 'entry', '19/03/2025', '12100', '190580');
INSERT INTO `transactions` VALUES ('2177', '4', 'exit', '19/03/2025', '50', '202680');
INSERT INTO `transactions` VALUES ('2178', '1', 'entry', '19/03/2025', '12100', '1636297');
INSERT INTO `transactions` VALUES ('2179', '1', 'exit', '19/03/2025', '45', '1648397');
INSERT INTO `transactions` VALUES ('2180', '10', 'exit', '19/03/2025', '50', '155352');
INSERT INTO `transactions` VALUES ('2181', '4', 'exit', '19/03/2025', '46500', '202630');
INSERT INTO `transactions` VALUES ('2182', '1', 'entry', '19/03/2025', '46500', '1648352');
INSERT INTO `transactions` VALUES ('2183', '1', 'exit', '19/03/2025', '9', '1694852');
INSERT INTO `transactions` VALUES ('2184', '4', 'exit', '19/03/2025', '400', '156130');
INSERT INTO `transactions` VALUES ('2185', '4', 'exit', '19/03/2025', '10500', '155730');
INSERT INTO `transactions` VALUES ('2186', '1', 'entry', '19/03/2025', '10500', '1694843');
INSERT INTO `transactions` VALUES ('2187', '1', 'entry', '19/03/2025', '3500', '1705343');
INSERT INTO `transactions` VALUES ('2188', '10', 'exit', '19/03/2025', '180', '155302');
INSERT INTO `transactions` VALUES ('2189', '1', 'entry', '19/03/2025', '12100', '1708843');
INSERT INTO `transactions` VALUES ('2190', '10', 'exit', '19/03/2025', '400', '155122');
INSERT INTO `transactions` VALUES ('2191', '1', 'entry', '19/03/2025', '3500', '1720943');
INSERT INTO `transactions` VALUES ('2192', '10', 'exit', '19/03/2025', '120', '154722');
INSERT INTO `transactions` VALUES ('2193', '10', 'exit', '19/03/2025', '400', '154602');
INSERT INTO `transactions` VALUES ('2194', '10', 'exit', '19/03/2025', '50', '154202');
INSERT INTO `transactions` VALUES ('2195', '1', 'entry', '19/03/2025', '12100', '1724443');
INSERT INTO `transactions` VALUES ('2196', '37', 'exit', '19/03/2025', '420', '43040');
INSERT INTO `transactions` VALUES ('2197', '1', 'entry', '19/03/2025', '3500', '1736543');
INSERT INTO `transactions` VALUES ('2198', '48', 'entry', '19/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2199', '1', 'entry', '19/03/2025', '12100', '1740043');
INSERT INTO `transactions` VALUES ('2200', '23', 'exit', '19/03/2025', '50', '143373');
INSERT INTO `transactions` VALUES ('2201', '23', 'exit', '19/03/2025', '400', '143323');
INSERT INTO `transactions` VALUES ('2202', '1', 'entry', '19/03/2025', '3500', '1752143');
INSERT INTO `transactions` VALUES ('2203', '48', 'exit', '19/03/2025', '1400', '5000');
INSERT INTO `transactions` VALUES ('2204', '1', 'entry', '19/03/2025', '12100', '1755643');
INSERT INTO `transactions` VALUES ('2205', '23', 'entry', '19/03/2025', '3500', '142923');
INSERT INTO `transactions` VALUES ('2206', '23', 'entry', '19/03/2025', '3250', '146423');
INSERT INTO `transactions` VALUES ('2207', '16', 'exit', '19/03/2025', '400', '253550');
INSERT INTO `transactions` VALUES ('2208', '1', 'entry', '19/03/2025', '3500', '1767743');
INSERT INTO `transactions` VALUES ('2209', '1', 'entry', '19/03/2025', '12100', '1771243');
INSERT INTO `transactions` VALUES ('2210', '16', 'entry', '19/03/2025', '810', '253150');
INSERT INTO `transactions` VALUES ('2211', '23', 'entry', '19/03/2025', '3500', '149673');
INSERT INTO `transactions` VALUES ('2212', '23', 'entry', '19/03/2025', '3250', '153173');
INSERT INTO `transactions` VALUES ('2213', '16', 'entry', '19/03/2025', '3500', '253960');
INSERT INTO `transactions` VALUES ('2214', '1', 'entry', '19/03/2025', '3500', '1783343');
INSERT INTO `transactions` VALUES ('2215', '3', 'exit', '19/03/2025', '400', '1092478');
INSERT INTO `transactions` VALUES ('2216', '9', 'exit', '19/03/2025', '50', '213741');
INSERT INTO `transactions` VALUES ('2217', '33', 'exit', '19/03/2025', '4000', '8020');
INSERT INTO `transactions` VALUES ('2218', '33', 'entry', '19/03/2025', '3500', '4020');
INSERT INTO `transactions` VALUES ('2219', '9', 'exit', '19/03/2025', '535', '213691');
INSERT INTO `transactions` VALUES ('2220', '9', 'entry', '19/03/2025', '535', '213156');
INSERT INTO `transactions` VALUES ('2221', '45', 'entry', '19/03/2025', '1873', '6929');
INSERT INTO `transactions` VALUES ('2222', '1', 'entry', '19/03/2025', '12100', '1786843');
INSERT INTO `transactions` VALUES ('2223', '9', 'exit', '19/03/2025', '400', '213691');
INSERT INTO `transactions` VALUES ('2224', '16', 'exit', '19/03/2025', '400', '257460');
INSERT INTO `transactions` VALUES ('2225', '33', 'exit', '19/03/2025', '30', '7520');
INSERT INTO `transactions` VALUES ('2226', '33', 'exit', '19/03/2025', '2100', '7490');
INSERT INTO `transactions` VALUES ('2227', '33', 'exit', '19/03/2025', '2000', '5390');
INSERT INTO `transactions` VALUES ('2228', '33', 'exit', '19/03/2025', '1600', '3390');
INSERT INTO `transactions` VALUES ('2229', '33', 'exit', '19/03/2025', '500', '1790');
INSERT INTO `transactions` VALUES ('2230', '33', 'exit', '19/03/2025', '1150', '1290');
INSERT INTO `transactions` VALUES ('2231', '33', 'exit', '19/03/2025', '25', '140');
INSERT INTO `transactions` VALUES ('2232', '16', 'entry', '19/03/2025', '810', '257060');
INSERT INTO `transactions` VALUES ('2233', '23', 'entry', '19/03/2025', '3250', '156423');
INSERT INTO `transactions` VALUES ('2234', '23', 'entry', '19/03/2025', '3500', '159673');
INSERT INTO `transactions` VALUES ('2235', '16', 'exit', '19/03/2025', '400', '257870');
INSERT INTO `transactions` VALUES ('2236', '33', 'entry', '19/03/2025', '4700', '115');
INSERT INTO `transactions` VALUES ('2237', '1', 'entry', '19/03/2025', '3500', '1798943');
INSERT INTO `transactions` VALUES ('2238', '16', 'exit', '19/03/2025', '400', '257470');
INSERT INTO `transactions` VALUES ('2239', '3', 'entry', '19/03/2025', '3500', '1092078');
INSERT INTO `transactions` VALUES ('2240', '3', 'entry', '19/03/2025', '1', '1095578');
INSERT INTO `transactions` VALUES ('2241', '3', 'entry', '19/03/2025', '3500', '1095579');
INSERT INTO `transactions` VALUES ('2242', '3', 'entry', '19/03/2025', '3500', '1099079');
INSERT INTO `transactions` VALUES ('2243', '3', 'entry', '19/03/2025', '810', '1102579');
INSERT INTO `transactions` VALUES ('2244', '3', 'entry', '19/03/2025', '3500', '1103389');
INSERT INTO `transactions` VALUES ('2245', '3', 'entry', '19/03/2025', '3500', '1106889');
INSERT INTO `transactions` VALUES ('2246', '3', 'entry', '19/03/2025', '3500', '1110389');
INSERT INTO `transactions` VALUES ('2247', '3', 'entry', '19/03/2025', '2250', '1113889');
INSERT INTO `transactions` VALUES ('2248', '3', 'entry', '19/03/2025', '500', '1116139');
INSERT INTO `transactions` VALUES ('2249', '16', 'exit', '19/03/2025', '400', '257070');
INSERT INTO `transactions` VALUES ('2250', '9', 'entry', '19/03/2025', '100000', '213291');
INSERT INTO `transactions` VALUES ('2251', '23', 'exit', '19/03/2025', '100000', '163173');
INSERT INTO `transactions` VALUES ('2252', '1', 'entry', '19/03/2025', '12100', '1802443');
INSERT INTO `transactions` VALUES ('2253', '16', 'exit', '19/03/2025', '400', '256670');
INSERT INTO `transactions` VALUES ('2254', '16', 'entry', '19/03/2025', '800', '256270');
INSERT INTO `transactions` VALUES ('2255', '33', 'exit', '19/03/2025', '800', '4815');
INSERT INTO `transactions` VALUES ('2256', '16', 'exit', '19/03/2025', '400', '257070');
INSERT INTO `transactions` VALUES ('2257', '23', 'exit', '19/03/2025', '400', '63173');
INSERT INTO `transactions` VALUES ('2258', '9', 'exit', '19/03/2025', '400', '313291');
INSERT INTO `transactions` VALUES ('2259', '23', 'exit', '19/03/2025', '250', '62773');
INSERT INTO `transactions` VALUES ('2260', '1', 'exit', '19/03/2025', '12500', '1814543');
INSERT INTO `transactions` VALUES ('2261', '9', 'exit', '19/03/2025', '50', '312891');
INSERT INTO `transactions` VALUES ('2262', '9', 'exit', '19/03/2025', '700', '312841');
INSERT INTO `transactions` VALUES ('2263', '23', 'exit', '19/03/2025', '50', '62523');
INSERT INTO `transactions` VALUES ('2264', '42', 'exit', '19/03/2025', '100', '4835');
INSERT INTO `transactions` VALUES ('2265', '42', 'exit', '19/03/2025', '350', '4735');
INSERT INTO `transactions` VALUES ('2266', '42', 'exit', '19/03/2025', '350', '4385');
INSERT INTO `transactions` VALUES ('2267', '42', 'exit', '19/03/2025', '350', '4035');
INSERT INTO `transactions` VALUES ('2268', '23', 'exit', '19/03/2025', '400', '62473');
INSERT INTO `transactions` VALUES ('2269', '23', 'exit', '19/03/2025', '250', '62073');
INSERT INTO `transactions` VALUES ('2270', '3', 'exit', '19/03/2025', '323', '1116639');
INSERT INTO `transactions` VALUES ('2271', '9', 'exit', '19/03/2025', '50', '312141');
INSERT INTO `transactions` VALUES ('2272', '9', 'exit', '19/03/2025', '1000', '312091');
INSERT INTO `transactions` VALUES ('2273', '23', 'entry', '19/03/2025', '3250', '61823');
INSERT INTO `transactions` VALUES ('2274', '23', 'entry', '19/03/2025', '3500', '65073');
INSERT INTO `transactions` VALUES ('2275', '9', 'entry', '19/03/2025', '11100', '311091');
INSERT INTO `transactions` VALUES ('2276', '3', 'entry', '19/03/2025', '3500', '1116316');
INSERT INTO `transactions` VALUES ('2277', '3', 'entry', '19/03/2025', '3500', '1119816');
INSERT INTO `transactions` VALUES ('2278', '3', 'entry', '19/03/2025', '3500', '1123316');
INSERT INTO `transactions` VALUES ('2279', '3', 'entry', '19/03/2025', '3500', '1126816');
INSERT INTO `transactions` VALUES ('2280', '3', 'entry', '19/03/2025', '3500', '1130316');
INSERT INTO `transactions` VALUES ('2281', '3', 'entry', '19/03/2025', '1834', '1133816');
INSERT INTO `transactions` VALUES ('2282', '3', 'entry', '19/03/2025', '450', '1135650');
INSERT INTO `transactions` VALUES ('2283', '3', 'entry', '19/03/2025', '810', '1136100');
INSERT INTO `transactions` VALUES ('2284', '3', 'entry', '19/03/2025', '20000', '1136910');
INSERT INTO `transactions` VALUES ('2285', '3', 'entry', '19/03/2025', '2250', '1156910');
INSERT INTO `transactions` VALUES ('2286', '3', 'entry', '19/03/2025', '1', '1159160');
INSERT INTO `transactions` VALUES ('2287', '3', 'entry', '19/03/2025', '500', '1159161');
INSERT INTO `transactions` VALUES ('2288', '3', 'entry', '19/03/2025', '1134', '1159661');
INSERT INTO `transactions` VALUES ('2289', '3', 'entry', '19/03/2025', '3500', '1160795');
INSERT INTO `transactions` VALUES ('2290', '3', 'entry', '19/03/2025', '3500', '1164295');
INSERT INTO `transactions` VALUES ('2291', '3', 'exit', '19/03/2025', '10000', '1167795');
INSERT INTO `transactions` VALUES ('2292', '23', 'exit', '19/03/2025', '135', '68573');
INSERT INTO `transactions` VALUES ('2293', '23', 'exit', '19/03/2025', '150', '68438');
INSERT INTO `transactions` VALUES ('2294', '42', 'exit', '19/03/2025', '90', '3685');
INSERT INTO `transactions` VALUES ('2295', '23', 'exit', '19/03/2025', '1000', '68288');
INSERT INTO `transactions` VALUES ('2296', '23', 'exit', '19/03/2025', '2500', '67288');
INSERT INTO `transactions` VALUES ('2297', '23', 'exit', '19/03/2025', '3500', '64788');
INSERT INTO `transactions` VALUES ('2298', '42', 'exit', '19/03/2025', '150', '3595');
INSERT INTO `transactions` VALUES ('2299', '1', 'entry', '19/03/2025', '12100', '1802043');
INSERT INTO `transactions` VALUES ('2300', '9', 'exit', '19/03/2025', '400', '322191');
INSERT INTO `transactions` VALUES ('2301', '23', 'entry', '19/03/2025', '3250', '61288');
INSERT INTO `transactions` VALUES ('2302', '23', 'entry', '19/03/2025', '3500', '64538');
INSERT INTO `transactions` VALUES ('2303', '9', 'exit', '19/03/2025', '50', '321791');
INSERT INTO `transactions` VALUES ('2304', '9', 'exit', '19/03/2025', '50', '321741');
INSERT INTO `transactions` VALUES ('2305', '3', 'entry', '19/03/2025', '3500', '1157795');
INSERT INTO `transactions` VALUES ('2306', '3', 'entry', '19/03/2025', '3500', '1161295');
INSERT INTO `transactions` VALUES ('2307', '3', 'entry', '19/03/2025', '3500', '1164795');
INSERT INTO `transactions` VALUES ('2308', '3', 'entry', '19/03/2025', '3500', '1168295');
INSERT INTO `transactions` VALUES ('2309', '3', 'entry', '19/03/2025', '3500', '1171795');
INSERT INTO `transactions` VALUES ('2310', '3', 'entry', '19/03/2025', '1834', '1175295');
INSERT INTO `transactions` VALUES ('2311', '3', 'entry', '19/03/2025', '450', '1177129');
INSERT INTO `transactions` VALUES ('2312', '3', 'entry', '19/03/2025', '810', '1177579');
INSERT INTO `transactions` VALUES ('2313', '3', 'entry', '19/03/2025', '20000', '1178389');
INSERT INTO `transactions` VALUES ('2314', '3', 'entry', '19/03/2025', '2250', '1198389');
INSERT INTO `transactions` VALUES ('2315', '3', 'entry', '19/03/2025', '1', '1200639');
INSERT INTO `transactions` VALUES ('2316', '3', 'entry', '19/03/2025', '500', '1200640');
INSERT INTO `transactions` VALUES ('2317', '3', 'entry', '19/03/2025', '1134', '1201140');
INSERT INTO `transactions` VALUES ('2318', '3', 'entry', '19/03/2025', '3500', '1202274');
INSERT INTO `transactions` VALUES ('2319', '3', 'entry', '19/03/2025', '3500', '1205774');
INSERT INTO `transactions` VALUES ('2320', '9', 'exit', '19/03/2025', '400', '321691');
INSERT INTO `transactions` VALUES ('2321', '23', 'exit', '19/03/2025', '135', '68038');
INSERT INTO `transactions` VALUES ('2322', '9', 'entry', '19/03/2025', '15', '321291');
INSERT INTO `transactions` VALUES ('2323', '23', 'exit', '19/03/2025', '175', '67903');
INSERT INTO `transactions` VALUES ('2324', '23', 'entry', '19/03/2025', '175', '67728');
INSERT INTO `transactions` VALUES ('2325', '23', 'exit', '19/03/2025', '175', '67903');
INSERT INTO `transactions` VALUES ('2326', '1', 'entry', '19/03/2025', '12100', '1814143');
INSERT INTO `transactions` VALUES ('2327', '9', 'entry', '19/03/2025', '15', '321306');
INSERT INTO `transactions` VALUES ('2328', '23', 'exit', '19/03/2025', '14', '67728');
INSERT INTO `transactions` VALUES ('2329', '23', 'exit', '19/03/2025', '250', '67714');
INSERT INTO `transactions` VALUES ('2330', '23', 'entry', '19/03/2025', '250', '67464');
INSERT INTO `transactions` VALUES ('2331', '23', 'entry', '19/03/2025', '3250', '67714');
INSERT INTO `transactions` VALUES ('2332', '23', 'entry', '19/03/2025', '3500', '70964');
INSERT INTO `transactions` VALUES ('2333', '23', 'exit', '19/03/2025', '250', '74464');
INSERT INTO `transactions` VALUES ('2334', '9', 'exit', '19/03/2025', '1000', '321321');
INSERT INTO `transactions` VALUES ('2335', '3', 'entry', '19/03/2025', '3500', '1209274');
INSERT INTO `transactions` VALUES ('2336', '3', 'entry', '19/03/2025', '3500', '1212774');
INSERT INTO `transactions` VALUES ('2337', '3', 'entry', '19/03/2025', '3500', '1216274');
INSERT INTO `transactions` VALUES ('2338', '3', 'entry', '19/03/2025', '3500', '1219774');
INSERT INTO `transactions` VALUES ('2339', '3', 'entry', '19/03/2025', '3500', '1223274');
INSERT INTO `transactions` VALUES ('2340', '3', 'entry', '19/03/2025', '1834', '1226774');
INSERT INTO `transactions` VALUES ('2341', '3', 'entry', '19/03/2025', '450', '1228608');
INSERT INTO `transactions` VALUES ('2342', '3', 'entry', '19/03/2025', '810', '1229058');
INSERT INTO `transactions` VALUES ('2343', '3', 'entry', '19/03/2025', '20000', '1229868');
INSERT INTO `transactions` VALUES ('2344', '3', 'entry', '19/03/2025', '2250', '1249868');
INSERT INTO `transactions` VALUES ('2345', '3', 'entry', '19/03/2025', '1', '1252118');
INSERT INTO `transactions` VALUES ('2346', '3', 'entry', '19/03/2025', '500', '1252119');
INSERT INTO `transactions` VALUES ('2347', '3', 'entry', '19/03/2025', '1134', '1252619');
INSERT INTO `transactions` VALUES ('2348', '3', 'entry', '19/03/2025', '3500', '1253753');
INSERT INTO `transactions` VALUES ('2349', '3', 'entry', '19/03/2025', '3500', '1257253');
INSERT INTO `transactions` VALUES ('2350', '23', 'entry', '19/03/2025', '250', '74214');
INSERT INTO `transactions` VALUES ('2351', '23', 'exit', '19/03/2025', '250', '74464');
INSERT INTO `transactions` VALUES ('2352', '23', 'exit', '19/03/2025', '10000', '74214');
INSERT INTO `transactions` VALUES ('2353', '9', 'entry', '19/03/2025', '50', '320321');
INSERT INTO `transactions` VALUES ('2354', '42', 'entry', '19/03/2025', '4000', '3445');
INSERT INTO `transactions` VALUES ('2355', '23', 'exit', '19/03/2025', '4000', '64214');
INSERT INTO `transactions` VALUES ('2356', '9', 'exit', '19/03/2025', '50', '320371');
INSERT INTO `transactions` VALUES ('2357', '23', 'entry', '19/03/2025', '3250', '60214');
INSERT INTO `transactions` VALUES ('2358', '23', 'entry', '19/03/2025', '3500', '63464');
INSERT INTO `transactions` VALUES ('2359', '5', 'exit', '19/03/2025', '50', '385100');
INSERT INTO `transactions` VALUES ('2360', '9', 'entry', '19/03/2025', '30000', '320321');
INSERT INTO `transactions` VALUES ('2361', '3', 'exit', '19/03/2025', '30000', '1260753');
INSERT INTO `transactions` VALUES ('2362', '42', 'entry', '19/03/2025', '2000', '7445');
INSERT INTO `transactions` VALUES ('2363', '42', 'entry', '19/03/2025', '500', '9445');
INSERT INTO `transactions` VALUES ('2364', '42', 'entry', '19/03/2025', '500', '9945');
INSERT INTO `transactions` VALUES ('2365', '42', 'entry', '19/03/2025', '500', '10445');
INSERT INTO `transactions` VALUES ('2366', '42', 'entry', '19/03/2025', '200', '10945');
INSERT INTO `transactions` VALUES ('2367', '1', 'entry', '19/03/2025', '12100', '1826243');
INSERT INTO `transactions` VALUES ('2368', '23', 'exit', '19/03/2025', '50', '66964');
INSERT INTO `transactions` VALUES ('2369', '5', 'exit', '19/03/2025', '1480', '385050');
INSERT INTO `transactions` VALUES ('2370', '23', 'exit', '19/03/2025', '50', '66914');
INSERT INTO `transactions` VALUES ('2371', '37', 'entry', '19/03/2025', '7100', '42620');
INSERT INTO `transactions` VALUES ('2372', '23', 'exit', '19/03/2025', '400', '66864');
INSERT INTO `transactions` VALUES ('2373', '3', 'entry', '19/03/2025', '3500', '1230753');
INSERT INTO `transactions` VALUES ('2374', '3', 'entry', '19/03/2025', '3500', '1234253');
INSERT INTO `transactions` VALUES ('2375', '3', 'entry', '19/03/2025', '3500', '1237753');
INSERT INTO `transactions` VALUES ('2376', '3', 'entry', '19/03/2025', '3500', '1241253');
INSERT INTO `transactions` VALUES ('2377', '3', 'entry', '19/03/2025', '3500', '1244753');
INSERT INTO `transactions` VALUES ('2378', '3', 'entry', '19/03/2025', '1834', '1248253');
INSERT INTO `transactions` VALUES ('2379', '3', 'entry', '19/03/2025', '450', '1250087');
INSERT INTO `transactions` VALUES ('2380', '3', 'entry', '19/03/2025', '810', '1250537');
INSERT INTO `transactions` VALUES ('2381', '3', 'entry', '19/03/2025', '20000', '1251347');
INSERT INTO `transactions` VALUES ('2382', '3', 'entry', '19/03/2025', '2250', '1271347');
INSERT INTO `transactions` VALUES ('2383', '3', 'entry', '19/03/2025', '1', '1273597');
INSERT INTO `transactions` VALUES ('2384', '3', 'entry', '19/03/2025', '500', '1273598');
INSERT INTO `transactions` VALUES ('2385', '3', 'entry', '19/03/2025', '1134', '1274098');
INSERT INTO `transactions` VALUES ('2386', '3', 'entry', '19/03/2025', '3500', '1275232');
INSERT INTO `transactions` VALUES ('2387', '3', 'entry', '19/03/2025', '3500', '1278732');
INSERT INTO `transactions` VALUES ('2388', '42', 'exit', '19/03/2025', '1000', '11145');
INSERT INTO `transactions` VALUES ('2389', '5', 'exit', '19/03/2025', '45', '383570');
INSERT INTO `transactions` VALUES ('2390', '5', 'exit', '19/03/2025', '45', '383525');
INSERT INTO `transactions` VALUES ('2391', '5', 'exit', '19/03/2025', '45', '383480');
INSERT INTO `transactions` VALUES ('2392', '9', 'exit', '19/03/2025', '225', '350321');
INSERT INTO `transactions` VALUES ('2393', '42', 'exit', '19/03/2025', '5000', '10145');
INSERT INTO `transactions` VALUES ('2394', '42', 'exit', '19/03/2025', '50', '5145');
INSERT INTO `transactions` VALUES ('2395', '23', 'exit', '19/03/2025', '400', '66464');
INSERT INTO `transactions` VALUES ('2396', '42', 'exit', '19/03/2025', '400', '5095');
INSERT INTO `transactions` VALUES ('2397', '9', 'exit', '19/03/2025', '400', '350096');
INSERT INTO `transactions` VALUES ('2398', '5', 'exit', '19/03/2025', '400', '383435');
INSERT INTO `transactions` VALUES ('2399', '3', 'exit', '19/03/2025', '50', '1282232');
INSERT INTO `transactions` VALUES ('2400', '5', 'entry', '19/03/2025', '12100', '383035');
INSERT INTO `transactions` VALUES ('2401', '15', 'exit', '19/03/2025', '660', '8470');
INSERT INTO `transactions` VALUES ('2402', '23', 'exit', '19/03/2025', '50', '66064');
INSERT INTO `transactions` VALUES ('2403', '23', 'entry', '19/03/2025', '3250', '66014');
INSERT INTO `transactions` VALUES ('2404', '23', 'entry', '19/03/2025', '3500', '69264');
INSERT INTO `transactions` VALUES ('2405', '1', 'entry', '19/03/2025', '12100', '1838343');
INSERT INTO `transactions` VALUES ('2406', '23', 'exit', '19/03/2025', '50', '72764');
INSERT INTO `transactions` VALUES ('2407', '5', 'exit', '19/03/2025', '400', '395135');
INSERT INTO `transactions` VALUES ('2408', '3', 'exit', '19/03/2025', '10000', '1282182');
INSERT INTO `transactions` VALUES ('2409', '15', 'entry', '19/03/2025', '3500', '7810');
INSERT INTO `transactions` VALUES ('2410', '9', 'exit', '19/03/2025', '750', '349696');
INSERT INTO `transactions` VALUES ('2411', '15', 'exit', '19/03/2025', '990', '11310');
INSERT INTO `transactions` VALUES ('2412', '3', 'exit', '19/03/2025', '400', '1272182');
INSERT INTO `transactions` VALUES ('2413', '5', 'exit', '19/03/2025', '400', '394735');
INSERT INTO `transactions` VALUES ('2414', '5', 'entry', '19/03/2025', '12100', '394335');
INSERT INTO `transactions` VALUES ('2415', '23', 'entry', '19/03/2025', '3250', '72714');
INSERT INTO `transactions` VALUES ('2416', '23', 'entry', '19/03/2025', '3500', '75964');
INSERT INTO `transactions` VALUES ('2417', '3', 'exit', '19/03/2025', '400', '1271782');
INSERT INTO `transactions` VALUES ('2418', '23', 'exit', '19/03/2025', '50', '79464');
INSERT INTO `transactions` VALUES ('2419', '48', 'exit', '19/03/2025', '400', '3600');
INSERT INTO `transactions` VALUES ('2420', '15', 'exit', '19/03/2025', '1', '10320');
INSERT INTO `transactions` VALUES ('2421', '15', 'entry', '19/03/2025', '3500', '10319');
INSERT INTO `transactions` VALUES ('2422', '9', 'exit', '19/03/2025', '50', '348946');
INSERT INTO `transactions` VALUES ('2423', '15', 'exit', '19/03/2025', '2000', '13819');
INSERT INTO `transactions` VALUES ('2424', '1', 'exit', '19/03/2025', '400', '1850443');
INSERT INTO `transactions` VALUES ('2425', '23', 'exit', '19/03/2025', '30000', '79414');
INSERT INTO `transactions` VALUES ('2426', '9', 'entry', '19/03/2025', '11100', '348896');
INSERT INTO `transactions` VALUES ('2427', '23', 'exit', '19/03/2025', '50', '49414');
INSERT INTO `transactions` VALUES ('2428', '23', 'entry', '19/03/2025', '3250', '49364');
INSERT INTO `transactions` VALUES ('2429', '23', 'entry', '19/03/2025', '3500', '52614');
INSERT INTO `transactions` VALUES ('2430', '1', 'entry', '20/03/2025', '12100', '1850043');
INSERT INTO `transactions` VALUES ('2431', '23', 'exit', '20/03/2025', '50', '56114');
INSERT INTO `transactions` VALUES ('2432', '9', 'exit', '20/03/2025', '50', '359996');
INSERT INTO `transactions` VALUES ('2433', '23', 'exit', '20/03/2025', '225', '56064');
INSERT INTO `transactions` VALUES ('2434', '23', 'exit', '20/03/2025', '75', '55839');
INSERT INTO `transactions` VALUES ('2435', '9', 'exit', '20/03/2025', '3500', '359946');
INSERT INTO `transactions` VALUES ('2436', '23', 'entry', '20/03/2025', '3500', '55764');
INSERT INTO `transactions` VALUES ('2437', '23', 'entry', '20/03/2025', '3250', '59264');
INSERT INTO `transactions` VALUES ('2438', '23', 'entry', '20/03/2025', '3500', '62514');
INSERT INTO `transactions` VALUES ('2439', '9', 'entry', '20/03/2025', '11100', '356446');
INSERT INTO `transactions` VALUES ('2440', '23', 'entry', '20/03/2025', '3250', '66014');
INSERT INTO `transactions` VALUES ('2441', '23', 'entry', '20/03/2025', '3500', '69264');
INSERT INTO `transactions` VALUES ('2442', '9', 'entry', '20/03/2025', '11100', '367546');
INSERT INTO `transactions` VALUES ('2443', '23', 'exit', '20/03/2025', '50', '72764');
INSERT INTO `transactions` VALUES ('2444', '23', 'exit', '20/03/2025', '400', '72714');
INSERT INTO `transactions` VALUES ('2445', '9', 'exit', '20/03/2025', '50', '378646');
INSERT INTO `transactions` VALUES ('2446', '23', 'exit', '20/03/2025', '400', '72314');
INSERT INTO `transactions` VALUES ('2447', '9', 'exit', '20/03/2025', '50', '378596');
INSERT INTO `transactions` VALUES ('2448', '48', 'exit', '20/03/2025', '300', '3200');
INSERT INTO `transactions` VALUES ('2449', '23', 'exit', '20/03/2025', '483', '71914');
INSERT INTO `transactions` VALUES ('2450', '9', 'entry', '20/03/2025', '11100', '378546');
INSERT INTO `transactions` VALUES ('2451', '23', 'exit', '20/03/2025', '1500', '71431');
INSERT INTO `transactions` VALUES ('2452', '23', 'entry', '20/03/2025', '3250', '69931');
INSERT INTO `transactions` VALUES ('2453', '23', 'entry', '20/03/2025', '3500', '73181');
INSERT INTO `transactions` VALUES ('2454', '9', 'entry', '20/03/2025', '11100', '389646');
INSERT INTO `transactions` VALUES ('2455', '9', 'exit', '20/03/2025', '20', '400746');
INSERT INTO `transactions` VALUES ('2456', '9', 'exit', '20/03/2025', '120', '400726');
INSERT INTO `transactions` VALUES ('2457', '9', 'exit', '20/03/2025', '120', '400606');
INSERT INTO `transactions` VALUES ('2458', '23', 'exit', '20/03/2025', '2260', '76681');
INSERT INTO `transactions` VALUES ('2459', '23', 'exit', '20/03/2025', '2630', '74421');
INSERT INTO `transactions` VALUES ('2460', '23', 'entry', '20/03/2025', '3250', '71791');
INSERT INTO `transactions` VALUES ('2461', '23', 'entry', '20/03/2025', '3500', '75041');
INSERT INTO `transactions` VALUES ('2462', '23', 'exit', '20/03/2025', '50', '78541');
INSERT INTO `transactions` VALUES ('2463', '9', 'exit', '20/03/2025', '50', '400486');
INSERT INTO `transactions` VALUES ('2464', '9', 'entry', '20/03/2025', '11100', '400436');
INSERT INTO `transactions` VALUES ('2465', '23', 'exit', '20/03/2025', '400', '78491');
INSERT INTO `transactions` VALUES ('2466', '1', 'entry', '20/03/2025', '12100', '1862143');
INSERT INTO `transactions` VALUES ('2467', '1', 'entry', '20/03/2025', '12100', '1874243');
INSERT INTO `transactions` VALUES ('2468', '1', 'entry', '20/03/2025', '12100', '1886343');
INSERT INTO `transactions` VALUES ('2469', '1', 'entry', '20/03/2025', '12100', '1898443');
INSERT INTO `transactions` VALUES ('2470', '1', 'exit', '20/03/2025', '100', '1910543');
INSERT INTO `transactions` VALUES ('2471', '1', 'exit', '20/03/2025', '2000', '1910443');
INSERT INTO `transactions` VALUES ('2472', '1', 'entry', '20/03/2025', '12100', '1908443');
INSERT INTO `transactions` VALUES ('2473', '1', 'entry', '20/03/2025', '12100', '1920543');
INSERT INTO `transactions` VALUES ('2474', '4', 'entry', '20/03/2025', '3500', '145230');
INSERT INTO `transactions` VALUES ('2475', '4', 'entry', '20/03/2025', '13100', '148730');
INSERT INTO `transactions` VALUES ('2476', '4', 'entry', '20/03/2025', '12100', '161830');
INSERT INTO `transactions` VALUES ('2477', '4', 'exit', '20/03/2025', '20000', '173930');
INSERT INTO `transactions` VALUES ('2478', '1', 'entry', '20/03/2025', '12100', '1932643');
INSERT INTO `transactions` VALUES ('2479', '4', 'exit', '20/03/2025', '80', '153930');
INSERT INTO `transactions` VALUES ('2480', '4', 'entry', '20/03/2025', '80', '153850');
INSERT INTO `transactions` VALUES ('2481', '2', 'entry', '20/03/2025', '13100', '638316');
INSERT INTO `transactions` VALUES ('2482', '2', 'entry', '20/03/2025', '20000', '651416');
INSERT INTO `transactions` VALUES ('2483', '2', 'entry', '20/03/2025', '20000', '671416');
INSERT INTO `transactions` VALUES ('2484', '2', 'entry', '20/03/2025', '13100', '691416');
INSERT INTO `transactions` VALUES ('2485', '46', 'exit', '20/03/2025', '50', '6400');
INSERT INTO `transactions` VALUES ('2486', '1', 'entry', '20/03/2025', '12100', '1944743');
INSERT INTO `transactions` VALUES ('2487', '46', 'exit', '20/03/2025', '1000', '6350');
INSERT INTO `transactions` VALUES ('2488', '3', 'entry', '20/03/2025', '20000', '1271382');
INSERT INTO `transactions` VALUES ('2489', '2', 'entry', '20/03/2025', '20000', '704516');
INSERT INTO `transactions` VALUES ('2490', '2', 'entry', '20/03/2025', '13100', '724516');
INSERT INTO `transactions` VALUES ('2491', '46', 'exit', '20/03/2025', '100', '5350');
INSERT INTO `transactions` VALUES ('2492', '1', 'entry', '20/03/2025', '12100', '1956843');
INSERT INTO `transactions` VALUES ('2493', '46', 'exit', '20/03/2025', '3800', '5250');
INSERT INTO `transactions` VALUES ('2494', '46', 'exit', '20/03/2025', '30', '1450');
INSERT INTO `transactions` VALUES ('2495', '46', 'exit', '20/03/2025', '1000', '1420');
INSERT INTO `transactions` VALUES ('2496', '46', 'entry', '20/03/2025', '500', '420');
INSERT INTO `transactions` VALUES ('2497', '46', 'exit', '20/03/2025', '500', '920');
INSERT INTO `transactions` VALUES ('2498', '3', 'entry', '20/03/2025', '20000', '1291382');
INSERT INTO `transactions` VALUES ('2499', '2', 'exit', '20/03/2025', '1210', '737616');
INSERT INTO `transactions` VALUES ('2500', '46', 'exit', '20/03/2025', '180', '420');
INSERT INTO `transactions` VALUES ('2501', '2', 'exit', '20/03/2025', '20', '736406');
INSERT INTO `transactions` VALUES ('2502', '5', 'exit', '20/03/2025', '12500', '406435');
INSERT INTO `transactions` VALUES ('2503', '5', 'exit', '20/03/2025', '500', '393935');
INSERT INTO `transactions` VALUES ('2504', '5', 'exit', '20/03/2025', '500', '393435');
INSERT INTO `transactions` VALUES ('2505', '5', 'exit', '20/03/2025', '500', '392935');
INSERT INTO `transactions` VALUES ('2506', '46', 'entry', '20/03/2025', '100000', '240');
INSERT INTO `transactions` VALUES ('2507', '5', 'exit', '20/03/2025', '100000', '392435');
INSERT INTO `transactions` VALUES ('2508', '2', 'entry', '20/03/2025', '13100', '736386');
INSERT INTO `transactions` VALUES ('2509', '2', 'entry', '20/03/2025', '20000', '749486');
INSERT INTO `transactions` VALUES ('2510', '46', 'entry', '20/03/2025', '2800', '100240');
INSERT INTO `transactions` VALUES ('2511', '46', 'exit', '20/03/2025', '490', '103040');
INSERT INTO `transactions` VALUES ('2512', '2', 'exit', '20/03/2025', '30', '769486');
INSERT INTO `transactions` VALUES ('2513', '46', 'exit', '20/03/2025', '1000', '102550');
INSERT INTO `transactions` VALUES ('2514', '46', 'exit', '20/03/2025', '2500', '101550');
INSERT INTO `transactions` VALUES ('2515', '46', 'exit', '20/03/2025', '3500', '99050');
INSERT INTO `transactions` VALUES ('2516', '46', 'exit', '20/03/2025', '2000', '95550');
INSERT INTO `transactions` VALUES ('2517', '46', 'exit', '20/03/2025', '20000', '93550');
INSERT INTO `transactions` VALUES ('2518', '46', 'exit', '20/03/2025', '9000', '73550');
INSERT INTO `transactions` VALUES ('2519', '46', 'exit', '20/03/2025', '30', '64550');
INSERT INTO `transactions` VALUES ('2520', '46', 'exit', '20/03/2025', '1600', '64520');
INSERT INTO `transactions` VALUES ('2521', '46', 'exit', '20/03/2025', '300', '62920');
INSERT INTO `transactions` VALUES ('2522', '46', 'exit', '20/03/2025', '300', '62620');
INSERT INTO `transactions` VALUES ('2523', '5', 'entry', '20/03/2025', '12100', '292435');
INSERT INTO `transactions` VALUES ('2524', '46', 'exit', '20/03/2025', '100', '62320');
INSERT INTO `transactions` VALUES ('2525', '46', 'exit', '20/03/2025', '400', '62220');
INSERT INTO `transactions` VALUES ('2526', '2', 'entry', '20/03/2025', '20000', '769456');
INSERT INTO `transactions` VALUES ('2527', '2', 'exit', '20/03/2025', '1500', '789456');
INSERT INTO `transactions` VALUES ('2528', '2', 'exit', '20/03/2025', '30', '787956');
INSERT INTO `transactions` VALUES ('2529', '2', 'exit', '20/03/2025', '30', '787926');
INSERT INTO `transactions` VALUES ('2530', '2', 'exit', '20/03/2025', '100', '787896');
INSERT INTO `transactions` VALUES ('2531', '2', 'exit', '20/03/2025', '300', '787796');
INSERT INTO `transactions` VALUES ('2532', '2', 'exit', '20/03/2025', '100', '787496');
INSERT INTO `transactions` VALUES ('2533', '46', 'exit', '20/03/2025', '100', '61820');
INSERT INTO `transactions` VALUES ('2534', '46', 'exit', '20/03/2025', '400', '61720');
INSERT INTO `transactions` VALUES ('2535', '46', 'exit', '20/03/2025', '100', '61320');
INSERT INTO `transactions` VALUES ('2536', '46', 'exit', '20/03/2025', '3800', '61220');
INSERT INTO `transactions` VALUES ('2537', '46', 'exit', '20/03/2025', '1150', '57420');
INSERT INTO `transactions` VALUES ('2538', '46', 'exit', '20/03/2025', '9000', '56270');
INSERT INTO `transactions` VALUES ('2539', '46', 'exit', '20/03/2025', '1000', '47270');
INSERT INTO `transactions` VALUES ('2540', '46', 'entry', '20/03/2025', '2800', '46270');
INSERT INTO `transactions` VALUES ('2541', '2', 'exit', '20/03/2025', '400', '787396');
INSERT INTO `transactions` VALUES ('2542', '2', 'exit', '20/03/2025', '8', '786996');
INSERT INTO `transactions` VALUES ('2543', '2', 'exit', '20/03/2025', '250', '786988');
INSERT INTO `transactions` VALUES ('2544', '2', 'exit', '20/03/2025', '123', '786738');
INSERT INTO `transactions` VALUES ('2545', '2', 'exit', '20/03/2025', '400', '786615');
INSERT INTO `transactions` VALUES ('2546', '2', 'exit', '20/03/2025', '100', '786215');
INSERT INTO `transactions` VALUES ('2547', '2', 'exit', '20/03/2025', '64', '786115');
INSERT INTO `transactions` VALUES ('2548', '2', 'entry', '20/03/2025', '20000', '786051');
INSERT INTO `transactions` VALUES ('2549', '41', 'exit', '20/03/2025', '8', '4310');
INSERT INTO `transactions` VALUES ('2550', '41', 'exit', '20/03/2025', '10', '4302');
INSERT INTO `transactions` VALUES ('2551', '41', 'exit', '20/03/2025', '400', '4292');
INSERT INTO `transactions` VALUES ('2552', '41', 'exit', '20/03/2025', '123', '3892');
INSERT INTO `transactions` VALUES ('2553', '41', 'entry', '20/03/2025', '3500', '3769');
INSERT INTO `transactions` VALUES ('2554', '41', 'exit', '20/03/2025', '5', '7269');
INSERT INTO `transactions` VALUES ('2555', '15', 'exit', '20/03/2025', '6', '11819');
INSERT INTO `transactions` VALUES ('2556', '2', 'entry', '20/03/2025', '20000', '806051');
INSERT INTO `transactions` VALUES ('2557', '2', 'entry', '20/03/2025', '3500', '826051');
INSERT INTO `transactions` VALUES ('2558', '41', 'entry', '20/03/2025', '3500', '7264');
INSERT INTO `transactions` VALUES ('2559', '41', 'exit', '20/03/2025', '400', '10764');
INSERT INTO `transactions` VALUES ('2560', '15', 'exit', '20/03/2025', '533', '11813');
INSERT INTO `transactions` VALUES ('2561', '41', 'exit', '20/03/2025', '250', '10364');
INSERT INTO `transactions` VALUES ('2562', '2', 'exit', '20/03/2025', '1', '829551');
INSERT INTO `transactions` VALUES ('2563', '3', 'exit', '20/03/2025', '10', '1311382');
INSERT INTO `transactions` VALUES ('2564', '2', 'exit', '20/03/2025', '450', '829550');
INSERT INTO `transactions` VALUES ('2565', '15', 'exit', '20/03/2025', '1', '11280');
INSERT INTO `transactions` VALUES ('2566', '3', 'exit', '20/03/2025', '250', '1311372');
INSERT INTO `transactions` VALUES ('2567', '3', 'entry', '20/03/2025', '20000', '1311122');
INSERT INTO `transactions` VALUES ('2568', '2', 'exit', '20/03/2025', '200', '829100');
INSERT INTO `transactions` VALUES ('2569', '15', 'exit', '20/03/2025', '133', '11279');
INSERT INTO `transactions` VALUES ('2570', '15', 'entry', '20/03/2025', '3500', '11146');
INSERT INTO `transactions` VALUES ('2571', '5', 'exit', '20/03/2025', '50', '304535');
INSERT INTO `transactions` VALUES ('2572', '2', 'entry', '20/03/2025', '20000', '828900');
INSERT INTO `transactions` VALUES ('2573', '2', 'entry', '20/03/2025', '3500', '848900');
INSERT INTO `transactions` VALUES ('2574', '41', 'entry', '20/03/2025', '3500', '10114');
INSERT INTO `transactions` VALUES ('2575', '15', 'exit', '20/03/2025', '660', '14646');
INSERT INTO `transactions` VALUES ('2576', '15', 'exit', '20/03/2025', '350', '13986');
INSERT INTO `transactions` VALUES ('2577', '1', 'entry', '20/03/2025', '12100', '1968943');
INSERT INTO `transactions` VALUES ('2578', '1', 'entry', '20/03/2025', '3500', '1981043');
INSERT INTO `transactions` VALUES ('2579', '3', 'entry', '20/03/2025', '20000', '1331122');
INSERT INTO `transactions` VALUES ('2580', '3', 'entry', '20/03/2025', '3500', '1351122');
INSERT INTO `transactions` VALUES ('2581', '1', 'exit', '20/03/2025', '3500', '1984543');
INSERT INTO `transactions` VALUES ('2582', '1', 'exit', '20/03/2025', '1150', '1981043');
INSERT INTO `transactions` VALUES ('2583', '1', 'exit', '20/03/2025', '15000', '1979893');
INSERT INTO `transactions` VALUES ('2584', '1', 'exit', '20/03/2025', '500', '1964893');
INSERT INTO `transactions` VALUES ('2585', '1', 'exit', '20/03/2025', '2300', '1964393');
INSERT INTO `transactions` VALUES ('2586', '1', 'exit', '20/03/2025', '3000', '1962093');
INSERT INTO `transactions` VALUES ('2587', '1', 'exit', '20/03/2025', '500', '1959093');
INSERT INTO `transactions` VALUES ('2588', '1', 'exit', '20/03/2025', '3800', '1958593');
INSERT INTO `transactions` VALUES ('2589', '1', 'exit', '20/03/2025', '100', '1954793');
INSERT INTO `transactions` VALUES ('2590', '15', 'entry', '20/03/2025', '3500', '13636');
INSERT INTO `transactions` VALUES ('2591', '5', 'entry', '20/03/2025', '12100', '304485');
INSERT INTO `transactions` VALUES ('2592', '41', 'entry', '20/03/2025', '3500', '13614');
INSERT INTO `transactions` VALUES ('2593', '2', 'entry', '20/03/2025', '20000', '852400');
INSERT INTO `transactions` VALUES ('2594', '1', 'entry', '20/03/2025', '12100', '1954693');
INSERT INTO `transactions` VALUES ('2595', '1', 'entry', '20/03/2025', '3500', '1966793');
INSERT INTO `transactions` VALUES ('2596', '2', 'entry', '20/03/2025', '3500', '872400');
INSERT INTO `transactions` VALUES ('2597', '3', 'entry', '20/03/2025', '20000', '1354622');
INSERT INTO `transactions` VALUES ('2598', '3', 'entry', '20/03/2025', '3500', '1374622');
INSERT INTO `transactions` VALUES ('2599', '23', 'exit', '20/03/2025', '50', '78091');
INSERT INTO `transactions` VALUES ('2600', '15', 'entry', '20/03/2025', '3500', '17136');
INSERT INTO `transactions` VALUES ('2601', '23', 'exit', '20/03/2025', '50', '78041');
INSERT INTO `transactions` VALUES ('2602', '23', 'exit', '20/03/2025', '25000', '77991');
INSERT INTO `transactions` VALUES ('2603', '23', 'exit', '20/03/2025', '50', '52991');
INSERT INTO `transactions` VALUES ('2604', '2', 'entry', '20/03/2025', '20000', '875900');
INSERT INTO `transactions` VALUES ('2605', '1', 'entry', '20/03/2025', '12100', '1970293');
INSERT INTO `transactions` VALUES ('2606', '1', 'entry', '20/03/2025', '3500', '1982393');
INSERT INTO `transactions` VALUES ('2607', '2', 'entry', '20/03/2025', '3500', '895900');
INSERT INTO `transactions` VALUES ('2608', '3', 'entry', '20/03/2025', '20000', '1378122');
INSERT INTO `transactions` VALUES ('2609', '3', 'entry', '20/03/2025', '3500', '1398122');
INSERT INTO `transactions` VALUES ('2610', '5', 'exit', '20/03/2025', '5000', '316585');
INSERT INTO `transactions` VALUES ('2611', '5', 'exit', '20/03/2025', '1000', '311585');
INSERT INTO `transactions` VALUES ('2612', '5', 'exit', '20/03/2025', '2500', '310585');
INSERT INTO `transactions` VALUES ('2613', '5', 'exit', '20/03/2025', '3500', '308085');
INSERT INTO `transactions` VALUES ('2614', '5', 'exit', '20/03/2025', '3800', '304585');
INSERT INTO `transactions` VALUES ('2615', '5', 'exit', '20/03/2025', '5000', '300785');
INSERT INTO `transactions` VALUES ('2616', '5', 'exit', '20/03/2025', '2100', '295785');
INSERT INTO `transactions` VALUES ('2617', '5', 'exit', '20/03/2025', '3800', '293685');
INSERT INTO `transactions` VALUES ('2618', '23', 'entry', '20/03/2025', '3250', '52941');
INSERT INTO `transactions` VALUES ('2619', '23', 'entry', '20/03/2025', '3500', '56191');
INSERT INTO `transactions` VALUES ('2620', '5', 'exit', '20/03/2025', '30', '289885');
INSERT INTO `transactions` VALUES ('2621', '5', 'exit', '20/03/2025', '8750', '289855');
INSERT INTO `transactions` VALUES ('2622', '5', 'exit', '20/03/2025', '1500', '281105');
INSERT INTO `transactions` VALUES ('2623', '1', 'exit', '20/03/2025', '500', '1985893');
INSERT INTO `transactions` VALUES ('2624', '15', 'entry', '20/03/2025', '3500', '20636');
INSERT INTO `transactions` VALUES ('2625', '23', 'exit', '20/03/2025', '400', '59691');
INSERT INTO `transactions` VALUES ('2626', '23', 'entry', '20/03/2025', '1084', '59291');
INSERT INTO `transactions` VALUES ('2627', '23', 'exit', '20/03/2025', '50', '60375');
INSERT INTO `transactions` VALUES ('2628', '23', 'exit', '20/03/2025', '50', '60325');
INSERT INTO `transactions` VALUES ('2629', '2', 'entry', '20/03/2025', '20000', '899400');
INSERT INTO `transactions` VALUES ('2630', '2', 'entry', '20/03/2025', '3500', '919400');
INSERT INTO `transactions` VALUES ('2631', '1', 'entry', '20/03/2025', '12100', '1985393');
INSERT INTO `transactions` VALUES ('2632', '1', 'entry', '20/03/2025', '3500', '1997493');
INSERT INTO `transactions` VALUES ('2633', '15', 'entry', '20/03/2025', '3500', '24136');
INSERT INTO `transactions` VALUES ('2634', '23', 'exit', '20/03/2025', '430', '60275');
INSERT INTO `transactions` VALUES ('2635', '23', 'exit', '20/03/2025', '250', '59845');
INSERT INTO `transactions` VALUES ('2636', '23', 'exit', '20/03/2025', '330', '59595');
INSERT INTO `transactions` VALUES ('2637', '23', 'entry', '20/03/2025', '3250', '59265');
INSERT INTO `transactions` VALUES ('2638', '23', 'entry', '20/03/2025', '3500', '62515');
INSERT INTO `transactions` VALUES ('2639', '2', 'entry', '20/03/2025', '20000', '922900');
INSERT INTO `transactions` VALUES ('2640', '2', 'entry', '20/03/2025', '3500', '942900');
INSERT INTO `transactions` VALUES ('2641', '1', 'exit', '20/03/2025', '337', '2000993');
INSERT INTO `transactions` VALUES ('2642', '23', 'exit', '20/03/2025', '400', '66015');
INSERT INTO `transactions` VALUES ('2643', '23', 'exit', '20/03/2025', '400', '65615');
INSERT INTO `transactions` VALUES ('2644', '23', 'exit', '20/03/2025', '50', '65215');
INSERT INTO `transactions` VALUES ('2645', '23', 'exit', '20/03/2025', '50', '65165');
INSERT INTO `transactions` VALUES ('2646', '1', 'entry', '20/03/2025', '12100', '2000656');
INSERT INTO `transactions` VALUES ('2647', '1', 'entry', '20/03/2025', '3500', '2012756');
INSERT INTO `transactions` VALUES ('2648', '23', 'exit', '20/03/2025', '50', '65115');
INSERT INTO `transactions` VALUES ('2649', '23', 'exit', '20/03/2025', '400', '65065');
INSERT INTO `transactions` VALUES ('2650', '23', 'exit', '20/03/2025', '250', '64665');
INSERT INTO `transactions` VALUES ('2651', '23', 'exit', '20/03/2025', '9', '64415');
INSERT INTO `transactions` VALUES ('2652', '23', 'entry', '20/03/2025', '3250', '64406');
INSERT INTO `transactions` VALUES ('2653', '23', 'entry', '20/03/2025', '3500', '67656');
INSERT INTO `transactions` VALUES ('2654', '2', 'entry', '20/03/2025', '20000', '946400');
INSERT INTO `transactions` VALUES ('2655', '2', 'entry', '20/03/2025', '3500', '966400');
INSERT INTO `transactions` VALUES ('2656', '1', 'entry', '20/03/2025', '12100', '2016256');
INSERT INTO `transactions` VALUES ('2657', '1', 'entry', '20/03/2025', '3500', '2028356');
INSERT INTO `transactions` VALUES ('2658', '23', 'entry', '20/03/2025', '3250', '71156');
INSERT INTO `transactions` VALUES ('2659', '23', 'entry', '20/03/2025', '3500', '74406');
INSERT INTO `transactions` VALUES ('2660', '2', 'exit', '20/03/2025', '10000', '969900');
INSERT INTO `transactions` VALUES ('2661', '1', 'entry', '20/03/2025', '12100', '2031856');
INSERT INTO `transactions` VALUES ('2662', '1', 'entry', '20/03/2025', '3500', '2043956');
INSERT INTO `transactions` VALUES ('2663', '2', 'entry', '20/03/2025', '20000', '959900');
INSERT INTO `transactions` VALUES ('2664', '2', 'entry', '20/03/2025', '3500', '979900');
INSERT INTO `transactions` VALUES ('2665', '23', 'exit', '20/03/2025', '225', '77906');
INSERT INTO `transactions` VALUES ('2666', '23', 'exit', '20/03/2025', '75', '77681');
INSERT INTO `transactions` VALUES ('2667', '24', 'exit', '20/03/2025', '50', '7750');
INSERT INTO `transactions` VALUES ('2668', '23', 'entry', '20/03/2025', '3250', '77606');
INSERT INTO `transactions` VALUES ('2669', '23', 'entry', '20/03/2025', '3500', '80856');
INSERT INTO `transactions` VALUES ('2670', '1', 'exit', '20/03/2025', '500', '2047456');
INSERT INTO `transactions` VALUES ('2671', '23', 'entry', '20/03/2025', '500', '84356');
INSERT INTO `transactions` VALUES ('2672', '23', 'entry', '20/03/2025', '100000', '84856');
INSERT INTO `transactions` VALUES ('2673', '23', 'exit', '20/03/2025', '100', '184856');
INSERT INTO `transactions` VALUES ('2674', '23', 'exit', '20/03/2025', '100', '184756');
INSERT INTO `transactions` VALUES ('2675', '23', 'exit', '20/03/2025', '100', '184656');
INSERT INTO `transactions` VALUES ('2676', '23', 'exit', '20/03/2025', '100', '184556');
INSERT INTO `transactions` VALUES ('2677', '23', 'entry', '20/03/2025', '3250', '184456');
INSERT INTO `transactions` VALUES ('2678', '23', 'entry', '20/03/2025', '3500', '187706');
INSERT INTO `transactions` VALUES ('2679', '23', 'exit', '20/03/2025', '100', '191206');
INSERT INTO `transactions` VALUES ('2680', '23', 'exit', '21/03/2025', '100', '191106');
INSERT INTO `transactions` VALUES ('2681', '23', 'exit', '21/03/2025', '100', '191006');
INSERT INTO `transactions` VALUES ('2682', '24', 'exit', '21/03/2025', '1000', '7700');
INSERT INTO `transactions` VALUES ('2683', '23', 'exit', '21/03/2025', '100', '190906');
INSERT INTO `transactions` VALUES ('2684', '23', 'exit', '21/03/2025', '50', '190806');
INSERT INTO `transactions` VALUES ('2685', '23', 'exit', '21/03/2025', '100', '190756');
INSERT INTO `transactions` VALUES ('2686', '23', 'exit', '21/03/2025', '100', '190656');
INSERT INTO `transactions` VALUES ('2687', '23', 'exit', '21/03/2025', '100', '190556');
INSERT INTO `transactions` VALUES ('2688', '23', 'exit', '21/03/2025', '100', '190456');
INSERT INTO `transactions` VALUES ('2689', '23', 'exit', '21/03/2025', '100', '190356');
INSERT INTO `transactions` VALUES ('2690', '23', 'exit', '21/03/2025', '100', '190256');
INSERT INTO `transactions` VALUES ('2691', '23', 'exit', '21/03/2025', '100', '190156');
INSERT INTO `transactions` VALUES ('2692', '23', 'exit', '21/03/2025', '100', '190056');
INSERT INTO `transactions` VALUES ('2693', '23', 'exit', '21/03/2025', '100', '189956');
INSERT INTO `transactions` VALUES ('2694', '23', 'exit', '21/03/2025', '100', '189856');
INSERT INTO `transactions` VALUES ('2695', '23', 'exit', '21/03/2025', '100', '189756');
INSERT INTO `transactions` VALUES ('2696', '23', 'exit', '21/03/2025', '100', '189656');
INSERT INTO `transactions` VALUES ('2697', '23', 'exit', '21/03/2025', '100', '189556');
INSERT INTO `transactions` VALUES ('2698', '23', 'exit', '21/03/2025', '100', '189456');
INSERT INTO `transactions` VALUES ('2699', '23', 'exit', '21/03/2025', '100', '189356');
INSERT INTO `transactions` VALUES ('2700', '23', 'exit', '21/03/2025', '100', '189256');
INSERT INTO `transactions` VALUES ('2701', '23', 'exit', '21/03/2025', '100', '189156');
INSERT INTO `transactions` VALUES ('2702', '23', 'exit', '21/03/2025', '100', '189056');
INSERT INTO `transactions` VALUES ('2703', '23', 'exit', '21/03/2025', '100', '188956');
INSERT INTO `transactions` VALUES ('2704', '23', 'exit', '21/03/2025', '100', '188856');
INSERT INTO `transactions` VALUES ('2705', '23', 'exit', '21/03/2025', '100', '188756');
INSERT INTO `transactions` VALUES ('2706', '23', 'exit', '21/03/2025', '100', '188656');
INSERT INTO `transactions` VALUES ('2707', '23', 'exit', '21/03/2025', '100', '188556');
INSERT INTO `transactions` VALUES ('2708', '23', 'exit', '21/03/2025', '100', '188456');
INSERT INTO `transactions` VALUES ('2709', '23', 'exit', '21/03/2025', '100', '188356');
INSERT INTO `transactions` VALUES ('2710', '23', 'exit', '21/03/2025', '100', '188256');
INSERT INTO `transactions` VALUES ('2711', '23', 'entry', '21/03/2025', '3250', '188156');
INSERT INTO `transactions` VALUES ('2712', '23', 'entry', '21/03/2025', '3500', '191406');
INSERT INTO `transactions` VALUES ('2713', '23', 'exit', '21/03/2025', '100', '194906');
INSERT INTO `transactions` VALUES ('2714', '24', 'exit', '21/03/2025', '255', '6700');
INSERT INTO `transactions` VALUES ('2715', '23', 'exit', '21/03/2025', '100', '194806');
INSERT INTO `transactions` VALUES ('2716', '23', 'exit', '21/03/2025', '100', '194706');
INSERT INTO `transactions` VALUES ('2717', '23', 'exit', '21/03/2025', '100', '194606');
INSERT INTO `transactions` VALUES ('2718', '23', 'exit', '21/03/2025', '100', '194506');
INSERT INTO `transactions` VALUES ('2719', '23', 'exit', '21/03/2025', '50', '194406');
INSERT INTO `transactions` VALUES ('2720', '23', 'exit', '21/03/2025', '100', '194356');
INSERT INTO `transactions` VALUES ('2721', '23', 'exit', '21/03/2025', '65000', '194256');
INSERT INTO `transactions` VALUES ('2722', '23', 'exit', '21/03/2025', '50', '129256');
INSERT INTO `transactions` VALUES ('2723', '23', 'exit', '21/03/2025', '400', '129206');
INSERT INTO `transactions` VALUES ('2724', '9', 'exit', '21/03/2025', '50', '411536');
INSERT INTO `transactions` VALUES ('2725', '48', 'exit', '21/03/2025', '200', '2900');
INSERT INTO `transactions` VALUES ('2726', '23', 'exit', '21/03/2025', '27', '128806');
INSERT INTO `transactions` VALUES ('2727', '48', 'exit', '21/03/2025', '1000', '2700');
INSERT INTO `transactions` VALUES ('2728', '9', 'exit', '21/03/2025', '400', '411486');
INSERT INTO `transactions` VALUES ('2729', '24', 'exit', '21/03/2025', '50', '6445');
INSERT INTO `transactions` VALUES ('2730', '23', 'exit', '21/03/2025', '3', '128779');
INSERT INTO `transactions` VALUES ('2731', '24', 'exit', '21/03/2025', '400', '6395');
INSERT INTO `transactions` VALUES ('2732', '23', 'exit', '21/03/2025', '400', '128776');
INSERT INTO `transactions` VALUES ('2733', '46', 'exit', '21/03/2025', '500', '49070');
INSERT INTO `transactions` VALUES ('2734', '46', 'exit', '21/03/2025', '17500', '48570');
INSERT INTO `transactions` VALUES ('2735', '46', 'exit', '21/03/2025', '100', '31070');
INSERT INTO `transactions` VALUES ('2736', '23', 'entry', '21/03/2025', '3250', '128376');
INSERT INTO `transactions` VALUES ('2737', '23', 'entry', '21/03/2025', '3500', '131626');
INSERT INTO `transactions` VALUES ('2738', '46', 'exit', '21/03/2025', '400', '30970');
INSERT INTO `transactions` VALUES ('2739', '24', 'exit', '21/03/2025', '250', '5995');
INSERT INTO `transactions` VALUES ('2740', '24', 'exit', '21/03/2025', '50', '5745');
INSERT INTO `transactions` VALUES ('2741', '24', 'exit', '21/03/2025', '400', '5695');
INSERT INTO `transactions` VALUES ('2742', '23', 'exit', '21/03/2025', '50', '135126');
INSERT INTO `transactions` VALUES ('2743', '46', 'entry', '21/03/2025', '2800', '30570');
INSERT INTO `transactions` VALUES ('2744', '46', 'exit', '21/03/2025', '1000', '33370');
INSERT INTO `transactions` VALUES ('2745', '9', 'entry', '21/03/2025', '1000', '411086');
INSERT INTO `transactions` VALUES ('2746', '23', 'exit', '21/03/2025', '450', '135076');
INSERT INTO `transactions` VALUES ('2747', '9', 'exit', '21/03/2025', '100', '412086');
INSERT INTO `transactions` VALUES ('2748', '46', 'exit', '21/03/2025', '1750', '32370');
INSERT INTO `transactions` VALUES ('2749', '23', 'entry', '21/03/2025', '1750', '134626');
INSERT INTO `transactions` VALUES ('2750', '46', 'exit', '21/03/2025', '100', '30620');
INSERT INTO `transactions` VALUES ('2751', '46', 'exit', '21/03/2025', '100', '30520');
INSERT INTO `transactions` VALUES ('2752', '23', 'exit', '21/03/2025', '50', '136376');
INSERT INTO `transactions` VALUES ('2753', '23', 'entry', '21/03/2025', '3250', '136326');
INSERT INTO `transactions` VALUES ('2754', '23', 'entry', '21/03/2025', '3500', '139576');
INSERT INTO `transactions` VALUES ('2755', '9', 'exit', '21/03/2025', '50', '411986');
INSERT INTO `transactions` VALUES ('2756', '23', 'exit', '21/03/2025', '75', '143076');
INSERT INTO `transactions` VALUES ('2757', '9', 'exit', '21/03/2025', '400', '411936');
INSERT INTO `transactions` VALUES ('2758', '46', 'exit', '21/03/2025', '100', '30420');
INSERT INTO `transactions` VALUES ('2759', '46', 'entry', '21/03/2025', '2800', '30320');
INSERT INTO `transactions` VALUES ('2760', '9', 'exit', '21/03/2025', '25000', '411536');
INSERT INTO `transactions` VALUES ('2761', '46', 'exit', '21/03/2025', '25000', '33120');
INSERT INTO `transactions` VALUES ('2762', '9', 'exit', '21/03/2025', '25000', '386536');
INSERT INTO `transactions` VALUES ('2763', '9', 'exit', '21/03/2025', '3500', '361536');
INSERT INTO `transactions` VALUES ('2764', '23', 'entry', '21/03/2025', '3500', '143001');
INSERT INTO `transactions` VALUES ('2765', '23', 'entry', '21/03/2025', '3250', '146501');
INSERT INTO `transactions` VALUES ('2766', '23', 'entry', '21/03/2025', '3500', '149751');
INSERT INTO `transactions` VALUES ('2767', '9', 'exit', '21/03/2025', '400', '358036');
INSERT INTO `transactions` VALUES ('2768', '23', 'exit', '21/03/2025', '400', '153251');
INSERT INTO `transactions` VALUES ('2769', '23', 'exit', '21/03/2025', '50', '152851');
INSERT INTO `transactions` VALUES ('2770', '23', 'exit', '21/03/2025', '50', '152801');
INSERT INTO `transactions` VALUES ('2771', '23', 'entry', '21/03/2025', '3250', '152751');
INSERT INTO `transactions` VALUES ('2772', '23', 'entry', '21/03/2025', '3500', '156001');
INSERT INTO `transactions` VALUES ('2773', '1', 'exit', '21/03/2025', '100', '2046956');
INSERT INTO `transactions` VALUES ('2774', '1', 'entry', '21/03/2025', '12100', '2046856');
INSERT INTO `transactions` VALUES ('2775', '1', 'entry', '21/03/2025', '3500', '2058956');
INSERT INTO `transactions` VALUES ('2776', '1', 'exit', '21/03/2025', '100', '2062456');
INSERT INTO `transactions` VALUES ('2777', '1', 'entry', '21/03/2025', '1000', '2062356');
INSERT INTO `transactions` VALUES ('2778', '2', 'exit', '21/03/2025', '550', '983400');
INSERT INTO `transactions` VALUES ('2779', '1', 'entry', '21/03/2025', '12100', '2063356');
INSERT INTO `transactions` VALUES ('2780', '1', 'entry', '21/03/2025', '3500', '2075456');
INSERT INTO `transactions` VALUES ('2781', '2', 'entry', '21/03/2025', '20000', '982850');
INSERT INTO `transactions` VALUES ('2782', '1', 'entry', '21/03/2025', '1000', '2078956');
INSERT INTO `transactions` VALUES ('2783', '1', 'entry', '21/03/2025', '12100', '2079956');
INSERT INTO `transactions` VALUES ('2784', '1', 'entry', '21/03/2025', '3500', '2092056');
INSERT INTO `transactions` VALUES ('2785', '1', 'exit', '21/03/2025', '4', '2095556');
INSERT INTO `transactions` VALUES ('2786', '2', 'entry', '21/03/2025', '20000', '1002850');
INSERT INTO `transactions` VALUES ('2787', '1', 'entry', '21/03/2025', '12100', '2095552');
INSERT INTO `transactions` VALUES ('2788', '1', 'entry', '21/03/2025', '3500', '2107652');
INSERT INTO `transactions` VALUES ('2789', '1', 'entry', '21/03/2025', '20000', '2111152');
INSERT INTO `transactions` VALUES ('2790', '1', 'entry', '21/03/2025', '3500', '2131152');
INSERT INTO `transactions` VALUES ('2791', '1', 'entry', '21/03/2025', '12100', '2134652');
INSERT INTO `transactions` VALUES ('2792', '1', 'entry', '21/03/2025', '3500', '2146752');
INSERT INTO `transactions` VALUES ('2793', '1', 'entry', '21/03/2025', '20000', '2150252');
INSERT INTO `transactions` VALUES ('2794', '1', 'entry', '21/03/2025', '3500', '2170252');
INSERT INTO `transactions` VALUES ('2795', '2', 'exit', '21/03/2025', '230', '1022850');
INSERT INTO `transactions` VALUES ('2796', '1', 'entry', '21/03/2025', '50', '2173752');
INSERT INTO `transactions` VALUES ('2797', '1', 'entry', '21/03/2025', '12100', '2173802');
INSERT INTO `transactions` VALUES ('2798', '1', 'entry', '21/03/2025', '3500', '2185902');
INSERT INTO `transactions` VALUES ('2799', '1', 'entry', '21/03/2025', '20000', '2189402');
INSERT INTO `transactions` VALUES ('2800', '1', 'entry', '21/03/2025', '3500', '2209402');
INSERT INTO `transactions` VALUES ('2801', '49', 'entry', '21/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2802', '2', 'entry', '21/03/2025', '20000', '1022620');
INSERT INTO `transactions` VALUES ('2803', '1', 'entry', '21/03/2025', '3500', '2212902');
INSERT INTO `transactions` VALUES ('2804', '1', 'entry', '21/03/2025', '20000', '2216402');
INSERT INTO `transactions` VALUES ('2805', '1', 'entry', '21/03/2025', '12100', '2236402');
INSERT INTO `transactions` VALUES ('2806', '1', 'entry', '21/03/2025', '3500', '2248502');
INSERT INTO `transactions` VALUES ('2807', '2', 'entry', '21/03/2025', '20000', '1042620');
INSERT INTO `transactions` VALUES ('2808', '1', 'entry', '21/03/2025', '3500', '2252002');
INSERT INTO `transactions` VALUES ('2809', '1', 'entry', '21/03/2025', '20000', '2255502');
INSERT INTO `transactions` VALUES ('2810', '1', 'entry', '21/03/2025', '12100', '2275502');
INSERT INTO `transactions` VALUES ('2811', '1', 'entry', '21/03/2025', '3500', '2287602');
INSERT INTO `transactions` VALUES ('2812', '4', 'exit', '21/03/2025', '330', '153930');
INSERT INTO `transactions` VALUES ('2813', '4', 'exit', '21/03/2025', '165', '153600');
INSERT INTO `transactions` VALUES ('2814', '4', 'exit', '21/03/2025', '1050', '153435');
INSERT INTO `transactions` VALUES ('2815', '1', 'exit', '21/03/2025', '100', '2291102');
INSERT INTO `transactions` VALUES ('2816', '2', 'entry', '21/03/2025', '20000', '1062620');
INSERT INTO `transactions` VALUES ('2817', '2', 'exit', '21/03/2025', '100', '1082620');
INSERT INTO `transactions` VALUES ('2818', '4', 'entry', '21/03/2025', '3500', '152385');
INSERT INTO `transactions` VALUES ('2819', '4', 'entry', '21/03/2025', '12100', '155885');
INSERT INTO `transactions` VALUES ('2820', '4', 'entry', '21/03/2025', '13100', '167985');
INSERT INTO `transactions` VALUES ('2821', '4', 'exit', '21/03/2025', '200', '181085');
INSERT INTO `transactions` VALUES ('2822', '1', 'entry', '21/03/2025', '20000', '2291002');
INSERT INTO `transactions` VALUES ('2823', '2', 'exit', '21/03/2025', '400', '1082520');
INSERT INTO `transactions` VALUES ('2824', '1', 'entry', '21/03/2025', '12100', '2311002');
INSERT INTO `transactions` VALUES ('2825', '1', 'exit', '21/03/2025', '100', '2323102');
INSERT INTO `transactions` VALUES ('2826', '2', 'entry', '21/03/2025', '20000', '1082120');
INSERT INTO `transactions` VALUES ('2827', '4', 'entry', '21/03/2025', '3500', '180885');
INSERT INTO `transactions` VALUES ('2828', '4', 'entry', '21/03/2025', '12100', '184385');
INSERT INTO `transactions` VALUES ('2829', '4', 'entry', '21/03/2025', '13100', '196485');
INSERT INTO `transactions` VALUES ('2830', '2', 'exit', '21/03/2025', '2', '1102120');
INSERT INTO `transactions` VALUES ('2831', '1', 'entry', '21/03/2025', '20000', '2323002');
INSERT INTO `transactions` VALUES ('2832', '2', 'entry', '21/03/2025', '3500', '1102118');
INSERT INTO `transactions` VALUES ('2833', '1', 'entry', '21/03/2025', '12100', '2343002');
INSERT INTO `transactions` VALUES ('2834', '2', 'entry', '21/03/2025', '20000', '1105618');
INSERT INTO `transactions` VALUES ('2835', '1', 'entry', '21/03/2025', '20000', '2355102');
INSERT INTO `transactions` VALUES ('2836', '1', 'entry', '21/03/2025', '12100', '2375102');
INSERT INTO `transactions` VALUES ('2837', '2', 'entry', '21/03/2025', '20000', '1125618');
INSERT INTO `transactions` VALUES ('2838', '1', 'entry', '21/03/2025', '20000', '2387202');
INSERT INTO `transactions` VALUES ('2839', '1', 'entry', '21/03/2025', '12100', '2407202');
INSERT INTO `transactions` VALUES ('2840', '2', 'entry', '21/03/2025', '20000', '1145618');
INSERT INTO `transactions` VALUES ('2841', '1', 'entry', '21/03/2025', '12100', '2419302');
INSERT INTO `transactions` VALUES ('2842', '23', 'exit', '21/03/2025', '420', '159501');
INSERT INTO `transactions` VALUES ('2843', '23', 'entry', '21/03/2025', '3500', '159081');
INSERT INTO `transactions` VALUES ('2844', '23', 'entry', '21/03/2025', '3250', '162581');
INSERT INTO `transactions` VALUES ('2845', '1', 'entry', '21/03/2025', '12100', '2431402');
INSERT INTO `transactions` VALUES ('2846', '1', 'entry', '21/03/2025', '3500', '2443502');
INSERT INTO `transactions` VALUES ('2847', '23', 'exit', '21/03/2025', '400', '165831');
INSERT INTO `transactions` VALUES ('2848', '23', 'exit', '21/03/2025', '455', '165431');
INSERT INTO `transactions` VALUES ('2849', '23', 'exit', '21/03/2025', '86', '164976');
INSERT INTO `transactions` VALUES ('2850', '1', 'entry', '21/03/2025', '50', '2447002');
INSERT INTO `transactions` VALUES ('2851', '23', 'entry', '21/03/2025', '3500', '164890');
INSERT INTO `transactions` VALUES ('2852', '23', 'entry', '21/03/2025', '3250', '168390');
INSERT INTO `transactions` VALUES ('2853', '1', 'entry', '21/03/2025', '12100', '2447052');
INSERT INTO `transactions` VALUES ('2854', '1', 'entry', '21/03/2025', '3500', '2459152');
INSERT INTO `transactions` VALUES ('2855', '23', 'entry', '21/03/2025', '3500', '171640');
INSERT INTO `transactions` VALUES ('2856', '23', 'entry', '21/03/2025', '3250', '175140');
INSERT INTO `transactions` VALUES ('2857', '1', 'entry', '21/03/2025', '3500', '2462652');
INSERT INTO `transactions` VALUES ('2858', '23', 'entry', '21/03/2025', '3500', '178390');
INSERT INTO `transactions` VALUES ('2859', '23', 'entry', '21/03/2025', '3250', '181890');
INSERT INTO `transactions` VALUES ('2860', '1', 'entry', '21/03/2025', '3500', '2466152');
INSERT INTO `transactions` VALUES ('2861', '1', 'exit', '21/03/2025', '189', '2469652');
INSERT INTO `transactions` VALUES ('2862', '1', 'entry', '21/03/2025', '12100', '2469463');
INSERT INTO `transactions` VALUES ('2863', '23', 'exit', '21/03/2025', '320', '185140');
INSERT INTO `transactions` VALUES ('2864', '23', 'exit', '21/03/2025', '320', '184820');
INSERT INTO `transactions` VALUES ('2865', '23', 'entry', '21/03/2025', '3250', '184500');
INSERT INTO `transactions` VALUES ('2866', '23', 'entry', '21/03/2025', '3500', '187750');
INSERT INTO `transactions` VALUES ('2867', '4', 'exit', '21/03/2025', '50', '209585');
INSERT INTO `transactions` VALUES ('2868', '1', 'entry', '21/03/2025', '3500', '2481563');
INSERT INTO `transactions` VALUES ('2869', '1', 'entry', '21/03/2025', '3500', '2485063');
INSERT INTO `transactions` VALUES ('2870', '1', 'entry', '21/03/2025', '12100', '2488563');
INSERT INTO `transactions` VALUES ('2871', '23', 'entry', '21/03/2025', '3250', '191250');
INSERT INTO `transactions` VALUES ('2872', '23', 'entry', '21/03/2025', '3500', '194500');
INSERT INTO `transactions` VALUES ('2873', '4', 'entry', '21/03/2025', '3500', '209535');
INSERT INTO `transactions` VALUES ('2874', '4', 'entry', '21/03/2025', '13100', '213035');
INSERT INTO `transactions` VALUES ('2875', '4', 'entry', '21/03/2025', '12100', '226135');
INSERT INTO `transactions` VALUES ('2876', '50', 'entry', '21/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('2877', '1', 'entry', '21/03/2025', '3500', '2500663');
INSERT INTO `transactions` VALUES ('2878', '1', 'entry', '21/03/2025', '3500', '2504163');
INSERT INTO `transactions` VALUES ('2879', '23', 'exit', '21/03/2025', '400', '198000');
INSERT INTO `transactions` VALUES ('2880', '23', 'exit', '21/03/2025', '730', '197600');
INSERT INTO `transactions` VALUES ('2881', '23', 'entry', '21/03/2025', '730', '196870');
INSERT INTO `transactions` VALUES ('2882', '23', 'entry', '21/03/2025', '3250', '197600');
INSERT INTO `transactions` VALUES ('2883', '23', 'entry', '21/03/2025', '3500', '200850');
INSERT INTO `transactions` VALUES ('2884', '23', 'exit', '21/03/2025', '50', '204350');
INSERT INTO `transactions` VALUES ('2885', '23', 'exit', '21/03/2025', '300', '204300');
INSERT INTO `transactions` VALUES ('2886', '23', 'entry', '21/03/2025', '3279', '204000');
INSERT INTO `transactions` VALUES ('2887', '23', 'entry', '21/03/2025', '3250', '207279');
INSERT INTO `transactions` VALUES ('2888', '23', 'entry', '21/03/2025', '3500', '210529');
INSERT INTO `transactions` VALUES ('2889', '23', 'exit', '21/03/2025', '50', '214029');
INSERT INTO `transactions` VALUES ('2890', '23', 'exit', '21/03/2025', '250', '213979');
INSERT INTO `transactions` VALUES ('2891', '23', 'entry', '21/03/2025', '3250', '213729');
INSERT INTO `transactions` VALUES ('2892', '23', 'entry', '21/03/2025', '3500', '216979');
INSERT INTO `transactions` VALUES ('2893', '23', 'exit', '22/03/2025', '50', '220479');
INSERT INTO `transactions` VALUES ('2894', '23', 'exit', '22/03/2025', '200', '220429');
INSERT INTO `transactions` VALUES ('2895', '23', 'exit', '22/03/2025', '100', '220229');
INSERT INTO `transactions` VALUES ('2896', '1', 'entry', '22/03/2025', '3500', '2507663');
INSERT INTO `transactions` VALUES ('2897', '23', 'exit', '22/03/2025', '400', '220129');
INSERT INTO `transactions` VALUES ('2898', '23', 'exit', '22/03/2025', '5', '219729');
INSERT INTO `transactions` VALUES ('2899', '23', 'entry', '22/03/2025', '3250', '219724');
INSERT INTO `transactions` VALUES ('2900', '23', 'entry', '22/03/2025', '3500', '222974');
INSERT INTO `transactions` VALUES ('2901', '23', 'exit', '22/03/2025', '320', '226474');
INSERT INTO `transactions` VALUES ('2902', '23', 'exit', '22/03/2025', '420', '226154');
INSERT INTO `transactions` VALUES ('2903', '23', 'exit', '22/03/2025', '150', '225734');
INSERT INTO `transactions` VALUES ('2904', '23', 'exit', '22/03/2025', '50', '225584');
INSERT INTO `transactions` VALUES ('2905', '23', 'exit', '22/03/2025', '20', '225534');
INSERT INTO `transactions` VALUES ('2906', '23', 'exit', '22/03/2025', '180', '225514');
INSERT INTO `transactions` VALUES ('2907', '23', 'exit', '22/03/2025', '50', '225334');
INSERT INTO `transactions` VALUES ('2908', '23', 'entry', '22/03/2025', '3500', '225284');
INSERT INTO `transactions` VALUES ('2909', '23', 'entry', '22/03/2025', '3250', '228784');
INSERT INTO `transactions` VALUES ('2910', '23', 'exit', '22/03/2025', '560', '232034');
INSERT INTO `transactions` VALUES ('2911', '23', 'exit', '22/03/2025', '180', '231474');
INSERT INTO `transactions` VALUES ('2912', '23', 'exit', '22/03/2025', '75', '231294');
INSERT INTO `transactions` VALUES ('2913', '1', 'entry', '22/03/2025', '3500', '2511163');
INSERT INTO `transactions` VALUES ('2914', '1', 'entry', '22/03/2025', '3500', '2514663');
INSERT INTO `transactions` VALUES ('2915', '1', 'entry', '23/03/2025', '3500', '2518163');
INSERT INTO `transactions` VALUES ('2916', '1', 'exit', '23/03/2025', '100000', '2521663');
INSERT INTO `transactions` VALUES ('2917', '1', 'entry', '23/03/2025', '12100', '2421663');
INSERT INTO `transactions` VALUES ('2918', '1', 'entry', '23/03/2025', '12100', '2433763');
INSERT INTO `transactions` VALUES ('2919', '23', 'exit', '23/03/2025', '50', '231219');
INSERT INTO `transactions` VALUES ('2920', '23', 'exit', '23/03/2025', '400', '231169');
INSERT INTO `transactions` VALUES ('2921', '23', 'exit', '23/03/2025', '250', '230769');
INSERT INTO `transactions` VALUES ('2922', '23', 'exit', '23/03/2025', '400', '230519');
INSERT INTO `transactions` VALUES ('2923', '23', 'exit', '23/03/2025', '400', '230119');
INSERT INTO `transactions` VALUES ('2924', '23', 'exit', '23/03/2025', '1000', '229719');
INSERT INTO `transactions` VALUES ('2925', '23', 'entry', '23/03/2025', '3500', '228719');
INSERT INTO `transactions` VALUES ('2926', '23', 'entry', '23/03/2025', '3250', '232219');
INSERT INTO `transactions` VALUES ('2927', '1', 'exit', '23/03/2025', '100', '2445863');
INSERT INTO `transactions` VALUES ('2928', '23', 'exit', '23/03/2025', '400', '235469');
INSERT INTO `transactions` VALUES ('2929', '1', 'entry', '23/03/2025', '12100', '2445763');
INSERT INTO `transactions` VALUES ('2930', '23', 'exit', '23/03/2025', '400', '235069');
INSERT INTO `transactions` VALUES ('2931', '23', 'entry', '23/03/2025', '3500', '234669');
INSERT INTO `transactions` VALUES ('2932', '23', 'entry', '23/03/2025', '3250', '238169');
INSERT INTO `transactions` VALUES ('2933', '1', 'entry', '23/03/2025', '5000', '2457863');
INSERT INTO `transactions` VALUES ('2934', '23', 'exit', '23/03/2025', '250', '241419');
INSERT INTO `transactions` VALUES ('2935', '1', 'exit', '23/03/2025', '2000', '2462863');
INSERT INTO `transactions` VALUES ('2936', '1', 'exit', '23/03/2025', '150', '2460863');
INSERT INTO `transactions` VALUES ('2937', '1', 'exit', '23/03/2025', '400', '2460713');
INSERT INTO `transactions` VALUES ('2938', '1', 'entry', '23/03/2025', '12100', '2460313');
INSERT INTO `transactions` VALUES ('2939', '23', 'entry', '23/03/2025', '3500', '241169');
INSERT INTO `transactions` VALUES ('2940', '23', 'entry', '23/03/2025', '3250', '244669');
INSERT INTO `transactions` VALUES ('2941', '23', 'exit', '23/03/2025', '100', '247919');
INSERT INTO `transactions` VALUES ('2942', '1', 'entry', '23/03/2025', '3500', '2472413');
INSERT INTO `transactions` VALUES ('2943', '1', 'entry', '23/03/2025', '12100', '2475913');
INSERT INTO `transactions` VALUES ('2944', '23', 'entry', '23/03/2025', '3500', '247819');
INSERT INTO `transactions` VALUES ('2945', '23', 'entry', '23/03/2025', '3250', '251319');
INSERT INTO `transactions` VALUES ('2946', '1', 'entry', '23/03/2025', '3500', '2488013');
INSERT INTO `transactions` VALUES ('2947', '1', 'entry', '23/03/2025', '12100', '2491513');
INSERT INTO `transactions` VALUES ('2948', '1', 'entry', '23/03/2025', '3500', '2503613');
INSERT INTO `transactions` VALUES ('2949', '1', 'entry', '23/03/2025', '12100', '2507113');
INSERT INTO `transactions` VALUES ('2950', '9', 'exit', '24/03/2025', '100', '357636');
INSERT INTO `transactions` VALUES ('2951', '1', 'entry', '24/03/2025', '12100', '2519213');
INSERT INTO `transactions` VALUES ('2952', '1', 'entry', '24/03/2025', '3500', '2531313');
INSERT INTO `transactions` VALUES ('2953', '46', 'exit', '24/03/2025', '50', '8120');
INSERT INTO `transactions` VALUES ('2954', '1', 'entry', '24/03/2025', '1000', '2534813');
INSERT INTO `transactions` VALUES ('2955', '9', 'exit', '24/03/2025', '134', '357536');
INSERT INTO `transactions` VALUES ('2956', '1', 'entry', '24/03/2025', '12100', '2535813');
INSERT INTO `transactions` VALUES ('2957', '1', 'entry', '24/03/2025', '3500', '2547913');
INSERT INTO `transactions` VALUES ('2958', '1', 'entry', '24/03/2025', '1000', '2551413');
INSERT INTO `transactions` VALUES ('2959', '23', 'exit', '24/03/2025', '50', '254569');
INSERT INTO `transactions` VALUES ('2960', '9', 'exit', '24/03/2025', '50', '357402');
INSERT INTO `transactions` VALUES ('2961', '23', 'exit', '24/03/2025', '10000', '254519');
INSERT INTO `transactions` VALUES ('2962', '23', 'entry', '24/03/2025', '10000', '244519');
INSERT INTO `transactions` VALUES ('2963', '9', 'exit', '24/03/2025', '50', '357352');
INSERT INTO `transactions` VALUES ('2964', '9', 'exit', '24/03/2025', '10000', '357302');
INSERT INTO `transactions` VALUES ('2965', '23', 'exit', '24/03/2025', '50', '254519');
INSERT INTO `transactions` VALUES ('2966', '9', 'exit', '24/03/2025', '50', '347302');
INSERT INTO `transactions` VALUES ('2967', '23', 'exit', '24/03/2025', '50', '254469');
INSERT INTO `transactions` VALUES ('2968', '1', 'entry', '24/03/2025', '12100', '2552413');
INSERT INTO `transactions` VALUES ('2969', '1', 'entry', '24/03/2025', '3500', '2564513');
INSERT INTO `transactions` VALUES ('2970', '23', 'exit', '24/03/2025', '400', '254419');
INSERT INTO `transactions` VALUES ('2971', '23', 'entry', '24/03/2025', '250000', '254019');
INSERT INTO `transactions` VALUES ('2972', '9', 'exit', '24/03/2025', '250000', '347252');
INSERT INTO `transactions` VALUES ('2973', '23', 'entry', '24/03/2025', '250000', '504019');
INSERT INTO `transactions` VALUES ('2974', '1', 'exit', '24/03/2025', '250000', '2568013');
INSERT INTO `transactions` VALUES ('2975', '23', 'exit', '24/03/2025', '500000', '754019');
INSERT INTO `transactions` VALUES ('2976', '1', 'entry', '24/03/2025', '1000', '2318013');
INSERT INTO `transactions` VALUES ('2977', '1', 'entry', '24/03/2025', '250000', '2319013');
INSERT INTO `transactions` VALUES ('2978', '23', 'exit', '24/03/2025', '250000', '254019');
INSERT INTO `transactions` VALUES ('2979', '9', 'entry', '24/03/2025', '1', '97252');
INSERT INTO `transactions` VALUES ('2980', '23', 'exit', '24/03/2025', '1', '4019');
INSERT INTO `transactions` VALUES ('2981', '23', 'exit', '24/03/2025', '50', '4018');
INSERT INTO `transactions` VALUES ('2982', '9', 'exit', '24/03/2025', '350', '97253');
INSERT INTO `transactions` VALUES ('2983', '9', 'exit', '24/03/2025', '350', '96903');
INSERT INTO `transactions` VALUES ('2984', '23', 'exit', '24/03/2025', '50', '3968');
INSERT INTO `transactions` VALUES ('2985', '23', 'entry', '24/03/2025', '3250', '3918');
INSERT INTO `transactions` VALUES ('2986', '23', 'entry', '24/03/2025', '3500', '7168');
INSERT INTO `transactions` VALUES ('2987', '9', 'exit', '24/03/2025', '400', '96553');
INSERT INTO `transactions` VALUES ('2988', '9', 'exit', '24/03/2025', '100', '96153');
INSERT INTO `transactions` VALUES ('2989', '23', 'entry', '24/03/2025', '500', '10668');
INSERT INTO `transactions` VALUES ('2990', '1', 'entry', '24/03/2025', '12100', '2569013');
INSERT INTO `transactions` VALUES ('2991', '1', 'entry', '24/03/2025', '3500', '2581113');
INSERT INTO `transactions` VALUES ('2992', '1', 'entry', '24/03/2025', '1000', '2584613');
INSERT INTO `transactions` VALUES ('2993', '9', 'entry', '24/03/2025', '11100', '96053');
INSERT INTO `transactions` VALUES ('2994', '23', 'entry', '24/03/2025', '3250', '11168');
INSERT INTO `transactions` VALUES ('2995', '23', 'entry', '24/03/2025', '3500', '14418');
INSERT INTO `transactions` VALUES ('2996', '1', 'entry', '24/03/2025', '5000', '2585613');
INSERT INTO `transactions` VALUES ('2997', '1', 'entry', '24/03/2025', '5000', '2590613');
INSERT INTO `transactions` VALUES ('2998', '23', 'entry', '24/03/2025', '5000', '17918');
INSERT INTO `transactions` VALUES ('2999', '23', 'entry', '24/03/2025', '5000', '22918');
INSERT INTO `transactions` VALUES ('3000', '1', 'entry', '24/03/2025', '12100', '2595613');
INSERT INTO `transactions` VALUES ('3001', '1', 'entry', '24/03/2025', '3500', '2607713');
INSERT INTO `transactions` VALUES ('3002', '23', 'entry', '24/03/2025', '35405', '27918');
INSERT INTO `transactions` VALUES ('3003', '1', 'entry', '24/03/2025', '1000', '2611213');
INSERT INTO `transactions` VALUES ('3004', '1', 'exit', '24/03/2025', '10000', '2612213');
INSERT INTO `transactions` VALUES ('3005', '1', 'exit', '24/03/2025', '1000', '2602213');
INSERT INTO `transactions` VALUES ('3006', '1', 'entry', '24/03/2025', '12100', '2601213');
INSERT INTO `transactions` VALUES ('3007', '1', 'exit', '24/03/2025', '6', '2613313');
INSERT INTO `transactions` VALUES ('3008', '1', 'exit', '24/03/2025', '1000000', '2613307');
INSERT INTO `transactions` VALUES ('3009', '1', 'exit', '24/03/2025', '9', '1613307');
INSERT INTO `transactions` VALUES ('3010', '1', 'exit', '24/03/2025', '350', '1613298');
INSERT INTO `transactions` VALUES ('3011', '23', 'exit', '24/03/2025', '50', '74323');
INSERT INTO `transactions` VALUES ('3012', '23', 'exit', '24/03/2025', '400', '74273');
INSERT INTO `transactions` VALUES ('3013', '23', 'exit', '24/03/2025', '20', '73873');
INSERT INTO `transactions` VALUES ('3014', '23', 'exit', '24/03/2025', '20', '73853');
INSERT INTO `transactions` VALUES ('3015', '1', 'entry', '24/03/2025', '3500', '1612948');
INSERT INTO `transactions` VALUES ('3016', '1', 'entry', '24/03/2025', '12100', '1616448');
INSERT INTO `transactions` VALUES ('3017', '1', 'entry', '24/03/2025', '20000', '1628548');
INSERT INTO `transactions` VALUES ('3018', '23', 'entry', '24/03/2025', '3250', '73833');
INSERT INTO `transactions` VALUES ('3019', '23', 'entry', '24/03/2025', '3500', '77083');
INSERT INTO `transactions` VALUES ('3020', '23', 'exit', '24/03/2025', '50', '80583');
INSERT INTO `transactions` VALUES ('3021', '23', 'exit', '24/03/2025', '400', '80533');
INSERT INTO `transactions` VALUES ('3022', '23', 'exit', '24/03/2025', '400', '80133');
INSERT INTO `transactions` VALUES ('3023', '23', 'exit', '24/03/2025', '5000', '79733');
INSERT INTO `transactions` VALUES ('3024', '23', 'exit', '24/03/2025', '50', '74733');
INSERT INTO `transactions` VALUES ('3025', '1', 'entry', '24/03/2025', '3500', '1648548');
INSERT INTO `transactions` VALUES ('3026', '1', 'entry', '24/03/2025', '12100', '1652048');
INSERT INTO `transactions` VALUES ('3027', '23', 'exit', '24/03/2025', '28', '74683');
INSERT INTO `transactions` VALUES ('3028', '1', 'entry', '24/03/2025', '1', '1664148');
INSERT INTO `transactions` VALUES ('3029', '23', 'exit', '24/03/2025', '1', '74655');
INSERT INTO `transactions` VALUES ('3030', '1', 'entry', '24/03/2025', '20000', '1664149');
INSERT INTO `transactions` VALUES ('3031', '23', 'entry', '24/03/2025', '1', '74654');
INSERT INTO `transactions` VALUES ('3032', '1', 'exit', '24/03/2025', '1', '1684149');
INSERT INTO `transactions` VALUES ('3033', '23', 'exit', '24/03/2025', '50', '74655');
INSERT INTO `transactions` VALUES ('3034', '23', 'exit', '24/03/2025', '400', '74605');
INSERT INTO `transactions` VALUES ('3035', '23', 'exit', '24/03/2025', '50', '74205');
INSERT INTO `transactions` VALUES ('3036', '23', 'exit', '24/03/2025', '400', '74155');
INSERT INTO `transactions` VALUES ('3037', '23', 'entry', '24/03/2025', '3250', '73755');
INSERT INTO `transactions` VALUES ('3038', '23', 'entry', '24/03/2025', '3500', '77005');
INSERT INTO `transactions` VALUES ('3039', '2', 'entry', '24/03/2025', '20000', '1165618');
INSERT INTO `transactions` VALUES ('3040', '2', 'entry', '24/03/2025', '20000', '1185618');
INSERT INTO `transactions` VALUES ('3041', '1', 'entry', '24/03/2025', '20000', '1684148');
INSERT INTO `transactions` VALUES ('3042', '1', 'entry', '24/03/2025', '20000', '1704148');
INSERT INTO `transactions` VALUES ('3043', '1', 'entry', '24/03/2025', '20000', '1724148');
INSERT INTO `transactions` VALUES ('3044', '1', 'exit', '24/03/2025', '500000', '1744148');
INSERT INTO `transactions` VALUES ('3045', '51', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3046', '1', 'entry', '24/03/2025', '20000', '1244148');
INSERT INTO `transactions` VALUES ('3047', '52', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3048', '53', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3049', '54', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3050', '2', 'entry', '24/03/2025', '20000', '1205618');
INSERT INTO `transactions` VALUES ('3051', '23', 'exit', '24/03/2025', '50', '80505');
INSERT INTO `transactions` VALUES ('3052', '51', 'exit', '24/03/2025', '1500', '5000');
INSERT INTO `transactions` VALUES ('3053', '2', 'entry', '24/03/2025', '1', '1225618');
INSERT INTO `transactions` VALUES ('3054', '23', 'exit', '24/03/2025', '300', '80455');
INSERT INTO `transactions` VALUES ('3055', '2', 'entry', '24/03/2025', '3500', '1225619');
INSERT INTO `transactions` VALUES ('3056', '2', 'entry', '24/03/2025', '20000', '1229119');
INSERT INTO `transactions` VALUES ('3057', '1', 'entry', '24/03/2025', '20000', '1264148');
INSERT INTO `transactions` VALUES ('3058', '23', 'entry', '24/03/2025', '3500', '80155');
INSERT INTO `transactions` VALUES ('3059', '23', 'entry', '24/03/2025', '3250', '83655');
INSERT INTO `transactions` VALUES ('3060', '2', 'entry', '24/03/2025', '1', '1249119');
INSERT INTO `transactions` VALUES ('3061', '23', 'exit', '24/03/2025', '50', '86905');
INSERT INTO `transactions` VALUES ('3062', '1', 'entry', '24/03/2025', '1000', '1284148');
INSERT INTO `transactions` VALUES ('3063', '23', 'exit', '24/03/2025', '400', '86855');
INSERT INTO `transactions` VALUES ('3064', '1', 'entry', '24/03/2025', '20000', '1285148');
INSERT INTO `transactions` VALUES ('3065', '23', 'exit', '24/03/2025', '200', '86455');
INSERT INTO `transactions` VALUES ('3066', '23', 'exit', '24/03/2025', '180', '86255');
INSERT INTO `transactions` VALUES ('3067', '23', 'exit', '24/03/2025', '400', '86075');
INSERT INTO `transactions` VALUES ('3068', '55', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3069', '54', 'exit', '24/03/2025', '500', '5000');
INSERT INTO `transactions` VALUES ('3070', '23', 'entry', '24/03/2025', '3500', '85675');
INSERT INTO `transactions` VALUES ('3071', '23', 'entry', '24/03/2025', '3250', '89175');
INSERT INTO `transactions` VALUES ('3072', '1', 'entry', '24/03/2025', '1000', '1305148');
INSERT INTO `transactions` VALUES ('3073', '1', 'entry', '24/03/2025', '3500', '1306148');
INSERT INTO `transactions` VALUES ('3074', '1', 'entry', '24/03/2025', '20000', '1309648');
INSERT INTO `transactions` VALUES ('3075', '23', 'exit', '24/03/2025', '400', '92425');
INSERT INTO `transactions` VALUES ('3076', '23', 'entry', '24/03/2025', '3500', '92025');
INSERT INTO `transactions` VALUES ('3077', '23', 'entry', '24/03/2025', '3250', '95525');
INSERT INTO `transactions` VALUES ('3078', '1', 'entry', '24/03/2025', '1000', '1329648');
INSERT INTO `transactions` VALUES ('3079', '1', 'entry', '24/03/2025', '3500', '1330648');
INSERT INTO `transactions` VALUES ('3080', '56', 'entry', '24/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3081', '1', 'entry', '24/03/2025', '20000', '1334148');
INSERT INTO `transactions` VALUES ('3082', '23', 'entry', '25/03/2025', '3500', '98775');
INSERT INTO `transactions` VALUES ('3083', '23', 'entry', '25/03/2025', '3250', '102275');
INSERT INTO `transactions` VALUES ('3084', '23', 'exit', '25/03/2025', '400', '105525');
INSERT INTO `transactions` VALUES ('3085', '3', 'entry', '25/03/2025', '20000', '1401622');
INSERT INTO `transactions` VALUES ('3086', '9', 'exit', '25/03/2025', '5000', '107153');
INSERT INTO `transactions` VALUES ('3087', '9', 'exit', '25/03/2025', '50', '102153');
INSERT INTO `transactions` VALUES ('3088', '23', 'entry', '25/03/2025', '3500', '105125');
INSERT INTO `transactions` VALUES ('3089', '23', 'entry', '25/03/2025', '3250', '108625');
INSERT INTO `transactions` VALUES ('3090', '3', 'entry', '25/03/2025', '20000', '1421622');
INSERT INTO `transactions` VALUES ('3091', '23', 'entry', '25/03/2025', '3500', '111875');
INSERT INTO `transactions` VALUES ('3092', '23', 'entry', '25/03/2025', '3250', '115375');
INSERT INTO `transactions` VALUES ('3093', '23', 'exit', '25/03/2025', '90', '118625');
INSERT INTO `transactions` VALUES ('3094', '3', 'entry', '25/03/2025', '20000', '1441622');
INSERT INTO `transactions` VALUES ('3095', '23', 'entry', '25/03/2025', '3500', '118535');
INSERT INTO `transactions` VALUES ('3096', '23', 'entry', '25/03/2025', '3250', '122035');
INSERT INTO `transactions` VALUES ('3097', '23', 'exit', '25/03/2025', '200', '125285');
INSERT INTO `transactions` VALUES ('3098', '23', 'exit', '25/03/2025', '300', '125085');
INSERT INTO `transactions` VALUES ('3099', '23', 'exit', '25/03/2025', '300', '124785');
INSERT INTO `transactions` VALUES ('3100', '23', 'exit', '25/03/2025', '400', '124485');
INSERT INTO `transactions` VALUES ('3101', '9', 'exit', '25/03/2025', '400', '102103');
INSERT INTO `transactions` VALUES ('3102', '23', 'exit', '25/03/2025', '200', '124085');
INSERT INTO `transactions` VALUES ('3103', '23', 'entry', '25/03/2025', '3500', '123885');
INSERT INTO `transactions` VALUES ('3104', '23', 'entry', '25/03/2025', '3250', '127385');
INSERT INTO `transactions` VALUES ('3105', '9', 'exit', '25/03/2025', '400', '101703');
INSERT INTO `transactions` VALUES ('3106', '23', 'exit', '25/03/2025', '50', '130635');
INSERT INTO `transactions` VALUES ('3107', '23', 'exit', '25/03/2025', '270', '130585');
INSERT INTO `transactions` VALUES ('3108', '23', 'entry', '25/03/2025', '3500', '130315');
INSERT INTO `transactions` VALUES ('3109', '23', 'entry', '25/03/2025', '3250', '133815');
INSERT INTO `transactions` VALUES ('3110', '23', 'entry', '25/03/2025', '3500', '137065');
INSERT INTO `transactions` VALUES ('3111', '23', 'entry', '25/03/2025', '3250', '140565');
INSERT INTO `transactions` VALUES ('3112', '1', 'entry', '25/03/2025', '20000', '1354148');
INSERT INTO `transactions` VALUES ('3113', '1', 'entry', '25/03/2025', '3500', '1374148');
INSERT INTO `transactions` VALUES ('3114', '1', 'exit', '25/03/2025', '7', '1377648');
INSERT INTO `transactions` VALUES ('3115', '1', 'entry', '25/03/2025', '3500', '1377641');
INSERT INTO `transactions` VALUES ('3116', '1', 'exit', '25/03/2025', '7', '1381141');
INSERT INTO `transactions` VALUES ('3117', '1', 'exit', '25/03/2025', '400', '1381134');
INSERT INTO `transactions` VALUES ('3118', '1', 'exit', '25/03/2025', '960', '1380734');
INSERT INTO `transactions` VALUES ('3119', '1', 'exit', '25/03/2025', '400', '1379774');
INSERT INTO `transactions` VALUES ('3120', '1', 'exit', '25/03/2025', '123', '1379374');
INSERT INTO `transactions` VALUES ('3121', '1', 'entry', '25/03/2025', '20000', '1379251');
INSERT INTO `transactions` VALUES ('3122', '1', 'entry', '25/03/2025', '3500', '1399251');
INSERT INTO `transactions` VALUES ('3123', '1', 'entry', '25/03/2025', '3500', '1402751');
INSERT INTO `transactions` VALUES ('3124', '1', 'exit', '25/03/2025', '400', '1406251');
INSERT INTO `transactions` VALUES ('3125', '1', 'entry', '25/03/2025', '20000', '1405851');
INSERT INTO `transactions` VALUES ('3126', '1', 'entry', '25/03/2025', '3500', '1425851');
INSERT INTO `transactions` VALUES ('3127', '1', 'entry', '25/03/2025', '3500', '1429351');
INSERT INTO `transactions` VALUES ('3128', '54', 'exit', '25/03/2025', '400', '4500');
INSERT INTO `transactions` VALUES ('3129', '1', 'entry', '25/03/2025', '20000', '1432851');
INSERT INTO `transactions` VALUES ('3130', '2', 'entry', '25/03/2025', '20000', '1249120');
INSERT INTO `transactions` VALUES ('3131', '2', 'entry', '25/03/2025', '1', '1269120');
INSERT INTO `transactions` VALUES ('3132', '1', 'exit', '25/03/2025', '2000', '1452851');
INSERT INTO `transactions` VALUES ('3133', '2', 'exit', '25/03/2025', '2000', '1269121');
INSERT INTO `transactions` VALUES ('3134', '2', 'exit', '25/03/2025', '1', '1267121');
INSERT INTO `transactions` VALUES ('3135', '1', 'entry', '25/03/2025', '1', '1450851');
INSERT INTO `transactions` VALUES ('3136', '2', 'exit', '25/03/2025', '2630', '1267120');
INSERT INTO `transactions` VALUES ('3137', '1', 'exit', '25/03/2025', '400', '1450852');
INSERT INTO `transactions` VALUES ('3138', '2', 'exit', '25/03/2025', '2350', '1264490');
INSERT INTO `transactions` VALUES ('3139', '1', 'exit', '25/03/2025', '500', '1450452');
INSERT INTO `transactions` VALUES ('3140', '2', 'exit', '25/03/2025', '750', '1262140');
INSERT INTO `transactions` VALUES ('3141', '1', 'exit', '25/03/2025', '1000', '1449952');
INSERT INTO `transactions` VALUES ('3142', '1', 'entry', '25/03/2025', '20000', '1448952');
INSERT INTO `transactions` VALUES ('3143', '2', 'entry', '25/03/2025', '20000', '1261390');
INSERT INTO `transactions` VALUES ('3144', '1', 'entry', '25/03/2025', '12100', '1468952');
INSERT INTO `transactions` VALUES ('3145', '1', 'entry', '25/03/2025', '5000', '1481052');
INSERT INTO `transactions` VALUES ('3146', '1', 'entry', '25/03/2025', '3500', '1486052');
INSERT INTO `transactions` VALUES ('3147', '2', 'exit', '25/03/2025', '164', '1281390');
INSERT INTO `transactions` VALUES ('3148', '2', 'entry', '25/03/2025', '20000', '1281226');
INSERT INTO `transactions` VALUES ('3149', '2', 'entry', '25/03/2025', '20000', '1301226');
INSERT INTO `transactions` VALUES ('3150', '57', 'entry', '25/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3151', '2', 'entry', '25/03/2025', '20000', '1321226');
INSERT INTO `transactions` VALUES ('3152', '23', 'exit', '25/03/2025', '50', '143815');
INSERT INTO `transactions` VALUES ('3153', '23', 'exit', '25/03/2025', '400', '143765');
INSERT INTO `transactions` VALUES ('3154', '23', 'exit', '25/03/2025', '400', '143365');
INSERT INTO `transactions` VALUES ('3155', '2', 'entry', '25/03/2025', '20000', '1341226');
INSERT INTO `transactions` VALUES ('3156', '23', 'entry', '25/03/2025', '3250', '142965');
INSERT INTO `transactions` VALUES ('3157', '23', 'entry', '25/03/2025', '3500', '146215');
INSERT INTO `transactions` VALUES ('3158', '23', 'exit', '25/03/2025', '400', '149715');
INSERT INTO `transactions` VALUES ('3159', '57', 'exit', '25/03/2025', '2000', '5000');
INSERT INTO `transactions` VALUES ('3160', '54', 'exit', '25/03/2025', '30', '4100');
INSERT INTO `transactions` VALUES ('3161', '2', 'entry', '25/03/2025', '20000', '1361226');
INSERT INTO `transactions` VALUES ('3162', '23', 'entry', '25/03/2025', '3250', '149315');
INSERT INTO `transactions` VALUES ('3163', '23', 'entry', '25/03/2025', '3500', '152565');
INSERT INTO `transactions` VALUES ('3164', '1', 'exit', '25/03/2025', '4500', '1489552');
INSERT INTO `transactions` VALUES ('3165', '23', 'entry', '25/03/2025', '4500', '156065');
INSERT INTO `transactions` VALUES ('3166', '2', 'exit', '25/03/2025', '3800', '1381226');
INSERT INTO `transactions` VALUES ('3167', '2', 'exit', '25/03/2025', '12500', '1377426');
INSERT INTO `transactions` VALUES ('3168', '2', 'exit', '25/03/2025', '2000', '1364926');
INSERT INTO `transactions` VALUES ('3169', '2', 'exit', '25/03/2025', '7500', '1362926');
INSERT INTO `transactions` VALUES ('3170', '2', 'exit', '25/03/2025', '1600', '1355426');
INSERT INTO `transactions` VALUES ('3171', '2', 'exit', '25/03/2025', '30', '1353826');
INSERT INTO `transactions` VALUES ('3172', '2', 'exit', '25/03/2025', '600', '1353796');
INSERT INTO `transactions` VALUES ('3173', '2', 'exit', '25/03/2025', '600', '1353196');
INSERT INTO `transactions` VALUES ('3174', '2', 'exit', '25/03/2025', '500', '1352596');
INSERT INTO `transactions` VALUES ('3175', '2', 'exit', '25/03/2025', '500', '1352096');
INSERT INTO `transactions` VALUES ('3176', '2', 'exit', '25/03/2025', '100', '1351596');
INSERT INTO `transactions` VALUES ('3177', '2', 'exit', '25/03/2025', '20', '1351496');
INSERT INTO `transactions` VALUES ('3178', '1', 'entry', '25/03/2025', '3500', '1485052');
INSERT INTO `transactions` VALUES ('3179', '1', 'entry', '25/03/2025', '20000', '1488552');
INSERT INTO `transactions` VALUES ('3180', '1', 'entry', '25/03/2025', '3500', '1508552');
INSERT INTO `transactions` VALUES ('3181', '23', 'exit', '25/03/2025', '50', '160565');
INSERT INTO `transactions` VALUES ('3182', '23', 'exit', '25/03/2025', '50', '160515');
INSERT INTO `transactions` VALUES ('3183', '23', 'exit', '25/03/2025', '50', '160465');
INSERT INTO `transactions` VALUES ('3184', '23', 'entry', '25/03/2025', '3250', '160415');
INSERT INTO `transactions` VALUES ('3185', '23', 'entry', '25/03/2025', '3500', '163665');
INSERT INTO `transactions` VALUES ('3186', '23', 'exit', '25/03/2025', '50', '167165');
INSERT INTO `transactions` VALUES ('3187', '23', 'exit', '25/03/2025', '400', '167115');
INSERT INTO `transactions` VALUES ('3188', '23', 'entry', '25/03/2025', '3250', '166715');
INSERT INTO `transactions` VALUES ('3189', '23', 'entry', '25/03/2025', '3500', '169965');
INSERT INTO `transactions` VALUES ('3190', '23', 'entry', '25/03/2025', '3250', '173465');
INSERT INTO `transactions` VALUES ('3191', '23', 'entry', '25/03/2025', '3500', '176715');
INSERT INTO `transactions` VALUES ('3192', '1', 'exit', '25/03/2025', '400', '1512052');
INSERT INTO `transactions` VALUES ('3193', '23', 'exit', '25/03/2025', '975', '180215');
INSERT INTO `transactions` VALUES ('3194', '23', 'exit', '25/03/2025', '750', '179240');
INSERT INTO `transactions` VALUES ('3195', '23', 'exit', '25/03/2025', '400', '178490');
INSERT INTO `transactions` VALUES ('3196', '23', 'entry', '25/03/2025', '3250', '178090');
INSERT INTO `transactions` VALUES ('3197', '23', 'entry', '25/03/2025', '3500', '181340');
INSERT INTO `transactions` VALUES ('3198', '23', 'exit', '25/03/2025', '400', '184840');
INSERT INTO `transactions` VALUES ('3199', '1', 'entry', '25/03/2025', '3500', '1511652');
INSERT INTO `transactions` VALUES ('3200', '1', 'entry', '25/03/2025', '3500', '1515152');
INSERT INTO `transactions` VALUES ('3201', '1', 'entry', '25/03/2025', '20000', '1518652');
INSERT INTO `transactions` VALUES ('3202', '1', 'exit', '25/03/2025', '1750', '1538652');
INSERT INTO `transactions` VALUES ('3203', '23', 'entry', '25/03/2025', '1750', '184440');
INSERT INTO `transactions` VALUES ('3204', '1', 'exit', '25/03/2025', '100', '1536902');
INSERT INTO `transactions` VALUES ('3205', '23', 'entry', '25/03/2025', '3250', '186190');
INSERT INTO `transactions` VALUES ('3206', '23', 'entry', '25/03/2025', '3500', '189440');
INSERT INTO `transactions` VALUES ('3207', '23', 'exit', '25/03/2025', '250', '192940');
INSERT INTO `transactions` VALUES ('3208', '1', 'entry', '25/03/2025', '5000', '1536802');
INSERT INTO `transactions` VALUES ('3209', '1', 'exit', '25/03/2025', '400', '1541802');
INSERT INTO `transactions` VALUES ('3210', '1', 'entry', '25/03/2025', '3500', '1541402');
INSERT INTO `transactions` VALUES ('3211', '1', 'entry', '25/03/2025', '3500', '1544902');
INSERT INTO `transactions` VALUES ('3212', '1', 'entry', '25/03/2025', '20000', '1548402');
INSERT INTO `transactions` VALUES ('3213', '1', 'exit', '25/03/2025', '2000', '1568402');
INSERT INTO `transactions` VALUES ('3214', '58', 'entry', '26/03/2025', '5000', '0');
INSERT INTO `transactions` VALUES ('3215', '9', 'exit', '26/03/2025', '50', '101303');
INSERT INTO `transactions` VALUES ('3216', '9', 'exit', '26/03/2025', '75000', '101253');
INSERT INTO `transactions` VALUES ('3217', '9', 'exit', '26/03/2025', '1000', '26253');
INSERT INTO `transactions` VALUES ('3218', '9', 'exit', '26/03/2025', '50', '25253');
INSERT INTO `transactions` VALUES ('3219', '9', 'exit', '26/03/2025', '225', '25203');
INSERT INTO `transactions` VALUES ('3220', '9', 'exit', '26/03/2025', '13', '24978');
INSERT INTO `transactions` VALUES ('3221', '9', 'exit', '26/03/2025', '1380', '24965');
INSERT INTO `transactions` VALUES ('3222', '9', 'exit', '26/03/2025', '565', '23585');
INSERT INTO `transactions` VALUES ('3223', '9', 'exit', '26/03/2025', '565', '23020');
INSERT INTO `transactions` VALUES ('3224', '9', 'exit', '26/03/2025', '1625', '22455');
INSERT INTO `transactions` VALUES ('3225', '9', 'exit', '26/03/2025', '60', '20830');
INSERT INTO `transactions` VALUES ('3226', '9', 'entry', '26/03/2025', '11100', '20770');
INSERT INTO `transactions` VALUES ('3227', '9', 'exit', '26/03/2025', '750', '31870');
INSERT INTO `transactions` VALUES ('3228', '23', 'exit', '26/03/2025', '50', '192690');
INSERT INTO `transactions` VALUES ('3229', '23', 'exit', '26/03/2025', '400', '192640');
INSERT INTO `transactions` VALUES ('3230', '23', 'exit', '26/03/2025', '750', '192240');
INSERT INTO `transactions` VALUES ('3231', '23', 'exit', '26/03/2025', '975', '191490');
INSERT INTO `transactions` VALUES ('3232', '23', 'entry', '26/03/2025', '3500', '190515');
INSERT INTO `transactions` VALUES ('3233', '23', 'entry', '26/03/2025', '3250', '194015');
INSERT INTO `transactions` VALUES ('3234', '9', 'exit', '26/03/2025', '50', '31120');
INSERT INTO `transactions` VALUES ('3235', '23', 'exit', '26/03/2025', '45', '197265');
INSERT INTO `transactions` VALUES ('3236', '23', 'exit', '26/03/2025', '25', '197220');
INSERT INTO `transactions` VALUES ('3237', '23', 'exit', '26/03/2025', '150', '197195');
INSERT INTO `transactions` VALUES ('3238', '23', 'exit', '26/03/2025', '250', '197045');
INSERT INTO `transactions` VALUES ('3239', '23', 'exit', '26/03/2025', '27', '196795');
INSERT INTO `transactions` VALUES ('3240', '23', 'entry', '26/03/2025', '3500', '196768');
INSERT INTO `transactions` VALUES ('3241', '23', 'entry', '26/03/2025', '3250', '200268');
INSERT INTO `transactions` VALUES ('3242', '23', 'exit', '26/03/2025', '50', '203518');
INSERT INTO `transactions` VALUES ('3243', '8', 'entry', '26/03/2025', '12100', '212619');
INSERT INTO `transactions` VALUES ('3244', '9', 'exit', '26/03/2025', '100', '31070');

DROP TABLE IF EXISTS `undefined`;
CREATE TABLE `undefined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dkey` varchar(255) NOT NULL,
  `dvalue` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `tax` int(20) NOT NULL DEFAULT 0,
  `plate` varchar(10) DEFAULT NULL,
  `rental` int(20) NOT NULL DEFAULT 0,
  `arrest` int(20) NOT NULL DEFAULT 0,
  `engine` int(4) NOT NULL DEFAULT 1000,
  `body` int(4) NOT NULL DEFAULT 1000,
  `health` int(4) NOT NULL DEFAULT 1000,
  `fuel` int(3) NOT NULL DEFAULT 100,
  `nitro` int(5) NOT NULL DEFAULT 0,
  `work` varchar(5) NOT NULL DEFAULT 'false',
  `doors` longtext NOT NULL,
  `windows` longtext NOT NULL,
  `tyres` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `vehicle` (`vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `vehicles` VALUES ('15', '5', 'Bike', '1742578799', '12AIE046', '1742578799', '0', '803', '411', '515', '98', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('16', '7', '370zrubytiger', '1742579519', '77ZHO841', '0', '0', '999', '999', '999', '99', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('17', '7', 'Bike', '1742579523', '46SIJ372', '1742579523', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('18', '7', '370zrubytiger', '1742580746', '41ZGM434', '0', '0', '999', '999', '999', '99', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('25', '8', 'mobm23', '1742583091', '42XUZ696', '1744570291', '0', '1000', '1000', '1000', '70', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('27', '8', 'wrx6mf96', '1742584171', '25ZZT020', '0', '0', '485', '385', '385', '88', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":true,"2":true,"3":true,"4":true,"5":true,"6":true,"7":true,"0":true}');
INSERT INTO `vehicles` VALUES ('28', '11', 'Bike', '1742584914', '15JAE393', '1742584914', '0', '687', '652', '653', '74', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('30', '13', 'Bike', '1742585679', '60QQV591', '1742585679', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('31', '14', 'Bike', '1742586214', '38APP968', '1742586214', '0', '1000', '999', '1000', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('32', '3', 'phantom', '1742588120', '39IZA584', '0', '0', '100', '100', '100', '42', '940', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('33', '13', 'phantom', '1742588422', '43ZQJ508', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('34', '17', 'Bike', '1742589757', '20IBM674', '1742589757', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('35', '16', 'nissanr33tbk', '1742589804', '85XPO898', '1744577004', '0', '1000', '1000', '1000', '81', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('36', '16', 'Bike', '1742589804', '96MUQ342', '1742589804', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('37', '16', 'mobm23', '1742589814', '11EAR273', '1744577014', '0', '1000', '1000', '1000', '92', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('39', '17', 'WRr1200', '1742590198', '68LJK073', '0', '0', '966', '932', '932', '94', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('40', '10', 'stockade', '1742590421', '21KEG264', '0', '0', '992', '992', '992', '94', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('41', '16', 'trash2', '1742590692', '44BTU776', '0', '0', '710', '559', '559', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('42', '10', 'bus', '1742591412', '95CCH590', '0', '0', '953', '948', '948', '94', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('44', '15', 'Bike', '1742596114', '75APJ680', '1742596114', '0', '838', '826', '826', '96', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('45', '12', 'Bike', '1742597576', '89OJE668', '1742597576', '0', '1000', '964', '1000', '98', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('46', '18', 'Bike', '1742597645', '62FPI698', '1742597645', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('47', '2', 'mobm23', '1745436038', '76OQI856', '1744585183', '0', '995', '995', '998', '87', '1716', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('49', '19', 'Bike', '1742598268', '16TLW179', '1742598268', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('54', '9', 'energyr1200samu', '1742601716', '09GZQ205', '0', '0', '601', '100', '100', '72', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('55', '3', '2f2fgtr34', '1742601742', '69TPN413', '0', '0', '917', '916', '916', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('57', '3', 'hurcop', '1742602837', '08DFB500', '0', '0', '904', '894', '894', '90', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('58', '3', 'ferrariitalia', '1742603696', '06WPN655', '1744590896', '0', '954', '904', '905', '63', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('59', '4', 'wrforduber', '1742607969', '81ZOE119', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('60', '3', 'eclipse', '1742608305', '20AVS400', '1744595505', '0', '716', '684', '684', '54', '658', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('61', '20', 'mobm23', '1742608512', '02GFX087', '1744595712', '0', '983', '979', '982', '44', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('63', '20', 'Bike', '1742610583', '40KLM442', '1742610583', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('64', '21', 'Bike', '1742612326', '62UEK536', '1742612326', '0', '947', '894', '961', '92', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('66', '2', 'aventador', '1745436038', '13IOE157', '1744603113', '0', '999', '999', '999', '97', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('67', '9', 'wrx6mf96', '1742617138', '80AZI402', '0', '0', '809', '788', '913', '83', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('70', '8', 'amarokeb', '1742621721', '30AQW004', '0', '0', '988', '987', '987', '94', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('71', '2', 'nissanr33tbk', '1745436038', '78UOD618', '1744610493', '0', '993', '992', '992', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('72', '8', 'motosamu', '1742623663', '40VIP574', '0', '0', '812', '857', '857', '81', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('73', '9', 'trash', '1745385821', '38IRX350', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('74', '2', 'nissangtrnismo', '1745436038', '48MAT860', '1744611421', '0', '999', '999', '999', '50', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('75', '24', 'Bike', '1742625048', '24WYY621', '1742625048', '0', '1000', '1000', '1000', '98', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('78', '9', 'mobm23', '1745465635', '86QXD044', '1744614200', '0', '993', '993', '996', '45', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('79', '24', 'bus', '1742627671', '55KRP682', '0', '0', '949', '944', '944', '44', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('80', '4', 'tractor2', '1742645571', '41ZYB491', '0', '0', '918', '909', '909', '90', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('81', '4', 'raketrailer', '1742645644', '45HFO938', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('82', '4', 'flatbed', '1742646266', '86FPE333', '0', '0', '956', '951', '951', '94', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('83', '4', 'towtruck', '1742646275', '30KHH665', '0', '0', '943', '887', '887', '99', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('84', '25', 'Bike', '1742650610', '00ZUS965', '1742650610', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('85', '3', 'wrprfcamaro19', '1742654734', '82YBQ063', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('86', '3', 'wrcruzeprf', '1742654743', '25DPV344', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('87', '26', 'Bike', '1742657142', '93ROV669', '1742657142', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('88', '3', 'wrranger21', '1742657199', '11AAS746', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('89', '3', 'wrl200mecrc', '1742658018', '36OMH484', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('90', '10', 'avarus', '1742660487', '25HGV682', '0', '0', '1000', '990', '1000', '96', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('91', '5', 'wrprfcamaro19', '1742661071', '43SWY454', '0', '0', '100', '100', '102', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('92', '23', 'hauler2', '1742661995', '49UHM273', '0', '0', '729', '699', '699', '68', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('93', '10', 'rapidgt3', '1742662947', '02UMD745', '0', '0', '983', '975', '975', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('94', '23', 'packer', '1742663070', '97WPY913', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('95', '8', 'WRsprinter22', '1742670946', '34PPX000', '0', '0', '1000', '1000', '1000', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('98', '10', 'youga2', '1742673796', '71FBK611', '0', '0', '989', '662', '662', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":1,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('99', '12', 'mobm23', '1742674788', '74TKX128', '1744661988', '0', '998', '998', '998', '94', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('100', '28', 'Bike', '1742680626', '52ZLG747', '1742680626', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('101', '9', 'WRsprinter22', '1742683377', '21CDD868', '0', '0', '881', '874', '874', '70', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('102', '4', 'WRcorollanew', '1742683459', '09XLI457', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('103', '9', 'motosamu', '1742685469', '77RGU941', '0', '0', '1000', '1000', '1000', '99', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('104', '3', 'hurcop', '1742686449', '86ZVZ638', '0', '0', '904', '894', '894', '90', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('107', '3', 'WRcorollanew', '1742686672', '41KIE431', '0', '0', '1000', '1000', '1000', '100', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('110', '3', 'g7cross', '1742686927', '67DWE858', '1744674127', '0', '969', '952', '979', '62', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":1,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('111', '5', 'WRr1200prf', '1742687061', '84ACP398', '0', '0', '881', '646', '646', '60', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('112', '32', 'Bike', '1742687792', '83HHY988', '1742687792', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('113', '5', 'wrtrailblazerprf', '1742690445', '05IYX009', '0', '0', '664', '589', '619', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":1}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('115', '33', 'Bike', '1742690689', '58OEW290', '1742690689', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('119', '31', 'Bike', '1742690743', '56UUD105', '1742690743', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('121', '3', 'xreagstore', '1742690819', '56MIW851', '1744678019', '0', '938', '623', '623', '66', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('122', '5', 'wrranger21', '1742690968', '96KWQ540', '0', '0', '940', '921', '921', '99', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('123', '5', 'WRl200', '1742691229', '42IGS497', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('124', '5', 'wrcruzeprf', '1742691251', '16ZPL356', '0', '0', '970', '967', '967', '65', '0', 'true', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('125', '5', 'wras350prf', '1742691446', '65SKG467', '0', '0', '1000', '1000', '999', '85', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('126', '5', 'wrbell407prf', '1742691465', '68HFW428', '0', '0', '1000', '1000', '999', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('127', '18', 'wrforduber', '1742691556', '34GHK363', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('128', '33', 'wrforduber', '1742691563', '42CLJ651', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('129', '29', 'Bike', '1742691748', '58XXR359', '1742691748', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('132', '8', 'energyr1200samu', '1742694067', '25AKA791', '0', '0', '962', '924', '924', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('133', '4', 'WRtrailblazer22', '1742694697', '06MYQ846', '0', '0', '811', '662', '796', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('134', '4', 'wrm5', '1742694716', '73TRL212', '0', '0', '946', '941', '941', '92', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('136', '11', 'WRcorollanew', '1742696753', '34QAW432', '0', '0', '745', '100', '224', '93', '0', 'true', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":1,"2":false,"3":1,"4":false,"5":false,"0":1}', '{"1":true,"2":true,"3":true,"4":true,"5":false,"6":false,"7":true,"0":false}');
INSERT INTO `vehicles` VALUES ('137', '34', 'Bike', '1742696990', '38UXP609', '1742696990', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('138', '11', 'wrprfcamaro19', '1742697112', '21DXW500', '0', '0', '791', '768', '767', '85', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":true,"5":false,"6":false,"7":true,"0":false}');
INSERT INTO `vehicles` VALUES ('139', '11', 'wrtrailblazerprf', '1742697138', '09ETO100', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('140', '4', 'wrbuspol', '1742697367', '26CJE073', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('142', '8', 'WRpolmav', '1742698524', '43SNQ989', '0', '0', '1000', '1000', '1000', '99', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('143', '12', 'WRpolmav', '1742699720', '68HME869', '0', '0', '1000', '1000', '1000', '92', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('144', '12', 'energyr1200samu', '1742701686', '24PXH804', '0', '0', '993', '992', '992', '95', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('145', '36', 'Bike', '1742702039', '47HFE551', '1742702039', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('146', '9', 'youga2', '1745380754', '51WMH387', '0', '0', '910', '900', '978', '88', '2000', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('149', '3', 'urusd', '1742704634', '53YRU740', '1744691834', '0', '1000', '1000', '1000', '80', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('150', '10', 'Bike', '1742707246', '55OMK152', '1742707246', '0', '947', '849', '941', '87', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('151', '37', 'Bike', '1742709577', '08SWO990', '1742709577', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('152', '5', 'raketrailer', '1742727382', '44ORU788', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('153', '5', 'tractor2', '1742727430', '77NDJ421', '0', '0', '863', '848', '848', '79', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('154', '5', 'phantom', '1742736550', '74OBU729', '0', '0', '904', '893', '893', '40', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('155', '38', 'Bike', '1742748931', '09EVY427', '1742748931', '0', '1000', '960', '1000', '84', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('156', '16', 'wrl200mecrc', '1742767784', '27WHP105', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('157', '16', 'flatbed3', '1742768122', '18IGO719', '0', '0', '982', '690', '690', '98', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('158', '4', 'wrmustang', '1742770965', '70LOX813', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('159', '10', 'trash', '1742770968', '59ZCK535', '0', '0', '828', '809', '809', '86', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('160', '2', 'wrm5', '1742779427', '70NJS186', '0', '0', '991', '990', '990', '43', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('162', '23', 'flatbed3', '1742788456', '64WFJ621', '0', '0', '932', '100', '100', '40', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('163', '23', 'wrl200mecrc', '1742788485', '84EEA540', '0', '0', '661', '642', '644', '99', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('165', '23', 'wrchallengermecrc', '1742796476', '88GHB982', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('166', '23', 'WRr1200STREET', '1742796497', '96YVV221', '0', '0', '994', '989', '989', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('167', '37', 'brioso', '1742796540', '06MVD884', '0', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('168', '40', 'Bike', '1742800757', '01YPB731', '1742800757', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('169', '2', 'wrcruzeprf', '1742824819', '87HNQ447', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('170', '2', 'wrranger21', '1742824832', '93DKG092', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('171', '2', 'wrtrailblazerprf', '1742824845', '51AGB378', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('172', '11', 'WRr1200prf', '1742860511', '35QEH816', '0', '0', '969', '964', '964', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('173', '11', 'wrcruzeprf', '1742861786', '22VOI717', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('174', '11', 'WRl200', '1742862046', '90XNY530', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('176', '9', 'amarokeb', '1742882390', '52CDF496', '0', '0', '787', '708', '714', '72', '0', 'true', '{"1":1,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":false,"2":1,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('177', '37', 'brioso3', '1742882977', '67SUM728', '0', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('178', '37', 'WRsprinter22', '1742884625', '93XWP682', '0', '0', '1000', '1000', '1000', '70', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('179', '37', 'wrx6mf96', '1742884652', '78KCA157', '0', '0', '877', '841', '859', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('180', '42', 'Bike', '1742917402', '25YPX872', '1742917402', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('181', '4', 'pariah', '1742920325', '78ANT406', '0', '0', '842', '813', '813', '98', '0', 'false', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('182', '4', 'WRduster22', '1742926633', '36LWW130', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('183', '33', 'wrtrailblazerprf', '1742933078', '72VOV540', '0', '0', '1000', '969', '969', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('184', '33', 'wrranger21', '1742933312', '52YRU109', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('189', '2', 'WRc7', '1742947748', '77VBR284', '0', '0', '1000', '1000', '1000', '90', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('190', '45', 'Bike', '1742953999', '26COZ395', '1742953999', '0', '764', '732', '762', '58', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('191', '44', 'Bike', '1742954330', '84FMU099', '1742954330', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('192', '43', 'Bike', '1742954816', '11LAB973', '1742954816', '0', '100', '261', '303', '80', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('199', '21', 'nissangtrnismo', '1742956391', '47IKP237', '1744943591', '0', '995', '994', '1000', '96', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('200', '45', 'wrforduber', '1742957646', '08VKA226', '0', '0', '100', '299', '299', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('201', '46', 'Bike', '1742968272', '18KYI849', '1742968272', '0', '825', '787', '805', '95', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('202', '47', 'Bike', '1743014183', '77BVQ058', '1743014183', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('203', '4', 'youga2', '1743015734', '99EEF369', '0', '0', '970', '966', '1000', '96', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('204', '4', 'rhinehart', '1743016358', '48FFE426', '0', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('205', '48', 'Bike', '1743022781', '43GCM947', '1743022781', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('209', '3', 'phantom', '1743026081', '65TXB425', '0', '0', '100', '100', '100', '42', '940', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('210', '3', 'flatbed3', '1743026361', '76YRV666', '0', '0', '791', '726', '726', '96', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('212', '9', 'wrforduber', '1743032900', '19IIZ290', '0', '0', '923', '933', '933', '60', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('213', '42', 'youga2', '1743039270', '61LFA536', '0', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('214', '42', 'rhinehart', '1743039427', '25IRI546', '0', '0', '1000', '1000', '1000', '98', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('215', '46', 'wrforduber', '1743094420', '74BPB678', '0', '0', '883', '891', '901', '50', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('216', '46', 'wrtrailblazerprf', '1743096096', '70DYV768', '0', '0', '917', '909', '909', '83', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":true,"5":true,"6":false,"7":true,"0":false}');
INSERT INTO `vehicles` VALUES ('217', '46', 'wrprfcamaro19', '1743098714', '99LYT962', '0', '0', '988', '987', '987', '73', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('218', '46', 'WRc7', '1743100603', '43YLW148', '0', '0', '976', '974', '974', '74', '0', 'true', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":true,"7":false,"0":true}');
INSERT INTO `vehicles` VALUES ('219', '46', 'WRr1200prf', '1743101318', '46SZF304', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('220', '41', 'calico', '1743108358', '24YKW973', '0', '0', '1000', '1000', '1000', '66', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('221', '3', 'wrchallengermecrc', '1743114391', '98NYC916', '0', '0', '1000', '1000', '1000', '99', '2000', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('222', '15', 'fnfmits', '1743115680', '90KGG977', '0', '0', '1000', '1000', '1000', '76', '1091', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('224', '24', 'wrforduber', '1743130923', '50HMO762', '0', '0', '987', '989', '989', '8', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('225', '23', 'club', '1743134223', '40LYV010', '0', '0', '990', '989', '989', '34', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('226', '46', 'WRl200', '1743135601', '71YEH199', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('227', '9', 'WRpolmav', '1743137077', '50DOS408', '0', '0', '1000', '1000', '1000', '91', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('228', '46', 'B412', '1743137347', '58APU667', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('229', '46', 'maverick2', '1743137369', '93ZQT456', '0', '0', '546', '313', '312', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('230', '46', 'wrm5', '1743138304', '29XJK818', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('234', '49', 'Bike', '1743183027', '92UXE184', '1743183027', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('235', '37', 'amarokeb', '1743183902', '76BOG963', '0', '0', '955', '951', '991', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('236', '1', 'wrranger21', '1743186263', '72LOE859', '0', '0', '1000', '978', '978', '90', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('237', '1', 'WRr1200prf', '1743187959', '77LAI072', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('238', '2', 'civictyper', '1743188386', '03OXT957', '1745175586', '0', '791', '768', '768', '32', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('239', '1', 'pcx', '1743210206', '51ENY319', '1745197406', '0', '1000', '1000', '1000', '85', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('240', '23', 'wrforduber', '1743380386', '04ABP192', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('242', '23', 'benson', '1743397458', '98QQW167', '0', '0', '980', '972', '972', '80', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('246', '23', 'rhinehart', '1743437520', '56IVL050', '0', '0', '369', '308', '308', '12', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('252', '1', '350z', '1743466797', '54GVG124', '1745453997', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('253', '51', 'Bike', '1743468655', '74AIQ577', '1743468655', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('254', '54', 'Bike', '1743468849', '61BDD157', '1743468849', '0', '947', '762', '983', '84', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('255', '53', 'Bike', '1743470007', '01XFC462', '1743470007', '0', '1000', '1000', '1000', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('256', '51', 'wrforduber', '1743470327', '85QNR027', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('257', '52', 'wrforduber', '1743470433', '47JOV367', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('258', '1', 'flatbed3', '1743474465', '01BKP057', '0', '0', '1000', '1000', '1000', '98', '2000', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('260', '56', 'Bike', '1743477557', '90ALA575', '1743477557', '0', '969', '966', '966', '84', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('262', '1', 'fnfmits', '1743512516', '14DLX995', '1745499716', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('263', '1', 'fnfmk4', '1743512527', '41MQT915', '1745499727', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('264', '1', 'mobm23', '1743512549', '67DTW045', '1745499749', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('265', '1', 'xreagstore', '1743512565', '38GOX801', '1745499765', '0', '1000', '1000', '1000', '99', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('266', '1', 'tenere1200', '1743512580', '74JYP186', '1745499780', '0', '1000', '954', '954', '73', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('267', '1', 'celta', '1743512587', '11XAH465', '1745499787', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('268', '1', 'astra', '1743512594', '61INU456', '1745499794', '0', '974', '981', '981', '65', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('269', '54', 'bus', '1743524988', '58CBV216', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('270', '1', 'WRsprinter22', '1743526233', '02IMR986', '0', '0', '1000', '1000', '1000', '70', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('271', '1', 'wrx6mf96', '1743526284', '75LNP388', '0', '0', '722', '692', '995', '92', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('272', '1', 'amarokeb', '1743526314', '05CIZ217', '0', '0', '996', '995', '995', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('273', '1', 'motosamu', '1743526343', '08SSZ429', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('274', '1', 'energyr1200samu', '1743526350', '39VBG385', '0', '0', '1000', '1000', '1000', '65', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('275', '1', 'wrforduber', '1743529198', '80GPX620', '0', '0', '996', '996', '996', '76', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('276', '57', 'Bike', '1743536679', '58NZN667', '1743536679', '0', '1000', '1000', '1000', '100', '0', 'false', '', '', '');
INSERT INTO `vehicles` VALUES ('277', '2', 'wrimpala', '1743539384', '27CCE263', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('278', '1', 'WRtrailblazer22', '1743552122', '61YWF290', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('279', '1', 'WRl200', '1743552787', '53NCB243', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('280', '1', 'wrtrailblazerprf', '1743552853', '12ZVY452', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('281', '1', 'wrprfcamaro19', '1743552893', '63LAG344', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('282', '1', 'wrcruzeprf', '1743552905', '76ZCT765', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('283', '9', 'towtruck2', '1743610576', '92QYP116', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');
INSERT INTO `vehicles` VALUES ('284', '58', 'Bike', '1743612053', '63LJM295', '1743612053', '0', '818', '814', '917', '96', '0', 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}');
INSERT INTO `vehicles` VALUES ('285', '9', 'microlight', '1743621048', '19KZY730', '0', '0', '1000', '1000', '1000', '100', '0', 'true', '', '', '');

DROP TABLE IF EXISTS `vrp_properties`;
CREATE TABLE `vrp_properties` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `property` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tax` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '{}',
  `information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`property_id`,`property`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `Number` int(20) NOT NULL,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Password` int(11) NOT NULL DEFAULT 0,
  `Tax` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Number`) USING BTREE,
  KEY `Passport` (`Passport`),
  KEY `id` (`Number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


DROP TABLE IF EXISTS `warrants`;
CREATE TABLE `warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text DEFAULT NULL,
  `identity` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `nidentity` text DEFAULT NULL,
  `timeStamp` text DEFAULT NULL,
  `reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portId` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `warrants` VALUES ('1', '37', 'Rubi Beckeer', 'Procurado', 'Attila Pena', '19/03/2025 ás 22:18', 'Mulher alta com mas ou menos 1,75 de altura, cabelos longos e preto e varias tattoagens pelo corpo.');

DROP TABLE IF EXISTS `wise_multas`;
CREATE TABLE `wise_multas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `multa_id` varchar(50) DEFAULT NULL,
  `id_motorista` bigint(20) NOT NULL,
  `id_veiculo` bigint(20) NOT NULL,
  `data_multa` date NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descricao` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pendente',
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `atualizado_em` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `multa_id` (`multa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

