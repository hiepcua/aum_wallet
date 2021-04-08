/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : edaotao_wallet

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-04-08 18:22:38
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
-- Table structure for tbl_logs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_logs`;
CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `config` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_logs
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_notify
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notify`;
CREATE TABLE `tbl_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `id_hoso` varchar(50) DEFAULT NULL,
  `masv` varchar(50) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `isactive` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_notify
-- ----------------------------
INSERT INTO `tbl_notify` VALUES ('3052', null, '', '', 'Thêm dm học phí chung: Lệ phí xét tuyển, nhập học', '1599634423', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3053', null, '', '', 'Thêm dm học phí chung: Đào tạo nhập môn E-learning', '1599634440', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3054', null, '', '', 'Thêm dm học phí chung: Thẻ sinh viên', '1599634458', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3055', null, '', '', 'Mã ngành 116 vừa được tạo thành công', '1599634883', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3056', null, '', '', 'Mã ngành 114 vừa được tạo thành công', '1599634919', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3057', null, '', '', 'Mã ngành 122 vừa được tạo thành công', '1599635042', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3058', null, '', '', 'Thêm chương trình khung: MC01 (ngành 114, hệ AUM)', '1599637653', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3059', null, '', '', 'Thêm chương trình khung: MC02 (ngành 114, hệ AUM)', '1599638080', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3060', null, '', '', 'Thêm chương trình khung: MC03 (ngành 114, hệ AUM)', '1599638101', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3061', null, '', '', 'Thêm chương trình khung: MC04 (ngành 114, hệ AUM)', '1599638160', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3062', null, '', '', 'Thêm chương trình khung: MC05 (ngành 114, hệ AUM)', '1599638226', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3063', null, '', '', 'Thêm chương trình khung: MC06 (ngành 114, hệ AUM)', '1599638331', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3064', null, '', '', 'Thêm chương trình khung: MC07 (ngành 114, hệ AUM)', '1599638369', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3065', null, '', '', 'Thêm chương trình khung: MC08 (ngành 114, hệ AUM)', '1599638400', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3066', null, '', '', 'Thêm chương trình khung: MC09 (ngành 114, hệ AUM)', '1599638452', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3067', null, '', '', 'Thêm chương trình khung: MC10 (ngành 114, hệ AUM)', '1599721699', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3068', null, '', '', 'Thêm chương trình khung: MC11 (ngành 114, hệ AUM)', '1599721729', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3069', null, '', '', 'Thêm chương trình khung: MC12 (ngành 114, hệ AUM)', '1599721764', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3070', null, '', '', 'Thêm chương trình khung: LKT01 (ngành 114, hệ AUM)', '1599721806', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3071', null, '', '', 'Thêm chương trình khung: MC20 (ngành 114, hệ AUM)', '1599721885', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3072', null, '', '', 'Thêm chương trình khung: QTKD01 (ngành 114, hệ AUM)', '1599721999', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3073', null, '', '', 'Thêm chương trình khung: QTKD02 (ngành 114, hệ AUM)', '1599722063', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3074', null, '', '', 'Thêm chương trình khung: MC14 (ngành 114, hệ AUM)', '1599722139', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3075', null, '', '', 'Thêm chương trình khung: MC15 (ngành 114, hệ AUM)', '1599722163', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3076', null, '', '', 'Thêm chương trình khung: QTKD03 (ngành 114, hệ AUM)', '1599722212', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3077', null, '', '', 'Thêm chương trình khung: QTKD04 (ngành 114, hệ AUM)', '1599722232', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3078', null, '', '', 'Thêm chương trình khung: MC21 (ngành 114, hệ AUM)', '1599722287', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3079', null, '', '', 'Thêm chương trình khung: MC16 (ngành 114, hệ AUM)', '1599722333', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3080', null, '', '', 'Thêm chương trình khung: QTKD05 (ngành 114, hệ AUM)', '1599722366', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3081', null, '', '', 'Thêm chương trình khung: QTKD06 (ngành 114, hệ AUM)', '1599722434', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3082', null, '', '', 'Thêm chương trình khung: QTKD07 (ngành 114, hệ AUM)', '1599722620', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3083', null, '', '', 'Thêm chương trình khung: QTKD08 (ngành 114, hệ AUM)', '1599722842', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3084', null, '', '', 'Thêm chương trình khung: QTKD09 (ngành 114, hệ AUM)', '1599722908', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3085', null, '', '', 'Thêm chương trình khung: QTKD10 (ngành 114, hệ AUM)', '1599722931', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3086', null, '', '', 'Thêm chương trình khung: QTKD11 (ngành 114, hệ AUM)', '1599722952', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3087', null, '', '', 'Thêm chương trình khung: QTKD12 (ngành 114, hệ AUM)', '1599722981', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3088', null, '', '', 'Thêm chương trình khung: QTKD13 (ngành 114, hệ AUM)', '1599723091', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3089', null, '', '', 'Thêm chương trình khung: QTKD14 (ngành 114, hệ AUM)', '1599723129', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3090', null, '', '', 'Thêm chương trình khung: QTKD15 (ngành 114, hệ AUM)', '1599723152', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3091', null, '', '', 'Thêm chương trình khung: QTKD16 (ngành 114, hệ AUM)', '1599723172', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3092', null, '', '', 'Thêm chương trình khung: QTKD17 (ngành 114, hệ AUM)', '1599723195', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3093', null, '', '', 'Thêm chương trình khung: QTKD18 (ngành 114, hệ AUM)', '1599723213', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3094', null, '', '', 'Thêm chương trình khung: QTKD19 (ngành 114, hệ AUM)', '1599723254', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3095', null, '', '', 'Thêm chương trình khung: QTKD20 (ngành 114, hệ AUM)', '1599723277', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3096', null, '', '', 'Thêm chương trình khung: QTKD21 (ngành 114, hệ AUM)', '1599723320', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3097', null, '', '', 'Thêm chương trình khung: QTKD22 (ngành 114, hệ AUM)', '1599723347', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3098', null, '', '', 'Thêm chương trình khung: QTKD23 (ngành 114, hệ AUM)', '1599723366', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3099', null, '', '', 'Thêm chương trình khung: QTKD24 (ngành 114, hệ AUM)', '1599723389', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3100', null, '', '', 'Thêm chương trình khung: QTKD25 (ngành 114, hệ AUM)', '1599723411', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3101', null, '', '', 'Thêm chương trình khung: QTKD26 (ngành 114, hệ AUM)', '1599723434', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3102', null, '', '', 'Thêm chương trình khung: QTKD27 (ngành 114, hệ AUM)', '1599723450', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3103', null, '', '', 'Thêm chương trình khung: MC01 (ngành 116, hệ AUM)', '1599723786', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3104', null, '', '', 'Thêm chương trình khung: MC02 (ngành 116, hệ AUM)', '1599723807', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3105', null, '', '', 'Thêm chương trình khung: MC03 (ngành 116, hệ AUM)', '1599724177', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3106', null, '', '', 'Thêm chương trình khung: MC04 (ngành 116, hệ AUM)', '1599724366', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3107', null, '', '', 'Thêm chương trình khung: MC05 (ngành 116, hệ AUM)', '1599724392', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3108', null, '', '', 'Thêm chương trình khung: MC06 (ngành 116, hệ AUM)', '1599724434', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3109', null, '', '', 'Thêm chương trình khung: MC07 (ngành 116, hệ AUM)', '1599724453', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3110', null, '', '', 'Thêm chương trình khung: MC08 (ngành 116, hệ AUM)', '1599724489', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3111', null, '', '', 'Thêm chương trình khung: MC09 (ngành 116, hệ AUM)', '1599724509', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3112', null, '', '', 'Thêm chương trình khung: MC10 (ngành 116, hệ AUM)', '1599724534', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3113', null, '', '', 'Thêm chương trình khung: LKT01 (ngành 116, hệ AUM)', '1599724557', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3114', null, '', '', 'Thêm chương trình khung: MC11 (ngành 116, hệ AUM)', '1599724595', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3115', null, '', '', 'Thêm chương trình khung: MC12 (ngành 116, hệ AUM)', '1599724616', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3116', null, '', '', 'Thêm chương trình khung: MC13 (ngành 116, hệ AUM)', '1599724648', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3117', null, '', '', 'Thêm chương trình khung: MC14 (ngành 116, hệ AUM)', '1599724669', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3118', null, '', '', 'Thêm chương trình khung: MC15 (ngành 116, hệ AUM)', '1599724684', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3119', null, '', '', 'Thêm chương trình khung: MC16 (ngành 116, hệ AUM)', '1599724705', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3120', null, '', '', 'Thêm chương trình khung: MC18 (ngành 116, hệ AUM)', '1599724752', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3121', null, '', '', 'Thêm chương trình khung: MC19 (ngành 116, hệ AUM)', '1599725075', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3122', null, '', '', 'Thêm chương trình khung: LKT02 (ngành 116, hệ AUM)', '1599725112', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3123', null, '', '', 'Thêm chương trình khung: LKT03 (ngành 116, hệ AUM)', '1599725129', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3124', null, '', '', 'Thêm chương trình khung: LKT04 (ngành 116, hệ AUM)', '1599725242', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3125', null, '', '', 'Thêm chương trình khung: LKT05 (ngành 116, hệ AUM)', '1599725281', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3126', null, '', '', 'Thêm chương trình khung: LKT06 (ngành 116, hệ AUM)', '1599725366', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3127', null, '', '', 'Thêm chương trình khung: LKT07 (ngành 116, hệ AUM)', '1599725383', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3128', null, '', '', 'Thêm chương trình khung: LKT08 (ngành 116, hệ AUM)', '1599725399', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3129', null, '', '', 'Thêm chương trình khung: LKT09 (ngành 116, hệ AUM)', '1599725445', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3130', null, '', '', 'Thêm chương trình khung: LKT10 (ngành 116, hệ AUM)', '1599725464', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3131', null, '', '', 'Thêm chương trình khung: LKT11 (ngành 116, hệ AUM)', '1599725478', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3132', null, '', '', 'Thêm chương trình khung: LKT12 (ngành 116, hệ AUM)', '1599725500', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3133', null, '', '', 'Thêm chương trình khung: LKT13 (ngành 116, hệ AUM)', '1599725515', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3134', null, '', '', 'Thêm chương trình khung: LKT14 (ngành 116, hệ AUM)', '1599725527', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3135', null, '', '', 'Thêm chương trình khung: LKT15 (ngành 116, hệ AUM)', '1599725550', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3136', null, '', '', 'Thêm chương trình khung: LKT16 (ngành 116, hệ AUM)', '1599725570', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3137', null, '', '', 'Thêm chương trình khung: LKT17 (ngành 116, hệ AUM)', '1599725596', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3138', null, '', '', 'Thêm chương trình khung: LKT18 (ngành 116, hệ AUM)', '1599725611', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3139', null, '', '', 'Thêm chương trình khung: LKT19 (ngành 116, hệ AUM)', '1599725629', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3140', null, '', '', 'Thêm chương trình khung: LKT20 (ngành 116, hệ AUM)', '1599725644', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3141', null, '', '', 'Thêm chương trình khung: LKT21 (ngành 116, hệ AUM)', '1599725661', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3142', null, '', '', 'Thêm chương trình khung: LKT22 (ngành 116, hệ AUM)', '1599725698', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3143', null, '', '', 'Thêm chương trình khung: LKT23 (ngành 116, hệ AUM)', '1599725716', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3144', null, '', '', 'Thêm chương trình khung: LKT24 (ngành 116, hệ AUM)', '1599725732', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3145', null, '', '', 'Thêm chương trình khung: LKT25 (ngành 116, hệ AUM)', '1599725749', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3146', null, '', '', 'Thêm chương trình khung: LKT26 (ngành 116, hệ AUM)', '1599725764', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3147', null, '', '', 'Thêm chương trình khung: LKT27 (ngành 116, hệ AUM)', '1599725780', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3148', null, '', '', 'Thêm chương trình khung: LKT28 (ngành 116, hệ AUM)', '1599725796', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3149', null, '', '', 'Thêm chương trình khung: LKT29 (ngành 116, hệ AUM)', '1599725812', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3150', null, '', '', 'Thêm chương trình khung: LKT30 (ngành 116, hệ AUM)', '1599725826', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3151', null, '', '', 'Thêm chương trình khung: LKT31 (ngành 116, hệ AUM)', '1599725850', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3152', null, '', '', 'Thêm chương trình khung: MC17 (ngành 116, hệ AUM)', '1599725913', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3153', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726316', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3154', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726316', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3155', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726317', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3156', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726322', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3157', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726323', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3158', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726324', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3159', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3160', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3161', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3162', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3163', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3164', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3165', null, '', '', 'Thêm chương trình khung: MC01 (ngành 122, hệ AUM)', '1599726325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3166', null, '', '', 'Thêm chương trình khung: MC02 (ngành 122, hệ AUM)', '1599726444', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3167', null, '', '', 'Thêm chương trình khung: MC03 (ngành 122, hệ AUM)', '1599726468', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3168', null, '', '', 'Thêm chương trình khung: MC04 (ngành 122, hệ AUM)', '1599726487', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3169', null, '', '', 'Thêm chương trình khung: MC05 (ngành 122, hệ AUM)', '1599726571', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3170', null, '', '', 'Thêm chương trình khung: MC06 (ngành 122, hệ AUM)', '1599726592', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3171', null, '', '', 'Thêm chương trình khung: MC07 (ngành 122, hệ AUM)', '1599726608', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3172', null, '', '', 'Thêm chương trình khung: MC08 (ngành 122, hệ AUM)', '1599726636', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3173', null, '', '', 'Thêm chương trình khung: MC09 (ngành 122, hệ AUM)', '1599726703', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3174', null, '', '', 'Thêm chương trình khung: MC10 (ngành 122, hệ AUM)', '1599726734', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3175', null, '', '', 'Thêm chương trình khung: QLNN01 (ngành 122, hệ AUM)', '1599726752', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3176', null, '', '', 'Thêm chương trình khung: QLNN02 (ngành 122, hệ AUM)', '1599726780', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3177', null, '', '', 'Thêm chương trình khung: QLNN03 (ngành 122, hệ AUM)', '1599726802', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3178', null, '', '', 'Thêm chương trình khung: MC14 (ngành 122, hệ AUM)', '1599726823', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3179', null, '', '', 'Thêm chương trình khung: MC15 (ngành 122, hệ AUM)', '1599726836', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3180', null, '', '', 'Thêm chương trình khung: MC13 (ngành 122, hệ AUM)', '1599726875', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3181', null, '', '', 'Thêm chương trình khung: QLNN04 (ngành 122, hệ AUM)', '1599726904', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3182', null, '', '', 'Thêm chương trình khung: MC11 (ngành 122, hệ AUM)', '1599726958', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3183', null, '', '', 'Thêm chương trình khung: QLNN05 (ngành 122, hệ AUM)', '1599726980', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3184', null, '', '', 'Thêm chương trình khung: QLNN06 (ngành 122, hệ AUM)', '1599727022', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3185', null, '', '', 'Thêm chương trình khung: MC17 (ngành 122, hệ AUM)', '1599727050', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3186', null, '', '', 'Thêm chương trình khung: MC18 (ngành 122, hệ AUM)', '1599727101', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3187', null, '', '', 'Thêm chương trình khung: MC19 (ngành 122, hệ AUM)', '1599727148', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3188', null, '', '', 'Thêm chương trình khung: QLNN07 (ngành 122, hệ AUM)', '1599727173', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3189', null, '', '', 'Thêm chương trình khung: QLNN08 (ngành 122, hệ AUM)', '1599727212', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3190', null, '', '', 'Thêm chương trình khung: MC21 (ngành 122, hệ AUM)', '1599727228', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3191', null, '', '', 'Thêm chương trình khung: QLNN09 (ngành 122, hệ AUM)', '1599727252', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3192', null, '', '', 'Thêm chương trình khung: QLNN10 (ngành 122, hệ AUM)', '1599727274', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3193', null, '', '', 'Thêm chương trình khung: QLNN11 (ngành 122, hệ AUM)', '1599727299', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3194', null, '', '', 'Thêm chương trình khung: QLNN19 (ngành 122, hệ AUM)', '1599727320', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3195', null, '', '', 'Thêm chương trình khung: QLNN12 (ngành 122, hệ AUM)', '1599727345', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3196', null, '', '', 'Thêm chương trình khung: QLNN13 (ngành 122, hệ AUM)', '1599727399', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3197', null, '', '', 'Thêm chương trình khung: QLNN14 (ngành 122, hệ AUM)', '1599727421', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3198', null, '', '', 'Thêm chương trình khung: QLNN15 (ngành 122, hệ AUM)', '1599727451', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3199', null, '', '', 'Thêm chương trình khung: QLNN16 (ngành 122, hệ AUM)', '1599727470', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3200', null, '', '', 'Thêm chương trình khung: QLNN17 (ngành 122, hệ AUM)', '1599727487', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3201', null, '', '', 'Thêm chương trình khung: QLNN18 (ngành 122, hệ AUM)', '1599727523', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3202', null, '', '', 'Thêm chương trình khung: QLNN20 (ngành 122, hệ AUM)', '1599727560', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3203', null, '', '', 'Thêm chương trình khung: QLNN21 (ngành 122, hệ AUM)', '1599727619', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3204', null, '', '', 'Thêm chương trình khung: MC20 (ngành 122, hệ AUM)', '1599727647', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3205', null, '', '', 'Thêm chương trình khung: QLNN22 (ngành 122, hệ AUM)', '1599727685', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3206', null, '', '', 'Thêm chương trình khung: QLNN23 (ngành 122, hệ AUM)', '1599727702', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3207', null, '', '', 'Thêm chương trình khung: QLNN24 (ngành 122, hệ AUM)', '1599727722', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3208', null, '', '', 'Thêm chương trình khung: QLNN25 (ngành 122, hệ AUM)', '1599727746', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3209', null, '', '', 'Thêm chương trình khung: QLNN26 (ngành 122, hệ AUM)', '1599727769', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3210', null, '', '', 'Thêm chương trình khung: QLNN27 (ngành 122, hệ AUM)', '1599727791', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3211', null, '', '', 'Thêm chương trình khung: QLNN28 (ngành 122, hệ AUM)', '1599727812', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3212', null, '', '', 'Thêm chương trình khung: QLNN29 (ngành 122, hệ AUM)', '1599727827', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3213', null, '', '', 'Thêm chương trình khung: QLNN30 (ngành 122, hệ AUM)', '1599727842', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3214', null, '', '', 'Thêm chương trình khung: QLNN31 (ngành 122, hệ AUM)', '1599727856', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3215', null, '', '', 'Thêm chương trình khung: QLNN32 (ngành 122, hệ AUM)', '1599727874', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3216', null, '', '', 'Thêm chương trình khung: QLNN33 (ngành 122, hệ AUM)', '1599727900', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3217', null, '', '', 'Thêm chương trình khung: QLNN34 (ngành 122, hệ AUM)', '1599727919', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3218', null, '', '', 'Thêm chương trình khung: QLNN35 (ngành 122, hệ AUM)', '1599727938', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3219', null, '', '', 'Thêm chương trình khung: QLNN36 (ngành 122, hệ AUM)', '1599727953', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3220', null, '', '', 'Thêm chương trình khung: QLNN37 (ngành 122, hệ AUM)', '1599727976', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3221', null, '1599788697', '', 'Hồ sơ #1599788697 (Hoàng Văn Tôn) tạo mới thành công', '1599789011', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3222', null, '1599788697', '', 'Hồ sơ #1599788697 đã cập nhật thông tin', '1599789024', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3223', null, '159979300115', '', 'Hồ sơ #159979300115 đã cập nhật thông tin', '1599793495', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3224', null, '159979300114', '', 'Hồ sơ #159979300114 đã cập nhật thông tin', '1599793584', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3225', null, '15997930011', '', 'Hồ sơ #15997930011 đã cập nhật thông tin', '1599793693', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3226', null, '15997930016', '', 'Hồ sơ #15997930016 đã cập nhật thông tin', '1599793852', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3227', null, '15997930015', '', 'Hồ sơ #15997930015 đã cập nhật thông tin', '1599793943', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3228', null, '15997930014', '', 'Hồ sơ #15997930014 đã cập nhật thông tin', '1599794111', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3229', null, '15997930014', '', 'Hồ sơ #15997930014 đã cập nhật thông tin', '1599794133', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3230', null, '15997930013', '', 'Hồ sơ #15997930013 đã cập nhật thông tin', '1599794222', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3231', null, '15997930014', '', 'Hồ sơ #15997930014 đã cập nhật thông tin', '1599794269', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3232', null, '15997930012', '', 'Hồ sơ #15997930012 đã cập nhật thông tin', '1599794347', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3233', null, '159979300111', '', 'Hồ sơ #159979300111 đã cập nhật thông tin', '1599794451', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3234', null, '159979300110', '', 'Hồ sơ #159979300110 đã cập nhật thông tin', '1599794545', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3235', null, '159979300110', '', 'Hồ sơ #159979300110 đã cập nhật thông tin', '1599794611', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3236', null, '15997930019', '', 'Hồ sơ #15997930019 đã cập nhật thông tin', '1599794702', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3237', null, '15997930018', '', 'Hồ sơ #15997930018 đã cập nhật thông tin', '1599794798', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3238', null, '15997930017', '', 'Hồ sơ #15997930017 đã cập nhật thông tin', '1599794892', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3239', null, '159979300113', '', 'Hồ sơ #159979300113 đã cập nhật thông tin', '1599794944', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3240', null, '159979300112', '', 'Hồ sơ #159979300112 đã cập nhật thông tin', '1599795060', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3241', null, '159979300112', '', 'Hồ sơ #159979300112 đã trúng tuyển', '1599795178', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3242', null, '159979300113', '', 'Hồ sơ #159979300113 đã trúng tuyển', '1599795179', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3243', null, '15997930017', '', 'Hồ sơ #15997930017 đã trúng tuyển', '1599795179', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3244', null, '15997930018', '', 'Hồ sơ #15997930018 đã trúng tuyển', '1599795180', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3245', null, '15997930019', '', 'Hồ sơ #15997930019 đã trúng tuyển', '1599795181', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3246', null, '159979300110', '', 'Hồ sơ #159979300110 đã trúng tuyển', '1599795182', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3247', null, '159979300111', '', 'Hồ sơ #159979300111 đã trúng tuyển', '1599795183', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3248', null, '15997930012', '', 'Hồ sơ #15997930012 đã trúng tuyển', '1599795184', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3249', null, '15997930013', '', 'Hồ sơ #15997930013 đã trúng tuyển', '1599795184', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3250', null, '15997930014', '', 'Hồ sơ #15997930014 đã trúng tuyển', '1599795185', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3251', null, '15997930015', '', 'Hồ sơ #15997930015 đã trúng tuyển', '1599795185', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3252', null, '15997930016', '', 'Hồ sơ #15997930016 đã trúng tuyển', '1599795186', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3253', null, '15997930011', '', 'Hồ sơ #15997930011 đã trúng tuyển', '1599795187', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3254', null, '159979300114', '', 'Hồ sơ #159979300114 đã trúng tuyển', '1599795189', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3255', null, '159979300115', '', 'Hồ sơ #159979300115 đã trúng tuyển', '1599795192', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3256', null, '1599788697', '', 'Hồ sơ #1599788697 đã trúng tuyển', '1599795193', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3257', null, '1599788697', '20AUM1141', 'Hồ sơ #1599788697 đã nhập học', '1599795210', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3258', null, '15997930011', '20AUM1142', 'Hồ sơ #15997930011 đã nhập học', '1599795256', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3259', null, '15997930012', '20AUM1143', 'Hồ sơ #15997930012 đã nhập học', '1599795264', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3260', null, '15997930013', '20AUM1144', 'Hồ sơ #15997930013 đã nhập học', '1599795274', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3261', null, '15997930014', '20AUM1144', 'Hồ sơ #15997930014 đã nhập học', '1599795284', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3262', null, '15997930015', '20AUM1144', 'Hồ sơ #15997930015 đã nhập học', '1599795291', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3263', null, '15997930016', '20AUM1144', 'Hồ sơ #15997930016 đã nhập học', '1599795297', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3264', null, '15997930017', '20AUM1144', 'Hồ sơ #15997930017 đã nhập học', '1599795302', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3265', null, '15997930018', '20AUM1145', 'Hồ sơ #15997930018 đã nhập học', '1599795308', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3266', null, '15997930019', '20AUM1145', 'Hồ sơ #15997930019 đã nhập học', '1599795313', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3267', null, '159979300110', '20AUM1145', 'Hồ sơ #159979300110 đã nhập học', '1599795320', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3268', null, '159979300111', '20AUM1145', 'Hồ sơ #159979300111 đã nhập học', '1599795327', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3269', null, '159979300112', '20AUM1145', 'Hồ sơ #159979300112 đã nhập học', '1599795334', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3270', null, '159979300113', '20AUM1146', 'Hồ sơ #159979300113 đã nhập học', '1599795340', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3271', null, '159979300114', '20AUM1146', 'Hồ sơ #159979300114 đã nhập học', '1599795345', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3272', null, '159979300115', '20AUM1146', 'Hồ sơ #159979300115 đã nhập học', '1599795351', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3273', null, null, '20AUM1146', 'Xóa danh mục học phí Thẻ sinh viên', '1599795372', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3274', null, null, '20AUM1146', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599795377', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3275', null, null, '20AUM1146', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599795382', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3276', null, null, '20AUM1146', 'Xóa danh mục học phí Thẻ sinh viên', '1599795390', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3277', null, null, '20AUM1146', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599795406', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3278', null, null, '20AUM1146', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599795418', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3279', null, null, '20AUM1141', 'Mã SV #20AUM1141 đã được thêm vào lớp el1_qtkd11', '1599795435', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3280', null, null, '20AUM1142', 'Mã SV #20AUM1142 đã được thêm vào lớp el1_qtkd11', '1599795444', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3281', null, null, '20AUM1143', 'Mã SV #20AUM1143 đã được thêm vào lớp el1_qtkd11', '1599795451', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3282', null, null, '20AUM1144', 'Mã SV #20AUM1144 đã được thêm vào lớp el1_qtkd11', '1599795459', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3283', null, null, '20AUM1144', 'Mã SV #20AUM1144 đã được thêm vào lớp el1_qtkd11', '1599795474', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3284', null, null, '20AUM1144', 'Mã SV #20AUM1144 đã được thêm vào lớp el1_qtkd11', '1599795481', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3285', null, null, '20AUM1144', 'Mã SV #20AUM1144 đã được thêm vào lớp el1_qtkd11', '1599795487', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3286', null, null, '20AUM1144', 'Mã SV #20AUM1144 đã được thêm vào lớp el1_qtkd11', '1599795493', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3287', null, null, '20AUM1145', 'Mã SV #20AUM1145 đã được thêm vào lớp el1_qtkd11', '1599795499', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3288', null, null, '20AUM1145', 'Mã SV #20AUM1145 đã được thêm vào lớp el1_qtkd11', '1599795506', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3289', null, null, '20AUM1145', 'Mã SV #20AUM1145 đã được thêm vào lớp el1_qtkd11', '1599795511', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3290', null, null, '20AUM1145', 'Mã SV #20AUM1145 đã được thêm vào lớp el1_qtkd11', '1599795523', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3291', null, null, '20AUM1146', 'Mã SV #20AUM1146 đã được thêm vào lớp el1_qtkd11', '1599795528', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3292', null, null, '20AUM1145', 'Mã SV #20AUM1145 đã được thêm vào lớp el1_qtkd11', '1599795532', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3293', null, null, '20AUM1146', 'Mã SV #20AUM1146 đã được thêm vào lớp el1_qtkd11', '1599795534', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3294', null, null, '20AUM1146', 'Mã SV #20AUM1146 đã được thêm vào lớp el1_qtkd11', '1599795540', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3295', null, '15997930012', '', 'Hồ sơ #15997930012 đã cập nhật thông tin', '1599795620', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3296', null, '15997930012', '', 'Hồ sơ #15997930012 đã cập nhật thông tin', '1599795643', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3297', null, null, '20AUM1146', 'Xóa danh mục học phí Triết học Mác Lênin', '1599796003', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3298', null, null, '20AUM1146', 'Xóa danh mục học phí Triết học Mác Lênin', '1599796010', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3299', null, null, '20AUM1146', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599796019', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3300', null, null, '20AUM1146', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599796026', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3301', null, null, '20AUM1146', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599796031', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3302', null, null, '20AUM1146', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599796036', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3303', null, null, '20AUM1146', 'Xóa danh mục học phí Quản trị học', '1599796044', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3304', null, null, '20AUM1146', 'Xóa danh mục học phí Quản trị học', '1599796049', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3305', null, null, '20AUM1146', 'Xóa danh mục học phí Tài chính tiền tệ', '1599796055', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3306', null, null, '20AUM1146', 'Xóa danh mục học phí Tài chính tiền tệ', '1599796060', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3307', null, null, '20AUM1146', 'Xóa danh mục học phí Marketing căn bản', '1599796064', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3308', null, null, '20AUM1146', 'Xóa danh mục học phí Marketing căn bản', '1599796073', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3309', null, null, '20AUM1145', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796187', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3310', null, null, '20AUM1145', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796194', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3311', null, null, '20AUM1145', 'Xóa danh mục học phí Thẻ sinh viên', '1599796201', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3312', null, null, '20AUM1145', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796211', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3313', null, null, '20AUM1145', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796217', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3314', null, null, '20AUM1145', 'Xóa danh mục học phí Thẻ sinh viên', '1599796239', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3315', null, null, '20AUM1144', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796831', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3316', null, null, '20AUM1144', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796836', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3317', null, null, '20AUM1144', 'Xóa danh mục học phí Thẻ sinh viên', '1599796918', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3318', null, null, '20AUM1144', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796924', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3319', null, null, '20AUM1144', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796931', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3320', null, null, '20AUM1144', 'Xóa danh mục học phí Thẻ sinh viên', '1599796936', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3321', null, null, '20AUM1144', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796943', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3322', null, null, '20AUM1144', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796952', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3323', null, null, '20AUM1144', 'Xóa danh mục học phí Thẻ sinh viên', '1599796958', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3324', null, null, '20AUM1144', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599796968', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3325', null, null, '20AUM1144', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599796974', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3326', null, null, '20AUM1144', 'Xóa danh mục học phí Thẻ sinh viên', '1599796979', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3327', null, null, '20AUM1144', 'Xóa danh mục học phí Triết học Mác Lênin', '1599796990', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3328', null, null, '20AUM1144', 'Xóa danh mục học phí Triết học Mác Lênin', '1599796995', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3329', null, null, '20AUM1144', 'Xóa danh mục học phí Triết học Mác Lênin', '1599797003', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3330', null, null, '20AUM1144', 'Xóa danh mục học phí Triết học Mác Lênin', '1599797007', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3331', null, null, '20AUM1144', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599797014', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3332', null, null, '20AUM1144', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599797020', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3333', null, null, '20AUM1144', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599797026', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3334', null, null, '20AUM1144', 'Xóa danh mục học phí Phương pháp nghiên cứu khoa học', '1599797031', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3335', null, null, '20AUM1144', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599797042', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3336', null, null, '20AUM1144', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599797044', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3337', null, null, '20AUM1144', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599797047', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3338', null, null, '20AUM1144', 'Xóa danh mục học phí Kinh tế vĩ mô', '1599797052', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3339', null, null, '20AUM1144', 'Xóa danh mục học phí Quản trị học', '1599797057', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3340', null, null, '20AUM1144', 'Xóa danh mục học phí Quản trị học', '1599797060', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3341', null, null, '20AUM1144', 'Xóa danh mục học phí Quản trị học', '1599797062', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3342', null, null, '20AUM1144', 'Xóa danh mục học phí Quản trị học', '1599797065', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3343', null, null, '20AUM1144', 'Xóa danh mục học phí Quản trị học', '1599797072', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3344', null, null, '20AUM1144', 'Xóa danh mục học phí Tài chính tiền tệ', '1599797085', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3345', null, null, '20AUM1144', 'Xóa danh mục học phí Tài chính tiền tệ', '1599797088', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3346', null, null, '20AUM1144', 'Xóa danh mục học phí Tài chính tiền tệ', '1599797090', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3347', null, null, '20AUM1145', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599797126', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3348', null, null, '20AUM1145', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599797131', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3349', null, null, '20AUM1145', 'Xóa danh mục học phí Lệ phí xét tuyển, nhập học', '1599797137', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3350', null, null, '20AUM1145', 'Xóa danh mục học phí Đào tạo nhập môn E-learning', '1599797142', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3351', null, null, '20AUM1145', 'Xóa danh mục học phí Thẻ sinh viên', '1599797145', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3352', null, null, '20AUM1145', 'Xóa danh mục học phí Thẻ sinh viên', '1599797150', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3353', null, '15998092011', '', 'Hồ sơ #15998092011 đã cập nhật thông tin', '1599810435', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3354', null, '15998092012', '', 'Hồ sơ #15998092012 đã cập nhật thông tin', '1599810491', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3355', null, '15998092013', '', 'Hồ sơ #15998092013 đã cập nhật thông tin', '1599810620', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3356', null, '15998092014', '', 'Hồ sơ #15998092014 đã cập nhật thông tin', '1599810759', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3357', null, '15998092015', '', 'Hồ sơ #15998092015 đã cập nhật thông tin', '1599810834', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3358', null, '15998092016', '', 'Hồ sơ #15998092016 đã cập nhật thông tin', '1599810898', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3359', null, '15998092017', '', 'Hồ sơ #15998092017 đã cập nhật thông tin', '1599811068', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3360', null, '15998092018', '', 'Hồ sơ #15998092018 đã cập nhật thông tin', '1599811194', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3361', null, '15998092019', '', 'Hồ sơ #15998092019 đã cập nhật thông tin', '1599811397', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3362', null, '159980920111', '', 'Hồ sơ #159980920111 đã cập nhật thông tin', '1599811881', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3363', null, '159980920112', '', 'Hồ sơ #159980920112 đã cập nhật thông tin', '1599812105', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3364', null, '159980920113', '', 'Hồ sơ #159980920113 đã cập nhật thông tin', '1599812229', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3365', null, '159980920114', '', 'Hồ sơ #159980920114 đã cập nhật thông tin', '1599812279', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3366', null, '159980920115', '', 'Hồ sơ #159980920115 đã cập nhật thông tin', '1599812424', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3367', null, '159980920116', '', 'Hồ sơ #159980920116 đã cập nhật thông tin', '1599812518', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3368', null, '159980920117', '', 'Hồ sơ #159980920117 đã cập nhật thông tin', '1599812647', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3369', null, '159980920118', '', 'Hồ sơ #159980920118 đã cập nhật thông tin', '1599812715', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3370', null, '159980920119', '', 'Hồ sơ #159980920119 đã cập nhật thông tin', '1599812802', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3371', null, '159980920120', '', 'Hồ sơ #159980920120 đã cập nhật thông tin', '1599812873', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3372', null, '159980920121', '', 'Hồ sơ #159980920121 đã cập nhật thông tin', '1599812969', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3373', null, '159980920122', '', 'Hồ sơ #159980920122 đã cập nhật thông tin', '1599813049', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3374', null, '159980920123', '', 'Hồ sơ #159980920123 đã cập nhật thông tin', '1599813127', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3375', null, '159980920124', '', 'Hồ sơ #159980920124 đã cập nhật thông tin', '1599813179', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3376', null, '159980920110', '', 'Hồ sơ #159980920110 đã cập nhật thông tin', '1599813267', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3377', null, '159980920110', '', 'Hồ sơ #159980920110 đã trúng tuyển', '1599813315', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3378', null, '159980920124', '', 'Hồ sơ #159980920124 đã trúng tuyển', '1599813316', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3379', null, '159980920123', '', 'Hồ sơ #159980920123 đã trúng tuyển', '1599813317', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3380', null, '159980920122', '', 'Hồ sơ #159980920122 đã trúng tuyển', '1599813320', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3381', null, '159980920121', '', 'Hồ sơ #159980920121 đã trúng tuyển', '1599813321', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3382', null, '159980920120', '', 'Hồ sơ #159980920120 đã trúng tuyển', '1599813323', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3383', null, '159980920119', '', 'Hồ sơ #159980920119 đã trúng tuyển', '1599813324', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3384', null, '159980920118', '', 'Hồ sơ #159980920118 đã trúng tuyển', '1599813326', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3385', null, '159980920117', '', 'Hồ sơ #159980920117 đã trúng tuyển', '1599813327', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3386', null, '159980920116', '', 'Hồ sơ #159980920116 đã trúng tuyển', '1599813329', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3387', null, '159980920115', '', 'Hồ sơ #159980920115 đã trúng tuyển', '1599813330', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3388', null, '159980920114', '', 'Hồ sơ #159980920114 đã trúng tuyển', '1599813331', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3389', null, '159980920113', '', 'Hồ sơ #159980920113 đã trúng tuyển', '1599813333', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3390', null, '159980920112', '', 'Hồ sơ #159980920112 đã trúng tuyển', '1599813334', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3391', null, '159980920111', '', 'Hồ sơ #159980920111 đã trúng tuyển', '1599813335', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3392', null, '15998092019', '', 'Hồ sơ #15998092019 đã trúng tuyển', '1599813336', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3393', null, '15998092018', '', 'Hồ sơ #15998092018 đã trúng tuyển', '1599813337', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3394', null, '15998092017', '', 'Hồ sơ #15998092017 đã trúng tuyển', '1599813338', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3395', null, '15998092016', '', 'Hồ sơ #15998092016 đã trúng tuyển', '1599813340', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3396', null, '15998092015', '', 'Hồ sơ #15998092015 đã trúng tuyển', '1599813342', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3397', null, '15998092014', '', 'Hồ sơ #15998092014 đã trúng tuyển', '1599813343', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3398', null, '15998092013', '', 'Hồ sơ #15998092013 đã trúng tuyển', '1599813345', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3399', null, '15998092012', '', 'Hồ sơ #15998092012 đã trúng tuyển', '1599813346', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3400', null, '15998092011', '', 'Hồ sơ #15998092011 đã trúng tuyển', '1599813347', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3401', null, '159980920124', '20AUM1161', 'Hồ sơ #159980920124 đã nhập học', '1599813363', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3402', null, '15998092011', '20AUM1162', 'Hồ sơ #15998092011 đã nhập học', '1599813384', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3403', null, '15998092012', '20AUM1162', 'Hồ sơ #15998092012 đã nhập học', '1599813389', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3404', null, '15998092013', '20AUM1162', 'Hồ sơ #15998092013 đã nhập học', '1599813394', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3405', null, '15998092014', '20AUM1162', 'Hồ sơ #15998092014 đã nhập học', '1599813399', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3406', null, '15998092015', '20AUM1162', 'Hồ sơ #15998092015 đã nhập học', '1599813404', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3407', null, '15998092016', '20AUM1162', 'Hồ sơ #15998092016 đã nhập học', '1599813412', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3408', null, '15998092017', '20AUM1162', 'Hồ sơ #15998092017 đã nhập học', '1599813417', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3409', null, '15998092018', '20AUM1162', 'Hồ sơ #15998092018 đã nhập học', '1599813422', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3410', null, '15998092019', '20AUM1162', 'Hồ sơ #15998092019 đã nhập học', '1599813427', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3411', null, '159980920110', '20AUM1162', 'Hồ sơ #159980920110 đã nhập học', '1599813432', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3412', null, '159980920111', '20AUM1163', 'Hồ sơ #159980920111 đã nhập học', '1599813437', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3413', null, '159980920112', '20AUM1163', 'Hồ sơ #159980920112 đã nhập học', '1599813442', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3414', null, '159980920113', '20AUM1163', 'Hồ sơ #159980920113 đã nhập học', '1599813447', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3415', null, '159980920114', '20AUM1163', 'Hồ sơ #159980920114 đã nhập học', '1599813452', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3416', null, '159980920115', '20AUM1163', 'Hồ sơ #159980920115 đã nhập học', '1599813458', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3417', null, '159980920123', '20AUM1163', 'Hồ sơ #159980920123 đã nhập học', '1599813473', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3418', null, '159980920116', '20AUM1163', 'Hồ sơ #159980920116 đã nhập học', '1599813478', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3419', null, '159980920117', '20AUM1163', 'Hồ sơ #159980920117 đã nhập học', '1599813488', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3420', null, '159980920118', '20AUM1163', 'Hồ sơ #159980920118 đã nhập học', '1599813492', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3421', null, '159980920119', '20AUM1163', 'Hồ sơ #159980920119 đã nhập học', '1599813500', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3422', null, '159980920120', '20AUM1163', 'Hồ sơ #159980920120 đã nhập học', '1599813505', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3423', null, '159980920121', '20AUM1163', 'Hồ sơ #159980920121 đã nhập học', '1599813510', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3424', null, '159980920122', '20AUM1163', 'Hồ sơ #159980920122 đã nhập học', '1599813514', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3425', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813562', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3426', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813568', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3427', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813574', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3428', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813579', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3429', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813584', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3430', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813590', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3431', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813597', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3432', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813603', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3433', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813608', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3434', null, null, '20AUM1162', 'Mã SV #20AUM1162 đã được thêm vào lớp el1_lkt11', '1599813613', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3435', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813619', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3436', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813628', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3437', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813634', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3438', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813640', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3439', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813645', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3440', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813648', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3441', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813651', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3442', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813657', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3443', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813663', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3444', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813666', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3445', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813669', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3446', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813675', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3447', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813681', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3448', null, null, '20AUM1163', 'Mã SV #20AUM1163 đã được thêm vào lớp el1_lkt11', '1599813687', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3449', null, null, '20AUM1161', 'Mã SV #20AUM1161 đã được thêm vào lớp el1_lkt11', '1599813692', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3450', null, '1599788697', '20AUM114271', 'Hồ sơ #1599788697 đã nhập học', '1600312226', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3451', null, '15997930011', '20AUM114274', 'Hồ sơ #15997930011 đã nhập học', '1600312237', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3452', null, '15997930012', '20AUM114279', 'Hồ sơ #15997930012 đã nhập học', '1600312247', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3453', null, '15997930013', '20AUM114278', 'Hồ sơ #15997930013 đã nhập học', '1600312254', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3454', null, '15997930014', '20AUM114277', 'Hồ sơ #15997930014 đã nhập học', '1600312262', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3455', null, '15997930015', '20AUM114276', 'Hồ sơ #15997930015 đã nhập học', '1600312271', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3456', null, '15997930016', '20AUM114275', 'Hồ sơ #15997930016 đã nhập học', '1600312279', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3457', null, '15997930017', '20AUM114284', 'Hồ sơ #15997930017 đã nhập học', '1600312287', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3458', null, '15997930018', '20AUM114283', 'Hồ sơ #15997930018 đã nhập học', '1600312294', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3459', null, '15997930019', '20AUM114282', 'Hồ sơ #15997930019 đã nhập học', '1600312302', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3460', null, '159979300110', '20AUM114281', 'Hồ sơ #159979300110 đã nhập học', '1600312309', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3461', null, '159979300111', '20AUM114280', 'Hồ sơ #159979300111 đã nhập học', '1600312317', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3462', null, '159979300112', '20AUM114286', 'Hồ sơ #159979300112 đã nhập học', '1600312324', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3463', null, '159979300113', '20AUM114285', 'Hồ sơ #159979300113 đã nhập học', '1600312333', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3464', null, '159979300114', '20AUM114273', 'Hồ sơ #159979300114 đã nhập học', '1600312337', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3465', null, '159979300115', '20AUM114272', 'Hồ sơ #159979300115 đã nhập học', '1600312346', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3466', null, '15998092011', '20AUM116287', 'Hồ sơ #15998092011 đã nhập học', '1600312542', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3467', null, '15998092012', '20AUM116288', 'Hồ sơ #15998092012 đã nhập học', '1600312549', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3468', null, '15998092013', '20AUM116289', 'Hồ sơ #15998092013 đã nhập học', '1600312563', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3469', null, '15998092014', '20AUM116290', 'Hồ sơ #15998092014 đã nhập học', '1600312579', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3470', null, '15998092015', '20AUM116291', 'Hồ sơ #15998092015 đã nhập học', '1600312586', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3471', null, '15998092016', '20AUM116292', 'Hồ sơ #15998092016 đã nhập học', '1600312595', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3472', null, '15998092017', '20AUM116293', 'Hồ sơ #15998092017 đã nhập học', '1600312600', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3473', null, '15998092018', '20AUM116294', 'Hồ sơ #15998092018 đã nhập học', '1600312608', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3474', null, '15998092019', '20AUM116295', 'Hồ sơ #15998092019 đã nhập học', '1600312616', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3475', null, '159980920110', '20AUM116310', 'Hồ sơ #159980920110 đã nhập học', '1600312621', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3476', null, '159980920111', '20AUM116296', 'Hồ sơ #159980920111 đã nhập học', '1600312626', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3477', null, '159980920112', '20AUM116297', 'Hồ sơ #159980920112 đã nhập học', '1600312631', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3478', null, '159980920113', '20AUM116298', 'Hồ sơ #159980920113 đã nhập học', '1600312640', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3479', null, '159980920114', '20AUM116299', 'Hồ sơ #159980920114 đã nhập học', '1600312647', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3480', null, '159980920115', '20AUM116300', 'Hồ sơ #159980920115 đã nhập học', '1600312652', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3481', null, '159980920116', '20AUM116301', 'Hồ sơ #159980920116 đã nhập học', '1600312657', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3482', null, '159980920117', '20AUM116302', 'Hồ sơ #159980920117 đã nhập học', '1600312672', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3483', null, '159980920118', '20AUM116303', 'Hồ sơ #159980920118 đã nhập học', '1600312678', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3484', null, '159980920119', '20AUM116304', 'Hồ sơ #159980920119 đã nhập học', '1600312685', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3485', null, '159980920120', '20AUM116305', 'Hồ sơ #159980920120 đã nhập học', '1600312692', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3486', null, '159980920121', '20AUM116306', 'Hồ sơ #159980920121 đã nhập học', '1600312698', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3487', null, '159980920122', '20AUM116307', 'Hồ sơ #159980920122 đã nhập học', '1600312702', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3488', null, '159980920123', '20AUM116308', 'Hồ sơ #159980920123 đã nhập học', '1600312708', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3489', null, '159980920124', '20AUM116309', 'Hồ sơ #159980920124 đã nhập học', '1600312712', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3490', null, '15998093191', '', 'Hồ sơ #15998093191 đã cập nhật thông tin', '1600313375', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3491', null, '15998093192', '', 'Hồ sơ #15998093192 đã cập nhật thông tin', '1600313436', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3492', null, '15998093193', '', 'Hồ sơ #15998093193 đã cập nhật thông tin', '1600313488', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3493', null, '15998093194', '', 'Hồ sơ #15998093194 đã cập nhật thông tin', '1600313536', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3494', null, '15998093195', '', 'Hồ sơ #15998093195 đã cập nhật thông tin', '1600313608', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3495', null, '15998093196', '', 'Hồ sơ #15998093196 đã cập nhật thông tin', '1600313722', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3496', null, '159980931917', '', 'Hồ sơ #159980931917 đã cập nhật thông tin', '1600313832', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3497', null, '15998093198', '', 'Hồ sơ #15998093198 đã cập nhật thông tin', '1600313891', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3498', null, '15998093197', '', 'Hồ sơ #15998093197 đã cập nhật thông tin', '1600313949', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3499', null, '159980931916', '', 'Hồ sơ #159980931916 đã cập nhật thông tin', '1600314002', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3500', null, '159980931915', '', 'Hồ sơ #159980931915 đã cập nhật thông tin', '1600314053', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3501', null, '159980931914', '', 'Hồ sơ #159980931914 đã cập nhật thông tin', '1600314191', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3502', null, '159980931925', '', 'Hồ sơ #159980931925 đã cập nhật thông tin', '1600314271', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3503', null, '159980931912', '', 'Hồ sơ #159980931912 đã cập nhật thông tin', '1600314325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3504', null, '159980931911', '', 'Hồ sơ #159980931911 đã cập nhật thông tin', '1600314407', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3505', null, '159980931910', '', 'Hồ sơ #159980931910 đã cập nhật thông tin', '1600314472', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3506', null, '159980931924', '', 'Hồ sơ #159980931924 đã cập nhật thông tin', '1600314523', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3507', null, '159980931923', '', 'Hồ sơ #159980931923 đã cập nhật thông tin', '1600314685', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3508', null, '159980931922', '', 'Hồ sơ #159980931922 đã cập nhật thông tin', '1600314738', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3509', null, '159980931921', '', 'Hồ sơ #159980931921 đã cập nhật thông tin', '1600314850', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3510', null, '159980931920', '', 'Hồ sơ #159980931920 đã cập nhật thông tin', '1600314885', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3511', null, '159980931919', '', 'Hồ sơ #159980931919 đã cập nhật thông tin', '1600314928', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3512', null, '159980931918', '', 'Hồ sơ #159980931918 đã cập nhật thông tin', '1600315037', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3513', null, '159980931913', '', 'Hồ sơ #159980931913 đã cập nhật thông tin', '1600315096', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3514', null, '15998093199', '', 'Hồ sơ #15998093199 đã cập nhật thông tin', '1600315135', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3515', null, '159980931930', '', 'Hồ sơ #159980931930 đã cập nhật thông tin', '1600315174', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3516', null, '159980931929', '', 'Hồ sơ #159980931929 đã cập nhật thông tin', '1600315225', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3517', null, '159980931928', '', 'Hồ sơ #159980931928 đã cập nhật thông tin', '1600315276', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3518', null, '159980931927', '', 'Hồ sơ #159980931927 đã cập nhật thông tin', '1600315325', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3519', null, '159980931926', '', 'Hồ sơ #159980931926 đã cập nhật thông tin', '1600315390', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3520', null, '159980931932', '', 'Hồ sơ #159980931932 đã cập nhật thông tin', '1600315452', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3521', null, '159980931931', '', 'Hồ sơ #159980931931 đã cập nhật thông tin', '1600315511', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3522', null, '159980931913', '', 'Hồ sơ #159980931913 đã cập nhật thông tin', '1600315579', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3523', null, '15998093194', '', 'Hồ sơ #15998093194 đã cập nhật thông tin', '1600315601', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3524', null, '159980931931', '', 'Hồ sơ #159980931931 đã trúng tuyển', '1600315694', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3525', null, '159980931932', '', 'Hồ sơ #159980931932 đã trúng tuyển', '1600315695', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3526', null, '159980931926', '', 'Hồ sơ #159980931926 đã trúng tuyển', '1600315695', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3527', null, '159980931927', '', 'Hồ sơ #159980931927 đã trúng tuyển', '1600315696', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3528', null, '159980931928', '', 'Hồ sơ #159980931928 đã trúng tuyển', '1600315697', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3529', null, '159980931929', '', 'Hồ sơ #159980931929 đã trúng tuyển', '1600315697', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3530', null, '159980931930', '', 'Hồ sơ #159980931930 đã trúng tuyển', '1600315698', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3531', null, '15998093199', '', 'Hồ sơ #15998093199 đã trúng tuyển', '1600315698', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3532', null, '15998093199', '', 'Hồ sơ #15998093199 đã trúng tuyển', '1600315698', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3533', null, '159980931913', '', 'Hồ sơ #159980931913 đã trúng tuyển', '1600315699', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3534', null, '159980931918', '', 'Hồ sơ #159980931918 đã trúng tuyển', '1600315699', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3535', null, '159980931919', '', 'Hồ sơ #159980931919 đã trúng tuyển', '1600315700', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3536', null, '159980931919', '', 'Hồ sơ #159980931919 đã trúng tuyển', '1600315700', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3537', null, '159980931920', '', 'Hồ sơ #159980931920 đã trúng tuyển', '1600315701', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3538', null, '159980931920', '', 'Hồ sơ #159980931920 đã trúng tuyển', '1600315701', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3539', null, '159980931921', '', 'Hồ sơ #159980931921 đã trúng tuyển', '1600315701', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3540', null, '159980931922', '', 'Hồ sơ #159980931922 đã trúng tuyển', '1600315702', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3541', null, '159980931923', '', 'Hồ sơ #159980931923 đã trúng tuyển', '1600315702', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3542', null, '159980931923', '', 'Hồ sơ #159980931923 đã trúng tuyển', '1600315703', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3543', null, '159980931924', '', 'Hồ sơ #159980931924 đã trúng tuyển', '1600315703', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3544', null, '159980931910', '', 'Hồ sơ #159980931910 đã trúng tuyển', '1600315703', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3545', null, '159980931911', '', 'Hồ sơ #159980931911 đã trúng tuyển', '1600315704', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3546', null, '159980931911', '', 'Hồ sơ #159980931911 đã trúng tuyển', '1600315704', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3547', null, '159980931912', '', 'Hồ sơ #159980931912 đã trúng tuyển', '1600315704', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3548', null, '159980931912', '', 'Hồ sơ #159980931912 đã trúng tuyển', '1600315705', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3549', null, '159980931912', '', 'Hồ sơ #159980931912 đã trúng tuyển', '1600315705', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3550', null, '159980931925', '', 'Hồ sơ #159980931925 đã trúng tuyển', '1600315705', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3551', null, '159980931914', '', 'Hồ sơ #159980931914 đã trúng tuyển', '1600315706', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3552', null, '159980931915', '', 'Hồ sơ #159980931915 đã trúng tuyển', '1600315706', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3553', null, '159980931916', '', 'Hồ sơ #159980931916 đã trúng tuyển', '1600315709', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3554', null, '15998093197', '', 'Hồ sơ #15998093197 đã trúng tuyển', '1600315710', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3555', null, '15998093198', '', 'Hồ sơ #15998093198 đã trúng tuyển', '1600315710', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3556', null, '159980931917', '', 'Hồ sơ #159980931917 đã trúng tuyển', '1600315711', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3557', null, '15998093196', '', 'Hồ sơ #15998093196 đã trúng tuyển', '1600315712', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3558', null, '15998093195', '', 'Hồ sơ #15998093195 đã trúng tuyển', '1600315713', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3559', null, '15998093194', '', 'Hồ sơ #15998093194 đã trúng tuyển', '1600315713', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3560', null, '15998093193', '', 'Hồ sơ #15998093193 đã trúng tuyển', '1600315714', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3561', null, '15998093192', '', 'Hồ sơ #15998093192 đã trúng tuyển', '1600315717', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3562', null, '15998093191', '', 'Hồ sơ #15998093191 đã trúng tuyển', '1600315718', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3563', null, '15998093191', '20AUM122311', 'Hồ sơ #15998093191 đã nhập học', '1600315774', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3564', null, '15998093192', '20AUM122312', 'Hồ sơ #15998093192 đã nhập học', '1600315786', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3565', null, '15998093193', '20AUM122313', 'Hồ sơ #15998093193 đã nhập học', '1600315791', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3566', null, '15998093194', '20AUM122314', 'Hồ sơ #15998093194 đã nhập học', '1600315803', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3567', null, '15998093195', '20AUM122315', 'Hồ sơ #15998093195 đã nhập học', '1600315808', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3568', null, '15998093196', '20AUM122316', 'Hồ sơ #15998093196 đã nhập học', '1600315813', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3569', null, '15998093197', '20AUM122319', 'Hồ sơ #15998093197 đã nhập học', '1600315818', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3570', null, '15998093198', '20AUM122318', 'Hồ sơ #15998093198 đã nhập học', '1600315824', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3571', null, '15998093199', '20AUM122335', 'Hồ sơ #15998093199 đã nhập học', '1600315830', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3572', null, '159980931910', '20AUM122326', 'Hồ sơ #159980931910 đã nhập học', '1600315835', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3573', null, '159980931911', '20AUM122325', 'Hồ sơ #159980931911 đã nhập học', '1600315840', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3574', null, '159980931912', '20AUM122324', 'Hồ sơ #159980931912 đã nhập học', '1600315845', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3575', null, '159980931913', '20AUM122334', 'Hồ sơ #159980931913 đã nhập học', '1600315849', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3576', null, '159980931914', '20AUM122322', 'Hồ sơ #159980931914 đã nhập học', '1600315853', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3577', null, '159980931915', '20AUM122321', 'Hồ sơ #159980931915 đã nhập học', '1600315859', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3578', null, '159980931916', '20AUM122320', 'Hồ sơ #159980931916 đã nhập học', '1600315864', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3579', null, '159980931917', '20AUM122317', 'Hồ sơ #159980931917 đã nhập học', '1600315868', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3580', null, '159980931932', '20AUM122341', 'Hồ sơ #159980931932 đã nhập học', '1600315876', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3581', null, '159980931918', '20AUM122333', 'Hồ sơ #159980931918 đã nhập học', '1600315880', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3582', null, '159980931919', '20AUM122332', 'Hồ sơ #159980931919 đã nhập học', '1600315886', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3583', null, '159980931920', '20AUM122331', 'Hồ sơ #159980931920 đã nhập học', '1600315891', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3584', null, '159980931921', '20AUM122330', 'Hồ sơ #159980931921 đã nhập học', '1600315895', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3585', null, '159980931922', '20AUM122329', 'Hồ sơ #159980931922 đã nhập học', '1600315900', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3586', null, '159980931923', '20AUM122328', 'Hồ sơ #159980931923 đã nhập học', '1600315904', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3587', null, '159980931924', '20AUM122327', 'Hồ sơ #159980931924 đã nhập học', '1600315909', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3588', null, '159980931925', '20AUM122323', 'Hồ sơ #159980931925 đã nhập học', '1600315913', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3589', null, '159980931926', '20AUM122340', 'Hồ sơ #159980931926 đã nhập học', '1600315918', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3590', null, '159980931927', '20AUM122339', 'Hồ sơ #159980931927 đã nhập học', '1600315923', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3591', null, '159980931928', '20AUM122338', 'Hồ sơ #159980931928 đã nhập học', '1600315927', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3592', null, '159980931929', '20AUM122337', 'Hồ sơ #159980931929 đã nhập học', '1600315932', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3593', null, '159980931930', '20AUM122336', 'Hồ sơ #159980931930 đã nhập học', '1600315937', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3594', null, '159980931931', '20AUM122342', 'Hồ sơ #159980931931 đã nhập học', '1600315941', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3595', null, null, '20AUM122311', 'Mã SV #20AUM122311 đã được thêm vào lớp el1_qlnn11', '1600315962', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3596', null, null, '20AUM122312', 'Mã SV #20AUM122312 đã được thêm vào lớp el1_qlnn11', '1600315968', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3597', null, null, '20AUM122313', 'Mã SV #20AUM122313 đã được thêm vào lớp el1_qlnn11', '1600315974', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3598', null, null, '20AUM122314', 'Mã SV #20AUM122314 đã được thêm vào lớp el1_qlnn11', '1600315980', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3599', null, null, '20AUM122315', 'Mã SV #20AUM122315 đã được thêm vào lớp el1_qlnn11', '1600315987', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3600', null, null, '20AUM122316', 'Mã SV #20AUM122316 đã được thêm vào lớp el1_qlnn11', '1600315994', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3601', null, null, '20AUM122319', 'Mã SV #20AUM122319 đã được thêm vào lớp el1_qlnn11', '1600316000', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3602', null, null, '20AUM122318', 'Mã SV #20AUM122318 đã được thêm vào lớp el1_qlnn11', '1600316006', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3603', null, null, '20AUM122335', 'Mã SV #20AUM122335 đã được thêm vào lớp el1_qlnn11', '1600316012', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3604', null, null, '20AUM122326', 'Mã SV #20AUM122326 đã được thêm vào lớp el1_qlnn11', '1600316017', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3605', null, null, '20AUM122325', 'Mã SV #20AUM122325 đã được thêm vào lớp el1_qlnn11', '1600316022', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3606', null, null, '20AUM122324', 'Mã SV #20AUM122324 đã được thêm vào lớp el1_qlnn11', '1600316028', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3607', null, null, '20AUM122334', 'Mã SV #20AUM122334 đã được thêm vào lớp el1_qlnn11', '1600316033', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3608', null, null, '20AUM122322', 'Mã SV #20AUM122322 đã được thêm vào lớp el1_qlnn11', '1600316040', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3609', null, null, '20AUM122321', 'Mã SV #20AUM122321 đã được thêm vào lớp el1_qlnn11', '1600316045', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3610', null, null, '20AUM122320', 'Mã SV #20AUM122320 đã được thêm vào lớp el1_qlnn11', '1600316051', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3611', null, null, '20AUM122317', 'Mã SV #20AUM122317 đã được thêm vào lớp el1_qlnn11', '1600316057', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3612', null, null, '20AUM122333', 'Mã SV #20AUM122333 đã được thêm vào lớp el1_qlnn11', '1600316064', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3613', null, null, '20AUM122332', 'Mã SV #20AUM122332 đã được thêm vào lớp el1_qlnn11', '1600316069', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3614', null, null, '20AUM122332', 'Mã SV #20AUM122332 đã được thêm vào lớp el1_qlnn11', '1600316072', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3615', null, null, '20AUM122331', 'Mã SV #20AUM122331 đã được thêm vào lớp el1_qlnn11', '1600316074', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3616', null, null, '20AUM122330', 'Mã SV #20AUM122330 đã được thêm vào lớp el1_qlnn11', '1600316077', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3617', null, null, '20AUM122329', 'Mã SV #20AUM122329 đã được thêm vào lớp el1_qlnn11', '1600316083', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3618', null, null, '20AUM122328', 'Mã SV #20AUM122328 đã được thêm vào lớp el1_qlnn11', '1600316089', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3619', null, null, '20AUM122327', 'Mã SV #20AUM122327 đã được thêm vào lớp el1_qlnn11', '1600316094', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3620', null, null, '20AUM122323', 'Mã SV #20AUM122323 đã được thêm vào lớp el1_qlnn11', '1600316101', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3621', null, null, '20AUM122340', 'Mã SV #20AUM122340 đã được thêm vào lớp el1_qlnn11', '1600316106', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3622', null, null, '20AUM122339', 'Mã SV #20AUM122339 đã được thêm vào lớp el1_qlnn11', '1600316112', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3623', null, null, '20AUM122338', 'Mã SV #20AUM122338 đã được thêm vào lớp el1_qlnn11', '1600316117', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3624', null, null, '20AUM122337', 'Mã SV #20AUM122337 đã được thêm vào lớp el1_qlnn11', '1600316122', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3625', null, null, '20AUM122336', 'Mã SV #20AUM122336 đã được thêm vào lớp el1_qlnn11', '1600316126', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3626', null, null, '20AUM122336', 'Mã SV #20AUM122336 đã được thêm vào lớp el1_qlnn11', '1600316128', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3627', null, null, '20AUM122342', 'Mã SV #20AUM122342 đã được thêm vào lớp el1_qlnn11', '1600316134', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3628', null, null, '20AUM122341', 'Mã SV #20AUM122341 đã được thêm vào lớp el1_qlnn11', '1600316140', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3629', null, '1609743738', '', 'Hồ sơ #1609743738 (Phan Văn Uông) tạo mới thành công', '1609744748', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3630', null, '1609743738', '', 'Hồ sơ #1609743738 đã cập nhật thông tin', '1609744762', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3631', null, '1609744773', '', 'Hồ sơ #1609744773 (Lý Thị Nga) tạo mới thành công', '1609744849', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3632', null, '1609744773', '', 'Hồ sơ #1609744773 đã cập nhật thông tin', '1609744870', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3633', null, '1609744877', '', 'Hồ sơ #1609744877 (Thái Anh Tuấn) tạo mới thành công', '1609744950', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3634', null, '1609744877', '', 'Hồ sơ #1609744877 đã cập nhật thông tin', '1609744990', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3635', null, '1609744999', '', 'Hồ sơ #1609744999 (Vũ Lương Trung Đức) tạo mới thành công', '1609745071', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3636', null, '1609744999', '', 'Hồ sơ #1609744999 đã cập nhật thông tin', '1609745080', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3637', null, '1609745086', '', 'Hồ sơ #1609745086 (Sa Văn Dược) tạo mới thành công', '1609745160', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3638', null, '1609745086', '', 'Hồ sơ #1609745086 đã cập nhật thông tin', '1609745170', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3639', null, '1609745185', '', 'Hồ sơ #1609745185 (Đinh Thị Hường) tạo mới thành công', '1609745266', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3640', null, '1609745185', '', 'Hồ sơ #1609745185 đã cập nhật thông tin', '1609745275', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3641', null, '1609745284', '', 'Hồ sơ #1609745284 (Hà Đình Long) tạo mới thành công', '1609745360', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3642', null, '1609745284', '', 'Hồ sơ #1609745284 đã cập nhật thông tin', '1609745368', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3643', null, '1609745284', '', 'Hồ sơ #1609745284 đã cập nhật thông tin', '1609745376', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3644', null, '1609745387', '', 'Hồ sơ #1609745387 (Chi Thị Hà) tạo mới thành công', '1609745434', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3645', null, '1609745387', '', 'Hồ sơ #1609745387 đã cập nhật thông tin', '1609745444', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3646', null, '1609745452', '', 'Hồ sơ #1609745452 (Hoàng Văn Doanh) tạo mới thành công', '1609745503', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3647', null, '1609745452', '', 'Hồ sơ #1609745452 đã cập nhật thông tin', '1609745512', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3648', null, '1609745452', '', 'Hồ sơ #1609745452 đã cập nhật thông tin', '1609745517', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3649', null, '1609745524', '', 'Hồ sơ #1609745524 (Triệu Thị Thương) tạo mới thành công', '1609745574', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3650', null, '1609745524', '', 'Hồ sơ #1609745524 đã cập nhật thông tin', '1609745583', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3651', null, '1609745588', '', 'Hồ sơ #1609745588 (Nguyễn Thị Diệu Linh) tạo mới thành công', '1609745645', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3652', null, '1609745588', '', 'Hồ sơ #1609745588 đã cập nhật thông tin', '1609745654', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3653', null, '1609745661', '', 'Hồ sơ #1609745661 (Lại Anh Tâm) tạo mới thành công', '1609745712', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3654', null, '1609745661', '', 'Hồ sơ #1609745661 đã cập nhật thông tin', '1609745721', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3655', null, '1609745729', '', 'Hồ sơ #1609745729 (Hà Quang Tối) tạo mới thành công', '1609745785', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3656', null, '1609745729', '', 'Hồ sơ #1609745729 đã cập nhật thông tin', '1609745793', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3657', null, '1609745799', '', 'Hồ sơ #1609745799 (Lò Thị Hoài) tạo mới thành công', '1609745851', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3658', null, '1609745799', '', 'Hồ sơ #1609745799 đã cập nhật thông tin', '1609745859', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3659', null, '1609745865', '', 'Hồ sơ #1609745865 (Lý Thị Của) tạo mới thành công', '1609745889', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3660', null, '1609745865', '', 'Hồ sơ #1609745865 đã cập nhật thông tin', '1609745897', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3661', null, '1609745903', '', 'Hồ sơ #1609745903 (Hảng Thị Mỷ) tạo mới thành công', '1609745976', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3662', null, '1609745903', '', 'Hồ sơ #1609745903 đã cập nhật thông tin', '1609745983', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3663', null, '1609745992', '', 'Hồ sơ #1609745992 (Hoàng Đức Học) tạo mới thành công', '1609746020', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3664', null, '1609745992', '', 'Hồ sơ #1609745992 đã cập nhật thông tin', '1609746029', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3665', null, '1609746037', '', 'Hồ sơ #1609746037 (Sùng A Phệ) tạo mới thành công', '1609746064', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3666', null, '1609746037', '', 'Hồ sơ #1609746037 đã cập nhật thông tin', '1609746072', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3667', null, '1609746078', '', 'Hồ sơ #1609746078 (Giàng A Ninh) tạo mới thành công', '1609746105', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3668', null, '1609746078', '', 'Hồ sơ #1609746078 đã cập nhật thông tin', '1609746113', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3669', null, '1609746125', '', 'Hồ sơ #1609746125 (Hờ A Vàng) tạo mới thành công', '1609746147', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3670', null, '1609746125', '', 'Hồ sơ #1609746125 đã cập nhật thông tin', '1609746187', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3671', null, '1609746125', '', 'Hồ sơ #1609746125 đã trúng tuyển', '1609746235', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3672', null, '1609746078', '', 'Hồ sơ #1609746078 đã trúng tuyển', '1609746237', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3673', null, '1609746037', '', 'Hồ sơ #1609746037 đã trúng tuyển', '1609746238', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3674', null, '1609745992', '', 'Hồ sơ #1609745992 đã trúng tuyển', '1609746239', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3675', null, '1609745903', '', 'Hồ sơ #1609745903 đã trúng tuyển', '1609746240', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3676', null, '1609745865', '', 'Hồ sơ #1609745865 đã trúng tuyển', '1609746240', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3677', null, '1609745799', '', 'Hồ sơ #1609745799 đã trúng tuyển', '1609746241', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3678', null, '1609745729', '', 'Hồ sơ #1609745729 đã trúng tuyển', '1609746242', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3679', null, '1609745661', '', 'Hồ sơ #1609745661 đã trúng tuyển', '1609746243', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3680', null, '1609745588', '', 'Hồ sơ #1609745588 đã trúng tuyển', '1609746243', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3681', null, '1609745524', '', 'Hồ sơ #1609745524 đã trúng tuyển', '1609746244', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3682', null, '1609745452', '', 'Hồ sơ #1609745452 đã trúng tuyển', '1609746244', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3683', null, '1609745387', '', 'Hồ sơ #1609745387 đã trúng tuyển', '1609746245', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3684', null, '1609745284', '', 'Hồ sơ #1609745284 đã trúng tuyển', '1609746245', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3685', null, '1609745185', '', 'Hồ sơ #1609745185 đã trúng tuyển', '1609746246', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3686', null, '1609745086', '', 'Hồ sơ #1609745086 đã trúng tuyển', '1609746247', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3687', null, '1609744999', '', 'Hồ sơ #1609744999 đã trúng tuyển', '1609746249', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3688', null, '1609744773', '', 'Hồ sơ #1609744773 đã trúng tuyển', '1609746250', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3689', null, '1609744877', '', 'Hồ sơ #1609744877 đã trúng tuyển', '1609746250', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3690', null, '1609743738', '', 'Hồ sơ #1609743738 đã trúng tuyển', '1609746252', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3691', null, '1609743738', '20AUM116343', 'Hồ sơ #1609743738 đã nhập học', '1609746286', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3692', null, '1609745284', '20AUM116349', 'Hồ sơ #1609745284 đã nhập học', '1609746317', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3693', null, '1609744773', '20AUM116344', 'Hồ sơ #1609744773 đã nhập học', '1609746332', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3694', null, '1609744877', '20AUM116345', 'Hồ sơ #1609744877 đã nhập học', '1609746342', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3695', null, '1609744999', '20AUM116346', 'Hồ sơ #1609744999 đã nhập học', '1609746348', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3696', null, '1609745086', '20AUM116347', 'Hồ sơ #1609745086 đã nhập học', '1609746353', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3697', null, '1609745185', '20AUM116348', 'Hồ sơ #1609745185 đã nhập học', '1609746360', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3698', null, '1609746125', '20AUM116362', 'Hồ sơ #1609746125 đã nhập học', '1609746370', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3699', null, '1609745387', '20AUM116350', 'Hồ sơ #1609745387 đã nhập học', '1609746377', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3700', null, '1609745452', '20AUM116351', 'Hồ sơ #1609745452 đã nhập học', '1609746384', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3701', null, '1609745524', '20AUM116352', 'Hồ sơ #1609745524 đã nhập học', '1609746389', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3702', null, '1609745588', '20AUM116353', 'Hồ sơ #1609745588 đã nhập học', '1609746394', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3703', null, '1609745661', '20AUM116354', 'Hồ sơ #1609745661 đã nhập học', '1609746400', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3704', null, '1609745729', '20AUM116355', 'Hồ sơ #1609745729 đã nhập học', '1609746405', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3705', null, '1609745799', '20AUM116356', 'Hồ sơ #1609745799 đã nhập học', '1609746412', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3706', null, '1609745865', '20AUM116357', 'Hồ sơ #1609745865 đã nhập học', '1609746419', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3707', null, '1609745903', '20AUM116358', 'Hồ sơ #1609745903 đã nhập học', '1609746423', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3708', null, '1609745992', '20AUM116359', 'Hồ sơ #1609745992 đã nhập học', '1609746428', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3709', null, '1609746037', '20AUM116360', 'Hồ sơ #1609746037 đã nhập học', '1609746432', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3710', null, '1609746078', '20AUM116361', 'Hồ sơ #1609746078 đã nhập học', '1609746437', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3711', null, null, '20AUM116343', 'Mã SV #20AUM116343 đã được thêm vào lớp el22_lkt11', '1609746470', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3712', null, null, '20AUM116344', 'Mã SV #20AUM116344 đã được thêm vào lớp el21_lkt11', '1609746483', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3713', null, null, '20AUM116345', 'Mã SV #20AUM116345 đã được thêm vào lớp el22_lkt11', '1609746492', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3714', null, null, '20AUM116346', 'Mã SV #20AUM116346 đã được thêm vào lớp el22_lkt11', '1609746506', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3715', null, null, '20AUM116347', 'Mã SV #20AUM116347 đã được thêm vào lớp el22_lkt11', '1609746518', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3716', null, null, '20AUM116348', 'Mã SV #20AUM116348 đã được thêm vào lớp el22_lkt11', '1609746530', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3717', null, null, '20AUM116349', 'Mã SV #20AUM116349 đã được thêm vào lớp el22_lkt11', '1609746538', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3718', null, null, '20AUM116350', 'Mã SV #20AUM116350 đã được thêm vào lớp el22_lkt11', '1609746551', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3719', null, null, '20AUM116351', 'Mã SV #20AUM116351 đã được thêm vào lớp el22_lkt11', '1609746560', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3720', null, null, '20AUM116352', 'Mã SV #20AUM116352 đã được thêm vào lớp el22_lkt11', '1609746567', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3721', null, null, '20AUM116353', 'Mã SV #20AUM116353 đã được thêm vào lớp el22_lkt11', '1609746573', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3722', null, null, '20AUM116354', 'Mã SV #20AUM116354 đã được thêm vào lớp el22_lkt11', '1609746580', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3723', null, null, '20AUM116355', 'Mã SV #20AUM116355 đã được thêm vào lớp el22_lkt11', '1609746590', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3724', null, null, '20AUM116356', 'Mã SV #20AUM116356 đã được thêm vào lớp el22_lkt11', '1609746597', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3725', null, null, '20AUM116357', 'Mã SV #20AUM116357 đã được thêm vào lớp el22_lkt11', '1609746604', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3726', null, null, '20AUM116358', 'Mã SV #20AUM116358 đã được thêm vào lớp el22_lkt11', '1609746611', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3727', null, null, '20AUM116359', 'Mã SV #20AUM116359 đã được thêm vào lớp el22_lkt11', '1609746618', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3728', null, null, '20AUM116360', 'Mã SV #20AUM116360 đã được thêm vào lớp el22_lkt11', '1609746625', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3729', null, null, '20AUM116361', 'Mã SV #20AUM116361 đã được thêm vào lớp el22_lkt11', '1609746632', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3730', null, null, '20AUM116362', 'Mã SV #20AUM116362 đã được thêm vào lớp el22_lkt11', '1609746638', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3731', null, null, '20AUM116344', 'Mã SV #20AUM116344 chuyển từ lớp el21_lkt11 sang lớp el22_lkt11', '1609746674', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3732', null, '1609744773', '20AUM116344', 'Hủy nhập học hồ sơ #1609744773. Lý do: lại', '1609746847', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3733', null, '1609744773', '20AUM116344', 'Hồ sơ #1609744773 đã nhập học', '1609746901', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3734', null, '1609922428', '', 'Hồ sơ #1609922428 (Nguyễn Văn Quyết) tạo mới thành công', '1609922497', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3735', null, '1609922828', '', 'Hồ sơ #1609922828 (Nguyễn Hải Bằng) tạo mới thành công', '1609922878', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3736', null, '1609922884', '', 'Hồ sơ #1609922884 (Hờ A Cầu) tạo mới thành công', '1609922923', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3737', null, '1609923051', '', 'Hồ sơ #1609923051 (Giàng A Chinh) tạo mới thành công', '1609923123', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3738', null, '1609923179', '', 'Hồ sơ #1609923179 (Giàng A Chu) tạo mới thành công', '1609923209', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3739', null, '1609923219', '', 'Hồ sơ #1609923219 (Giàng A Chú) tạo mới thành công', '1609923253', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3740', null, '1609923259', '', 'Hồ sơ #1609923259 (Bàn Tòn Lai) tạo mới thành công', '1609923310', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3741', null, '1609923317', '', 'Hồ sơ #1609923317 (Giàng A Lềnh) tạo mới thành công', '1609923361', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3742', null, '1609923371', '', 'Hồ sơ #1609923371 (Giàng A Lềnh) tạo mới thành công', '1609923398', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3743', null, '1609923411', '', 'Hồ sơ #1609923411 (Giàng A Lồng) tạo mới thành công', '1609923446', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3744', null, '1609923461', '', 'Hồ sơ #1609923461 (Hờ A Sùng) tạo mới thành công', '1609923500', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3745', null, '1609923505', '', 'Hồ sơ #1609923505 (Lò Văn Thức) tạo mới thành công', '1609923549', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3746', null, '1609923557', '', 'Hồ sơ #1609923557 (Thào A Trư) tạo mới thành công', '1609923587', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3747', null, '1609923592', '', 'Hồ sơ #1609923592 (Giàng A Tủa) tạo mới thành công', '1609923624', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3748', null, '16099217421', '', 'Hồ sơ #16099217421 đã cập nhật thông tin', '1609987476', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3749', null, '16099217422', '', 'Hồ sơ #16099217422 đã cập nhật thông tin', '1609987571', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3750', null, '1609922828', '', 'Hồ sơ #1609922828 đã cập nhật thông tin', '1609987617', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3751', null, '16099217423', '', 'Hồ sơ #16099217423 đã cập nhật thông tin', '1609987666', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3752', null, '1609922884', '', 'Hồ sơ #1609922884 đã cập nhật thông tin', '1609987993', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3753', null, '1609923051', '', 'Hồ sơ #1609923051 đã cập nhật thông tin', '1609988014', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3754', null, '16099217424', '', 'Hồ sơ #16099217424 đã cập nhật thông tin', '1609988097', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3755', null, '1609923179', '', 'Hồ sơ #1609923179 đã cập nhật thông tin', '1609988161', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3756', null, '1609923219', '', 'Hồ sơ #1609923219 đã cập nhật thông tin', '1609988176', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3757', null, '16099217425', '', 'Hồ sơ #16099217425 đã cập nhật thông tin', '1609988211', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3758', null, '16099217426', '', 'Hồ sơ #16099217426 đã cập nhật thông tin', '1609988778', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3759', null, '16099217427', '', 'Hồ sơ #16099217427 đã cập nhật thông tin', '1609988816', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3760', null, '16099217428', '', 'Hồ sơ #16099217428 đã cập nhật thông tin', '1609988864', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3761', null, '16099217429', '', 'Hồ sơ #16099217429 đã cập nhật thông tin', '1609988905', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3762', null, '160992174210', '', 'Hồ sơ #160992174210 đã cập nhật thông tin', '1609988948', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3763', null, '160992174211', '', 'Hồ sơ #160992174211 đã cập nhật thông tin', '1609988975', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3764', null, '160992174212', '', 'Hồ sơ #160992174212 đã cập nhật thông tin', '1609989008', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3765', null, '160992174213', '', 'Hồ sơ #160992174213 đã cập nhật thông tin', '1609989080', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3766', null, '160992174214', '', 'Hồ sơ #160992174214 đã cập nhật thông tin', '1609989112', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3767', null, '160992174215', '', 'Hồ sơ #160992174215 đã cập nhật thông tin', '1609989177', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3768', null, '160992174216', '', 'Hồ sơ #160992174216 đã cập nhật thông tin', '1609989215', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3769', null, '160992174217', '', 'Hồ sơ #160992174217 đã cập nhật thông tin', '1609989245', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3770', null, '160992174218', '', 'Hồ sơ #160992174218 đã cập nhật thông tin', '1609989275', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3771', null, '1609923259', '', 'Hồ sơ #1609923259 đã cập nhật thông tin', '1609989310', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3772', null, '160992174219', '', 'Hồ sơ #160992174219 đã cập nhật thông tin', '1609989342', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3773', null, '160992174220', '', 'Hồ sơ #160992174220 đã cập nhật thông tin', '1609989376', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3774', null, '160992174221', '', 'Hồ sơ #160992174221 đã cập nhật thông tin', '1609989410', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3775', null, '1609923317', '', 'Hồ sơ #1609923317 đã cập nhật thông tin', '1609989434', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3776', null, '1609923371', '', 'Hồ sơ #1609923371 đã cập nhật thông tin', '1609989451', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3777', null, '160992174222', '', 'Hồ sơ #160992174222 đã cập nhật thông tin', '1609989513', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3778', null, '160992174223', '', 'Hồ sơ #160992174223 đã cập nhật thông tin', '1609989559', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3779', null, '1609923411', '', 'Hồ sơ #1609923411 đã cập nhật thông tin', '1609989586', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3780', null, '160992174224', '', 'Hồ sơ #160992174224 đã cập nhật thông tin', '1609989616', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3781', null, '160992174225', '', 'Hồ sơ #160992174225 đã cập nhật thông tin', '1609989643', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3782', null, '160992174225', '', 'Hồ sơ #160992174225 đã cập nhật thông tin', '1609989649', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3783', null, '160992174226', '', 'Hồ sơ #160992174226 đã cập nhật thông tin', '1609989707', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3784', null, '160992174227', '', 'Hồ sơ #160992174227 đã cập nhật thông tin', '1609989751', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3785', null, '160992174228', '', 'Hồ sơ #160992174228 đã cập nhật thông tin', '1609989798', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3786', null, '160992174229', '', 'Hồ sơ #160992174229 đã cập nhật thông tin', '1609989871', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3787', null, '160992174230', '', 'Hồ sơ #160992174230 đã cập nhật thông tin', '1609989906', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3788', null, '160992174231', '', 'Hồ sơ #160992174231 đã cập nhật thông tin', '1609989933', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3789', null, '160992174232', '', 'Hồ sơ #160992174232 đã cập nhật thông tin', '1609989963', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3790', null, '160992174233', '', 'Hồ sơ #160992174233 đã cập nhật thông tin', '1609990005', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3791', null, '1609922428', '', 'Hồ sơ #1609922428 đã cập nhật thông tin', '1609990028', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3792', null, '160992174235', '', 'Hồ sơ #160992174235 đã cập nhật thông tin', '1609990065', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3793', null, '160992174236', '', 'Hồ sơ #160992174236 đã cập nhật thông tin', '1609990095', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3794', null, '160992174237', '', 'Hồ sơ #160992174237 đã cập nhật thông tin', '1609990125', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3795', null, '160992174238', '', 'Hồ sơ #160992174238 đã cập nhật thông tin', '1609990167', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3796', null, '160992174239', '', 'Hồ sơ #160992174239 đã cập nhật thông tin', '1609990216', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3797', null, '160992174240', '', 'Hồ sơ #160992174240 đã cập nhật thông tin', '1609990249', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3798', null, '160992174241', '', 'Hồ sơ #160992174241 đã cập nhật thông tin', '1609990284', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3799', null, '1609923461', '', 'Hồ sơ #1609923461 đã cập nhật thông tin', '1609990299', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3800', null, '160992174242', '', 'Hồ sơ #160992174242 đã cập nhật thông tin', '1609990330', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3801', null, '160992174243', '', 'Hồ sơ #160992174243 đã cập nhật thông tin', '1609990354', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3802', null, '1609923505', '', 'Hồ sơ #1609923505 đã cập nhật thông tin', '1609990367', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3803', null, '160992174244', '', 'Hồ sơ #160992174244 đã cập nhật thông tin', '1609990396', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3804', null, '160992174245', '', 'Hồ sơ #160992174245 đã cập nhật thông tin', '1609990423', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3805', null, '160992174246', '', 'Hồ sơ #160992174246 đã cập nhật thông tin', '1609990455', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3806', null, '1609923557', '', 'Hồ sơ #1609923557 đã cập nhật thông tin', '1609990467', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3807', null, '160992174347', '', 'Hồ sơ #160992174347 đã cập nhật thông tin', '1609990509', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3808', null, '1609923592', '', 'Hồ sơ #1609923592 đã cập nhật thông tin', '1609990531', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3809', null, '160992174348', '', 'Hồ sơ #160992174348 đã cập nhật thông tin', '1609990556', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3810', null, '160992174349', '', 'Hồ sơ #160992174349 đã cập nhật thông tin', '1609990585', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3811', null, '160992174350', '', 'Hồ sơ #160992174350 đã cập nhật thông tin', '1609990628', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3812', null, '160992174351', '', 'Hồ sơ #160992174351 đã cập nhật thông tin', '1609990662', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3813', null, '160992174352', '', 'Hồ sơ #160992174352 đã cập nhật thông tin', '1609990694', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3814', null, '16099217421', '', 'Hồ sơ #16099217421 đã trúng tuyển', '1609990745', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3815', null, '16099217422', '', 'Hồ sơ #16099217422 đã trúng tuyển', '1609990748', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3816', null, '1609922828', '', 'Hồ sơ #1609922828 đã trúng tuyển', '1609990750', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3817', null, '16099217423', '', 'Hồ sơ #16099217423 đã trúng tuyển', '1609990751', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3818', null, '1609922884', '', 'Hồ sơ #1609922884 đã trúng tuyển', '1609990753', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3819', null, '1609923051', '', 'Hồ sơ #1609923051 đã trúng tuyển', '1609990754', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3820', null, '16099217424', '', 'Hồ sơ #16099217424 đã trúng tuyển', '1609990755', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3821', null, '1609923179', '', 'Hồ sơ #1609923179 đã trúng tuyển', '1609990757', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3822', null, '1609923219', '', 'Hồ sơ #1609923219 đã trúng tuyển', '1609990758', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3823', null, '16099217425', '', 'Hồ sơ #16099217425 đã trúng tuyển', '1609990759', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3824', null, '16099217426', '', 'Hồ sơ #16099217426 đã trúng tuyển', '1609990761', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3825', null, '16099217427', '', 'Hồ sơ #16099217427 đã trúng tuyển', '1609990762', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3826', null, '16099217428', '', 'Hồ sơ #16099217428 đã trúng tuyển', '1609990763', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3827', null, '16099217429', '', 'Hồ sơ #16099217429 đã trúng tuyển', '1609990764', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3828', null, '160992174210', '', 'Hồ sơ #160992174210 đã trúng tuyển', '1609990765', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3829', null, '160992174211', '', 'Hồ sơ #160992174211 đã trúng tuyển', '1609990767', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3830', null, '160992174212', '', 'Hồ sơ #160992174212 đã trúng tuyển', '1609990768', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3831', null, '160992174213', '', 'Hồ sơ #160992174213 đã trúng tuyển', '1609990769', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3832', null, '160992174214', '', 'Hồ sơ #160992174214 đã trúng tuyển', '1609990770', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3833', null, '160992174215', '', 'Hồ sơ #160992174215 đã trúng tuyển', '1609990771', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3834', null, '160992174216', '', 'Hồ sơ #160992174216 đã trúng tuyển', '1609990772', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3835', null, '160992174217', '', 'Hồ sơ #160992174217 đã trúng tuyển', '1609990773', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3836', null, '160992174218', '', 'Hồ sơ #160992174218 đã trúng tuyển', '1609990775', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3837', null, '1609923259', '', 'Hồ sơ #1609923259 đã trúng tuyển', '1609990776', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3838', null, '160992174219', '', 'Hồ sơ #160992174219 đã trúng tuyển', '1609990776', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3839', null, '160992174220', '', 'Hồ sơ #160992174220 đã trúng tuyển', '1609990777', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3840', null, '160992174221', '', 'Hồ sơ #160992174221 đã trúng tuyển', '1609990778', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3841', null, '1609923317', '', 'Hồ sơ #1609923317 đã trúng tuyển', '1609990779', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3842', null, '1609923371', '', 'Hồ sơ #1609923371 đã trúng tuyển', '1609990780', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3843', null, '160992174222', '', 'Hồ sơ #160992174222 đã trúng tuyển', '1609990781', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3844', null, '160992174223', '', 'Hồ sơ #160992174223 đã trúng tuyển', '1609990782', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3845', null, '1609923411', '', 'Hồ sơ #1609923411 đã trúng tuyển', '1609990783', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3846', null, '160992174224', '', 'Hồ sơ #160992174224 đã trúng tuyển', '1609990784', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3847', null, '160992174225', '', 'Hồ sơ #160992174225 đã trúng tuyển', '1609990785', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3848', null, '160992174226', '', 'Hồ sơ #160992174226 đã trúng tuyển', '1609990785', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3849', null, '160992174227', '', 'Hồ sơ #160992174227 đã trúng tuyển', '1609990786', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3850', null, '160992174228', '', 'Hồ sơ #160992174228 đã trúng tuyển', '1609990787', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3851', null, '160992174229', '', 'Hồ sơ #160992174229 đã trúng tuyển', '1609990788', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3852', null, '160992174230', '', 'Hồ sơ #160992174230 đã trúng tuyển', '1609990789', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3853', null, '160992174231', '', 'Hồ sơ #160992174231 đã trúng tuyển', '1609990790', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3854', null, '160992174232', '', 'Hồ sơ #160992174232 đã trúng tuyển', '1609990791', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3855', null, '160992174233', '', 'Hồ sơ #160992174233 đã trúng tuyển', '1609990792', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3856', null, '1609922428', '', 'Hồ sơ #1609922428 đã trúng tuyển', '1609990793', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3857', null, '160992174235', '', 'Hồ sơ #160992174235 đã trúng tuyển', '1609990794', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3858', null, '160992174236', '', 'Hồ sơ #160992174236 đã trúng tuyển', '1609990794', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3859', null, '160992174237', '', 'Hồ sơ #160992174237 đã trúng tuyển', '1609990795', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3860', null, '160992174238', '', 'Hồ sơ #160992174238 đã trúng tuyển', '1609990796', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3861', null, '160992174239', '', 'Hồ sơ #160992174239 đã trúng tuyển', '1609990797', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3862', null, '160992174240', '', 'Hồ sơ #160992174240 đã trúng tuyển', '1609990798', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3863', null, '160992174241', '', 'Hồ sơ #160992174241 đã trúng tuyển', '1609990799', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3864', null, '1609923461', '', 'Hồ sơ #1609923461 đã trúng tuyển', '1609990800', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3865', null, '160992174242', '', 'Hồ sơ #160992174242 đã trúng tuyển', '1609990801', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3866', null, '160992174243', '', 'Hồ sơ #160992174243 đã trúng tuyển', '1609990801', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3867', null, '1609923505', '', 'Hồ sơ #1609923505 đã trúng tuyển', '1609990802', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3868', null, '160992174244', '', 'Hồ sơ #160992174244 đã trúng tuyển', '1609990803', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3869', null, '160992174245', '', 'Hồ sơ #160992174245 đã trúng tuyển', '1609990804', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3870', null, '160992174246', '', 'Hồ sơ #160992174246 đã trúng tuyển', '1609990805', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3871', null, '1609923557', '', 'Hồ sơ #1609923557 đã trúng tuyển', '1609990806', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3872', null, '160992174347', '', 'Hồ sơ #160992174347 đã trúng tuyển', '1609990806', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3873', null, '1609923592', '', 'Hồ sơ #1609923592 đã trúng tuyển', '1609990809', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3874', null, '160992174348', '', 'Hồ sơ #160992174348 đã trúng tuyển', '1609990810', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3875', null, '160992174349', '', 'Hồ sơ #160992174349 đã trúng tuyển', '1609990811', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3876', null, '160992174350', '', 'Hồ sơ #160992174350 đã trúng tuyển', '1609990812', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3877', null, '160992174351', '', 'Hồ sơ #160992174351 đã trúng tuyển', '1609990813', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3878', null, '160992174352', '', 'Hồ sơ #160992174352 đã trúng tuyển', '1609990814', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3879', null, '16099217421', '20AUM116363', 'Hồ sơ #16099217421 đã nhập học', '1609990862', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3880', null, '16099217422', '20AUM116364', 'Hồ sơ #16099217422 đã nhập học', '1609990872', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3881', null, '16099217423', '20AUM116366', 'Hồ sơ #16099217423 đã nhập học', '1609990882', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3882', null, '16099217424', '20AUM116369', 'Hồ sơ #16099217424 đã nhập học', '1610006035', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3883', null, '16099217425', '20AUM116372', 'Hồ sơ #16099217425 đã nhập học', '1610006040', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3884', null, '16099217426', '20AUM116373', 'Hồ sơ #16099217426 đã nhập học', '1610006046', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3885', null, '16099217427', '20AUM116374', 'Hồ sơ #16099217427 đã nhập học', '1610006051', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3886', null, '16099217428', '20AUM116375', 'Hồ sơ #16099217428 đã nhập học', '1610006057', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3887', null, '16099217429', '20AUM116376', 'Hồ sơ #16099217429 đã nhập học', '1610006062', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3888', null, '160992174210', '20AUM116377', 'Hồ sơ #160992174210 đã nhập học', '1610006067', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3889', null, '160992174211', '20AUM116378', 'Hồ sơ #160992174211 đã nhập học', '1610006074', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3890', null, '160992174212', '20AUM116379', 'Hồ sơ #160992174212 đã nhập học', '1610006079', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3891', null, '160992174213', '20AUM116380', 'Hồ sơ #160992174213 đã nhập học', '1610006084', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3892', null, '160992174214', '20AUM116381', 'Hồ sơ #160992174214 đã nhập học', '1610006089', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3893', null, '160992174215', '20AUM116382', 'Hồ sơ #160992174215 đã nhập học', '1610006094', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3894', null, '160992174216', '20AUM116383', 'Hồ sơ #160992174216 đã nhập học', '1610006098', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3895', null, '160992174217', '20AUM116384', 'Hồ sơ #160992174217 đã nhập học', '1610006104', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3896', null, '160992174218', '20AUM116385', 'Hồ sơ #160992174218 đã nhập học', '1610006134', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3897', null, '160992174219', '20AUM116387', 'Hồ sơ #160992174219 đã nhập học', '1610006141', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3898', null, '160992174220', '20AUM116388', 'Hồ sơ #160992174220 đã nhập học', '1610006147', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3899', null, '160992174221', '20AUM116389', 'Hồ sơ #160992174221 đã nhập học', '1610006259', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3900', null, '160992174222', '20AUM116392', 'Hồ sơ #160992174222 đã nhập học', '1610006265', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3901', null, '160992174223', '20AUM116393', 'Hồ sơ #160992174223 đã nhập học', '1610006270', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3902', null, '160992174224', '20AUM116395', 'Hồ sơ #160992174224 đã nhập học', '1610006274', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3903', null, '160992174225', '20AUM116396', 'Hồ sơ #160992174225 đã nhập học', '1610006279', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3904', null, '160992174226', '20AUM116397', 'Hồ sơ #160992174226 đã nhập học', '1610006284', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3905', null, '160992174227', '20AUM116398', 'Hồ sơ #160992174227 đã nhập học', '1610006289', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3906', null, '160992174228', '20AUM116399', 'Hồ sơ #160992174228 đã nhập học', '1610006295', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3907', null, '160992174229', '20AUM116400', 'Hồ sơ #160992174229 đã nhập học', '1610006300', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3908', null, '160992174230', '20AUM116401', 'Hồ sơ #160992174230 đã nhập học', '1610006310', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3909', null, '160992174231', '20AUM116402', 'Hồ sơ #160992174231 đã nhập học', '1610006314', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3910', null, '160992174232', '20AUM116403', 'Hồ sơ #160992174232 đã nhập học', '1610006319', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3911', null, '160992174233', '20AUM116404', 'Hồ sơ #160992174233 đã nhập học', '1610006324', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3912', null, '160992174235', '20AUM116406', 'Hồ sơ #160992174235 đã nhập học', '1610006328', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3913', null, '160992174236', '20AUM116407', 'Hồ sơ #160992174236 đã nhập học', '1610006333', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3914', null, '160992174237', '20AUM116408', 'Hồ sơ #160992174237 đã nhập học', '1610006342', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3915', null, '160992174238', '20AUM116409', 'Hồ sơ #160992174238 đã nhập học', '1610006348', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3916', null, '160992174239', '20AUM116410', 'Hồ sơ #160992174239 đã nhập học', '1610006356', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3917', null, '160992174240', '20AUM116411', 'Hồ sơ #160992174240 đã nhập học', '1610006361', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3918', null, '160992174241', '20AUM116412', 'Hồ sơ #160992174241 đã nhập học', '1610006375', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3919', null, '160992174242', '20AUM116414', 'Hồ sơ #160992174242 đã nhập học', '1610006382', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3920', null, '160992174243', '20AUM116415', 'Hồ sơ #160992174243 đã nhập học', '1610006387', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3921', null, '160992174244', '20AUM116417', 'Hồ sơ #160992174244 đã nhập học', '1610006392', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3922', null, '160992174245', '20AUM116418', 'Hồ sơ #160992174245 đã nhập học', '1610006397', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3923', null, '160992174246', '20AUM116419', 'Hồ sơ #160992174246 đã nhập học', '1610006402', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3924', null, '160992174347', '20AUM116421', 'Hồ sơ #160992174347 đã nhập học', '1610006407', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3925', null, '160992174348', '20AUM116423', 'Hồ sơ #160992174348 đã nhập học', '1610006411', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3926', null, '160992174349', '20AUM116424', 'Hồ sơ #160992174349 đã nhập học', '1610006415', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3927', null, '160992174350', '20AUM116425', 'Hồ sơ #160992174350 đã nhập học', '1610006420', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3928', null, '160992174351', '20AUM116426', 'Hồ sơ #160992174351 đã nhập học', '1610006424', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3929', null, '160992174352', '20AUM116427', 'Hồ sơ #160992174352 đã nhập học', '1610006429', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3930', null, '1609922428', '20AUM116405', 'Hồ sơ #1609922428 đã nhập học', '1610006433', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3931', null, '1609922828', '20AUM116365', 'Hồ sơ #1609922828 đã nhập học', '1610006437', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3932', null, '1609922884', '20AUM116367', 'Hồ sơ #1609922884 đã nhập học', '1610006442', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3933', null, '1609923051', '20AUM116368', 'Hồ sơ #1609923051 đã nhập học', '1610006446', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3934', null, '1609923179', '20AUM116370', 'Hồ sơ #1609923179 đã nhập học', '1610006451', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3935', null, '1609923219', '20AUM116371', 'Hồ sơ #1609923219 đã nhập học', '1610006455', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3936', null, '1609923259', '20AUM116386', 'Hồ sơ #1609923259 đã nhập học', '1610006459', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3937', null, '1609923317', '20AUM116390', 'Hồ sơ #1609923317 đã nhập học', '1610006463', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3938', null, '1609923371', '20AUM116391', 'Hồ sơ #1609923371 đã nhập học', '1610006467', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3939', null, '1609923411', '20AUM116394', 'Hồ sơ #1609923411 đã nhập học', '1610006471', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3940', null, '1609923461', '20AUM116413', 'Hồ sơ #1609923461 đã nhập học', '1610006475', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3941', null, '1609923505', '20AUM116416', 'Hồ sơ #1609923505 đã nhập học', '1610006479', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3942', null, '1609923557', '20AUM116420', 'Hồ sơ #1609923557 đã nhập học', '1610006484', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3943', null, '1609923592', '20AUM116422', 'Hồ sơ #1609923592 đã nhập học', '1610006488', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3944', null, null, '20AUM116363', 'Mã SV #20AUM116363 đã được thêm vào lớp el21_lkt11', '1610006637', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3945', null, null, '20AUM116364', 'Mã SV #20AUM116364 đã được thêm vào lớp el21_lkt11', '1610006647', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3946', null, null, '20AUM116366', 'Mã SV #20AUM116366 đã được thêm vào lớp el21_lkt11', '1610006656', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3947', null, null, '20AUM116369', 'Mã SV #20AUM116369 đã được thêm vào lớp el21_lkt11', '1610006667', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3948', null, null, '20AUM116372', 'Mã SV #20AUM116372 đã được thêm vào lớp el21_lkt11', '1610006674', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3949', null, null, '20AUM116373', 'Mã SV #20AUM116373 đã được thêm vào lớp el21_lkt11', '1610006799', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3950', null, null, '20AUM116374', 'Mã SV #20AUM116374 đã được thêm vào lớp el21_lkt11', '1610006807', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3951', null, null, '20AUM116375', 'Mã SV #20AUM116375 đã được thêm vào lớp el21_lkt11', '1610006816', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3952', null, null, '20AUM116376', 'Mã SV #20AUM116376 đã được thêm vào lớp el21_lkt11', '1610006824', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3953', null, null, '20AUM116377', 'Mã SV #20AUM116377 đã được thêm vào lớp el21_lkt11', '1610006831', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3954', null, null, '20AUM116378', 'Mã SV #20AUM116378 đã được thêm vào lớp el21_lkt11', '1610006861', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3955', null, null, '20AUM116379', 'Mã SV #20AUM116379 đã được thêm vào lớp el21_lkt11', '1610006868', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3956', null, null, '20AUM116380', 'Mã SV #20AUM116380 đã được thêm vào lớp el21_lkt11', '1610006876', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3957', null, null, '20AUM116381', 'Mã SV #20AUM116381 đã được thêm vào lớp el21_lkt11', '1610006984', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3958', null, null, '20AUM116382', 'Mã SV #20AUM116382 đã được thêm vào lớp el21_lkt11', '1610006993', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3959', null, null, '20AUM116383', 'Mã SV #20AUM116383 đã được thêm vào lớp el21_lkt11', '1610007000', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3960', null, null, '20AUM116384', 'Mã SV #20AUM116384 đã được thêm vào lớp el21_lkt11', '1610007008', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3961', null, null, '20AUM116385', 'Mã SV #20AUM116385 đã được thêm vào lớp el21_lkt11', '1610007015', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3962', null, null, '20AUM116387', 'Mã SV #20AUM116387 đã được thêm vào lớp el21_lkt11', '1610007025', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3963', null, null, '20AUM116388', 'Mã SV #20AUM116388 đã được thêm vào lớp el21_lkt11', '1610007034', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3964', null, null, '20AUM116389', 'Mã SV #20AUM116389 đã được thêm vào lớp el21_lkt11', '1610007041', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3965', null, null, '20AUM116392', 'Mã SV #20AUM116392 đã được thêm vào lớp el21_lkt11', '1610007048', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3966', null, null, '20AUM116393', 'Mã SV #20AUM116393 đã được thêm vào lớp el21_lkt11', '1610007056', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3967', null, null, '20AUM116395', 'Mã SV #20AUM116395 đã được thêm vào lớp el21_lkt11', '1610007064', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3968', null, null, '20AUM116396', 'Mã SV #20AUM116396 đã được thêm vào lớp el21_lkt11', '1610007083', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3969', null, null, '20AUM116397', 'Mã SV #20AUM116397 đã được thêm vào lớp el21_lkt11', '1610007090', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3970', null, null, '20AUM116398', 'Mã SV #20AUM116398 đã được thêm vào lớp el21_lkt11', '1610007097', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3971', null, null, '20AUM116399', 'Mã SV #20AUM116399 đã được thêm vào lớp el21_lkt11', '1610007104', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3972', null, null, '20AUM116400', 'Mã SV #20AUM116400 đã được thêm vào lớp el21_lkt11', '1610007111', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3973', null, null, '20AUM116401', 'Mã SV #20AUM116401 đã được thêm vào lớp el21_lkt11', '1610007118', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3974', null, null, '20AUM116402', 'Mã SV #20AUM116402 đã được thêm vào lớp el21_lkt11', '1610007125', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3975', null, null, '20AUM116403', 'Mã SV #20AUM116403 đã được thêm vào lớp el21_lkt11', '1610007132', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3976', null, null, '20AUM116404', 'Mã SV #20AUM116404 đã được thêm vào lớp el21_lkt11', '1610007144', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3977', null, null, '20AUM116406', 'Mã SV #20AUM116406 đã được thêm vào lớp el21_lkt11', '1610007164', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3978', null, null, '20AUM116407', 'Mã SV #20AUM116407 đã được thêm vào lớp el21_lkt11', '1610007171', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3979', null, null, '20AUM116408', 'Mã SV #20AUM116408 đã được thêm vào lớp el21_lkt11', '1610007178', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3980', null, null, '20AUM116409', 'Mã SV #20AUM116409 đã được thêm vào lớp el21_lkt11', '1610007184', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3981', null, null, '20AUM116410', 'Mã SV #20AUM116410 đã được thêm vào lớp el21_lkt11', '1610007191', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3982', null, null, '20AUM116411', 'Mã SV #20AUM116411 đã được thêm vào lớp el21_lkt11', '1610007197', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3983', null, null, '20AUM116412', 'Mã SV #20AUM116412 đã được thêm vào lớp el21_lkt11', '1610007204', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3984', null, null, '20AUM116414', 'Mã SV #20AUM116414 đã được thêm vào lớp el21_lkt11', '1610007211', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3985', null, null, '20AUM116415', 'Mã SV #20AUM116415 đã được thêm vào lớp el21_lkt11', '1610007218', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3986', null, null, '20AUM116417', 'Mã SV #20AUM116417 đã được thêm vào lớp el21_lkt11', '1610007224', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3987', null, null, '20AUM116418', 'Mã SV #20AUM116418 đã được thêm vào lớp el21_lkt11', '1610007234', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3988', null, null, '20AUM116419', 'Mã SV #20AUM116419 đã được thêm vào lớp el21_lkt11', '1610007241', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3989', null, null, '20AUM116421', 'Mã SV #20AUM116421 đã được thêm vào lớp el21_lkt11', '1610007248', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3990', null, null, '20AUM116423', 'Mã SV #20AUM116423 đã được thêm vào lớp el21_lkt11', '1610007255', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3991', null, null, '20AUM116424', 'Mã SV #20AUM116424 đã được thêm vào lớp el21_lkt11', '1610007262', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3992', null, null, '20AUM116425', 'Mã SV #20AUM116425 đã được thêm vào lớp el21_lkt11', '1610007269', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3993', null, null, '20AUM116426', 'Mã SV #20AUM116426 đã được thêm vào lớp el21_lkt11', '1610007276', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3994', null, null, '20AUM116427', 'Mã SV #20AUM116427 đã được thêm vào lớp el21_lkt11', '1610007283', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3995', null, null, '20AUM116405', 'Mã SV #20AUM116405 đã được thêm vào lớp el21_lkt11', '1610007290', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3996', null, null, '20AUM116365', 'Mã SV #20AUM116365 đã được thêm vào lớp el21_lkt11', '1610007302', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3997', null, null, '20AUM116367', 'Mã SV #20AUM116367 đã được thêm vào lớp el21_lkt11', '1610007309', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3998', null, null, '20AUM116368', 'Mã SV #20AUM116368 đã được thêm vào lớp el21_lkt11', '1610007316', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('3999', null, null, '20AUM116370', 'Mã SV #20AUM116370 đã được thêm vào lớp el21_lkt11', '1610007323', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4000', null, null, '20AUM116371', 'Mã SV #20AUM116371 đã được thêm vào lớp el21_lkt11', '1610007329', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4001', null, null, '20AUM116386', 'Mã SV #20AUM116386 đã được thêm vào lớp el21_lkt11', '1610007336', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4002', null, null, '20AUM116390', 'Mã SV #20AUM116390 đã được thêm vào lớp el21_lkt11', '1610007344', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4003', null, null, '20AUM116391', 'Mã SV #20AUM116391 đã được thêm vào lớp el21_lkt11', '1610007353', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4004', null, null, '20AUM116394', 'Mã SV #20AUM116394 đã được thêm vào lớp el21_lkt11', '1610007360', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4005', null, null, '20AUM116413', 'Mã SV #20AUM116413 đã được thêm vào lớp el21_lkt11', '1610007367', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4006', null, null, '20AUM116416', 'Mã SV #20AUM116416 đã được thêm vào lớp el21_lkt11', '1610007373', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4007', null, null, '20AUM116420', 'Mã SV #20AUM116420 đã được thêm vào lớp el21_lkt11', '1610007380', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4008', null, null, '20AUM116422', 'Mã SV #20AUM116422 đã được thêm vào lớp el21_lkt11', '1610007387', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4009', null, '1610175409', '', 'Hồ sơ #1610175409 (Lê Bá Anh) tạo mới thành công', '1610175452', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4010', null, '1610175409', '', 'Hồ sơ #1610175409 đã cập nhật thông tin', '1610175465', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4011', null, '1610175471', '', 'Hồ sơ #1610175471 (Đặng Nguyễn Hải Đăng) tạo mới thành công', '1610175493', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4012', null, '1610175471', '', 'Hồ sơ #1610175471 đã cập nhật thông tin', '1610175501', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4013', null, '1610175509', '', 'Hồ sơ #1610175509 (Lê Thị Bích Hồng) tạo mới thành công', '1610175540', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4014', null, '1610175509', '', 'Hồ sơ #1610175509 đã cập nhật thông tin', '1610175549', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4015', null, '1610175554', '', 'Hồ sơ #1610175554 (Hồ Thị Thanh Huyền) tạo mới thành công', '1610175589', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4016', null, '1610175554', '', 'Hồ sơ #1610175554 đã cập nhật thông tin', '1610175597', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4017', null, '1610175602', '', 'Hồ sơ #1610175602 (Lê Phước Thắng) tạo mới thành công', '1610175633', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4018', null, '1610175602', '', 'Hồ sơ #1610175602 đã cập nhật thông tin', '1610175641', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4019', null, '1610175647', '', 'Hồ sơ #1610175647 (Phạm Xuân Trường) tạo mới thành công', '1610175674', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4020', null, '1610175647', '', 'Hồ sơ #1610175647 đã cập nhật thông tin', '1610175683', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4021', null, '1610175688', '', 'Hồ sơ #1610175688 (Đoàn Phan Vũ) tạo mới thành công', '1610175715', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4022', null, '1610175688', '', 'Hồ sơ #1610175688 đã cập nhật thông tin', '1610175724', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4023', null, '1610175688', '', 'Hồ sơ #1610175688 đã cập nhật thông tin', '1610175776', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4024', null, '1610175782', '', 'Hồ sơ #1610175782 (Nguyễn Thị Thuỳ Dung) tạo mới thành công', '1610175810', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4025', null, '1610175782', '', 'Hồ sơ #1610175782 đã cập nhật thông tin', '1610175818', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4026', null, '1610175847', '', 'Hồ sơ #1610175847 (Nguyễn Bảo Long) tạo mới thành công', '1610176202', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4027', null, '1610175847', '', 'Hồ sơ #1610175847 đã cập nhật thông tin', '1610176210', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4028', null, '1610176218', '', 'Hồ sơ #1610176218 (Trần Hồng Phong) tạo mới thành công', '1610176246', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4029', null, '1610176218', '', 'Hồ sơ #1610176218 đã cập nhật thông tin', '1610176254', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4030', null, '1610176263', '', 'Hồ sơ #1610176263 (Đào Kim Chi) tạo mới thành công', '1610176294', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4031', null, '1610176263', '', 'Hồ sơ #1610176263 đã cập nhật thông tin', '1610176304', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4032', null, '1610176310', '', 'Hồ sơ #1610176310 (Đặng Thu Hiền) tạo mới thành công', '1610176349', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4033', null, '1610176310', '', 'Hồ sơ #1610176310 đã cập nhật thông tin', '1610176376', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4034', null, '1610176382', '', 'Hồ sơ #1610176382 (Lê Văn Hoà) tạo mới thành công', '1610176410', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4035', null, '1610176382', '', 'Hồ sơ #1610176382 đã cập nhật thông tin', '1610176418', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4036', null, '1610176382', '', 'Hồ sơ #1610176382 đã cập nhật thông tin', '1610176452', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4037', null, '1610176460', '', 'Hồ sơ #1610176460 (Trần Hoàng Lam) tạo mới thành công', '1610176485', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4038', null, '1610176460', '', 'Hồ sơ #1610176460 đã cập nhật thông tin', '1610176493', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4039', null, '1610176498', '', 'Hồ sơ #1610176498 (Crujang Cơi Long) tạo mới thành công', '1610176524', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4040', null, '1610176498', '', 'Hồ sơ #1610176498 đã cập nhật thông tin', '1610176532', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4041', null, '1610176544', '', 'Hồ sơ #1610176544 (Nguyễn Thị Lợi) tạo mới thành công', '1610176579', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4042', null, '1610176544', '', 'Hồ sơ #1610176544 đã cập nhật thông tin', '1610176590', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4043', null, '1610176624', '', 'Hồ sơ #1610176624 (K\' Mai Ly) tạo mới thành công', '1610176878', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4044', null, '1610176624', '', 'Hồ sơ #1610176624 đã cập nhật thông tin', '1610176886', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4045', null, '1610176892', '', 'Hồ sơ #1610176892 (Nguyễn Thị Trang Nhung) tạo mới thành công', '1610177493', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4046', null, '1610176892', '', 'Hồ sơ #1610176892 đã cập nhật thông tin', '1610177500', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4047', null, '1610177507', '', 'Hồ sơ #1610177507 (Nguyễn Mạnh Tuân) tạo mới thành công', '1610177543', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4048', null, '1610177507', '', 'Hồ sơ #1610177507 đã cập nhật thông tin', '1610177550', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4049', null, '1610177575', '', 'Hồ sơ #1610177575 (Ya Tứ) tạo mới thành công', '1610177599', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4050', null, '1610177575', '', 'Hồ sơ #1610177575 đã cập nhật thông tin', '1610177607', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4051', null, '1610177775', '', 'Hồ sơ #1610177775 (Đỗ Thị Ngọc Thảo) tạo mới thành công', '1610177799', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4052', null, '1610177775', '', 'Hồ sơ #1610177775 đã cập nhật thông tin', '1610177807', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4053', null, '1610177813', '', 'Hồ sơ #1610177813 (Đinh Tường Vi) tạo mới thành công', '1610177845', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4054', null, '1610177813', '', 'Hồ sơ #1610177813 đã cập nhật thông tin', '1610177860', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4055', null, '1610177872', '', 'Hồ sơ #1610177872 (Huỳnh Đình Thịnh) tạo mới thành công', '1610177905', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4056', null, '1610177872', '', 'Hồ sơ #1610177872 đã cập nhật thông tin', '1610177913', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4057', null, '1610177920', '', 'Hồ sơ #1610177920 (Giang Chí Hào) tạo mới thành công', '1610177942', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4058', null, '1610177920', '', 'Hồ sơ #1610177920 đã cập nhật thông tin', '1610177950', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4059', null, '1610178041', '', 'Hồ sơ #1610178041 (Đỗ Sĩ Kiêm) tạo mới thành công', '1610178605', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4060', null, '1610178041', '', 'Hồ sơ #1610178041 đã cập nhật thông tin', '1610178616', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4061', null, '1610178625', '', 'Hồ sơ #1610178625 (Nguyễn Thảo Vy) tạo mới thành công', '1610178846', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4062', null, '1610178625', '', 'Hồ sơ #1610178625 đã cập nhật thông tin', '1610178856', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4063', null, '1610178937', '', 'Hồ sơ #1610178937 (Tạ Văn Tuấn) tạo mới thành công', '1610178963', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4064', null, '1610178937', '', 'Hồ sơ #1610178937 đã cập nhật thông tin', '1610178978', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4065', null, '1610175409', '', 'Hồ sơ #1610175409 đã trúng tuyển', '1610179039', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4066', null, '1610175471', '', 'Hồ sơ #1610175471 đã trúng tuyển', '1610179041', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4067', null, '1610175509', '', 'Hồ sơ #1610175509 đã trúng tuyển', '1610179042', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4068', null, '1610175554', '', 'Hồ sơ #1610175554 đã trúng tuyển', '1610179043', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4069', null, '1610175602', '', 'Hồ sơ #1610175602 đã trúng tuyển', '1610179044', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4070', null, '1610175647', '', 'Hồ sơ #1610175647 đã trúng tuyển', '1610179045', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4071', null, '1610175688', '', 'Hồ sơ #1610175688 đã trúng tuyển', '1610179046', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4072', null, '1610175782', '', 'Hồ sơ #1610175782 đã trúng tuyển', '1610179048', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4073', null, '1610175847', '', 'Hồ sơ #1610175847 đã trúng tuyển', '1610179050', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4074', null, '1610176218', '', 'Hồ sơ #1610176218 đã trúng tuyển', '1610179051', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4075', null, '1610176263', '', 'Hồ sơ #1610176263 đã trúng tuyển', '1610179052', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4076', null, '1610176310', '', 'Hồ sơ #1610176310 đã trúng tuyển', '1610179053', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4077', null, '1610176382', '', 'Hồ sơ #1610176382 đã trúng tuyển', '1610179054', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4078', null, '1610176460', '', 'Hồ sơ #1610176460 đã trúng tuyển', '1610179056', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4079', null, '1610176498', '', 'Hồ sơ #1610176498 đã trúng tuyển', '1610179057', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4080', null, '1610176544', '', 'Hồ sơ #1610176544 đã trúng tuyển', '1610179058', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4081', null, '1610176624', '', 'Hồ sơ #1610176624 đã trúng tuyển', '1610179060', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4082', null, '1610176892', '', 'Hồ sơ #1610176892 đã trúng tuyển', '1610179061', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4083', null, '1610177507', '', 'Hồ sơ #1610177507 đã trúng tuyển', '1610179065', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4084', null, '1610178937', '', 'Hồ sơ #1610178937 đã trúng tuyển', '1610179068', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4085', null, '1610177575', '', 'Hồ sơ #1610177575 đã trúng tuyển', '1610179071', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4086', null, '1610177775', '', 'Hồ sơ #1610177775 đã trúng tuyển', '1610179072', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4087', null, '1610177813', '', 'Hồ sơ #1610177813 đã trúng tuyển', '1610179073', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4088', null, '1610177872', '', 'Hồ sơ #1610177872 đã trúng tuyển', '1610179074', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4089', null, '1610177920', '', 'Hồ sơ #1610177920 đã trúng tuyển', '1610179074', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4090', null, '1610178041', '', 'Hồ sơ #1610178041 đã trúng tuyển', '1610179075', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4091', null, '1610178625', '', 'Hồ sơ #1610178625 đã trúng tuyển', '1610179076', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4092', null, null, '20AUM114271', '#20AUM114271 đăng ký thi lại.', '1610440734', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4093', null, '', '', '#20AUM114271 KQ lần 2: Không đạt môn MC02', '1610440750', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4094', null, null, '20AUM116343', '#20AUM116343 đăng ký thi lại.', '1610440949', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4095', null, '1610175409', '20AUM116428', 'Hồ sơ #1610175409 đã nhập học', '1610936527', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4096', null, '1610175471', '20AUM116429', 'Hồ sơ #1610175471 đã nhập học', '1610936537', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4097', null, '1610175509', '20AUM116430', 'Hồ sơ #1610175509 đã nhập học', '1610936547', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4098', null, '1610175554', '20AUM116431', 'Hồ sơ #1610175554 đã nhập học', '1610936555', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4099', null, '1610175602', '20AUM116432', 'Hồ sơ #1610175602 đã nhập học', '1610936561', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4100', null, '1610175647', '20AUM116433', 'Hồ sơ #1610175647 đã nhập học', '1610936567', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4101', null, '1610175688', '20AUM116434', 'Hồ sơ #1610175688 đã nhập học', '1610936573', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4102', null, '1610175782', '20AUM116435', 'Hồ sơ #1610175782 đã nhập học', '1610936580', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4103', null, '1610175847', '20AUM116436', 'Hồ sơ #1610175847 đã nhập học', '1610936585', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4104', null, '1610176218', '20AUM116437', 'Hồ sơ #1610176218 đã nhập học', '1610936591', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4105', null, '1610176263', '20AUM116438', 'Hồ sơ #1610176263 đã nhập học', '1610936598', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4106', null, '1610176310', '20AUM116439', 'Hồ sơ #1610176310 đã nhập học', '1610936604', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4107', null, '1610176382', '20AUM116440', 'Hồ sơ #1610176382 đã nhập học', '1610936609', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4108', null, '1610176460', '20AUM116441', 'Hồ sơ #1610176460 đã nhập học', '1610936616', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4109', null, '1610176498', '20AUM116442', 'Hồ sơ #1610176498 đã nhập học', '1610936623', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4110', null, '1610176544', '20AUM116443', 'Hồ sơ #1610176544 đã nhập học', '1610936631', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4111', null, '1610176624', '20AUM116444', 'Hồ sơ #1610176624 đã nhập học', '1610936643', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4112', null, '1610176892', '20AUM116445', 'Hồ sơ #1610176892 đã nhập học', '1610936690', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4113', null, '1610177507', '20AUM116446', 'Hồ sơ #1610177507 đã nhập học', '1610936697', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4114', null, '1610177575', '20AUM116447', 'Hồ sơ #1610177575 đã nhập học', '1610936705', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4115', null, '1610177775', '20AUM116448', 'Hồ sơ #1610177775 đã nhập học', '1610936711', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4116', null, '1610177813', '20AUM116449', 'Hồ sơ #1610177813 đã nhập học', '1610936717', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4117', null, '1610177872', '20AUM116450', 'Hồ sơ #1610177872 đã nhập học', '1610936723', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4118', null, '1610177920', '20AUM116451', 'Hồ sơ #1610177920 đã nhập học', '1610936729', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4119', null, '1610178041', '20AUM116452', 'Hồ sơ #1610178041 đã nhập học', '1610936735', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4120', null, '1610178625', '20AUM116453', 'Hồ sơ #1610178625 đã nhập học', '1610936741', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4121', null, '1610178937', '20AUM116454', 'Hồ sơ #1610178937 đã nhập học', '1610936748', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4122', null, null, '20AUM116428', 'Mã SV #20AUM116428 đã được thêm vào lớp el3_lkt11', '1610936875', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4123', null, null, '20AUM116429', 'Mã SV #20AUM116429 đã được thêm vào lớp el3_lkt11', '1610937158', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4124', null, null, '20AUM116430', 'Mã SV #20AUM116430 đã được thêm vào lớp el3_lkt11', '1610937170', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4125', null, null, '20AUM116431', 'Mã SV #20AUM116431 đã được thêm vào lớp el3_lkt11', '1610937179', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4126', null, null, '20AUM116432', 'Mã SV #20AUM116432 đã được thêm vào lớp el3_lkt11', '1610937249', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4127', null, null, '20AUM116433', 'Mã SV #20AUM116433 đã được thêm vào lớp el3_lkt11', '1610937273', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4128', null, null, '20AUM116434', 'Mã SV #20AUM116434 đã được thêm vào lớp el3_lkt11', '1610937283', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4129', null, null, '20AUM116435', 'Mã SV #20AUM116435 đã được thêm vào lớp el3_lkt11', '1610937293', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4130', null, null, '20AUM116436', 'Mã SV #20AUM116436 đã được thêm vào lớp el3_lkt11', '1610937303', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4131', null, null, '20AUM116437', 'Mã SV #20AUM116437 đã được thêm vào lớp el3_lkt11', '1610937327', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4132', null, null, '20AUM116438', 'Mã SV #20AUM116438 đã được thêm vào lớp el3_lkt11', '1610937336', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4133', null, null, '20AUM116439', 'Mã SV #20AUM116439 đã được thêm vào lớp el3_lkt11', '1610937351', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4134', null, null, '20AUM116440', 'Mã SV #20AUM116440 đã được thêm vào lớp el3_lkt11', '1610937360', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4135', null, null, '20AUM116441', 'Mã SV #20AUM116441 đã được thêm vào lớp el3_lkt11', '1610937373', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4136', null, null, '20AUM116442', 'Mã SV #20AUM116442 đã được thêm vào lớp el3_lkt11', '1610937383', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4137', null, null, '20AUM116443', 'Mã SV #20AUM116443 đã được thêm vào lớp el3_lkt11', '1610937392', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4138', null, null, '20AUM116444', 'Mã SV #20AUM116444 đã được thêm vào lớp el3_lkt11', '1610937440', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4139', null, null, '20AUM116445', 'Mã SV #20AUM116445 đã được thêm vào lớp el3_lkt11', '1610937449', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4140', null, null, '20AUM116446', 'Mã SV #20AUM116446 đã được thêm vào lớp el3_lkt11', '1610937459', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4141', null, null, '20AUM116447', 'Mã SV #20AUM116447 đã được thêm vào lớp el3_lkt11', '1610937467', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4142', null, null, '20AUM116448', 'Mã SV #20AUM116448 đã được thêm vào lớp el3_lkt11', '1610937478', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4143', null, null, '20AUM116449', 'Mã SV #20AUM116449 đã được thêm vào lớp el3_lkt11', '1610937490', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4144', null, null, '20AUM116450', 'Mã SV #20AUM116450 đã được thêm vào lớp el3_lkt11', '1610937499', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4145', null, null, '20AUM116451', 'Mã SV #20AUM116451 đã được thêm vào lớp el3_lkt11', '1610937508', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4146', null, null, '20AUM116452', 'Mã SV #20AUM116452 đã được thêm vào lớp el3_lkt11', '1610937517', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4147', null, null, '20AUM116453', 'Mã SV #20AUM116453 đã được thêm vào lớp el3_lkt11', '1610937526', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4148', null, null, '20AUM116454', 'Mã SV #20AUM116454 đã được thêm vào lớp el3_lkt11', '1610937535', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4149', null, '1610940369', '', 'Hồ sơ #1610940369 (Nguyễn Văn Bình) tạo mới thành công', '1610940706', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4150', null, '1610940369', '', 'Hồ sơ #1610940369 đã cập nhật thông tin', '1610940719', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4151', null, '1610940726', '', 'Hồ sơ #1610940726 (Sùng Thị Công) tạo mới thành công', '1610940758', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4152', null, '1610940726', '', 'Hồ sơ #1610940726 đã cập nhật thông tin', '1610940772', 'admindemo', '0');
INSERT INTO `tbl_notify` VALUES ('4153', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1615363889', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4154', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824489', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4155', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824492', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4156', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824565', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4157', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824697', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4158', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824738', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4159', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824754', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4160', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1615824772', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4161', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1615824772', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4162', null, '1610940726', '', 'Hồ sơ #1610940726 hủy trúng tuyển', '1615824878', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4163', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1615825071', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4164', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1615825071', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4165', null, '159980920118', '20AUM116303', 'Thêm khoản học phí: test, số tiền 1,500,000 VNĐ', '1615830704', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4166', null, null, '20AUM116303', 'Xóa danh mục học phí test', '1615830717', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4167', null, '159980920118', '20AUM116303', 'Đã đóng 6,230,000 VNĐ', '1615830738', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4168', null, '159980920111', '20AUM116296', 'Đã đóng 300,000 VNĐ', '1615830778', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4169', null, '1610940726', '', 'Hồ sơ #1610940726 đăng ký ngành thành công', '1616469760', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4170', null, '1599788697', '', 'Hồ sơ #1599788697 đăng ký ngành thành công', '1616488717', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4171', null, '1599788697', '', 'Hồ sơ #1599788697 đăng ký ngành thành công', '1616488724', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4172', null, '1599788697', '', 'Hồ sơ #1599788697 đã trúng tuyển', '1616491327', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4173', null, '1599788697', '20AUM114271', 'Hồ sơ #1599788697 đã nhập học', '1616491368', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4174', null, null, '20AUM114271', 'Mã SV #20AUM114271 đã được thêm vào lớp el1_qtkd11', '1616493672', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4175', null, null, '20AUM114271', 'Mã SV #20AUM114271 đã được thêm vào lớp el21_lkt11', '1616493682', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4176', null, null, '20AUM114271', 'Mã SV #20AUM114271 đã được thêm vào lớp aa123', '1616493690', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4177', null, '1599788697', '20AUM114271', 'Đã đóng 14,380,000 VNĐ', '1616554837', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4178', null, null, '20AUM114271', 'Xóa danh mục học phí Chủ nghĩa xã hội khoa học', '1616560632', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4179', null, '1599788697', '20AUM114271', 'Thêm khoản học phí: Test, số tiền 100,000 VNĐ', '1616641824', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4180', null, '', '20AUM114271', 'Đã đóng  VNĐ', '1616646237', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4181', null, '', '20AUM114271', 'Đã đóng  VNĐ', '1616646883', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4182', null, '', '20AUM114271', 'Đã đóng  VNĐ', '1616646906', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4183', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647418', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4184', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647454', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4185', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647543', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4186', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647548', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4187', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647577', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4188', null, '', '20AUM114271', 'Thêm khoản học phí: , số tiền 0 VNĐ', '1616647587', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4189', null, '', '20AUM114271', 'Đã đóng 100,000 VNĐ', '1616647766', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4190', null, '1599788697', '20AUM114271', 'Đã đóng 100,000 VNĐ', '1616659975', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4191', null, '1599788697', '20AUM114271', 'Đã đóng 200,000 VNĐ', '1616660241', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4192', null, '1599788697', '20AUM114271', 'Đã đóng 200,000 VNĐ', '1616660312', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4193', null, '1599788697', '20AUM114271', 'Đã đóng 200,000 VNĐ', '1616660312', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4194', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660426', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4195', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660430', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4196', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660436', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4197', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660440', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4198', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660445', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4199', null, null, '20AUM114271', 'Xóa danh mục học phí ', '1616660450', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4200', null, '1599788697', '20AUM114271', 'Đã đóng 150,000 VNĐ', '1616668953', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4201', null, '1599788697', '20AUM114271', 'Đã đóng 300,000 VNĐ', '1616669281', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4202', null, '1599788697', '20AUM114271', 'Đã đóng 1 VNĐ', '1616669429', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4203', null, '1599788697', '20AUM114271', 'Đã đóng 1 VNĐ', '1616669557', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4204', null, '1599788697', '20AUM114271', 'Đã đóng 12 VNĐ', '1616669561', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4205', null, '1599788697', '20AUM114271', 'Đã đóng 1 VNĐ', '1616670011', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4206', null, '1599788697', '20AUM114271', 'Đã đóng 555 VNĐ', '1616670029', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4207', null, '1599788697', '20AUM114271', 'Đã đóng 1,000,000 VNĐ', '1616670169', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4208', null, null, '20AUM114271', '#20AUM114271 cập nhật điểm: chuyên cần (10) điểm kiểm tra (9) điểm thi (7)', '1616672624', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4209', null, null, '20AUM114271', '#20AUM114271 cập nhật điểm: chuyên cần (10) điểm kiểm tra (9) điểm thi (7)', '1616672627', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4210', null, null, '20AUM114271', '#20AUM114271 cập nhật điểm: chuyên cần (9) điểm kiểm tra (10) điểm thi (8)', '1616731417', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4211', null, null, '20AUM114271', '#20AUM114271 cập nhật điểm: chuyên cần (10) điểm kiểm tra (9) điểm thi (7)', '1616731450', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4212', null, null, '20AUM114271', 'Xóa danh mục học phí Test', '1616753603', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4213', null, '1599788697', '', 'Hồ sơ #1599788697 đánh SBD: 1234567', '1617079079', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4214', null, '1599788697', '', 'Hồ sơ #1599788697 thiết lập phòng thi: ', '1617092868', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4215', null, '', '', '0 hồ sơ được phân lớp 1142K21', '1617093460', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4216', null, '', '', '2 Hồ sơ đã cập nhật sbd & phòng thi', '1617248927', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4217', null, '1610940369', '', 'Hồ sơ #1610940369 đã trúng tuyển', '1617249304', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4218', null, '1599788697', '', 'Hồ sơ #1599788697 đã cập nhật điểm: (8),(8),(9)', '1617250870', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4219', null, '1599788697', '', 'Hồ sơ #1599788697 đã trúng tuyển', '1617250994', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4220', null, '1599788697', '', 'Hồ sơ #1599788697 hủy trúng tuyển', '1617251057', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4221', null, '1599788697', '', 'Hồ sơ #1599788697 đã trúng tuyển', '1617251068', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4222', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1617251133', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4223', null, '1610940726', '', 'Hồ sơ #1610940726 đã trúng tuyển', '1617251133', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4224', null, '1599788697', '20AUM114271', 'Hồ sơ #1599788697 đã nhập học', '1617251342', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4225', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617335023', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4226', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617335115', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4227', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617335141', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4228', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617335210', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4229', null, null, '20AUM114271', 'Mã SV #20AUM114271 đã được thêm vào lớp el1_qlnn11', '1617336522', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4230', null, '1617339465', '', 'Hồ sơ #1617339465 ( ABC) tạo mới thành công', '1617339545', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4231', null, '1617340024', '', 'Hồ sơ #1617340024 ( ABC) tạo mới thành công', '1617340036', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4232', null, '1617340024', '', 'Hồ sơ #1617340024 ( ABC) tạo mới thành công', '1617340157', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4233', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617352997', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4234', null, '1617340024', '', 'Hồ sơ #1617340024 cập nhật ngành thành công', '1617355215', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4235', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617356119', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4236', null, '1617340024', '', 'Hồ sơ #1617340024 cập nhật ngành thành công', '1617357142', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4237', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357431', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4238', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357470', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4239', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357475', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4240', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357826', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4241', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357888', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4242', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357950', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4243', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617357974', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4244', null, null, '20AUM122464', 'Mã SV #20AUM122464 đã được thêm vào lớp el1_qlnn11', '1617358317', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4245', null, null, '20AUM116471', 'Mã SV #20AUM116471 đã được thêm vào lớp el22_lkt11', '1617358342', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4246', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617359143', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4247', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617359162', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4248', null, null, '20AUM114472', 'Mã SV #20AUM114472 đã được thêm vào lớp el1_qtkd11', '1617359171', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4249', null, null, '20AUM122473', 'Mã SV #20AUM122473 đã được thêm vào lớp el1_qlnn11', '1617359513', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4250', null, '1617340024', '', 'Hồ sơ #1617340024 đăng ký ngành thành công', '1617360909', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4251', null, '1599788697', '', 'Hồ sơ #1599788697 đã cập nhật thông tin', '1617552804', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4252', null, '1599788697', '', 'Hồ sơ #1599788697 đăng ký ngành thành công', '1617554371', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4253', null, '1599788697', '', 'Hồ sơ #1599788697 đăng ký ngành thành công', '1617554381', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4254', null, null, '20AUM114476', 'Mã SV #20AUM114476 đã được thêm vào lớp el1_qtkd11', '1617554462', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4255', null, null, '20AUM116477', 'Mã SV #20AUM116477 đã được thêm vào lớp el1_lkt11', '1617554469', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4256', null, '1599788697', '20AUM116477', 'Đã đóng 2,000,000 VNĐ', '1617554510', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4257', null, '159979300110', '', 'Hồ sơ #159979300110 đã cập nhật thông tin', '1617577966', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4258', null, '159979300110', '', 'Hồ sơ #159979300110 đã cập nhật thông tin', '1617577978', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4259', null, '1617595316', '', 'Hồ sơ #1617595316 (Nguyễn Văn Bình) tạo mới thành công', '1617595395', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4260', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617617036', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4261', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617617267', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4262', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617617379', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4263', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617617505', 'tranhiep', '0');
INSERT INTO `tbl_notify` VALUES ('4264', null, '1599788697', '', 'Hồ sơ #1599788697 cập nhật trạng thái thành công', '1617617602', 'tranhiep', '0');

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
INSERT INTO `tbl_user` VALUES ('51', 'tranhiep', 'b8a1099b57fb53d28fba7d5717e317ea', 'Trần Viết Hiệp', '', null, '', '', '0969549903', '', 'tranviethiepdz@gmail.com', null, null, null, null, '2020-04-08 15:50:43', '2021-04-08 06:17:59', '9', null, '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet
-- ----------------------------
INSERT INTO `tbl_wallet` VALUES ('1', '123456ABC', '8000000', '200000', '1617880151', '0', '1');

-- ----------------------------
-- Table structure for tbl_wallet_histories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wallet_histories`;
CREATE TABLE `tbl_wallet_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wallet` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(0) NOT NULL,
  `money` float DEFAULT 0,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) NOT NULL,
  `status` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet_histories
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_wallet_transsion
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wallet_transsion`;
CREATE TABLE `tbl_wallet_transsion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_wallet` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(0) NOT NULL,
  `money` float DEFAULT 0,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) NOT NULL,
  `status` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_wallet_transsion
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_working_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_working_log`;
CREATE TABLE `tbl_working_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hoso` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `masv` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `date` int(11) DEFAULT NULL,
  `noidung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `ketqua` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `finish` tinyint(1) DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_working_log
-- ----------------------------
INSERT INTO `tbl_working_log` VALUES ('1', '1599788697', '20AUM114476', '1617555600', 'Sinh viên #20AUM114476 cập nhật công việc', 'Hoàn thành', '1', 'tranhiep', '1617617036');
INSERT INTO `tbl_working_log` VALUES ('2', '1599788697', '20AUM114476', '1617642000', 'Sinh viên #20AUM114476 thêm kế hoạch công việc', '', '0', 'tranhiep', '1617617036');
INSERT INTO `tbl_working_log` VALUES ('3', '1599788697', '20AUM114476', '1617555600', 'Sinh viên #20AUM114476 cập nhật công việc', 'Hoàn thành', '1', 'tranhiep', '1617617267');
INSERT INTO `tbl_working_log` VALUES ('4', '1599788697', '20AUM114476', '1617642000', 'Sinh viên #20AUM114476 thêm kế hoạch công việc', '', '0', 'tranhiep', '1617617267');
INSERT INTO `tbl_working_log` VALUES ('5', '1599788697', '20AUM114476', '1617555600', 'Sinh viên #20AUM114476 cập nhật công việc', 'Hoàn thành', '1', 'tranhiep', '1617617379');
INSERT INTO `tbl_working_log` VALUES ('6', '1599788697', '20AUM114476', '1617642000', 'Sinh viên #20AUM114476 thêm kế hoạch công việc', '', '0', 'tranhiep', '1617617379');
INSERT INTO `tbl_working_log` VALUES ('7', '1599788697', '20AUM116477', '1617555600', 'Sinh viên #20AUM116477 cập nhật công việc', 'Chưa liên lạc được', '0', 'tranhiep', '1617617505');
INSERT INTO `tbl_working_log` VALUES ('8', '1599788697', '20AUM116477', '0', 'Sinh viên #20AUM116477 thêm kế hoạch công việc', '', '0', 'tranhiep', '1617617505');
INSERT INTO `tbl_working_log` VALUES ('9', '1599788697', '20AUM116477', '1617555600', 'Sinh viên #20AUM116477 cập nhật công việc', 'Không liên lạc được', '0', 'tranhiep', '1617617602');
INSERT INTO `tbl_working_log` VALUES ('10', '1599788697', '20AUM116477', '0', 'Sinh viên #20AUM116477 thêm kế hoạch công việc', '', '0', 'tranhiep', '1617617602');
