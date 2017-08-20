/*
Navicat MySQL Data Transfer

Source Server         : userConn
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : easybuy

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-08-20 19:20:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for easybuy_comment
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `commentContent` varchar(255) DEFAULT NULL,
  `commentDate` datetime ,
  `userId` int(11) DEFAULT NULL,
  `replyContent` varchar(255) DEFAULT NULL,
  `replyDate` datetime ,
  PRIMARY KEY (`commentId`),
  KEY `FK_comment_user` (`userId`),
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`userId`) REFERENCES `easybuy_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES ('1', '测试1', '2017-08-18 21:02:52', '14', '测试2', '2017-08-18 21:02:52');
INSERT INTO `easybuy_comment` VALUES ('2', '测试2', '2017-08-18 00:51:43', '15', '测试2', '2017-08-18 00:51:43');
INSERT INTO `easybuy_comment` VALUES ('3', '测试3', '2017-08-18 21:02:17', '16', '123', '2017-08-18 21:02:17');
INSERT INTO `easybuy_comment` VALUES ('4', '测试4', '2017-08-18 01:07:49', '11', null, null);
INSERT INTO `easybuy_comment` VALUES ('5', '测试5', '2017-08-18 21:01:44', '13', '5', '2017-08-18 21:01:44');
INSERT INTO `easybuy_comment` VALUES ('6', '测试6', '2017-08-18 01:08:09', '10', null, null);

-- ----------------------------
-- Table structure for easybuy_news
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `newsId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `newsTitle` varchar(40) NOT NULL COMMENT '标题',
  `newsContent` varchar(1000) NOT NULL COMMENT '内容',
  `newsCreateTime` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`newsId`),
  UNIQUE KEY `PK__EASYBUY___C63B5EE724927208` (`newsId`),
  UNIQUE KEY `UQ__EASYBUY___C12AD09D276EDEB3` (`newsTitle`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES ('531', '会员特惠月开始了', '会员特惠月开始了,亲们赶快下单啊,不到剁手誓不罢休啊,不到离婚誓不清空购物车啊。更多优惠，尽在易买网。', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('597', '迎双旦促销大酬宾', '迎双旦促销大酬宾', '2010-12-24');
INSERT INTO `easybuy_news` VALUES ('649', '加入会员，赢千万大礼包', '加入会员，赢千万大礼包', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('650', '新年不夜天，通宵也是开张了', '新年不夜天，通宵也是开张了', '2011-05-22');
INSERT INTO `easybuy_news` VALUES ('651', '积分兑换开始了', '积分兑换开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('653', '团购阿迪1折起', '团购阿迪1折起', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('664', '最新酷睿笔记本', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05');
INSERT INTO `easybuy_news` VALUES ('675', 'aa', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14');
INSERT INTO `easybuy_news` VALUES ('676', 'ResultR', 'ResultResultResultResultResu', '2016-03-28');
INSERT INTO `easybuy_news` VALUES ('677', '会员特惠月开始了1', '会员特惠月开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('679', '加入会员，赢千万大礼包3', '加入会员，赢千万大礼包', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('680', '新年不夜天，通宵也是开张了4', '新年不夜天，通宵也是开张了', '2011-05-22');
INSERT INTO `easybuy_news` VALUES ('681', '积分兑换开始了5', '积分兑换开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('682', '团购阿迪1折起6', '团购阿迪1折起', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('683', '最新酷睿笔记本7', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05');
INSERT INTO `easybuy_news` VALUES ('684', 'aa8', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14');
INSERT INTO `easybuy_news` VALUES ('685', 'ResultR9', 'ResultResultResultResultResu', '2016-03-28');
INSERT INTO `easybuy_news` VALUES ('686', '会员特惠月开始了11', '会员特惠月开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('688', '加入会员，赢千万大礼包31', '加入会员，赢千万大礼包', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('689', '新年不夜天，通宵也是开张了41', '新年不夜天，通宵也是开张了', '2011-05-22');
INSERT INTO `easybuy_news` VALUES ('690', '积分兑换开始了51', '积分兑换开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('691', '团购阿迪1折起61', '团购阿迪1折起', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('692', '最新酷睿笔记本71', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05');
INSERT INTO `easybuy_news` VALUES ('693', 'aa81', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14');
INSERT INTO `easybuy_news` VALUES ('694', 'ResultR91', 'ResultResultResultResultResu', '2016-03-28');
INSERT INTO `easybuy_news` VALUES ('695', '会员特惠月开始了111', '会员特惠月开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('696', '迎双旦促销大酬宾211', '迎双旦促销大酬宾', '2010-12-24');
INSERT INTO `easybuy_news` VALUES ('697', '加入会员，赢千万大礼包311', '加入会员，赢千万大礼包', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('698', '新年不夜天，通宵也是开张了411', '新年不夜天，通宵也是开张了', '2011-05-22');
INSERT INTO `easybuy_news` VALUES ('699', '积分兑换开始了511', '积分兑换开始了', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('700', '团购阿迪1折起611', '团购阿迪1折起', '2010-12-22');
INSERT INTO `easybuy_news` VALUES ('701', '最新酷睿笔记本711', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05');
INSERT INTO `easybuy_news` VALUES ('703', 'ResultR911', 'ResultResultResultResultResu', '2016-03-28');

-- ----------------------------
-- Table structure for easybuy_order
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(255) DEFAULT NULL COMMENT '用户主键',
  `orderCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `orderCost` double DEFAULT NULL COMMENT '总消费',
  `orderSerialNumber` varchar(255) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`orderId`),
  KEY `FK_order_user` (`userId`),
  CONSTRAINT `FK_order_user` FOREIGN KEY (`userId`) REFERENCES `easybuy_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('1', '18', '2016-06-02 14:51:46', '1721', '31579623146812');
INSERT INTO `easybuy_order` VALUES ('2', '18', '2016-06-02 14:52:49', '8596', '31213141312312');
INSERT INTO `easybuy_order` VALUES ('3', '2', '2016-06-03 11:41:09', '456', '31551324346532');

-- ----------------------------
-- Table structure for easybuy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `orderDetailId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderId` int(10) NOT NULL COMMENT '订单主键',
  `productId` int(10) NOT NULL COMMENT '商品主键',
  `orderQuantity` int(10) NOT NULL COMMENT '数量',
  `orderCost` float NOT NULL COMMENT '消费',
  PRIMARY KEY (`orderDetailId`),
  UNIQUE KEY `PK__EASYBUY___66E1BD8E2F10007B` (`orderDetailId`),
  KEY `FK_detail_order` (`orderId`),
  KEY `FK_detail_product` (`productId`),
  CONSTRAINT `FK_detail_order` FOREIGN KEY (`orderId`) REFERENCES `easybuy_order` (`orderId`),
  CONSTRAINT `FK_detail_product` FOREIGN KEY (`productId`) REFERENCES `easybuy_product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('1', '1', '733', '5', '760');
INSERT INTO `easybuy_order_detail` VALUES ('2', '1', '734', '4', '608');
INSERT INTO `easybuy_order_detail` VALUES ('3', '1', '735', '1', '152');
INSERT INTO `easybuy_order_detail` VALUES ('4', '1', '738', '1', '45');
INSERT INTO `easybuy_order_detail` VALUES ('5', '1', '739', '1', '156');
INSERT INTO `easybuy_order_detail` VALUES ('6', '2', '755', '1', '8596');
INSERT INTO `easybuy_order_detail` VALUES ('7', '3', '733', '1', '152');
INSERT INTO `easybuy_order_detail` VALUES ('8', '3', '734', '1', '152');
INSERT INTO `easybuy_order_detail` VALUES ('9', '3', '735', '1', '152');

-- ----------------------------
-- Table structure for easybuy_product
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `productId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productName` varchar(20) NOT NULL COMMENT '名称',
  `productDescription` varchar(1024) DEFAULT NULL COMMENT '描述',
  `productPrice` float NOT NULL COMMENT '价格',
  `productStock` int(10) NOT NULL COMMENT '库存',
  `categoryId` int(10) DEFAULT NULL COMMENT '分类3',
  `productFileName` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `isDelete` int(1) DEFAULT '0' COMMENT '是否删除(1：删除 0：未删除)',
  PRIMARY KEY (`productId`),
  UNIQUE KEY `PK__EASYBUY___94F6E55132E0915F` (`productId`),
  KEY `FK_product_category` (`categoryId`),
  CONSTRAINT `FK_product_category` FOREIGN KEY (`categoryId`) REFERENCES `easybuy_product_category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('733', '香奈儿', '订单', '152', '94', '655', '27A1789ED5764D82A5506DF3DC3933F9.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('734', '洗面奶', '', '152', '995', '655', 'D6C9BD438C5643D6B1A6C52E5426FE22.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('735', '啫喱水', '', '152', '998', '655', '1A836D2B3A3348DDAB19807E6CEA8028.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('736', '香水5852', '', '152', '1000', '655', '4D9499BAD92A42D291094E797BA2EA3F.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('737', '香水', '', '152', '111', '655', 'A9924F9DB68B4DF99FDBF05902075AF0.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('738', '润肤露', '', '45', '109', '655', '3B059EDB5237407980458CE9EA9D3204.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('739', '洁面装', '', '156', '99', '655', 'A62C6DF55116440CA3DE9DB37901ED4F.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('740', '电饭锅', '', '158', '100', '659', '40C3B76BA31246618E3CFC8723D33517.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('742', '坚果套餐', '', '158', '1000', '662', 'E03D74145A034F6D909879829CB99D80.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('743', '超甜蜜崭', '', '589', '1000', '663', '7121E55099FC477680B1229205CE3D29.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('744', '华为2566', '', '589', '1000', '672', 'F24B4140A2284B3788A38F3B5AD1809A.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('745', '荣耀3C', '', '589', '100', '672', 'F3921E12552A4D0AA3F75467B146A959.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('746', '小米手环', '', '963', '100', '675', '72F75A371B0B4C26A7F72FAAEF96FC68.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('747', '华为2265', '', '896', '1000', '673', '161F355A8A8549BA8F7F4CE3B4F07E40.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('748', '越南坚果', '', '520', '1000', '662', 'CBC98D3C9E544830821632F5C313D93E.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('749', '日本进口马桶', '', '5866', '100', '657', 'A5AF40825E6940B2A59A040100E181A8.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('750', '联想Y系列', '', '569', '1000', '691', '956DB0BEC41B41B8A06C05C950130E23.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('751', '脑白金1号', '', '589', '1000', '680', '66E96AF9E9714A5C9EA901811173D662.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('752', '莫里斯按', '', '589', '1000', '678', 'A7436BC607E74C81B392DCFE69D4AEAB.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('753', '三鹿好奶粉', '', '859', '100', '679', '3C465E7B8A324A8DA2A2EEE202E36166.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('754', '儿童牛奶', '', '5896', '100', '679', 'D1AC9AE71ED348FA8D880FD4279D3422.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('755', '软沙发', '', '8596', '99', '696', 'ED7921DE40FC47E18365754709A21194.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('756', '收纳盒', '', '5966', '100', '696', 'DB86CA25CA4F4B4AA906F46BE542C6A6.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('757', '洗衣液', '', '58', '1000', '696', 'E6CCDC343ACC471C908E9748776C6421.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('758', '红短沙发', '', '596', '123', '696', 'BD5C77465DC2466BBCE7F95FB9764392.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('759', '新西兰奶粉', '', '5896', '100', '679', '9ED375098D42497B8FC33167E06D0EE8.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('760', '婴儿车', '', '11000', '100', '687', '1DBC0930641D43C29D74A9E1B40FEEBB.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('761', '夏款婴儿车', '', '963', '100', '688', '16290C4DBEAC4F00A636667019621468.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('762', '抗压旅行箱', '', '569', '1000', '685', '272CC434BE7A4469AB0E7882BD1A85FF.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('763', '透明手提箱', '', '8596', '1000', '684', 'EAA8E66259BF4239B4A2237B62520EF1.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('764', '婴儿果粉', '', '5896', '1000', '662', '08BE30BF7B5F4930B0093D8CC4056057.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('765', '椰子粉', '', '5963', '1000', '662', '9C006B8BD1AD45398F474A8471ADC50B.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('766', '坚果蛋糕', '', '200', '100', '663', '2E5A16E21E0640E0BAE03E9B995DCD28.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('767', '编制手提箱', '', '5896', '1000', '688', '2E1D2A5E65A94FEEA17C72E47C530057.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('768', '纸箱', '', '5896', '100', '687', '443E5A4122064209AFE89250179A2FF0.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('769', '健胃液', '', '152', '1000', '679', '30B5547CD7384DAA8A2F4F4D8C0BBF89.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('770', '联想NTC', '', '8596', '100', '673', '48BC371A85A548B7A7589E3F542D911D.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('771', '测试1', null, '1241', '123', '654', '123.jpg', '0');
INSERT INTO `easybuy_product` VALUES ('772', '测试2', null, '1231', '123', '654', '456.jpg', '0');

-- ----------------------------
-- Table structure for easybuy_product_category
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `categoryId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `categoryName` varchar(20) NOT NULL COMMENT '名称',
  `categoryParentId` int(10) NOT NULL COMMENT '父级目录id',
  `iconClass` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `PK__EASYBUY___9EC2A4E236B12243` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES ('548', '化妆品', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('628', '家用商品', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('654', '面部护理', '548', '');
INSERT INTO `easybuy_product_category` VALUES ('655', '少女派', '654', '');
INSERT INTO `easybuy_product_category` VALUES ('656', '餐具', '628', '');
INSERT INTO `easybuy_product_category` VALUES ('657', '卫具', '628', '');
INSERT INTO `easybuy_product_category` VALUES ('658', '叉子', '656', '');
INSERT INTO `easybuy_product_category` VALUES ('659', '锅', '656', '');
INSERT INTO `easybuy_product_category` VALUES ('660', '进口食品,生鲜', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('661', '零食/糖果/巧克力', '660', '');
INSERT INTO `easybuy_product_category` VALUES ('662', '坚果', '661', '');
INSERT INTO `easybuy_product_category` VALUES ('663', '蜜饯', '661', '');
INSERT INTO `easybuy_product_category` VALUES ('669', '孕期教育', '546', '');
INSERT INTO `easybuy_product_category` VALUES ('670', '电子商品', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('671', '手机', '670', '');
INSERT INTO `easybuy_product_category` VALUES ('672', '华为手机', '671', '');
INSERT INTO `easybuy_product_category` VALUES ('673', '联想手机', '671', '');
INSERT INTO `easybuy_product_category` VALUES ('674', '手环', '670', '');
INSERT INTO `easybuy_product_category` VALUES ('675', '小米手环', '674', '');
INSERT INTO `easybuy_product_category` VALUES ('676', '保健食品', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('677', '老年保健品', '676', '');
INSERT INTO `easybuy_product_category` VALUES ('678', '中年营养品', '676', '');
INSERT INTO `easybuy_product_category` VALUES ('679', '儿童保健品', '676', '');
INSERT INTO `easybuy_product_category` VALUES ('680', '脑白金', '677', '');
INSERT INTO `easybuy_product_category` VALUES ('681', '箱包', '0', '');
INSERT INTO `easybuy_product_category` VALUES ('682', '旅行箱', '681', '');
INSERT INTO `easybuy_product_category` VALUES ('683', '手提箱', '681', '');
INSERT INTO `easybuy_product_category` VALUES ('684', '大型', '683', '');
INSERT INTO `easybuy_product_category` VALUES ('685', '小型', '683', '');
INSERT INTO `easybuy_product_category` VALUES ('686', '中型', '683', '');
INSERT INTO `easybuy_product_category` VALUES ('687', '大型', '682', '');
INSERT INTO `easybuy_product_category` VALUES ('688', '中型', '682', '');
INSERT INTO `easybuy_product_category` VALUES ('689', '小型', '682', '');
INSERT INTO `easybuy_product_category` VALUES ('690', '电脑', '670', '');
INSERT INTO `easybuy_product_category` VALUES ('691', '联想电脑', '690', '');
INSERT INTO `easybuy_product_category` VALUES ('692', '刀叉', '656', null);
INSERT INTO `easybuy_product_category` VALUES ('693', '碗筷', '656', null);
INSERT INTO `easybuy_product_category` VALUES ('696', '客厅专用', '628', '');

-- ----------------------------
-- Table structure for easybuy_recentbrowse
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_recentbrowse`;
CREATE TABLE `easybuy_recentbrowse` (
  `recentBrowseId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `recentBrowseDate` datetime ,
  PRIMARY KEY (`recentBrowseId`),
  KEY `FK_recentbrowse_user` (`userId`),
  KEY `FK_recentbrowse_product` (`productId`),
  CONSTRAINT `FK_recentbrowse_product` FOREIGN KEY (`productId`) REFERENCES `easybuy_product` (`productId`),
  CONSTRAINT `FK_recentbrowse_user` FOREIGN KEY (`userId`) REFERENCES `easybuy_user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_recentbrowse
-- ----------------------------

-- ----------------------------
-- Table structure for easybuy_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shoppingcart`;
CREATE TABLE `easybuy_shoppingcart` (
  `shoppingCartId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`shoppingCartId`),
  KEY `FK_shoppingcart_user` (`userId`),
  KEY `FK_shoppingcart_product` (`productId`),
  CONSTRAINT `FK_shoppingcart_product` FOREIGN KEY (`productId`) REFERENCES `easybuy_product` (`productId`),
  CONSTRAINT `FK_shoppingcart_user` FOREIGN KEY (`userId`) REFERENCES `easybuy_user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for easybuy_user
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `userId` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginName` varchar(255) NOT NULL COMMENT '登录名',
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `userPassword` varchar(255) NOT NULL COMMENT '密码',
  `userSex` int(2) NOT NULL DEFAULT '1' COMMENT '性别(1:男 0：女)',
  `identityCode` varchar(60) DEFAULT NULL COMMENT '身份证号',
  `userEmail` varchar(80) DEFAULT NULL COMMENT '邮箱',
  `userMobile` varchar(11) DEFAULT NULL COMMENT '手机',
  `userType` int(2) DEFAULT '0' COMMENT '类型（1：后台 0:前台）',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `PK__EASYBUY___C96109CC3A81B327` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('2', 'admin', '系统管理员', '123', '1', '130406198302141869', 'hello11@bdqn.com', '1583233515', '1');
INSERT INTO `easybuy_user` VALUES ('10', 'cgn', '程广宁', '123', '1', '140225189987854589', '1044732267@qq.com', '13366055011', '0');
INSERT INTO `easybuy_user` VALUES ('11', 'hyl', '韩语良', '123', '1', '140225198874584539', '1044732267@qq.com', '13366055010', '0');
INSERT INTO `easybuy_user` VALUES ('12', 'ck', '陈康', '123', '1', '140225189987854589', '1044732267@qq.com', '13366055010', '0');
INSERT INTO `easybuy_user` VALUES ('13', 'kys', '康有沈', '123', '1', '1402251985512541525', '1044732267@qq.com', '13366055010', '0');
INSERT INTO `easybuy_user` VALUES ('14', 'sb', '沈白', '123456', '0', '140225158987854589', '1044732267@qq.com', '13366055010', '0');
INSERT INTO `easybuy_user` VALUES ('15', 'lb', '李白', '123', '1', '140225189987854589', '10447322658@qq.com', '1336998554', '0');
INSERT INTO `easybuy_user` VALUES ('16', 'lgw', '李高伟', '123', '1', '140225189987854589', '1011322658@qq.com', '1336998554', '0');
INSERT INTO `easybuy_user` VALUES ('18', 'shangzezhong', '尚泽忠', '123', '1', '140225198810013745', '1044888844@qq.com', '13366528458', '0');
INSERT INTO `easybuy_user` VALUES ('19', 'liguangliang', '李光亮', '123', '1', '140225198841547785', '1047777@qq.com', '13366055048', '0');
INSERT INTO `easybuy_user` VALUES ('20', 'szz', '李光亮', '123', '1', '140225198810013748', '1044732267@qq.com', '13366555010', '1');

-- ----------------------------
-- Table structure for easybuy_user_address
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user_address`;
CREATE TABLE `easybuy_user_address` (
  `addressId` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userId` int(255) DEFAULT NULL COMMENT '用户主键',
  `addressName` varchar(255) DEFAULT NULL COMMENT '地址',
  `addressCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isDefault` int(2) DEFAULT '0' COMMENT '是否是默认地址（1:是 0否）',
  `addressRemark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`addressId`),
  KEY `FK_address_user` (`userId`),
  CONSTRAINT `FK_address_user` FOREIGN KEY (`userId`) REFERENCES `easybuy_user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_user_address
-- ----------------------------
INSERT INTO `easybuy_user_address` VALUES ('11', '2', '北京市海淀区大有庄', null, '0', '朋友家');
INSERT INTO `easybuy_user_address` VALUES ('12', '2', '北京市海淀区大有庄', null, '0', '女朋友公司');
INSERT INTO `easybuy_user_address` VALUES ('13', '10', '北京市西直门大桥芬兰国际大厦', null, '0', '女朋友地址');
INSERT INTO `easybuy_user_address` VALUES ('14', '18', '北京市花园路小区', null, '0', '家里');
INSERT INTO `easybuy_user_address` VALUES ('15', '18', '北京市海淀区成府路', null, '0', '公司');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `stuno` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`stuno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('1');
INSERT INTO `result` VALUES ('2');
INSERT INTO `result` VALUES ('3');
INSERT INTO `result` VALUES ('4');
INSERT INTO `result` VALUES ('6');
INSERT INTO `result` VALUES ('7');
INSERT INTO `result` VALUES ('8');
INSERT INTO `result` VALUES ('9');
INSERT INTO `result` VALUES ('10');

-- ----------------------------
-- Procedure structure for category_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `category_del`;
DELIMITER ;;
CREATE DEFINER=`MySql`@`localhost` PROCEDURE `category_del`(IN `delId` integer,OUT `delCount` integer)
BEGIN
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION,SQLWARNING,NOT FOUND  SET t_error=1; 
	START TRANSACTION;
		delete from easybuy_product_category 
		where categoryParentId in (select c.categoryId from
			(select categoryId from easybuy_product_category where categoryParentId = delId) c
		);
		delete from easybuy_product_category where categoryParentId = delId;
		delete from easybuy_product_category where categoryId = delId;
		set delCount = ROW_COUNT();
		IF t_error = 1 
			THEN ROLLBACK; 
		ELSE 
			COMMIT;
		END IF;
END
;;
DELIMITER ;
