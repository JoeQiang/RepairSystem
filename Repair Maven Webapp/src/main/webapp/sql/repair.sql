/*
Navicat MySQL Data Transfer

Source Server         : mysql4j
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : repair

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-02-11 11:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_adress`
-- ----------------------------
DROP TABLE IF EXISTS `t_adress`;
CREATE TABLE `t_adress` (
  `aid` int(5) NOT NULL AUTO_INCREMENT,
  `area` char(5) DEFAULT NULL,
  `ban` int(2) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adress
-- ----------------------------
INSERT INTO `t_adress` VALUES ('1', 'south', '1');
INSERT INTO `t_adress` VALUES ('2', 'south', '2');
INSERT INTO `t_adress` VALUES ('3', 'south', '3');
INSERT INTO `t_adress` VALUES ('4', 'south', '4');
INSERT INTO `t_adress` VALUES ('5', 'south', '5');
INSERT INTO `t_adress` VALUES ('6', 'south', '6');
INSERT INTO `t_adress` VALUES ('7', 'south', '7');
INSERT INTO `t_adress` VALUES ('8', 'south', '8');
INSERT INTO `t_adress` VALUES ('9', 'south', '9');
INSERT INTO `t_adress` VALUES ('10', 'south', '10');
INSERT INTO `t_adress` VALUES ('11', 'south', '11');
INSERT INTO `t_adress` VALUES ('12', 'south', '12');
INSERT INTO `t_adress` VALUES ('13', 'south', '13');
INSERT INTO `t_adress` VALUES ('14', 'south', '14');
INSERT INTO `t_adress` VALUES ('15', 'south', '15');
INSERT INTO `t_adress` VALUES ('16', 'north', '16');
INSERT INTO `t_adress` VALUES ('17', 'north', '17');
INSERT INTO `t_adress` VALUES ('18', 'north', '18');
INSERT INTO `t_adress` VALUES ('19', 'north', '19');
INSERT INTO `t_adress` VALUES ('20', 'north', '20');
INSERT INTO `t_adress` VALUES ('21', 'north', '21');
INSERT INTO `t_adress` VALUES ('22', 'north', '22');
INSERT INTO `t_adress` VALUES ('23', 'north', '23');
INSERT INTO `t_adress` VALUES ('24', 'north', '24');
INSERT INTO `t_adress` VALUES ('25', 'north', '25');

-- ----------------------------
-- Table structure for `t_form`
-- ----------------------------
DROP TABLE IF EXISTS `t_form`;
CREATE TABLE `t_form` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fcontent` text,
  `uid` int(11) DEFAULT NULL,
  `fdate` date DEFAULT NULL,
  `fdealine` date DEFAULT NULL,
  `fstatus` int(2) DEFAULT NULL,
  `ftype` int(2) DEFAULT NULL,
  `funame` varchar(16) DEFAULT NULL,
  `fuphone` bigint(11) DEFAULT NULL,
  `fuadress` varchar(25) DEFAULT NULL,
  `fapointment` date DEFAULT NULL,
  `frsp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `fk_uid` (`uid`),
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_form
-- ----------------------------
INSERT INTO `t_form` VALUES ('9', '订婚结婚三大件金黄金黄的数据库和', '4', '2016-02-10', null, '2', '3', '亮哥', '13794389281', '11#b245', '2016-02-26', null);
INSERT INTO `t_form` VALUES ('10', '双方的房贷首付第三方的手段时间还将广泛大使馆打算多少啊 ', '4', '2016-02-10', null, '2', '3', '亮哥', '13794389281', '24#b323', '2016-02-26', null);

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ocontent` varchar(255) DEFAULT NULL,
  `orespont` varchar(255) DEFAULT NULL,
  `ostatus` int(1) NOT NULL,
  `odate` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `form_id` (`fid`),
  KEY `user_id` (`uid`),
  CONSTRAINT `form_id` FOREIGN KEY (`fid`) REFERENCES `t_form` (`fid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '10', '4', '第三大啊到达爱的', '大飒飒的', '1', '2016-02-10 12:35:41');
INSERT INTO `t_order` VALUES ('8', '10', '4', '大大大苏打萨达萨达萨达萨达飒飒的', '高浮雕风格   ', '1', '2016-02-11 11:09:54');
INSERT INTO `t_order` VALUES ('9', '9', '4', '大概公分的观点', '山大倒萨', '2', '2016-02-11 11:11:12');
INSERT INTO `t_order` VALUES ('10', '9', '4', '达到撒旦撒阿德是阿德啊啊阿萨阿斯顿大少大', '的撒旦撒', '2', '2016-02-11 11:12:49');
INSERT INTO `t_order` VALUES ('11', '9', '4', '范德萨范德萨', '大苏打撒', '2', '2016-02-11 11:13:41');
INSERT INTO `t_order` VALUES ('12', '9', '4', '翻跟斗广泛大锅饭的风格', '多大算大', '2', '2016-02-11 11:16:37');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uphone` bigint(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `urank` int(1) NOT NULL DEFAULT '1',
  `uadress` varchar(255) DEFAULT NULL,
  `stunum` int(9) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1826243710', '施颖敏', 'e10adc3949ba59abbe56e057f20f883e', '0', '21#b516', '131545236');
INSERT INTO `t_user` VALUES ('4', '13794389281', '亮哥', 'e10adc3949ba59abbe56e057f20f883e', '1', '18#b213', '131545237');
INSERT INTO `t_user` VALUES ('5', '18826243710', '李雷', 'e10adc3949ba59abbe56e057f20f883e', '1', '23#b219', '131545248');
