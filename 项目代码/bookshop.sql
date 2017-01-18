/*
Navicat MySQL Data Transfer

Source Server         : vic
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-01-03 09:57:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '机械类');
INSERT INTO `category` VALUES ('2', '计算机类');
INSERT INTO `category` VALUES ('3', '漫画');
INSERT INTO `category` VALUES ('4', '生物化学');
INSERT INTO `category` VALUES ('5', '历史类');
INSERT INTO `category` VALUES ('6', '数学类');
INSERT INTO `category` VALUES ('7', '文学类');
INSERT INTO `category` VALUES ('8', '物理类');
INSERT INTO `category` VALUES ('9', '艺术类');
INSERT INTO `category` VALUES ('10', '哲学类');

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '机械设计', '1');
INSERT INTO `categorysecond` VALUES ('2', '机械制图', '1');
INSERT INTO `categorysecond` VALUES ('3', '机械制造', '1');
INSERT INTO `categorysecond` VALUES ('4', '金属材料', '1');
INSERT INTO `categorysecond` VALUES ('5', '数控编程', '1');
INSERT INTO `categorysecond` VALUES ('6', '液压传动', '1');
INSERT INTO `categorysecond` VALUES ('7', 'ASP', '2');
INSERT INTO `categorysecond` VALUES ('9', 'Java', '2');
INSERT INTO `categorysecond` VALUES ('10', 'JSP', '2');
INSERT INTO `categorysecond` VALUES ('11', 'PHP', '2');
INSERT INTO `categorysecond` VALUES ('12', '操作系统', '2');
INSERT INTO `categorysecond` VALUES ('13', '数据库', '2');
INSERT INTO `categorysecond` VALUES ('14', '科幻类', '3');
INSERT INTO `categorysecond` VALUES ('15', '冒险类', '3');
INSERT INTO `categorysecond` VALUES ('16', '情感类', '3');
INSERT INTO `categorysecond` VALUES ('17', '热血类', '3');
INSERT INTO `categorysecond` VALUES ('18', '推理类', '3');
INSERT INTO `categorysecond` VALUES ('19', '校园类', '3');
INSERT INTO `categorysecond` VALUES ('20', '分子生物学', '4');
INSERT INTO `categorysecond` VALUES ('21', '生理化学', '4');
INSERT INTO `categorysecond` VALUES ('22', '微生物学', '4');
INSERT INTO `categorysecond` VALUES ('23', '无机生物学', '4');
INSERT INTO `categorysecond` VALUES ('24', '药理学', '4');
INSERT INTO `categorysecond` VALUES ('25', '遗传学', '4');
INSERT INTO `categorysecond` VALUES ('26', '历史文献学', '5');
INSERT INTO `categorysecond` VALUES ('27', '史学概论', '5');
INSERT INTO `categorysecond` VALUES ('28', '世界通史', '5');
INSERT INTO `categorysecond` VALUES ('29', '中国历史地理', '5');
INSERT INTO `categorysecond` VALUES ('30', '中国历史文选', '5');
INSERT INTO `categorysecond` VALUES ('31', '中国通史', '5');
INSERT INTO `categorysecond` VALUES ('32', '概率论与数理统计', '6');
INSERT INTO `categorysecond` VALUES ('33', '高等数学', '6');
INSERT INTO `categorysecond` VALUES ('34', '计算方法', '6');
INSERT INTO `categorysecond` VALUES ('35', '解析几何', '6');
INSERT INTO `categorysecond` VALUES ('36', '数学分析', '6');
INSERT INTO `categorysecond` VALUES ('37', '微分几何', '6');
INSERT INTO `categorysecond` VALUES ('38', '歌剧', '7');
INSERT INTO `categorysecond` VALUES ('39', '古代散文', '7');
INSERT INTO `categorysecond` VALUES ('40', '古典诗词', '7');
INSERT INTO `categorysecond` VALUES ('41', '古典小说', '7');
INSERT INTO `categorysecond` VALUES ('42', '近现代散文', '7');
INSERT INTO `categorysecond` VALUES ('43', '近现代小说', '7');
INSERT INTO `categorysecond` VALUES ('44', '电磁学', '8');
INSERT INTO `categorysecond` VALUES ('45', '光学', '8');
INSERT INTO `categorysecond` VALUES ('46', '近代物理', '8');
INSERT INTO `categorysecond` VALUES ('47', '理论力学', '8');
INSERT INTO `categorysecond` VALUES ('48', '量子力学', '8');
INSERT INTO `categorysecond` VALUES ('49', '热力学', '8');
INSERT INTO `categorysecond` VALUES ('50', '雕塑', '9');
INSERT INTO `categorysecond` VALUES ('51', '工艺', '9');
INSERT INTO `categorysecond` VALUES ('52', '绘画', '9');
INSERT INTO `categorysecond` VALUES ('53', '建筑', '9');
INSERT INTO `categorysecond` VALUES ('54', '舞蹈', '9');
INSERT INTO `categorysecond` VALUES ('55', '音乐', '9');
INSERT INTO `categorysecond` VALUES ('56', '分析哲学', '10');
INSERT INTO `categorysecond` VALUES ('57', '古希腊哲学', '10');
INSERT INTO `categorysecond` VALUES ('58', '价值哲学', '10');
INSERT INTO `categorysecond` VALUES ('59', '经学哲学', '10');
INSERT INTO `categorysecond` VALUES ('60', '逻辑哲学', '10');
INSERT INTO `categorysecond` VALUES ('61', '马克思主义哲学', '10');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('17', '10', '340', '15', '9004');
INSERT INTO `orderitem` VALUES ('18', '1', '45', '28', '9004');
INSERT INTO `orderitem` VALUES ('19', '1', '78', '19', '9005');
INSERT INTO `orderitem` VALUES ('20', '1', '56', '20', '9005');
INSERT INTO `orderitem` VALUES ('21', '1', '56', '36', '9006');
INSERT INTO `orderitem` VALUES ('22', '1', '50', '5', '9007');
INSERT INTO `orderitem` VALUES ('23', '1', '34', '15', '9007');
INSERT INTO `orderitem` VALUES ('24', '1', '23', '3', '9008');
INSERT INTO `orderitem` VALUES ('25', '1', '34', '15', '9009');
INSERT INTO `orderitem` VALUES ('26', '4445', '106680', '22', '9010');
INSERT INTO `orderitem` VALUES ('27', '1', '34', '15', '9011');
INSERT INTO `orderitem` VALUES ('28', '1', '56', '20', '9012');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('9004', '385', '2017-01-02 13:30:16', '1', 'vic', '13545364441', 'hubeidaxue', '1');
INSERT INTO `orders` VALUES ('9005', '134', '2017-01-02 13:48:45', '1', 'mzy', '13444444444', 'wuhan', '2');
INSERT INTO `orders` VALUES ('9006', '56', '2017-01-02 13:49:33', '1', 'mzy', '13444444444', 'wuhan', '2');
INSERT INTO `orders` VALUES ('9007', '84', '2017-01-02 14:52:11', '1', 'tian', '13433333333', 'hubei', '3');
INSERT INTO `orders` VALUES ('9008', '23', '2017-01-02 14:52:39', '1', 'tian', '13433333333', 'hubei', '3');
INSERT INTO `orders` VALUES ('9009', '34', '2017-01-02 15:37:54', '1', 'tian', '13433333333', 'hubei', '3');
INSERT INTO `orders` VALUES ('9010', '106680', '2017-01-02 17:38:50', '1', '111', '1111', '111111', '13');
INSERT INTO `orders` VALUES ('9011', '34', '2017-01-03 00:32:22', '1', 'vic', '13545364441', 'hubeidaxue', '1');
INSERT INTO `orders` VALUES ('9012', '56', '2017-01-03 01:08:56', '1', null, null, null, '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'SolidWorks 2016中文版机械设计从入门到精通', '44', '33', 'products/book/b1001.jpg', 'SolidWorks 2016中文版机械设计从入门到精通', '1', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('2', '常见机构设计及应用图例(第2版)', '66', '54', 'products/book/b1002.jpg', '常见机构设计及应用图例(第2版)', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('3', '非标自动化设备设计与实践', '57', '23', 'products/book/b1003.jpg', '非标自动化设备设计与实践', '0', '2016-12-24 20:18:00', '1');
INSERT INTO `product` VALUES ('4', '工程设计中可靠性验证、试验与分析', '89', '45', 'products/book/b1004.jpg', '工程设计中可靠性验证、试验与分析', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('5', '工业机器人及零部件结构设计', '88', '50', 'products/book/b1005.jpg', '工业机器人及零部件结构设计', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('6', '机器和机构综合与分析', '99', '76', 'products/book/b1006.jpg', '机器和机构综合与分析', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('7', '机械密封原理与设计', '45', '12', 'products/book/b1007.jpg', '机械密封原理与设计', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('8', '机械设计(第2版)(附光盘1张)', '90', '56', 'products/book/b1008.jpg', '机械设计(第2版)(附光盘1张)', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('9', '机械设计(第九版)', '54', '23', 'products/book/b1009.jpg', '机械设计(第九版)', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('10', '机械设计（全2册）', '55', '45', 'products/book/b1010.jpg', '机械设计（全2册）', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('11', '机械设计', '34', '12', 'products/book/b1011.jpg', '机械设计', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('12', '机械设计过程(原书第4版)', '78', '54', 'products/book/b1012.jpg', '机械设计过程(原书第4版)', '0', '2016-12-22 20:18:00', '1');
INSERT INTO `product` VALUES ('13', '材料科学基础', '76', '55', 'products/book/b4001.jpg', '材料科学基础', '1', '2016-12-22 20:18:00', '4');
INSERT INTO `product` VALUES ('14', '机械工程材料手册_金属材料', '35', '90', 'products/book/b4002.jpg', '机械工程材料手册_金属材料', '0', '2016-12-22 20:18:00', '4');
INSERT INTO `product` VALUES ('15', 'Effective Java', '44', '34', 'products/book/b8001.jpg', 'Effective Java', '1', '2016-12-22 20:18:00', '9');
INSERT INTO `product` VALUES ('16', 'Head First Java', '78', '67', 'products/book/b8002.jpg', 'Head First Java', '0', '2016-12-22 20:18:00', '9');
INSERT INTO `product` VALUES ('17', 'Java 8 编程参考官方教程', '442', '343', 'products/book/b8003.jpg', 'Java 8 编程参考官方教程', '0', '2016-12-22 20:18:00', '9');
INSERT INTO `product` VALUES ('18', 'Java 8实战', '34', '34', 'products/book/b8004.jpg', 'Java 8实战', '0', '2016-12-22 20:18:00', '9');
INSERT INTO `product` VALUES ('19', 'Java20年道路与梦想', '98', '78', 'products/book/b8005.jpg', 'Java20年道路与梦想', '0', '2016-12-22 20:18:00', '9');
INSERT INTO `product` VALUES ('20', 'DBA修炼之道', '67', '56', 'products/book/b1301.jpg', 'DBA修炼之道', '1', '2016-12-22 20:18:00', '13');
INSERT INTO `product` VALUES ('21', 'MySQL数据库应用从入门到精通', '34', '26', 'products/book/b1302.jpg', 'MySQL数据库应用从入门到精通', '0', '2016-12-29 20:18:00', '13');
INSERT INTO `product` VALUES ('22', 'Oracle编程艺术', '34', '24', 'products/book/b1303.jpg', 'Oracle编程艺术', '1', '2016-12-22 20:18:00', '13');
INSERT INTO `product` VALUES ('23', 'ジョジョの奇妙な冒険 ', '67', '56', 'products/book/b1501.jpg', 'ジョジョの奇妙な冒険 ', '1', '2016-12-22 20:18:00', '15');
INSERT INTO `product` VALUES ('24', '保卫萝卜-萌漫画-极地大冒险', '34', '23', 'products/book/b1502.jpg', '保卫萝卜-萌漫画-极地大冒险', '0', '2016-12-22 20:18:00', '15');
INSERT INTO `product` VALUES ('25', '博物馆惊奇大冒险', '78', '23', 'products/book/b1503.jpg', '博物馆惊奇大冒险', '1', '2016-12-22 20:18:00', '15');
INSERT INTO `product` VALUES ('26', '穿越星际大冒险', '45', '34', 'products/book/b1504.jpg', '穿越星际大冒险', '0', '2016-12-22 20:18:00', '15');
INSERT INTO `product` VALUES ('27', '丛林大冒险-保卫萝卜萌漫画', '67', '45', 'products/book/b1505.jpg', '丛林大冒险-保卫萝卜萌漫画', '0', '2016-12-22 20:18:00', '15');
INSERT INTO `product` VALUES ('28', '爸妈来自二次元1', '56', '45', 'products/book/b1901.jpg', '爸妈来自二次元1', '1', '2016-12-22 20:18:00', '19');
INSERT INTO `product` VALUES ('29', '薄荷之夏(7)', '56', '35', 'products/book/b1902.jpg', '薄荷之夏(7)', '0', '2016-12-22 20:18:00', '19');
INSERT INTO `product` VALUES ('30', '爆笑校园精选集', '45', '67', 'products/book/b1903.jpg', '爆笑校园精选集', '0', '2016-12-22 20:18:00', '19');
INSERT INTO `product` VALUES ('31', 'Lewin基因X(中文版)', '98', '56', 'products/book/b2001.jpg', 'Lewin基因X(中文版)', '1', '2016-12-22 20:18:00', '20');
INSERT INTO `product` VALUES ('32', '分子生物学(第3版)', '65', '34', 'products/book/b2002.jpg', '分子生物学(第3版)', '0', '2016-12-22 20:18:00', '20');
INSERT INTO `product` VALUES ('33', '分子生物学(第二版)', '23', '21', 'products/book/b2003.jpg', '分子生物学(第二版)', '0', '2016-12-22 20:18:00', '20');
INSERT INTO `product` VALUES ('34', '分子生物学(附光盘)', '88', '78', 'products/book/b2004.jpg', '分子生物学(附光盘)', '1', '2016-12-22 20:18:00', '20');
INSERT INTO `product` VALUES ('35', '分子生物学和生物技术(原著第3版)', '75', '67', 'products/book/b2005.jpg', '分子生物学和生物技术(原著第3版)', '0', '2016-12-22 20:18:00', '20');
INSERT INTO `product` VALUES ('36', '《说苑》研究', '123', '56', 'products/book/b2601.jpg', '《说苑》研究', '0', '2016-12-22 20:18:00', '26');
INSERT INTO `product` VALUES ('37', '陈智超历史文献学论集', '54', '78', 'products/book/b2602.jpg', '陈智超历史文献学论集', '0', '2016-12-26 20:18:00', '26');
INSERT INTO `product` VALUES ('38', '川大史学(第2辑历史文献学卷)', '245', '342', 'products/book/b2603.jpg', '川大史学(第2辑历史文献学卷)', '0', '2016-12-22 20:18:00', '26');
INSERT INTO `product` VALUES ('39', '二十世纪中国历史学', '45', '23', 'products/book/b2604.jpg', '二十世纪中国历史学', '1', '2016-12-22 20:18:00', '26');
INSERT INTO `product` VALUES ('40', '湖南古旧地方文献书目', '87', '56', 'products/book/b2605.jpg', '湖南古旧地方文献书目', '1', '2016-12-22 20:18:00', '26');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'vic', '123', 'vic', 'vic@126.com', '13545364441', 'hubeidaxue', '1', 'b0e402ac69a04013b215c75d132d41c35736a4717fd94f9dbfc59148507692e5');
INSERT INTO `user` VALUES ('2', 'mzy', 'mzy', 'mzy', 'vicebery@163.com', '13444444444', 'wuhan', '1', 'ca6c8000a4854b78a718d07311fe184c5ae1e9dae35c4af48167f25127a8971a');
INSERT INTO `user` VALUES ('3', 'tian', 'tian', 'tian', 'vicebery@163.com', '13433333333', 'hubei', '1', 'b4d718bca6df433899eb0bfebc34d03c73fbeec7fd1642249c7e91694840d056');
INSERT INTO `user` VALUES ('12', 'xiaokeke', 'xiaokeke', 'xiaokeke', 'littlekeke@163.com', '13333332222', 'hubei', '1', 'cef132044ea04ec4ba96abb18102ee16c0070a7aaa9748bda12536d090719b51');
INSERT INTO `user` VALUES ('13', '1111', '11111', '111', 'vicebery@163.com', '1111', '111111', '1', '9d496e4bfea44b73928dd68b7568e6fe2fe173c067db4e489b39b16354ff9580');
SET FOREIGN_KEY_CHECKS=1;
