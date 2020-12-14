/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mmall

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-12-15 01:28:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) NOT NULL COMMENT '订单主键',
  `product_id` int(11) NOT NULL COMMENT '商品主键',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `cost` float NOT NULL COMMENT '消费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___66E1BD8E2F10007B` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('115', '133', '735', '4', '608');
INSERT INTO `order_detail` VALUES ('116', '133', '745', '3', '1767');
INSERT INTO `order_detail` VALUES ('117', '134', '738', '10', '450');
INSERT INTO `order_detail` VALUES ('118', '134', '739', '66', '10296');
INSERT INTO `order_detail` VALUES ('119', '134', '758', '10', '5960');
INSERT INTO `order_detail` VALUES ('120', '134', '735', '33', '5016');
INSERT INTO `order_detail` VALUES ('121', '134', '740', '6', '948');
INSERT INTO `order_detail` VALUES ('122', '134', '750', '100', '56900');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL COMMENT '库存',
  `categorylevelone_id` int(11) DEFAULT NULL COMMENT '分类1',
  `categoryleveltwo_id` int(11) DEFAULT NULL COMMENT '分类2',
  `categorylevelthree_id` int(11) DEFAULT NULL COMMENT '分类3',
  `file_name` varchar(200) DEFAULT NULL COMMENT '文件名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___94F6E55132E0915F` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('733', '香奈儿', '好闻的香水！！！', '152', '978', '548', '654', '655', 'baby_1.jpg');
