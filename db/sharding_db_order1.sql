/*
 Navicat Premium Data Transfer

 Source Server         : win-k
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : sharding_db_order1

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 25/10/2022 00:03:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `id` bigint NOT NULL,
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1584576111202222081, 't1');

-- ----------------------------
-- Table structure for t_order0
-- ----------------------------
DROP TABLE IF EXISTS `t_order0`;
CREATE TABLE `t_order0`  (
  `id` bigint NOT NULL,
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order0
-- ----------------------------
INSERT INTO `t_order0` VALUES (791431408722640896, 'K1', 1, NULL);
INSERT INTO `t_order0` VALUES (791431409628610560, 'K3', 1, NULL);
INSERT INTO `t_order0` VALUES (791431409758633984, 'K5', 1, NULL);

-- ----------------------------
-- Table structure for t_order1
-- ----------------------------
DROP TABLE IF EXISTS `t_order1`;
CREATE TABLE `t_order1`  (
  `id` bigint NOT NULL,
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order1
-- ----------------------------
INSERT INTO `t_order1` VALUES (791431409532141568, 'K2', 1, NULL);
INSERT INTO `t_order1` VALUES (791431409695719424, 'K4', 1, NULL);

-- ----------------------------
-- Table structure for t_order_item0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item0`;
CREATE TABLE `t_order_item0`  (
  `id` bigint NOT NULL,
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `count` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item0
-- ----------------------------
INSERT INTO `t_order_item0` VALUES (791431409477615617, 'K1', 1, 88.00, 1);
INSERT INTO `t_order_item0` VALUES (791431409498587136, 'K1', 1, 451.00, 1);
INSERT INTO `t_order_item0` VALUES (791431409515364353, 'K1', 1, 388.00, 1);
INSERT INTO `t_order_item0` VALUES (791431409645387777, 'K3', 1, 127.00, 0);
INSERT INTO `t_order_item0` VALUES (791431409662164992, 'K3', 1, 130.00, 4);
INSERT INTO `t_order_item0` VALUES (791431409678942209, 'K3', 1, 394.00, 3);
INSERT INTO `t_order_item0` VALUES (791431409771216897, 'K5', 1, 362.00, 5);
INSERT INTO `t_order_item0` VALUES (791431409787994112, 'K5', 1, 175.00, 0);
INSERT INTO `t_order_item0` VALUES (791431409800577025, 'K5', 1, 397.00, 1);

-- ----------------------------
-- Table structure for t_order_item1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item1`;
CREATE TABLE `t_order_item1`  (
  `id` bigint NOT NULL,
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `count` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item1
-- ----------------------------
INSERT INTO `t_order_item1` VALUES (791431409553113089, 'K2', 1, 165.00, 3);
INSERT INTO `t_order_item1` VALUES (791431409595056128, 'K2', 1, 243.00, 4);
INSERT INTO `t_order_item1` VALUES (791431409616027649, 'K2', 1, 83.00, 1);
INSERT INTO `t_order_item1` VALUES (791431409708302337, 'K4', 1, 112.00, 3);
INSERT INTO `t_order_item1` VALUES (791431409725079552, 'K4', 1, 189.00, 2);
INSERT INTO `t_order_item1` VALUES (791431409746051073, 'K4', 1, 17.00, 2);

SET FOREIGN_KEY_CHECKS = 1;
