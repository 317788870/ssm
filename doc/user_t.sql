/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2018-07-19 15:35:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', 'admin', '12', '20');
INSERT INTO `user_t` VALUES ('2', '2', '1234567', '0');
INSERT INTO `user_t` VALUES ('5', '55', null, null);
INSERT INTO `user_t` VALUES ('6', '6', null, null);
INSERT INTO `user_t` VALUES ('7', '7', null, null);
INSERT INTO `user_t` VALUES ('8', '8', null, null);
INSERT INTO `user_t` VALUES ('9', '9', null, null);
INSERT INTO `user_t` VALUES ('10', '10', null, null);
INSERT INTO `user_t` VALUES ('11', '11', null, null);
INSERT INTO `user_t` VALUES ('12', '12', null, null);
INSERT INTO `user_t` VALUES ('13', '12', null, null);
INSERT INTO `user_t` VALUES ('14', '12', null, null);
INSERT INTO `user_t` VALUES ('15', '12', null, null);
INSERT INTO `user_t` VALUES ('16', '12', null, null);
INSERT INTO `user_t` VALUES ('17', 'admin', '12', '20');
INSERT INTO `user_t` VALUES ('18', 'admin', '12', '22');
INSERT INTO `user_t` VALUES ('19', 'admin23', '22', '20');
INSERT INTO `user_t` VALUES ('20', 'admin123', '123', '123');
INSERT INTO `user_t` VALUES ('21', '1', '11', '21');
