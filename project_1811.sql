/*
Navicat MySQL Data Transfer

Source Server         : project_1811
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : project_1811

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-03-27 17:38:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `goodsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `ziying` varchar(255) DEFAULT '',
  `simg1` varchar(255) DEFAULT NULL,
  `simg2` varchar(255) DEFAULT NULL,
  `simg4` varchar(255) DEFAULT NULL,
  `bimg` varchar(255) DEFAULT NULL,
  `simg3` varchar(255) DEFAULT '',
  `simg5` varchar(255) DEFAULT NULL,
  `haiwaigou` varchar(255) DEFAULT '',
  `pinglun` int(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `renqi` varchar(255) DEFAULT NULL,
  `xiaoliang` varchar(255) DEFAULT NULL,
  `zhongliang` int(10) DEFAULT NULL,
  `mingzi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '1234', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '1432', '2019-03-27 17:33:28.000000', '2', null, '0', '来益');
INSERT INTO `goodslist` VALUES ('2', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '456', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '432', '0000-00-00 00:00:00.000000', '3', null, '1', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('3', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '32412', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '43', '0000-00-00 00:00:00.000000', '4', null, '2', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('4', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '212', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '234', '0000-00-00 00:00:00.000000', '5', null, '3', '金维他');
INSERT INTO `goodslist` VALUES ('5', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '333', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '324', '0000-00-00 00:00:00.000000', '6', null, '4', '来益');
INSERT INTO `goodslist` VALUES ('6', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '444', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '433', '0000-00-00 00:00:00.000000', '7', null, '5', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('7', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '555', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '324', '0000-00-00 00:00:00.000000', '8', null, '6', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('8', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '1238', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '34', '0000-00-00 00:00:00.000000', '9', null, '7', '金维他');
INSERT INTO `goodslist` VALUES ('9', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '98778', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '34', '0000-00-00 00:00:00.000000', '10', null, '8', '来益');
INSERT INTO `goodslist` VALUES ('10', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5556', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '34243', '0000-00-00 00:00:00.000000', '11', null, '9', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('11', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '45345', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '324423', '0000-00-00 00:00:00.000000', '12', null, '10', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('12', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '234523', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '455', '0000-00-00 00:00:00.000000', '13', null, '11', '金维他');
INSERT INTO `goodslist` VALUES ('13', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '6645', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '433', '0000-00-00 00:00:00.000000', '14', null, '12', '来益');
INSERT INTO `goodslist` VALUES ('14', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '465', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '443', '0000-00-00 00:00:00.000000', '15', null, '13', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('15', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '4563', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '434', '0000-00-00 00:00:00.000000', '16', null, '14', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('16', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '245', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '545', '0000-00-00 00:00:00.000000', '17', null, '15', '金维他');
INSERT INTO `goodslist` VALUES ('17', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '4325', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '43', '0000-00-00 00:00:00.000000', '18', null, '16', '来益');
INSERT INTO `goodslist` VALUES ('18', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '3245', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '44345', '0000-00-00 00:00:00.000000', '19', null, '17', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('19', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '455', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '243', '0000-00-00 00:00:00.000000', '20', null, '18', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('20', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '345', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '567', '0000-00-00 00:00:00.000000', '21', null, '19', '金维他');
INSERT INTO `goodslist` VALUES ('21', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '909', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '77', '0000-00-00 00:00:00.000000', '22', null, '20', '来益');
INSERT INTO `goodslist` VALUES ('22', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '9087', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '567', '0000-00-00 00:00:00.000000', '23', null, '21', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('23', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '870', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '664', '0000-00-00 00:00:00.000000', '24', null, '22', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('24', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '809', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '6574567', '0000-00-00 00:00:00.000000', '25', null, '23', '金维他');
INSERT INTO `goodslist` VALUES ('25', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '8970', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '6456', '0000-00-00 00:00:00.000000', '26', null, '24', '来益');
INSERT INTO `goodslist` VALUES ('26', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '586', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '6556', '0000-00-00 00:00:00.000000', '27', null, '25', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('27', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '6868', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '65456', '0000-00-00 00:00:00.000000', '28', null, '26', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('28', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '678', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '6645', '0000-00-00 00:00:00.000000', '29', null, '27', '金维他');
INSERT INTO `goodslist` VALUES ('29', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '8658', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '776', '0000-00-00 00:00:00.000000', '30', null, '28', '来益');
INSERT INTO `goodslist` VALUES ('30', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '768', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '6456', '0000-00-00 00:00:00.000000', '31', null, '29', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('31', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '8658', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '643', '0000-00-00 00:00:00.000000', '32', null, '30', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('32', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '856', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '6575', '0000-00-00 00:00:00.000000', '33', null, '31', '金维他');
INSERT INTO `goodslist` VALUES ('33', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '658', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '575', '0000-00-00 00:00:00.000000', '34', null, '32', '来益');
INSERT INTO `goodslist` VALUES ('34', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5688', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '65745', '0000-00-00 00:00:00.000000', '35', null, '33', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('35', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5689', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '767', '0000-00-00 00:00:00.000000', '36', null, '34', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('36', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5690', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '774567', '0000-00-00 00:00:00.000000', '37', null, '35', '金维他');
INSERT INTO `goodslist` VALUES ('37', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '4322', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '43252', '0000-00-00 00:00:00.000000', '38', null, '36', '来益');
INSERT INTO `goodslist` VALUES ('38', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5692', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '888', '0000-00-00 00:00:00.000000', '39', null, '37', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('39', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5693', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '5665', '0000-00-00 00:00:00.000000', '40', null, '38', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('40', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5694', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '456', '0000-00-00 00:00:00.000000', '41', null, '39', '金维他');
INSERT INTO `goodslist` VALUES ('41', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5695', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '457', '0000-00-00 00:00:00.000000', '42', null, '40', '来益');
INSERT INTO `goodslist` VALUES ('42', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5696', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '458', '0000-00-00 00:00:00.000000', '43', null, '41', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('43', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5697', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '459', '0000-00-00 00:00:00.000000', '44', null, '42', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('44', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5698', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '460', '0000-00-00 00:00:00.000000', '45', null, '43', '金维他');
INSERT INTO `goodslist` VALUES ('45', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '234', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '461', '0000-00-00 00:00:00.000000', '46', null, '44', '来益');
INSERT INTO `goodslist` VALUES ('46', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5700', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '462', '0000-00-00 00:00:00.000000', '47', null, '45', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('47', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5701', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '463', '0000-00-00 00:00:00.000000', '48', null, '46', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('48', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5702', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '464', '0000-00-00 00:00:00.000000', '49', null, '47', '金维他');
INSERT INTO `goodslist` VALUES ('49', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '435', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '465', '0000-00-00 00:00:00.000000', '50', null, '48', '来益');
INSERT INTO `goodslist` VALUES ('50', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5704', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '466', '0000-00-00 00:00:00.000000', '51', null, '49', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('51', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '6456', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '467', '0000-00-00 00:00:00.000000', '52', null, '50', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('52', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5706', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '468', '0000-00-00 00:00:00.000000', '53', null, '51', '金维他');
INSERT INTO `goodslist` VALUES ('53', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5707', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '469', '0000-00-00 00:00:00.000000', '54', null, '52', '来益');
INSERT INTO `goodslist` VALUES ('54', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '3466', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '470', '0000-00-00 00:00:00.000000', '55', null, '53', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('55', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5709', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '471', '0000-00-00 00:00:00.000000', '56', null, '54', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('56', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5710', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '472', '0000-00-00 00:00:00.000000', '57', null, '55', '金维他');
INSERT INTO `goodslist` VALUES ('57', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5711', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '473', '0000-00-00 00:00:00.000000', '58', null, '56', '来益');
INSERT INTO `goodslist` VALUES ('58', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5712', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '474', '0000-00-00 00:00:00.000000', '59', null, '57', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('59', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '346346', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '475', '0000-00-00 00:00:00.000000', '60', null, '58', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('60', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5714', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '476', '0000-00-00 00:00:00.000000', '61', null, '59', '金维他');
INSERT INTO `goodslist` VALUES ('61', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5715', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '477', '0000-00-00 00:00:00.000000', '62', null, '60', '来益');
INSERT INTO `goodslist` VALUES ('62', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5716', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '478', '0000-00-00 00:00:00.000000', '63', null, '61', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('63', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '34643', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '479', '0000-00-00 00:00:00.000000', '64', null, '62', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('64', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5718', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '480', '0000-00-00 00:00:00.000000', '65', null, '63', '金维他');
INSERT INTO `goodslist` VALUES ('65', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5719', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '481', '0000-00-00 00:00:00.000000', '66', null, '64', '来益');
INSERT INTO `goodslist` VALUES ('66', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '6346', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '482', '0000-00-00 00:00:00.000000', '67', null, '65', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('67', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5721', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '483', '0000-00-00 00:00:00.000000', '68', null, '66', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('68', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5722', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '484', '0000-00-00 00:00:00.000000', '69', null, '67', '金维他');
INSERT INTO `goodslist` VALUES ('69', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '34643', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '485', '0000-00-00 00:00:00.000000', '70', null, '68', '来益');
INSERT INTO `goodslist` VALUES ('70', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5724', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '486', '0000-00-00 00:00:00.000000', '71', null, '69', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('71', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5725', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '487', '0000-00-00 00:00:00.000000', '72', null, '70', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('72', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5726', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '488', '0000-00-00 00:00:00.000000', '73', null, '71', '金维他');
INSERT INTO `goodslist` VALUES ('73', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '658568', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '489', '0000-00-00 00:00:00.000000', '74', null, '72', '来益');
INSERT INTO `goodslist` VALUES ('74', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5728', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '490', '0000-00-00 00:00:00.000000', '75', null, '73', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('75', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5729', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '491', '0000-00-00 00:00:00.000000', '76', null, '74', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('76', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '6856', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '492', '0000-00-00 00:00:00.000000', '77', null, '75', '金维他');
INSERT INTO `goodslist` VALUES ('77', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5731', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '493', '0000-00-00 00:00:00.000000', '78', null, '76', '来益');
INSERT INTO `goodslist` VALUES ('78', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '46346', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '494', '0000-00-00 00:00:00.000000', '79', null, '77', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('79', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5733', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '495', '0000-00-00 00:00:00.000000', '80', null, '78', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('80', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5734', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '496', '0000-00-00 00:00:00.000000', '81', null, '79', '金维他');
INSERT INTO `goodslist` VALUES ('81', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5735', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '497', '0000-00-00 00:00:00.000000', '82', null, '80', '来益');
INSERT INTO `goodslist` VALUES ('82', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5736', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '498', '0000-00-00 00:00:00.000000', '83', null, '81', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('83', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5737', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '499', '0000-00-00 00:00:00.000000', '84', null, '82', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('84', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5738', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '500', '0000-00-00 00:00:00.000000', '85', null, '83', '金维他');
INSERT INTO `goodslist` VALUES ('85', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5739', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '501', '0000-00-00 00:00:00.000000', '86', null, '84', '来益');
INSERT INTO `goodslist` VALUES ('86', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5740', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '502', '0000-00-00 00:00:00.000000', '87', null, '85', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('87', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5741', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '503', '0000-00-00 00:00:00.000000', '88', null, '86', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('88', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5742', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '504', '0000-00-00 00:00:00.000000', '89', null, '87', '金维他');
INSERT INTO `goodslist` VALUES ('89', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5743', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '505', '0000-00-00 00:00:00.000000', '90', null, '88', '来益');
INSERT INTO `goodslist` VALUES ('90', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5744', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '506', '0000-00-00 00:00:00.000000', '91', null, '89', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('91', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5745', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '507', '0000-00-00 00:00:00.000000', '92', null, '90', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('92', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5746', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '508', '0000-00-00 00:00:00.000000', '93', null, '91', '金维他');
INSERT INTO `goodslist` VALUES ('93', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5747', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '509', '0000-00-00 00:00:00.000000', '94', null, '92', '来益');
INSERT INTO `goodslist` VALUES ('94', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5748', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '510', '0000-00-00 00:00:00.000000', '95', null, '93', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('95', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5749', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '511', '0000-00-00 00:00:00.000000', '96', null, '94', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('96', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5750', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '512', '0000-00-00 00:00:00.000000', '97', null, '95', '金维他');
INSERT INTO `goodslist` VALUES ('97', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5751', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '513', '0000-00-00 00:00:00.000000', '98', null, '96', '来益');
INSERT INTO `goodslist` VALUES ('98', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5752', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '514', '0000-00-00 00:00:00.000000', '99', null, '97', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('99', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5753', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '515', '0000-00-00 00:00:00.000000', '100', null, '98', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('100', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5754', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '516', '0000-00-00 00:00:00.000000', '101', null, '99', '金维他');
INSERT INTO `goodslist` VALUES ('101', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5755', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '517', '0000-00-00 00:00:00.000000', '102', null, '100', '来益');
INSERT INTO `goodslist` VALUES ('102', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5756', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '518', '0000-00-00 00:00:00.000000', '103', null, '101', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('103', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5757', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '519', '0000-00-00 00:00:00.000000', '104', null, '102', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('104', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5758', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '520', '0000-00-00 00:00:00.000000', '105', null, '103', '金维他');
INSERT INTO `goodslist` VALUES ('105', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5759', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '521', '0000-00-00 00:00:00.000000', '106', null, '104', '来益');
INSERT INTO `goodslist` VALUES ('106', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5760', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '522', '0000-00-00 00:00:00.000000', '107', null, '105', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('107', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5761', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '523', '0000-00-00 00:00:00.000000', '108', null, '106', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('108', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5762', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '524', '0000-00-00 00:00:00.000000', '109', null, '107', '金维他');
INSERT INTO `goodslist` VALUES ('109', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5763', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '525', '0000-00-00 00:00:00.000000', '110', null, '108', '来益');
INSERT INTO `goodslist` VALUES ('110', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5764', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '526', '0000-00-00 00:00:00.000000', '111', null, '109', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('111', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5765', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '527', '0000-00-00 00:00:00.000000', '112', null, '110', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('112', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5766', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '528', '0000-00-00 00:00:00.000000', '113', null, '111', '金维他');
INSERT INTO `goodslist` VALUES ('113', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5767', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '529', '0000-00-00 00:00:00.000000', '114', null, '112', '来益');
INSERT INTO `goodslist` VALUES ('114', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5768', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '530', '0000-00-00 00:00:00.000000', '115', null, '113', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('115', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5769', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '531', '0000-00-00 00:00:00.000000', '116', null, '114', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('116', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5770', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '532', '0000-00-00 00:00:00.000000', '117', null, '115', '金维他');
INSERT INTO `goodslist` VALUES ('117', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5771', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '533', '0000-00-00 00:00:00.000000', '118', null, '116', '来益');
INSERT INTO `goodslist` VALUES ('118', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5772', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '534', '0000-00-00 00:00:00.000000', '119', null, '117', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('119', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5773', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '535', '0000-00-00 00:00:00.000000', '120', null, '118', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('120', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5774', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '536', '0000-00-00 00:00:00.000000', '121', null, '119', '金维他');
INSERT INTO `goodslist` VALUES ('121', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5775', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '537', '0000-00-00 00:00:00.000000', '122', null, '120', '来益');
INSERT INTO `goodslist` VALUES ('122', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5776', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '538', '0000-00-00 00:00:00.000000', '123', null, '121', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('123', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5777', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '539', '0000-00-00 00:00:00.000000', '124', null, '122', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('124', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5778', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '540', '0000-00-00 00:00:00.000000', '125', null, '123', '金维他');
INSERT INTO `goodslist` VALUES ('125', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5779', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '541', '0000-00-00 00:00:00.000000', '126', null, '124', '来益');
INSERT INTO `goodslist` VALUES ('126', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5780', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '542', '0000-00-00 00:00:00.000000', '127', null, '125', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('127', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5781', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '543', '0000-00-00 00:00:00.000000', '128', null, '126', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('128', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5782', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '544', '0000-00-00 00:00:00.000000', '129', null, '127', '金维他');
INSERT INTO `goodslist` VALUES ('129', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5783', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '545', '0000-00-00 00:00:00.000000', '130', null, '128', '来益');
INSERT INTO `goodslist` VALUES ('130', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5784', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '546', '0000-00-00 00:00:00.000000', '131', null, '129', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('131', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5785', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '547', '0000-00-00 00:00:00.000000', '132', null, '130', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('132', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5786', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '548', '0000-00-00 00:00:00.000000', '133', null, '131', '金维他');
INSERT INTO `goodslist` VALUES ('133', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5787', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '549', '0000-00-00 00:00:00.000000', '134', null, '132', '来益');
INSERT INTO `goodslist` VALUES ('134', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5788', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '550', '0000-00-00 00:00:00.000000', '135', null, '133', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('135', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5789', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '551', '0000-00-00 00:00:00.000000', '136', null, '134', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('136', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5790', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '552', '0000-00-00 00:00:00.000000', '137', null, '135', '金维他');
INSERT INTO `goodslist` VALUES ('137', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5791', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '553', '0000-00-00 00:00:00.000000', '138', null, '136', '来益');
INSERT INTO `goodslist` VALUES ('138', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5792', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '554', '0000-00-00 00:00:00.000000', '139', null, '137', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('139', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5793', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '555', '0000-00-00 00:00:00.000000', '140', null, '138', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('140', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5794', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '556', '0000-00-00 00:00:00.000000', '141', null, '139', '金维他');
INSERT INTO `goodslist` VALUES ('141', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5795', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '557', '0000-00-00 00:00:00.000000', '142', null, '140', '来益');
INSERT INTO `goodslist` VALUES ('142', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5796', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '558', '0000-00-00 00:00:00.000000', '143', null, '141', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('143', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5797', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '559', '0000-00-00 00:00:00.000000', '144', null, '142', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('144', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5798', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '560', '0000-00-00 00:00:00.000000', '145', null, '143', '金维他');
INSERT INTO `goodslist` VALUES ('145', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5799', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '561', '0000-00-00 00:00:00.000000', '146', null, '144', '来益');
INSERT INTO `goodslist` VALUES ('146', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5800', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '562', '0000-00-00 00:00:00.000000', '147', null, '145', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('147', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5801', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '563', '0000-00-00 00:00:00.000000', '148', null, '146', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('148', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5802', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '564', '0000-00-00 00:00:00.000000', '149', null, '147', '金维他');
INSERT INTO `goodslist` VALUES ('149', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5803', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '565', '0000-00-00 00:00:00.000000', '150', null, '148', '来益');
INSERT INTO `goodslist` VALUES ('150', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5804', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '566', '0000-00-00 00:00:00.000000', '151', null, '149', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('151', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5805', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '567', '0000-00-00 00:00:00.000000', '152', null, '150', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('152', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5806', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '568', '0000-00-00 00:00:00.000000', '153', null, '151', '金维他');
INSERT INTO `goodslist` VALUES ('153', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5807', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '569', '0000-00-00 00:00:00.000000', '2341', null, '152', '来益');
INSERT INTO `goodslist` VALUES ('154', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5808', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '570', '0000-00-00 00:00:00.000000', '155', null, '153', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('155', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5809', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '571', '0000-00-00 00:00:00.000000', '156', null, '154', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('156', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5810', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '572', '0000-00-00 00:00:00.000000', '157', null, '155', '金维他');
INSERT INTO `goodslist` VALUES ('157', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5811', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '573', '0000-00-00 00:00:00.000000', '158', null, '156', '来益');
INSERT INTO `goodslist` VALUES ('158', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5812', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '574', '0000-00-00 00:00:00.000000', '159', null, '157', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('159', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5813', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '575', '0000-00-00 00:00:00.000000', '160', null, '158', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('160', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5814', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '576', '0000-00-00 00:00:00.000000', '161', null, '159', '金维他');
INSERT INTO `goodslist` VALUES ('161', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5815', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '577', '0000-00-00 00:00:00.000000', '162', null, '160', '来益');
INSERT INTO `goodslist` VALUES ('162', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5816', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '578', '0000-00-00 00:00:00.000000', '163', null, '161', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('163', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5817', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '579', '0000-00-00 00:00:00.000000', '164', null, '162', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('164', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5818', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '580', '0000-00-00 00:00:00.000000', '165', null, '163', '金维他');
INSERT INTO `goodslist` VALUES ('165', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5819', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', 'haiwaigou.png', '581', '0000-00-00 00:00:00.000000', '166', null, '164', '来益');
INSERT INTO `goodslist` VALUES ('166', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5820', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '582', '0000-00-00 00:00:00.000000', '1313', null, '165', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('167', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5821', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '583', '0000-00-00 00:00:00.000000', '168', null, '166', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('168', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5822', 'ziying.png', 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '584', '0000-00-00 00:00:00.000000', '4564', null, '167', '金维他');
INSERT INTO `goodslist` VALUES ('169', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5823', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '585', '0000-00-00 00:00:00.000000', '170', null, '168', '来益');
INSERT INTO `goodslist` VALUES ('170', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5824', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '586', '0000-00-00 00:00:00.000000', '171', null, '169', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('171', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5825', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '587', '0000-00-00 00:00:00.000000', '172', null, '170', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('172', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5826', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '588', '0000-00-00 00:00:00.000000', '173', null, '171', '金维他');
INSERT INTO `goodslist` VALUES ('173', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5827', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '589', '0000-00-00 00:00:00.000000', '174', null, '172', '来益');
INSERT INTO `goodslist` VALUES ('174', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5828', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '590', '0000-00-00 00:00:00.000000', '175', null, '173', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('175', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5829', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '591', '0000-00-00 00:00:00.000000', '176', null, '174', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('176', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5830', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '592', '0000-00-00 00:00:00.000000', '177', null, '175', '金维他');
INSERT INTO `goodslist` VALUES ('177', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5831', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '593', '0000-00-00 00:00:00.000000', '178', null, '176', '来益');
INSERT INTO `goodslist` VALUES ('178', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5832', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', 'haiwaigou.png', '594', '0000-00-00 00:00:00.000000', '179', null, '177', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('179', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5833', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '595', '0000-00-00 00:00:00.000000', '180', null, '178', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('180', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5834', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '596', '0000-00-00 00:00:00.000000', '23332', null, '179', '金维他');
INSERT INTO `goodslist` VALUES ('181', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5835', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '597', '0000-00-00 00:00:00.000000', '182', null, '180', '来益');
INSERT INTO `goodslist` VALUES ('182', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5836', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '598', '0000-00-00 00:00:00.000000', '183', null, '181', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('183', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5837', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '599', '0000-00-00 00:00:00.000000', '184', null, '182', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('184', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5838', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '600', '0000-00-00 00:00:00.000000', '185', null, '183', '金维他');
INSERT INTO `goodslist` VALUES ('185', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5839', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '601', '0000-00-00 00:00:00.000000', '186', null, '184', '来益');
INSERT INTO `goodslist` VALUES ('186', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5840', 'ziying.png', 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '602', '0000-00-00 00:00:00.000000', '2342', null, '185', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('187', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5841', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '603', '0000-00-00 00:00:00.000000', '188', null, '186', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('188', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5842', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', 'haiwaigou.png', '604', '0000-00-00 00:00:00.000000', '189', null, '187', '金维他');
INSERT INTO `goodslist` VALUES ('189', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5843', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '605', '0000-00-00 00:00:00.000000', '190', null, '188', '来益');
INSERT INTO `goodslist` VALUES ('190', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5844', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '606', '0000-00-00 00:00:00.000000', '191', null, '189', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('191', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5845', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '607', '0000-00-00 00:00:00.000000', '192', null, '190', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('192', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5846', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '608', '0000-00-00 00:00:00.000000', '193', null, '191', '金维他');
INSERT INTO `goodslist` VALUES ('193', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5847', 'ziying.png', 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '609', '0000-00-00 00:00:00.000000', '194', null, '192', '来益');
INSERT INTO `goodslist` VALUES ('194', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5848', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '610', '0000-00-00 00:00:00.000000', '195', null, '193', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('195', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5849', null, 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', 'haiwaigou.png', '611', '0000-00-00 00:00:00.000000', '196', null, '194', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('196', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5850', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '612', '0000-00-00 00:00:00.000000', '197', null, '195', '金维他');
INSERT INTO `goodslist` VALUES ('197', '来益牌 叶黄素咀嚼片 450mg*30片每日一粒，1瓶约1个月量，呵护双眼，缓解视力疲劳，眼睛干涩者、视力模糊者适用', '5851', null, 's1.jpg', 's2.jpg', 's4.jpg', 'shili.jpg', 's3.jpg', 's5.jpg', null, '613', '0000-00-00 00:00:00.000000', '198', null, '196', '来益');
INSERT INTO `goodslist` VALUES ('198', '汤臣倍健 天然β-胡萝卜素软胶囊 0.5g*100粒来自澳大利亚进口的胡萝卜素，每粒含4.71mg胡萝卜素，1瓶约3个月量', '5852', null, 'h1.jpg', 'h2.jpg', 'h4.jpg', 'huluobo.jpg', 'h3.jpg', 'h5.jpg', null, '614', '0000-00-00 00:00:00.000000', '199', null, '197', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('199', '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片 *2件', '5853', 'ziying.png', 't1.jpg', 't2.jpg', 't4.jpg', 'tang.jpg', 't3.jpg', 't5.jpg', null, '615', '0000-00-00 00:00:00.000000', '200', null, '198', '汤臣倍健');
INSERT INTO `goodslist` VALUES ('200', '21金维他 多维元素片 100片含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质；成人及12岁以上儿童，一日2片，12岁以下1日1片，饭后服用', '5854', null, 'j1.jpg', 'j2.jpg', 'j4.jpg', 'jinweita.jpg', 'j3.jpg', 'j5.jpg', null, '616', '0000-00-00 00:00:00.000000', '201', null, '199', '金维他');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qweqwe', 'qweqwe');
INSERT INTO `user` VALUES ('2', 'asdasd', 'asdasd');
INSERT INTO `user` VALUES ('3', 'zxczxc', 'zxczxc');
INSERT INTO `user` VALUES ('6', '17576072650', 'qweqwe');
INSERT INTO `user` VALUES ('7', '17576072650', 'a123520');
INSERT INTO `user` VALUES ('8', '14533333333', 'qweqwe');

-- ----------------------------
-- Table structure for user_cart
-- ----------------------------
DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE `user_cart` (
  `deleid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `goodsid` int(6) unsigned DEFAULT NULL,
  `num` int(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`deleid`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_cart
-- ----------------------------
INSERT INTO `user_cart` VALUES ('58', 'undefined', '196', '1');
INSERT INTO `user_cart` VALUES ('71', 'qweqwe', '1', '5');
INSERT INTO `user_cart` VALUES ('68', 'qweqwe', '99', '4');
SET FOREIGN_KEY_CHECKS=1;
