/*
Navicat MySQL Data Transfer

Source Server         : qixiong
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : project_1811

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-01-23 20:40:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `goodsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `brand` varchar(255) NOT NULL,
  `collect` int(10) unsigned NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `imgurl` varchar(255) NOT NULL,
  `img_max` varchar(255) DEFAULT NULL,
  `img_min` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qweqwe', 'qweqwe');
INSERT INTO `user` VALUES ('2', 'asdasd', 'asdasd');
INSERT INTO `user` VALUES ('3', 'zxczxc', 'zxczxc');

-- ----------------------------
-- Table structure for user_cart
-- ----------------------------
DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE `user_cart` (
  `deleid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(6) unsigned NOT NULL,
  `goodsid` int(6) unsigned NOT NULL,
  `num` int(6) unsigned NOT NULL,
  PRIMARY KEY (`deleid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_cart
-- ----------------------------
INSERT INTO `user_cart` VALUES ('1', '1', '1', '1');
INSERT INTO `user_cart` VALUES ('4', '1', '1', '1');
INSERT INTO `user_cart` VALUES ('5', '2', '2', '2');
INSERT INTO `user_cart` VALUES ('6', '3', '3', '3');
SET FOREIGN_KEY_CHECKS=1;
