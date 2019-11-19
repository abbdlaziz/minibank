/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : bank

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 16/05/2019 15:46:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for md_account
-- ----------------------------
DROP TABLE IF EXISTS `md_account`;
CREATE TABLE `md_account`  (
  `norek` int(255) NOT NULL AUTO_INCREMENT,
  `idnasabah` int(255) NULL DEFAULT NULL,
  `saldo` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`norek`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of md_account
-- ----------------------------
INSERT INTO `md_account` VALUES (1, 9384739, 50000000);
INSERT INTO `md_account` VALUES (2, 765799, 60000);

-- ----------------------------
-- Table structure for md_nasabah
-- ----------------------------
DROP TABLE IF EXISTS `md_nasabah`;
CREATE TABLE `md_nasabah`  (
  `idnasabah` int(255) NOT NULL AUTO_INCREMENT,
  `namanasabah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `noktp` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tmptlahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgllahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `namaibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idnasabah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of md_nasabah
-- ----------------------------
INSERT INTO `md_nasabah` VALUES (12, 'aura', '739330283830203', 'bekasi', 'bekasi', '2019-05-15 08:35:58', 'lala', 'perempuan');
INSERT INTO `md_nasabah` VALUES (13, 'anggun', '9283930292893', 'bekasi', 'bekasi', '2019-05-15 08:45:30', 'nana', 'perempuan');
INSERT INTO `md_nasabah` VALUES (14, 'cccc', '739330283830203', 'bekasi', 'bekasi', '2019-05-15 08:54:27', 'lala', 'laki-laki');
INSERT INTO `md_nasabah` VALUES (21, 'adnan', '9283930292893', 'bekasi', 'bekasi', '2019-05-01', 'nana', 'laki-laki');
INSERT INTO `md_nasabah` VALUES (22, 'adnan', '9283930292893', 'bekasi', 'bekasi', '2019-05-01', 'nana', 'laki-laki');
INSERT INTO `md_nasabah` VALUES (25, 'aura', '739330283830203', 'bekasi', 'bekasi', '2019-05-01', 'nana', 'perempuan');

-- ----------------------------
-- Table structure for md_user
-- ----------------------------
DROP TABLE IF EXISTS `md_user`;
CREATE TABLE `md_user`  (
  `iduser` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `age` int(10) NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`iduser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for trx_cust_list
-- ----------------------------
DROP TABLE IF EXISTS `trx_cust_list`;
CREATE TABLE `trx_cust_list`  (
  `idtrxcustlist` int(255) NOT NULL,
  `norek` int(255) NULL DEFAULT NULL,
  `idnasabah` int(255) NULL DEFAULT NULL,
  `noktp` int(255) NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tmptlahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgllahir` date NULL DEFAULT NULL,
  `namaibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `saldo` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idtrxcustlist`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for trx_deposit
-- ----------------------------
DROP TABLE IF EXISTS `trx_deposit`;
CREATE TABLE `trx_deposit`  (
  `idtrxdeposit` int(255) NOT NULL AUTO_INCREMENT,
  `norek` int(255) NULL DEFAULT NULL,
  `jmldeposit` int(255) NULL DEFAULT NULL,
  `tgldeposit` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idtrxdeposit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trx_deposit
-- ----------------------------
INSERT INTO `trx_deposit` VALUES (1, 30002918, 0, NULL);
INSERT INTO `trx_deposit` VALUES (2, 30002918, 0, NULL);
INSERT INTO `trx_deposit` VALUES (3, 30293938, 10000000, '2019-05-14 13:54:32');
INSERT INTO `trx_deposit` VALUES (4, 2303938, 3000000, NULL);
INSERT INTO `trx_deposit` VALUES (5, 30293938, 3000000, NULL);
INSERT INTO `trx_deposit` VALUES (6, 30293938, 2000, NULL);
INSERT INTO `trx_deposit` VALUES (7, 30293938, 10000000, '2019-05-14 14:16:14');
INSERT INTO `trx_deposit` VALUES (8, 40302939, 3000000, '2019-05-14 14:54:35');
INSERT INTO `trx_deposit` VALUES (9, 40302939, 40000, '2019-05-14 14:55:23');
INSERT INTO `trx_deposit` VALUES (10, 0, 0, '2019-05-14 16:08:10');
INSERT INTO `trx_deposit` VALUES (11, 0, 0, '2019-05-14 16:13:45');
INSERT INTO `trx_deposit` VALUES (12, 2104940, 3000000, '2019-05-15 21:07:12');

-- ----------------------------
-- Table structure for trx_transfer
-- ----------------------------
DROP TABLE IF EXISTS `trx_transfer`;
CREATE TABLE `trx_transfer`  (
  `idtrxtransfer` int(255) NOT NULL AUTO_INCREMENT,
  `norekpengirim` int(255) NULL DEFAULT NULL,
  `norekpenerima` int(255) NULL DEFAULT NULL,
  `jmltransfer` int(255) NULL DEFAULT NULL,
  `tgltransfer` date NULL DEFAULT NULL,
  PRIMARY KEY (`idtrxtransfer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trx_transfer
-- ----------------------------
INSERT INTO `trx_transfer` VALUES (1, 0, 0, 0, '2019-05-15');
INSERT INTO `trx_transfer` VALUES (2, 0, 0, 0, '2019-05-15');
INSERT INTO `trx_transfer` VALUES (3, 8494983, 0, 700000, '2019-05-15');
INSERT INTO `trx_transfer` VALUES (4, 8494983, 0, 80000000, '2019-05-15');
INSERT INTO `trx_transfer` VALUES (5, 8494983, 8578087, 80000000, '2019-05-15');

-- ----------------------------
-- Table structure for trx_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `trx_withdraw`;
CREATE TABLE `trx_withdraw`  (
  `idtrxwithdraw` int(255) NOT NULL AUTO_INCREMENT,
  `norek` int(255) NULL DEFAULT NULL,
  `jmlwithdraw` int(255) NULL DEFAULT NULL,
  `tglwithdraw` date NULL DEFAULT NULL,
  PRIMARY KEY (`idtrxwithdraw`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trx_withdraw
-- ----------------------------
INSERT INTO `trx_withdraw` VALUES (1, 2303938, 400000000, '2019-05-15');

SET FOREIGN_KEY_CHECKS = 1;
