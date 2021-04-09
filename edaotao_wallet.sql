/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : edaotao_wallet

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-04-09 11:24:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_configsite
-- ----------------------------
DROP TABLE IF EXISTS `tbl_configsite`;
CREATE TABLE `tbl_configsite` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thilai` int(11) NOT NULL,
  `thicaithien` int(11) NOT NULL,
  `hoclai` int(11) NOT NULL,
  `hoccaithien` int(11) NOT NULL,
  `hocchuyendoi` int(11) DEFAULT NULL,
  `bvluanvan` int(11) DEFAULT NULL,
  `chuantinhoc` int(11) DEFAULT NULL,
  `chuantienganh` int(11) DEFAULT NULL,
  `thilaitotnghiep` int(11) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_configsite
-- ----------------------------
INSERT INTO `tbl_configsite` VALUES ('1', '0', 'AUM - WALLET - HỆ THỐNG QUẢN LÝ VÍ ĐIỆN TỬ', 'Hà Nội', '100000', '100000', '260000', '260000', '0', '0', '1000000', '800000', '500000');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identify` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gsecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joindate` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `gid` int(11) NOT NULL,
  `isroot` tinyint(4) DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admindemo', '89c382235e41a0ddca349ca5565174fd', 'Admin', '', '1994-09-06', '0', '', '0936831277', '', 'info@igf.com.vn', '', '', '', '', '2016-12-01 12:17:05', '2021-01-18 04:24:45', '9', '1', '1');
INSERT INTO `tbl_user` VALUES ('16', 'thuynt', '9cd94d377acdd4661915607e00728a33', 'Thuy', '', null, '', '', '0984486830', '', '', '', '', '', '', '2019-04-04 11:20:10', '2020-10-28 11:23:08', '9', '1', '1');
INSERT INTO `tbl_user` VALUES ('48', 'thaott_daotao', '00cd5ba0e25fd9ae5b89019744d0d7b8', 'Trần Thị Thảo', '', null, '', '', '0967875563', '', '', null, null, null, null, '2020-03-03 13:57:44', '2020-09-29 08:30:34', '22', null, '1');
INSERT INTO `tbl_user` VALUES ('47', 'demodaotao', '453b885e6c7c3683041ab4bd8f717f46', 'Đào tạo', '', null, '', '', '012345678', '', '', null, null, null, null, '2020-02-27 11:11:55', null, '22', null, '1');
INSERT INTO `tbl_user` VALUES ('45', 'hatn', '2220dc2d04ab4611f78cb4615dc0aa25', 'Trương Ngọc Hà', '', null, '', '', '0917796898', '', '', '', '', '', '', '2019-11-04 16:41:26', null, '9', '0', '1');
INSERT INTO `tbl_user` VALUES ('50', 'hungtv_daotao', '9b40eccc3434b426c10abb927e80c098', 'Trần Văn Hưng', '', null, '', '', '0972848718', '', '', null, null, null, null, '2020-04-08 15:50:43', null, '22', null, '1');
INSERT INTO `tbl_user` VALUES ('51', 'tranhiep', 'b8a1099b57fb53d28fba7d5717e317ea', 'Trần Viết Hiệp', '', null, '', '', '0969549903', '', 'tranviethiepdz@gmail.com', null, null, null, null, '2020-04-08 15:50:43', '2021-04-09 11:23:48', '9', null, '1');
INSERT INTO `tbl_user` VALUES ('53', 'test', 'b8a1099b57fb53d28fba7d5717e317ea', 'test', '', null, '', '', '09695499991', '', '', null, null, null, null, '2021-03-22 10:49:14', '2021-03-22 10:50:12', '33', null, '1');

-- ----------------------------
-- Table structure for tbl_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_group`;
CREATE TABLE `tbl_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT 0,
  `path` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `isroot` tinyint(4) DEFAULT NULL,
  `isadmin` int(11) NOT NULL DEFAULT 0,
  `issale` tinyint(4) DEFAULT 0,
  `isstore` tinyint(4) DEFAULT 0,
  `isactive` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user_group
-- ----------------------------
INSERT INTO `tbl_user_group` VALUES ('9', '0', '1', 'Super Admin', '', '67108863', '', '0', '1', '0', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('22', '18', '9_18_22', 'Phòng Đào tạo', 'Phòng Đào tạo', '2079240', '', '0', '0', '0', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('18', '9', '9_18', 'Admin', 'Admin', '4193848', '', '0', '0', '0', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('21', '18', '9_18_21', 'Phòng kế toán', 'Phòng kế toán', '2147328', '', '0', '0', '0', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('23', '18', '9_18_23', 'Phòng công tác HSSV', 'Phòng công tác HSSV', '3', '', '0', '0', '0', '0', '1');
INSERT INTO `tbl_user_group` VALUES ('24', '21', '9_18_21_24', 'Trưởng phòng kế toán', 'Trưởng phòng kế toán', '2122752', '', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for tbl_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wallet`;
CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT '',
  `free` float DEFAULT 0,
  `locked` float DEFAULT 0,
  `cdate` int(11) DEFAULT 0,
  `mdate` int(11) DEFAULT 0,
  `isactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet
-- ----------------------------
INSERT INTO `tbl_wallet` VALUES ('1', '123456ABC', '8000000', '200000', '1617880151', '1617940051', '0');
INSERT INTO `tbl_wallet` VALUES ('2', '123456ABD', '5000000', '350000', '1617880151', '0', '1');

-- ----------------------------
-- Table structure for tbl_wallet_histories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wallet_histories`;
CREATE TABLE `tbl_wallet_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wallet` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(50) NOT NULL,
  `money` float DEFAULT 0,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) NOT NULL,
  `status` varchar(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet_histories
-- ----------------------------
INSERT INTO `tbl_wallet_histories` VALUES ('1', '1', '123456ABC', '200000', 'Test', '1617880151', 'L0');

-- ----------------------------
-- Table structure for tbl_wallet_transsion
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wallet_transsion`;
CREATE TABLE `tbl_wallet_transsion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wallet` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(50) NOT NULL,
  `money` float DEFAULT 0,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) NOT NULL,
  `status` varchar(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet_transsion
-- ----------------------------
INSERT INTO `tbl_wallet_transsion` VALUES ('1', '1', '123456ABC', '200000', 'Test', '1617880151', 'L0');