INSERT INTO `product` VALUES ('734', '洗面奶', '好用，推荐。', '152.5', '10', '548', '654', '655', 'baby_2.jpg');
INSERT INTO `product` VALUES ('735', '啫喱水', '', '152', '959', '548', '654', '655', 'baby_3.jpg');
INSERT INTO `product` VALUES ('736', '香水', '', '152', '1000', '548', '654', '655', 'baby_4.jpg');
INSERT INTO `product` VALUES ('737', '香水', '', '152', '111', '548', '654', '655', 'baby_5.jpg');
INSERT INTO `product` VALUES ('738', '润肤露', '', '45', '99', '548', '654', '655', 'baby_6.jpg');
INSERT INTO `product` VALUES ('739', '洁面装', '', '156', '33', '548', '654', '655', 'bk_2.jpg');
INSERT INTO `product` VALUES ('740', '电饭锅', '', '158', '94', '628', '656', '659', 'bk_1.jpg');
INSERT INTO `product` VALUES ('741', '婴儿喂奶装', '', '569', '100', '632', '637', '653', 'bk_3.jpg');
INSERT INTO `product` VALUES ('742', '坚果套餐', '', '158', '1000', '660', '661', '662', 'bk_4.jpg');
INSERT INTO `product` VALUES ('743', '超甜蜜崭', '', '589', '1000', '660', '661', '663', 'bk_5.jpg');
INSERT INTO `product` VALUES ('744', '华为2566', '', '589', '1000', '670', '671', '672', 'de1.jpg');
INSERT INTO `product` VALUES ('745', '荣耀3C', '', '589', '92', '670', '671', '672', 'de2.jpg');
INSERT INTO `product` VALUES ('746', '小米手环', '', '963', '98', '670', '674', '675', 'de3.jpg');
INSERT INTO `product` VALUES ('747', '华为2265', '', '896', '1000', '670', '671', '673', 'de4.jpg');
INSERT INTO `product` VALUES ('748', '越南坚果', '', '520', '1', '660', '661', '662', 'de5.jpg');
INSERT INTO `product` VALUES ('749', '日本进口马桶', '', '5866', '100', '628', '657', '0', 'food_1.jpg');
INSERT INTO `product` VALUES ('750', '联想Y系列', '', '569', '894', '670', '690', '691', 'food_2.jpg');
INSERT INTO `product` VALUES ('751', '脑白金1号', '', '589', '1000', '676', '677', '680', 'food_3.jpg');
INSERT INTO `product` VALUES ('752', '莫里斯按', '', '589', '1000', '676', '678', '0', 'food_4.jpg');
INSERT INTO `product` VALUES ('753', '三鹿好奶粉', '', '859', '100', '676', '679', '0', 'food_5.jpg');
INSERT INTO `product` VALUES ('754', '儿童牛奶', '', '5896', '100', '676', '679', '0', 'food_6.jpg');
INSERT INTO `product` VALUES ('755', '软沙发', '', '8596', '99', '628', '696', '0', 'food_b1.jpg');
INSERT INTO `product` VALUES ('756', '收纳盒', '', '5966', '100', '628', '696', '0', 'food_b2.jpg');
INSERT INTO `product` VALUES ('757', '洗衣液', '', '58', '1000', '628', '696', '0', 'food_r.jpg');
INSERT INTO `product` VALUES ('758', '红短沙发', '', '596', '113', '628', '696', '0', 'fre_1.jpg');
INSERT INTO `product` VALUES ('759', '新西兰奶粉', '', '5896', '100', '676', '679', '0', 'fre_2.jpg');
INSERT INTO `product` VALUES ('760', '婴儿车', '', '11000', '100', '681', '682', '687', 'fre_3.jpg');
INSERT INTO `product` VALUES ('761', '夏款婴儿车', '', '963', '99', '681', '682', '688', 'fre_4.jpg');
INSERT INTO `product` VALUES ('762', '抗压旅行箱', '', '569', '1000', '681', '683', '685', 'fre_5.jpg');
INSERT INTO `product` VALUES ('763', '透明手提箱', '', '8596', '1000', '681', '683', '684', 'fre_6.jpg');
INSERT INTO `product` VALUES ('764', '婴儿果粉', '', '5896', '999', '660', '661', '662', 'milk_1.jpg');
INSERT INTO `product` VALUES ('765', '椰子粉', '', '5963', '1000', '660', '661', '662', 'milk_2.jpg');
INSERT INTO `product` VALUES ('766', '坚果蛋糕', '', '200', '98', '660', '661', '663', 'milk_3.jpg');
INSERT INTO `product` VALUES ('767', '编制手提箱', '', '5896', '1000', '681', '682', '688', 'milk_4.jpg');
INSERT INTO `product` VALUES ('768', '纸箱', '', '5896', '3', '681', '682', '687', 'milk_5.jpg');
INSERT INTO `product` VALUES ('769', '健胃液', '', '152', '1000', '676', '679', '0', 'milk_6.jpg');
INSERT INTO `product` VALUES ('770', '联想NTC', '', '8596', '100', '670', '671', '673', 'milk_7.jpg');
INSERT INTO `product` VALUES ('771', '香水1', null, '100', '100', '548', '654', '655', 'milk_8.jpg');
INSERT INTO `product` VALUES ('772', '香水2', null, '100', '100', '548', '654', '655', 'pro1.jpg');
INSERT INTO `product` VALUES ('773', '香水3', null, '100', '100', '548', '654', '655', 'pro2.jpg');
INSERT INTO `product` VALUES ('774', '香水4', null, '100', '100', '548', '654', '655', 'pro3.jpg');
INSERT INTO `product` VALUES ('775', '香水5', null, '100', '100', '548', '654', '655', 'pro4.jpg');
INSERT INTO `product` VALUES ('776', '香水6', null, '1', '1', '548', '654', '655', 'pro5.jpg');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '父级目录id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK__EASYBUY___9EC2A4E236B12243` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('548', '化妆品', '0', '1');
INSERT INTO `product_category` VALUES ('628', '家用商品', '0', '1');
INSERT INTO `product_category` VALUES ('654', '面部护理', '548', '2');
INSERT INTO `product_category` VALUES ('655', '少女派', '654', '3');
INSERT INTO `product_category` VALUES ('656', '餐具', '628', '2');
INSERT INTO `product_category` VALUES ('657', '卫具', '628', '2');
INSERT INTO `product_category` VALUES ('658', '叉子', '656', '3');
INSERT INTO `product_category` VALUES ('659', '锅', '656', '3');
INSERT INTO `product_category` VALUES ('660', '进口食品', '0', '1');
INSERT INTO `product_category` VALUES ('661', '零食/糖果/巧克力', '660', '2');
INSERT INTO `product_category` VALUES ('662', '坚果', '661', '3');
INSERT INTO `product_category` VALUES ('663', '蜜饯', '661', '3');
INSERT INTO `product_category` VALUES ('669', '孕期教育', '546', '3');
INSERT INTO `product_category` VALUES ('670', '电子商品', '0', '1');
INSERT INTO `product_category` VALUES ('671', '手机', '670', '2');
INSERT INTO `product_category` VALUES ('672', '华为手机', '671', '3');
INSERT INTO `product_category` VALUES ('673', '联想手机', '671', '3');
INSERT INTO `product_category` VALUES ('674', '手环', '670', '2');
INSERT INTO `product_category` VALUES ('675', '小米手环', '674', '3');
INSERT INTO `product_category` VALUES ('676', '保健食品', '0', '1');
INSERT INTO `product_category` VALUES ('677', '老年保健品', '676', '2');
INSERT INTO `product_category` VALUES ('678', '中年营养品', '676', '2');
INSERT INTO `product_category` VALUES ('679', '儿童保健品', '676', '2');
INSERT INTO `product_category` VALUES ('680', '脑白金', '677', '3');
INSERT INTO `product_category` VALUES ('681', '箱包', '0', '1');
INSERT INTO `product_category` VALUES ('682', '旅行箱', '681', '2');
INSERT INTO `product_category` VALUES ('683', '手提箱', '681', '2');
INSERT INTO `product_category` VALUES ('684', '大型', '683', '3');
INSERT INTO `product_category` VALUES ('685', '小型', '683', '3');
INSERT INTO `product_category` VALUES ('686', '中型', '683', '3');
INSERT INTO `product_category` VALUES ('687', '大型', '682', '3');
INSERT INTO `product_category` VALUES ('688', '中型', '682', '3');
INSERT INTO `product_category` VALUES ('689', '小型', '682', '3');
INSERT INTO `product_category` VALUES ('690', '电脑', '670', '2');
INSERT INTO `product_category` VALUES ('691', '联想电脑', '690', '3');
INSERT INTO `product_category` VALUES ('692', '刀叉', '656', '3');
INSERT INTO `product_category` VALUES ('693', '碗筷', '656', '3');
INSERT INTO `product_category` VALUES ('696', '客厅专用', '628', '2');
