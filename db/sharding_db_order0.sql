/*
 Navicat Premium Data Transfer

 Source Server         : win-k
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : sharding_db_order0

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 25/10/2022 00:03:36
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
INSERT INTO `t_order0` VALUES (791431409817354240, 'K1', 2, NULL);
INSERT INTO `t_order0` VALUES (791431409955766272, 'K3', 2, NULL);
INSERT INTO `t_order0` VALUES (791431410098372608, 'K5', 2, NULL);

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
INSERT INTO `t_order1` VALUES (791431409884463104, 'K2', 2, NULL);
INSERT INTO `t_order1` VALUES (791431410027069440, 'K4', 2, NULL);

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
INSERT INTO `t_order_item0` VALUES (791431409834131457, 'K1', 2, 316.00, 4);
INSERT INTO `t_order_item0` VALUES (791431409855102976, 'K1', 2, 459.00, 0);
INSERT INTO `t_order_item0` VALUES (791431409867685889, 'K1', 2, 297.00, 4);
INSERT INTO `t_order_item0` VALUES (791431409968349185, 'K3', 2, 24.00, 1);
INSERT INTO `t_order_item0` VALUES (791431409985126400, 'K3', 2, 372.00, 0);
INSERT INTO `t_order_item0` VALUES (791431410006097921, 'K3', 2, 6.00, 3);
INSERT INTO `t_order_item0` VALUES (791431410110955521, 'K5', 2, 364.00, 3);
INSERT INTO `t_order_item0` VALUES (791431410140315648, 'K5', 2, 409.00, 4);
INSERT INTO `t_order_item0` VALUES (791431410157092865, 'K5', 2, 54.00, 4);

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
INSERT INTO `t_order_item1` VALUES (791431409897046017, 'K2', 2, 454.00, 3);
INSERT INTO `t_order_item1` VALUES (791431409930600448, 'K2', 2, 229.00, 0);
INSERT INTO `t_order_item1` VALUES (791431409943183361, 'K2', 2, 85.00, 4);
INSERT INTO `t_order_item1` VALUES (791431410048040961, 'K4', 2, 66.00, 2);
INSERT INTO `t_order_item1` VALUES (791431410064818176, 'K4', 2, 200.00, 1);
INSERT INTO `t_order_item1` VALUES (791431410081595393, 'K4', 2, 71.00, 0);

SET FOREIGN_KEY_CHECKS = 1;
