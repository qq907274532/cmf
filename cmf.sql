/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : cmf

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-13 22:21:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hx_account_log
-- ----------------------------
DROP TABLE IF EXISTS `hx_account_log`;
CREATE TABLE `hx_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `user_money` decimal(10,2) NOT NULL COMMENT '用户该笔记录的余额',
  `frozen_money` decimal(10,2) NOT NULL COMMENT '被冻结的资金',
  `rank_points` mediumint(9) NOT NULL COMMENT '等级积分',
  `pay_points` mediumint(9) NOT NULL COMMENT '消费积分',
  `change_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '该笔操作发生的时间',
  `change_desc` varchar(255) NOT NULL COMMENT '该笔操作的备注',
  `change_type` tinyint(3) unsigned NOT NULL COMMENT '操作类型,0为充值,1,为提现,2为管理员调节,99为其它类型',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='用户账目日志表';

-- ----------------------------
-- Records of hx_account_log
-- ----------------------------
INSERT INTO `hx_account_log` VALUES ('1', '5', '1100000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '11', '2');
INSERT INTO `hx_account_log` VALUES ('2', '3', '400000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '21312', '2');
INSERT INTO `hx_account_log` VALUES ('3', '2', '300000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '300000', '2');
INSERT INTO `hx_account_log` VALUES ('4', '1', '50000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '50', '2');
INSERT INTO `hx_account_log` VALUES ('5', '5', '0.00', '10000.00', '0', '0', '2016-12-06 17:11:24', '32', '2');
INSERT INTO `hx_account_log` VALUES ('6', '1', '-400.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051298180', '99');
INSERT INTO `hx_account_log` VALUES ('7', '1', '-975.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051255518', '99');
INSERT INTO `hx_account_log` VALUES ('8', '1', '0.00', '0.00', '960', '960', '2016-12-06 17:11:24', '订单 2009051255518 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('9', '1', '0.00', '0.00', '385', '385', '2016-12-06 17:11:24', '订单 2009051298180 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('10', '1', '-2310.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051267570', '99');
INSERT INTO `hx_account_log` VALUES ('11', '1', '0.00', '0.00', '2300', '2300', '2016-12-06 17:11:24', '订单 2009051267570 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('12', '1', '-5989.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051230249', '99');
INSERT INTO `hx_account_log` VALUES ('13', '1', '-8610.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051276258', '99');
INSERT INTO `hx_account_log` VALUES ('14', '1', '0.00', '0.00', '0', '-1', '2016-12-06 17:11:24', '参加夺宝奇兵夺宝奇兵之夏新N7 ', '99');
INSERT INTO `hx_account_log` VALUES ('15', '1', '0.00', '0.00', '0', '-1', '2016-12-06 17:11:24', '参加夺宝奇兵夺宝奇兵之诺基亚N96 ', '99');
INSERT INTO `hx_account_log` VALUES ('16', '1', '0.00', '0.00', '0', '100000', '2016-12-06 17:11:24', '奖励', '2');
INSERT INTO `hx_account_log` VALUES ('17', '1', '-10.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051268194', '99');
INSERT INTO `hx_account_log` VALUES ('18', '1', '0.00', '0.00', '0', '-17000', '2016-12-06 17:11:24', '支付订单 2009051268194', '99');
INSERT INTO `hx_account_log` VALUES ('19', '1', '0.00', '0.00', '-960', '-960', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009051255518 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('20', '1', '975.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009051255518 时使用的预付款', '99');
INSERT INTO `hx_account_log` VALUES ('21', '1', '0.00', '0.00', '960', '960', '2016-12-06 17:11:24', '订单 2009051719232 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('22', '3', '-1000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '追加使用余额支付订单：2009051227085', '99');
INSERT INTO `hx_account_log` VALUES ('23', '1', '-13806.60', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009052224892', '99');
INSERT INTO `hx_account_log` VALUES ('24', '1', '0.00', '0.00', '14045', '14045', '2016-12-06 17:11:24', '订单 2009052224892 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('25', '1', '0.00', '0.00', '-2300', '-2300', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009051267570 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('26', '1', '2310.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009051267570 时使用的预付款', '99');
INSERT INTO `hx_account_log` VALUES ('27', '1', '0.00', '0.00', '17044', '17044', '2016-12-06 17:11:24', '订单 2009061585887 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('28', '1', '17054.00', '0.00', '0', '0', '2016-12-06 17:11:24', '1', '99');
INSERT INTO `hx_account_log` VALUES ('29', '1', '0.00', '0.00', '-17044', '-17044', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009061585887 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('30', '1', '-3196.30', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061525429', '99');
INSERT INTO `hx_account_log` VALUES ('31', '1', '-1910.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061503335', '99');
INSERT INTO `hx_account_log` VALUES ('32', '1', '0.00', '0.00', '1900', '1900', '2016-12-06 17:11:24', '订单 2009061503335 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('33', '1', '0.00', '0.00', '-1900', '-1900', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009061503335 赠送的积分', '99');
INSERT INTO `hx_account_log` VALUES ('34', '1', '1910.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009061503335 时使用的预付款', '99');
INSERT INTO `hx_account_log` VALUES ('35', '1', '-500.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061510313', '99');
INSERT INTO `hx_account_log` VALUES ('36', '1', '-111.00', '0.00', '0', '0', '0000-00-00 00:00:00', '', '2');
INSERT INTO `hx_account_log` VALUES ('37', '1', '-111.00', '0.00', '0', '0', '2016-12-08 22:17:27', '', '2');
INSERT INTO `hx_account_log` VALUES ('38', '1', '-1111.00', '0.00', '0', '0', '2016-12-12 16:36:03', '', '2');

-- ----------------------------
-- Table structure for hx_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `hx_admin_user`;
CREATE TABLE `hx_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '后台管理用户',
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) DEFAULT '1' COMMENT '锁定状态2锁定，1：未锁定',
  `last_time` datetime DEFAULT NULL COMMENT '登录时间',
  `last_ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of hx_admin_user
-- ----------------------------
INSERT INTO `hx_admin_user` VALUES ('1', 'admin', 'pbkdf2_sha256$12000$HVqHjtCOhoKo$TZOQbvzgln4Ni4WfJtWw3Dz0it9ugCGIxXeAK9sen/4=', '907274532@qq.com', '1', '2016-12-12 20:29:52', '127.0.0.1', '2016-11-27 15:11:13', '2016-12-12 20:29:52');
INSERT INTO `hx_admin_user` VALUES ('2', 'root', 'pbkdf2_sha256$12000$6UUdpVdTMcxA$ypzocPbaYvbECQWOyjdwT5XJH4XgAHbp6B7rp3pfFao=', '9072745322@qq.com', '2', null, null, '2016-11-27 15:13:21', '2016-12-07 15:25:12');
INSERT INTO `hx_admin_user` VALUES ('4', '111111', 'pbkdf2_sha256$12000$yaQobFQo9YH6$1BFWSalfqnjoVfabFJY56KDx1Oeege4G4lGhydV3wc8=', '9072745323@qq.com', '1', null, null, '2016-12-07 15:08:07', '2016-12-07 15:25:15');

-- ----------------------------
-- Table structure for hx_article
-- ----------------------------
DROP TABLE IF EXISTS `hx_article`;
CREATE TABLE `hx_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_id` int(11) DEFAULT '0' COMMENT '分类id',
  `title` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` longtext COMMENT '文章内容',
  `time` int(11) DEFAULT '0' COMMENT '创建时间',
  `del` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常；2：删除',
  `recommend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐 1：否；2：是',
  `top` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否置顶:1否；2：是',
  `audit` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态1：待审核；2：审核成功；3：审核失败',
  `sort` int(11) NOT NULL DEFAULT '50',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of hx_article
-- ----------------------------
INSERT INTO `hx_article` VALUES ('3', '3', '13245asds', 'asdsadasdasjk阿喀琉斯讲的是看见', '加宽了丹江口撒娇的了卡萨极乐空间了', '1422330654', '1', '1', '2', '1', '50', '1', '0');
INSERT INTO `hx_article` VALUES ('5', '5', '测试', '', '', '1439471607', '1', '2', '2', '1', '50', '1', '0');
INSERT INTO `hx_article` VALUES ('6', '5', '啊是的撒大时代', '啊是的撒大时代', '&lt;p&gt;啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代&lt;/p&gt;', '1439476132', '2', '2', '2', '2', '50', '1', '0');
INSERT INTO `hx_article` VALUES ('7', '9', '啊是的撒的', '啊时代的淡淡的淡淡的淡淡的淡淡的淡淡的', '&lt;p&gt;\n	撒大大大大大大大大大大大大大大大\n&lt;/p&gt;', '1439476207', '1', '2', '2', '2', '50', '1', '1451366430');
INSERT INTO `hx_article` VALUES ('8', '6', '广告管理', '啊是的撒', '啊是的撒的撒旦撒旦', '1439479445', '1', '2', '2', '3', '2', '1', '1451366325');
INSERT INTO `hx_article` VALUES ('9', '3', 'AAAAAAAA', 'AAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAA33333333333333333333333333333333333333', '1451297595', '1', '2', '2', '1', '50', '1', '1451366265');

-- ----------------------------
-- Table structure for hx_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `hx_auth_group`;
CREATE TABLE `hx_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of hx_auth_group
-- ----------------------------
INSERT INTO `hx_auth_group` VALUES ('1', '超级管理员', null, '1', '76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,22,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1', '2016-11-27 16:28:50', '2016-12-12 20:42:01');
INSERT INTO `hx_auth_group` VALUES ('2', '普通管理员', '普通管理员', '1', '54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,17,18,19,20,21,43,44,45,46,47,48,49,50,51,52,53,37,38,39,40,41,42,24,25,26,27,28,29,30,31,32,33,34,35,36', '2016-11-27 16:28:50', '2016-12-06 20:51:06');
INSERT INTO `hx_auth_group` VALUES ('3', '测试', '测试1', '2', '51,33,22,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1', '2016-11-27 16:28:50', '2016-12-06 22:52:17');

-- ----------------------------
-- Table structure for hx_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `hx_auth_group_access`;
CREATE TABLE `hx_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='节点和角色中间表';

-- ----------------------------
-- Records of hx_auth_group_access
-- ----------------------------
INSERT INTO `hx_auth_group_access` VALUES ('1', '1');
INSERT INTO `hx_auth_group_access` VALUES ('2', '2');
INSERT INTO `hx_auth_group_access` VALUES ('3', '0');
INSERT INTO `hx_auth_group_access` VALUES ('4', '1');

-- ----------------------------
-- Table structure for hx_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `hx_auth_rule`;
CREATE TABLE `hx_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) DEFAULT '0',
  `url` varchar(200) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `menu` int(1) DEFAULT '0' COMMENT '是否是菜单,1是菜单 2：不是',
  `icon` varchar(150) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of hx_auth_rule
-- ----------------------------
INSERT INTO `hx_auth_rule` VALUES ('1', 'Manageer/Rbac/index', '权限管理', '1', '1', '', '0', 'Rbac/index', '0', '1', 'fa-gear');
INSERT INTO `hx_auth_rule` VALUES ('2', 'Manageer/AdminUser/list', '管理员管理', '1', '1', '', '1', 'AdminUser/index', '1', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('3', 'Manager/AdminUser/index', '列表', '1', '1', '', '2', 'AdminUser/index', '0', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('4', 'Manager/AdminUser/add', '添加', '1', '1', '', '2', 'AdminUser/add', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('5', 'Manager/AdminUser/edit', '修改', '1', '1', '', '2', 'AdminUser/edit', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('6', 'Manager/AdminUser/del', '启用/禁用', '1', '1', '', '2', 'AdminUser/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('7', 'Manager/Node/list', '节点管理', '1', '1', '', '1', 'Node/index', '2', '1', 'cogs');
INSERT INTO `hx_auth_rule` VALUES ('8', 'Manager/Node/index', '列表', '1', '1', '', '7', 'Node/index', '0', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('9', 'Manager/Node/add', '添加', '1', '1', '', '7', 'Node/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('10', 'Manager/Node/edit', '修改', '1', '1', '', '7', 'Node/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('11', 'Manager/Node/del', '启用/禁用', '1', '1', '', '7', 'Node/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('12', 'Manager/Role/list', '角色管理', '1', '1', '', '1', 'Role/index', '2', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('13', 'Manager/Role/index', '列表', '1', '1', '', '12', 'Role/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('14', 'Manager/Role/add', '添加', '1', '1', '', '12', 'Role/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('15', 'Manager/Role/edit', '修改', '1', '1', '', '12', 'Role/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('16', 'Manager/Role/del', '启用/禁用', '1', '1', '', '12', 'Role/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('17', 'Manager/Users/lists', '会员管理', '1', '1', '', '0', 'Users/index', '2', '1', ' fa-user');
INSERT INTO `hx_auth_rule` VALUES ('18', 'Manager/Users/list', '会员管理', '1', '1', '', '17', 'Users/index', '1', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('19', 'Manager/Users/index', '列表', '1', '1', '', '18', 'Users/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('20', 'Manager/Users/del', '启用/禁用', '1', '1', '', '18', 'User/del', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('55', 'Manager/UserRank/list', '会员等级', '1', '1', '', '17', 'UserRank/index', '2', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('22', 'Manager/Role/rbac', '授权', '1', '1', '', '12', 'Role/rbac', '5', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('23', 'Manager/UserInfo/list', '个人信息', '1', '1', '', '24', 'UserInfo/index', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('24', 'Manager/UserInfo/index', '修改昵称', '1', '1', '', '27', 'UserInfo/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('25', 'Manager/UserInfo/pass', '修改密码', '1', '1', '', '27', 'UserInfo/pass', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('26', 'Manager/Link/list', '友情链接', '1', '1', '', '24', 'Link/index', '3', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('27', 'Manager/Link/index', '列表', '1', '1', '', '30', 'Link/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('28', 'Manager/Link/add', '添加', '1', '1', '', '30', 'Link/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('29', 'Manager/Link/edit', '修改', '1', '1', '', '30', 'Link/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('30', 'Manager/Link/del', '删除', '1', '1', '', '30', 'Link/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('31', 'Manager/Cache/list', '缓存管理', '1', '1', '', '24', 'Cache/index', '4', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('32', 'Manager/Cache/index', '清理缓存', '1', '1', '', '35', 'Cache/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('33', 'Manager/Com/list', '内容管理', '1', '1', '', '0', 'Com/list', '1', '1', 'fa-tasks');
INSERT INTO `hx_auth_rule` VALUES ('34', 'Manager/Cate/list', '文章分类', '1', '1', '', '33', 'Cate/index', '1', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('35', 'Manager/Cate/index', '列表', '1', '1', '', '34', 'Cate/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('36', 'Manager/Cate/add', '添加', '1', '1', '', '34', 'Cate/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('37', 'Manager/Cate/edit', '修改', '1', '1', '', '34', 'Cate/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('38', 'Manager/Cate/del', '删除', '1', '1', '', '34', 'Cate/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('39', 'Manager/Article/list', '文章管理', '1', '1', '', '33', 'Article/index', '2', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('40', 'Manager/Article/index', '列表', '1', '1', '', '39', 'Article/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('41', 'Manager/Article/add', '添加', '1', '1', '', '39', 'Article/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('42', 'Manager/Article/edit', '修改', '1', '1', '', '39', 'Article/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('43', 'Manager/Article/del', '删除', '1', '1', '', '39', 'Article/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('44', 'Manager/Comment/list', '评论管理', '1', '1', '', '33', 'Comment/index', '3', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('45', 'Manager/Comment/index', '列表', '1', '1', '', '44', 'Comment/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('46', 'Manager/Comment/del', '删除', '0', '1', '', '44', 'Comment/del', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('47', 'Manager/Recycle/list', '回收站', '1', '1', '', '33', 'Recycle/index', '4', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('48', 'Manager/Recycle/index', '列表', '1', '1', '', '47', 'Recycle/index', '1', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('49', 'Manager/Recycle/restore', '恢复', '1', '1', '', '47', 'Recycle/restore', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('50', 'Manager/Recycle/del', '删除', '1', '1', '', '47', 'Recycle/del', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('51', 'Manager/Users/accountDetails', '账目明细', '1', '1', '', '18', 'Users/accountDetails', '50', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('52', 'Manager/Users/receiptAddress', '收货地址', '1', '1', '', '18', 'Users/receiptAddress', '50', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('56', 'Manager/UserRank/index', '等级列表', '1', '1', '', '55', 'UserRank/index', '50', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('57', 'Manager/UserRank/add', '增加等级', '1', '1', '', '55', 'UserRank/add', '2', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('58', 'Manager/UserRank/edit', '修改等级', '1', '1', '', '55', 'UserRank/edit', '3', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('59', 'Manager/UserRank/del', '删除等级', '1', '1', '', '55', 'UserRank/del', '4', '0', '');
INSERT INTO `hx_auth_rule` VALUES ('60', 'Manager/Feedback/list', '会员留言', '1', '1', '', '17', 'Feedback/index', '4', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('61', 'Manager/Feedback/index', '刘洋列表', '1', '1', '', '60', 'Feedback/index', '1', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('62', 'Manager/Feedback/info', '查看详情', '1', '1', '', '60', 'Feedback/info', '2', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('63', 'Manager/Feedback/del', '删除留言', '1', '1', '', '60', 'Feedback/del', '3', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('64', 'Manager/UserRank/showPrice', '是否显示价格', '1', '1', '', '55', 'UserRank/showPrice', '50', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('65', 'Manager/UserRank/specialRank', '是否特殊会员', '1', '1', '', '55', 'UserRank/specialRank', '50', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('66', 'Manager/RechargeCash/list', '充值提现', '1', '1', '', '17', 'RechargeCash/index', '3', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('67', 'Manager/RechargeCash/index', '申请列表', '1', '1', '', '66', 'RechargeCash/index', '1', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('68', 'Manager/RechargeCash/add', '添加申请', '1', '1', '', '66', 'RechargeCash/add', '2', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('69', 'Manager/RechargeCash/edit', '修改申请', '1', '1', '', '66', 'RechargeCash/edit', '3', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('70', 'Manager/RechargeCash/del', '删除申请', '1', '1', '', '66', 'RechargeCash/del', '5', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('71', 'Manager/RechargeCash/check', '审核申请', '1', '1', '', '66', 'RechargeCash/check', '4', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('72', 'Manager/Order/lists', '订单管理', '1', '1', '', '0', 'Order/lists', '4', '1', 'fa-columns fa-fw');
INSERT INTO `hx_auth_rule` VALUES ('73', 'Manager/Order/list', '订单列表', '1', '1', '', '72', 'Order/index', '1', '1', '');
INSERT INTO `hx_auth_rule` VALUES ('74', 'Manager/Order/index', '订单列表', '1', '1', '', '73', 'Order/index', '1', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('75', 'Manager/Order/look', '查看', '1', '1', '', '73', 'Order/look', '2', '2', '');
INSERT INTO `hx_auth_rule` VALUES ('76', 'Manager/Order/del', '移除', '1', '1', '', '73', 'Order/del', '3', '2', '');

-- ----------------------------
-- Table structure for hx_back_goods
-- ----------------------------
DROP TABLE IF EXISTS `hx_back_goods`;
CREATE TABLE `hx_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for hx_back_order
-- ----------------------------
DROP TABLE IF EXISTS `hx_back_order`;
CREATE TABLE `hx_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL COMMENT '发货单号',
  `order_sn` varchar(20) NOT NULL COMMENT '订单号',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `invoice_no` varchar(50) DEFAULT NULL,
  `shipping_id` tinyint(3) unsigned DEFAULT '0' COMMENT '快递id',
  `shipping_name` varchar(120) DEFAULT NULL COMMENT '快递名称',
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL COMMENT '收货人',
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` datetime DEFAULT '0000-00-00 00:00:00',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_back_order
-- ----------------------------
INSERT INTO `hx_back_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '等待所有商品备齐后再发', '0.00', '10.00', '2', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_back_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '等待所有商品备齐后再发', '0.00', '10.00', '1', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_back_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '等待所有商品备齐后再发', '0.00', '10.00', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_back_order` VALUES ('4', '20090615064331475', '2009061503335', '17', '00906150333512', '3', '', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '等待所有商品备齐后再发', '0.00', '10.00', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for hx_booking_goods
-- ----------------------------
DROP TABLE IF EXISTS `hx_booking_goods`;
CREATE TABLE `hx_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_booking_goods
-- ----------------------------
INSERT INTO `hx_booking_goods` VALUES ('1', '1', 'ecshop@ecshop.com', '刘先生', '13986765412', '19', '可以补货吗？\n我想要一个', '1', '1242142762', '0', '', '0', '');
INSERT INTO `hx_booking_goods` VALUES ('2', '3', 'text@ecshop.com', '叶先生', '13588104710', '17', '什么时候有货', '1', '1242143592', '0', '', '0', '');

-- ----------------------------
-- Table structure for hx_cate
-- ----------------------------
DROP TABLE IF EXISTS `hx_cate`;
CREATE TABLE `hx_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT '50',
  `status` tinyint(4) DEFAULT '1' COMMENT '1:启用，2：禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of hx_cate
-- ----------------------------
INSERT INTO `hx_cate` VALUES ('3', '0', 'PHP', '50', '1');
INSERT INTO `hx_cate` VALUES ('4', '0', 'js', '50', '1');
INSERT INTO `hx_cate` VALUES ('5', '0', 'Mysql', '1', '1');
INSERT INTO `hx_cate` VALUES ('6', '3', 'js', '50', '1');
INSERT INTO `hx_cate` VALUES ('7', '3', 'mysql', '50', '1');
INSERT INTO `hx_cate` VALUES ('8', '5', 'mysql', '1', '1');
INSERT INTO `hx_cate` VALUES ('9', '6', 'ceshi1', '1', '1');
INSERT INTO `hx_cate` VALUES ('10', '0', 'ceshi', '1', '2');

-- ----------------------------
-- Table structure for hx_comments
-- ----------------------------
DROP TABLE IF EXISTS `hx_comments`;
CREATE TABLE `hx_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `aid` int(11) DEFAULT NULL COMMENT '评论内容id',
  PRIMARY KEY (`id`),
  KEY `comment_parent` (`parentid`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_comments
-- ----------------------------

-- ----------------------------
-- Table structure for hx_delivery_goods
-- ----------------------------
DROP TABLE IF EXISTS `hx_delivery_goods`;
CREATE TABLE `hx_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_delivery_goods
-- ----------------------------
INSERT INTO `hx_delivery_goods` VALUES ('1', '1', '13', '0', null, '诺基亚5320 XpressMusic', '诺基亚', 'ECS000013', '1', '', '0', '3', null);
INSERT INTO `hx_delivery_goods` VALUES ('2', '1', '14', '0', null, '诺基亚5800XM', '诺基亚', 'ECS000014', '1', '', '0', '1', null);
INSERT INTO `hx_delivery_goods` VALUES ('3', '2', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '3', null);
INSERT INTO `hx_delivery_goods` VALUES ('4', '2', '9', '0', null, '诺基亚E66', '诺基亚', 'ECS000009', '1', '', '0', '1', null);
INSERT INTO `hx_delivery_goods` VALUES ('5', '3', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);
INSERT INTO `hx_delivery_goods` VALUES ('6', '3', '8', '0', null, '飞利浦9@9v', '飞利浦', 'ECS000008', '1', '', '0', '3', null);
INSERT INTO `hx_delivery_goods` VALUES ('7', '4', '12', '0', null, '摩托罗拉A810', '摩托罗拉', 'ECS000012', '1', '', '0', '2', null);
INSERT INTO `hx_delivery_goods` VALUES ('8', '5', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);

-- ----------------------------
-- Table structure for hx_delivery_order
-- ----------------------------
DROP TABLE IF EXISTS `hx_delivery_order`;
CREATE TABLE `hx_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_delivery_order
-- ----------------------------
INSERT INTO `hx_delivery_order` VALUES ('1', '20090615054961769', '2009061585887', '15', '2009061585884', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245044964', '2', '1', '0');
INSERT INTO `hx_delivery_order` VALUES ('2', '20090615055104671', '2009061585887', '15', '20090615', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045061', '1', '1', '0');
INSERT INTO `hx_delivery_order` VALUES ('3', '20090615055780744', '2009061585887', '15', '123232', '1245044533', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045443', '0', '1', '0');
INSERT INTO `hx_delivery_order` VALUES ('4', '20090615060281017', '2009061525429', '16', '2009061525121', '1245045672', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245045723', '2', '0', '0');
INSERT INTO `hx_delivery_order` VALUES ('5', '20090615064331475', '2009061503335', '17', '00906150333512', '1245047978', '3', '城际快递', '1', 'admin', '刘先生', '海兴大厦', '1', '2', '52', '502', '', 'ecshop@ecshop.com', '', '010-25851234', '13986765412', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1245048189', '0', '1', '0');

-- ----------------------------
-- Table structure for hx_feedback
-- ----------------------------
DROP TABLE IF EXISTS `hx_feedback`;
CREATE TABLE `hx_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父节点，取自该表msg_id；反馈该值为0；回复反馈为节点id',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_email` varchar(60) NOT NULL DEFAULT '' COMMENT 'Email',
  `msg_title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型1:投诉;2:询问,3:售后,4:求购',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `msg_content` text NOT NULL COMMENT '内容',
  `msg_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `message_img` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '是否回复',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户留言';

-- ----------------------------
-- Records of hx_feedback
-- ----------------------------
INSERT INTO `hx_feedback` VALUES ('1', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '2', '三星SGH-F258什么时候有货', '2016-12-07 13:05:36', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('2', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('3', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('4', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('5', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('6', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('7', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('8', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('9', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('10', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('11', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('12', '0', '1', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 11:35:16', '', '0', '0');
INSERT INTO `hx_feedback` VALUES ('13', '0', '3', 'ecshop', 'ecshop@ecshop.com', '三星SGH-F258什么时候到', '4', '1', '三星SGH-F258什么时候有货', '2016-12-07 17:08:17', '1.jpg', '0', '0');
INSERT INTO `hx_feedback` VALUES ('14', '12', '0', 'admin', '', 'reply', '1', '1', '1111啊啊啊', '2016-12-07 16:54:40', '0', '0', '0');
INSERT INTO `hx_feedback` VALUES ('15', '11', '1', 'admin', '', 'reply', '1', '1', '测试1111', '2016-12-07 17:10:02', '0', '0', '0');

-- ----------------------------
-- Table structure for hx_link
-- ----------------------------
DROP TABLE IF EXISTS `hx_link`;
CREATE TABLE `hx_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `desc` text NOT NULL COMMENT '友情链接描述',
  `sort` int(10) NOT NULL DEFAULT '50' COMMENT '排序',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `create_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of hx_link
-- ----------------------------
INSERT INTO `hx_link` VALUES ('4', 'htt://www.baidu.com', '控制器丢失', '/Uploads/link/20151225744128/20151225150802.jpg', '控制器丢失', '50', '1451027282', null);
INSERT INTO `hx_link` VALUES ('6', 'http://www.ymxcms.com/', 'ceshi', '/Uploads/20151228/20151228110134647503.png', 'ceshi', '50', '1451027552', '1451271712');
INSERT INTO `hx_link` VALUES ('5', 'http://www.ymxcms.com/', 'admin', '/Uploads/link/20151225/20151225150915432199.jpg', 'ces ', '50', '1451027355', null);
INSERT INTO `hx_link` VALUES ('7', 'http://www.ymxcms.com/', 'ceshi', '/Uploads/20151228/20151228105023665136.png', 'ceshi', '1', '1451271025', '1451271025');

-- ----------------------------
-- Table structure for hx_log
-- ----------------------------
DROP TABLE IF EXISTS `hx_log`;
CREATE TABLE `hx_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '管理员远',
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_log
-- ----------------------------
INSERT INTO `hx_log` VALUES ('1', '1', '1447579218', 'Manager/Node/edit', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('3', '1', '1447581530', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('4', '1', '1447581534', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('5', '1', '1447581545', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('6', '1', '1447581548', '/index.php/Admin/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('7', '1', '1450928739', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('8', '1', '1450928740', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('9', '1', '1450928745', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('10', '1', '1450928746', '/index.php/Admin/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('11', '1', '1450928881', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('12', '1', '1450928881', '/index.php/Admin/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('13', '1', '1450928925', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('14', '1', '1450928926', '/index.php/Admin/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('15', '1', '1450928933', '/index.php/Admin/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('16', '1', '1450928933', '/index.php/Admin/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('17', '1', '1450928971', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('18', '1', '1450928972', '/index.php/Role/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('19', '1', '1450928976', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('20', '1', '1450928977', '/index.php/Node/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('21', '1', '1450928983', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('22', '1', '1450928984', '/index.php/Role/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('23', '1', '1450928986', '/index.php/User/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('24', '1', '1450929005', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('25', '1', '1450929005', '/index.php/Node/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('26', '1', '1450929007', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('27', '1', '1450929007', '/index.php/Role/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('28', '1', '1450929219', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('29', '1', '1450929230', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('30', '1', '1450929246', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('31', '1', '1450929248', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('32', '1', '1450929293', '/index.php/User/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('33', '1', '1450929317', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('34', '1', '1450929323', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('35', '1', '1450929324', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('36', '1', '1450929328', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('37', '1', '1450929329', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('38', '1', '1450929334', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('39', '1', '1450929336', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('40', '1', '1450929395', '/index.php/Node/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('41', '1', '1450929396', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('42', '1', '1450929404', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('43', '1', '1450929408', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('44', '1', '1450929410', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('45', '1', '1450929413', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('46', '1', '1450929414', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('47', '1', '1450929416', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('48', '1', '1450929417', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('49', '1', '1450929419', '/index.php/Node/edit/id/59.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('50', '1', '1450929420', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('51', '1', '1450929428', '/index.php/Node/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('52', '1', '1450929428', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('53', '1', '1450929446', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('54', '1', '1450929447', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('55', '1', '1450929451', '/index.php/Node/edit/id/16.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('56', '1', '1450929451', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('57', '1', '1450929455', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('58', '1', '1450929456', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('59', '1', '1450929457', '/index.php/Node/edit/id/11.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('60', '1', '1450929458', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('61', '1', '1450929460', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('62', '1', '1450929461', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('63', '1', '1450929469', '/index.php/Node/edit/id/83.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('64', '1', '1450929469', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('65', '1', '1450929482', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('66', '1', '1450929483', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('67', '1', '1450929520', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('68', '1', '1450929557', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('69', '1', '1450929595', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('70', '1', '1450929818', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('71', '1', '1450929831', '/index.php/Log/index/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('72', '1', '1450929832', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('73', '1', '1450929836', '/index.php/Log/index/p/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('74', '1', '1450929836', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('75', '1', '1450929838', '/index.php/Log/index/p/4.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('76', '1', '1450929838', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('77', '1', '1450929840', '/index.php/Log/index/p/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('78', '1', '1450929840', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('79', '1', '1450929841', '/index.php/Log/index/p/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('80', '1', '1450929842', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('81', '1', '1450929844', '/index.php/Log/index/p/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('82', '1', '1450929844', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('83', '1', '1450929865', '/index.php/Log/index/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('84', '1', '1450929865', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('85', '1', '1450929872', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('86', '1', '1450929877', '/index.php/Node/edit/id/71.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('87', '1', '1450929877', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('88', '1', '1450929886', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('89', '1', '1450930019', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('90', '1', '1450930037', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('91', '1', '1450930065', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('92', '1', '1450930171', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('93', '1', '1450930183', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('94', '1', '1450930271', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('95', '1', '1450930344', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('96', '1', '1450930367', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('97', '1', '1450930390', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('98', '1', '1450930416', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('99', '1', '1450930437', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('100', '1', '1450930456', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('101', '1', '1450932129', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('102', '1', '1450932233', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('103', '1', '1450932279', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('104', '1', '1450932324', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('105', '1', '1450932337', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('106', '1', '1450932395', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('107', '1', '1450932425', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('108', '1', '1450932499', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('109', '1', '1450932542', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('110', '1', '1450932566', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('111', '1', '1450932611', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('112', '1', '1450932653', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('113', '1', '1450932679', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('114', '1', '1450932693', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('115', '1', '1450932707', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('116', '1', '1450932722', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('117', '1', '1450932945', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('118', '1', '1450932993', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('119', '1', '1450932997', '/index.php/Log/indexgroup_id=0&starTime=2015-12-01+12%3A56%3A00&endTime=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('120', '1', '1450933010', '/index.php/Log/indexgroup_id=0&starTime=2015-12-25+12%3A56%3A00&endTime=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('121', '1', '1450933019', '/index.php/Log/indexgroup_id=1&starTime=2015-11-29+12%3A56%3A00&endTime=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('122', '1', '1450933062', '/index.php/Log/indexgroup_id=1&starTime=2015-11-29+12%3A56%3A00&endTime=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('123', '1', '1450933165', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('124', '1', '1450933433', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('125', '1', '1450933523', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('126', '1', '1450933536', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('127', '1', '1450933568', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('128', '1', '1450933616', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('129', '1', '1450933638', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('130', '1', '1450934332', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('131', '1', '1450934333', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('132', '1', '1450934335', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('133', '1', '1450934357', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('134', '1', '1450934358', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('135', '1', '1450934359', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('136', '1', '1450934531', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('137', '1', '1450934534', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('138', '1', '1450934536', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('139', '1', '1450934537', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('140', '1', '1450934538', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('141', '1', '1450934685', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('142', '1', '1450934716', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('143', '1', '1450934719', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('144', '1', '1450934747', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('145', '1', '1450934830', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('146', '1', '1450934895', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('147', '1', '1450934924', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('148', '1', '1450935010', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('149', '1', '1450935060', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('150', '1', '1450935079', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('151', '1', '1450935105', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('152', '1', '1450935211', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('153', '1', '1450935579', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('154', '1', '1450935581', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('155', '1', '1450935683', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('156', '1', '1450935732', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('157', '1', '1450935748', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('158', '1', '1450935813', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('159', '1', '1450935906', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('160', '1', '1450935907', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('161', '1', '1450935910', '/index.php/Admin/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('162', '1', '1450935910', '/index.php/Admin/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('163', '1', '1450935913', '/index.php/Admin/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('164', '1', '1450935915', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('165', '1', '1450935916', '/index.php/Admin/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('166', '1', '1450935917', '/index.php/Admin/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('167', '1', '1450935921', '/index.php/Admin/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('168', '1', '1450935923', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('169', '1', '1450936068', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('170', '1', '1450936069', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('171', '1', '1450936071', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('172', '1', '1450936273', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('173', '1', '1450936275', '/index.php/Node/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('174', '1', '1450936923', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('175', '1', '1450936925', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('176', '1', '1450938136', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('177', '1', '1450938171', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('178', '1', '1450938725', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('179', '1', '1450938773', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('180', '1', '1450938809', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('181', '1', '1450938815', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('182', '1', '1450938843', '/index.php/Nav/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('183', '1', '1450938844', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('184', '1', '1450938904', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('185', '1', '1450938978', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('186', '1', '1450939016', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('187', '1', '1450939040', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('188', '1', '1450939081', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('189', '1', '1450939926', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('190', '1', '1450939928', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('191', '1', '1450939929', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('192', '1', '1450939951', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('193', '1', '1450939952', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('194', '1', '1450939972', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('195', '1', '1450939973', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('196', '1', '1450940006', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('197', '1', '1450940006', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('198', '1', '1450941164', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('199', '1', '1450941208', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('200', '1', '1450941243', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('201', '1', '1450941261', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('202', '1', '1450941262', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('203', '1', '1450941304', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('204', '1', '1450941304', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('205', '1', '1450941307', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('206', '1', '1450941355', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('207', '1', '1450941364', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('208', '1', '1450941365', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('209', '1', '1450941376', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('210', '1', '1450941410', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('211', '1', '1450941433', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('212', '1', '1450941493', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('213', '1', '1450941494', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('214', '1', '1450941503', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('215', '1', '1450941521', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('216', '1', '1450941522', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('217', '1', '1450941526', '/index.php/Nav/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('218', '1', '1450941526', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('219', '1', '1450941528', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('220', '1', '1450941530', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('221', '1', '1450941533', '/index.php/Nav/edit/id/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('222', '1', '1450941533', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('223', '1', '1450941536', '/index.php/Nav/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('224', '1', '1450941537', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('225', '1', '1450941543', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('226', '1', '1450941550', '/index.php/Node/edit/id/37.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('227', '1', '1450941625', '/index.php/Node/edit/id/37.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('228', '1', '1450941647', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('229', '1', '1450941649', '/index.php/Role/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('230', '1', '1450941649', '/index.php/Role/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('231', '1', '1450941667', '/index.php/Role/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('232', '1', '1450941668', '/index.php/Role/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('233', '1', '1450941691', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('234', '1', '1450941703', '/index.php/Node/edit/id/37.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('235', '1', '1450941704', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('236', '1', '1450941736', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('237', '1', '1450941737', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('238', '1', '1450941886', '/index.php/Node/edit/id/24.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('239', '1', '1450941886', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('240', '1', '1450941895', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('241', '1', '1450941896', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('242', '1', '1450941905', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('243', '1', '1450941908', '/index.php/Role/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('244', '1', '1450941908', '/index.php/Role/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('245', '1', '1450941914', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('246', '1', '1450941944', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('247', '1', '1450942001', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('248', '1', '1450942017', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('249', '1', '1450942019', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('250', '1', '1450942117', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('251', '1', '1450942118', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('252', '1', '1450942130', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('253', '1', '1450942131', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('254', '1', '1450942350', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('255', '1', '1450942350', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('256', '1', '1450942414', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('257', '1', '1450942415', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('258', '1', '1450942434', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('259', '1', '1450942434', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('260', '1', '1450942465', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('261', '1', '1450942465', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('262', '1', '1450942473', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('263', '1', '1450942844', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('264', '1', '1450942845', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('265', '1', '1450942846', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('266', '1', '1450942919', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('267', '1', '1450942955', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('268', '1', '1450942958', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('269', '1', '1450942958', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('270', '1', '1450942960', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('271', '1', '1450942980', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('272', '1', '1450942981', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('273', '1', '1450942985', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('274', '1', '1450942986', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('275', '1', '1450942993', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('276', '1', '1450942993', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('277', '1', '1450942997', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('278', '1', '1450942998', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('279', '1', '1450943004', '/index.php/Login/logout.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('280', '1', '1450943014', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('281', '1', '1450943014', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('282', '1', '1450943019', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('283', '1', '1450943023', '/index.php/Node/edit/id/72.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('284', '1', '1450943023', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('285', '1', '1450943028', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('286', '1', '1450943030', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('287', '1', '1450943036', '/index.php/Node/edit/id/73.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('288', '1', '1450943036', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('289', '1', '1450943041', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('290', '1', '1450943042', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('291', '1', '1450943050', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('292', '1', '1450943053', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('293', '1', '1450943053', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('294', '1', '1450943057', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('295', '1', '1450943058', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('296', '1', '1450943061', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('297', '1', '1450943061', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('298', '1', '1450943064', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('299', '1', '1450943065', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('300', '1', '1450943069', '/index.php/Role/rbac/id/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('301', '1', '1450943069', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('302', '1', '1450943083', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('303', '1', '1450943087', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('304', '1', '1450943088', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('305', '1', '1450943091', '/index.php/Role/rbac/id/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('306', '1', '1450943091', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('307', '1', '1450943093', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('308', '1', '1450943095', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('309', '1', '1450943221', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('310', '1', '1450943224', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('311', '1', '1450943352', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('312', '1', '1450943408', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('313', '1', '1450943479', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('314', '1', '1450943535', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('315', '1', '1450943551', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('316', '1', '1450943553', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('317', '1', '1450943560', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('318', '1', '1450943561', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('319', '1', '1450943607', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('320', '1', '1450943647', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('321', '1', '1450943688', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('322', '1', '1450943715', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('323', '1', '1450943747', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('324', '1', '1450943796', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('325', '1', '1450943833', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('326', '1', '1450943937', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('327', '1', '1450943960', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('328', '1', '1450943981', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('329', '1', '1450943995', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('330', '1', '1450944033', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('331', '1', '1450944052', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('332', '1', '1450944123', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('333', '1', '1450944146', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('334', '1', '1450944170', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('335', '1', '1450944187', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('336', '1', '1450944199', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('337', '1', '1450944209', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('338', '1', '1450944256', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('339', '1', '1450944287', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('340', '1', '1450944297', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('341', '1', '1450944311', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('342', '1', '1450944403', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('343', '1', '1450944437', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('344', '1', '1450944493', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('345', '1', '1450944552', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('346', '1', '1450944587', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('347', '1', '1450944597', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('348', '1', '1450944611', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('349', '1', '1450944621', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('350', '1', '1450944630', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('351', '1', '1450944936', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('352', '1', '1450944952', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('353', '1', '1450945651', '/index.php/BackUp/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('354', '1', '1450945653', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('355', '1', '1450945661', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('356', '1', '1450945669', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('357', '1', '1450945692', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('358', '1', '1450946142', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('359', '1', '1450946193', '/index.php/BackUp/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('360', '1', '1450946194', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('361', '1', '1450946353', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('362', '1', '1450946433', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('363', '1', '1450946476', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('364', '1', '1450946575', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('365', '1', '1450946613', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('366', '1', '1450946719', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('367', '1', '1450946822', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('368', '1', '1450946890', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('369', '1', '1450947192', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('370', '1', '1450947192', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('371', '1', '1450947196', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('372', '1', '1450947302', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('373', '1', '1450947322', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('374', '1', '1450947364', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('375', '1', '1450947675', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('376', '1', '1450947734', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('377', '1', '1450947770', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('378', '1', '1450947799', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('379', '1', '1450947821', '/index.php/Restore/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('380', '1', '1450947823', '/index.php/Restore/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('381', '1', '1450947824', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('382', '1', '1450947828', '/index.php/Restore/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('383', '1', '1450947829', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('384', '1', '1450950389', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('385', '1', '1450951038', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('386', '1', '1450951043', '/index.php/Restore/download/backup/20151224_1/file/20151224_1_1.sql.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('387', '1', '1450951083', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('388', '1', '1450951151', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('389', '1', '1450951216', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('390', '1', '1450951242', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('391', '1', '1450951246', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('392', '1', '1450951253', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('393', '1', '1450951254', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('394', '1', '1450951254', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('395', '1', '1450951254', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('396', '1', '1450951254', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('397', '1', '1450951267', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('398', '1', '1450951272', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('399', '1', '1450951287', '/index.php/Restore/download.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('400', '1', '1450951353', '/index.php/Restore/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('401', '1', '1450951358', '/index.php/Restore/download/backup/20151224_1/file/20151224_1_1.sql.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('402', '1', '1451012618', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('403', '1', '1451012618', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('404', '1', '1451012813', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('405', '1', '1451012934', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('406', '1', '1451012952', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('407', '1', '1451012962', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('408', '1', '1451013134', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('409', '1', '1451013180', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('410', '1', '1451013242', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('411', '1', '1451013275', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('412', '1', '1451013511', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('413', '1', '1451013571', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('414', '1', '1451013589', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('415', '1', '1451013725', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('416', '1', '1451013733', '/index.php/Nav/del/id/4.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('417', '1', '1451013745', '/index.php/Nav/del/id/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('418', '1', '1451013747', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('419', '1', '1451015054', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('420', '1', '1451015058', '/index.php/Nav/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('421', '1', '1451015059', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('422', '1', '1451015062', '/index.php/Nav/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('423', '1', '1451015198', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('424', '1', '1451015541', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('425', '1', '1451015651', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('426', '1', '1451015653', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('427', '1', '1451015663', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('428', '1', '1451015665', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('429', '1', '1451015674', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('430', '1', '1451015679', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('431', '1', '1451015679', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('432', '1', '1451015692', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('433', '1', '1451015708', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('434', '1', '1451015722', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('435', '1', '1451015916', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('436', '1', '1451015941', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('437', '1', '1451016011', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('438', '1', '1451016034', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('439', '1', '1451016057', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('440', '1', '1451016329', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('441', '1', '1451016345', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('442', '1', '1451016403', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('443', '1', '1451016407', '/index.php/Nav/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('444', '1', '1451016408', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('445', '1', '1451016412', '/index.php/Nav/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('446', '1', '1451016413', '/index.php/Nav/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('447', '1', '1451016430', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('448', '1', '1451016465', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('449', '1', '1451016637', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('450', '1', '1451016640', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('451', '1', '1451016762', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('452', '1', '1451016764', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('453', '1', '1451016793', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('454', '1', '1451016819', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('455', '1', '1451016839', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('456', '1', '1451016856', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('457', '1', '1451016860', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('458', '1', '1451016861', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('459', '1', '1451016865', '/index.php/Admin/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('460', '1', '1451016866', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('461', '1', '1451016993', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('462', '1', '1451016997', '/index.php/Role/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('463', '1', '1451016999', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('464', '1', '1451017002', '/index.php/Role/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('465', '1', '1451017003', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('466', '1', '1451017029', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('467', '1', '1451017069', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('468', '1', '1451017071', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('469', '1', '1451019294', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('470', '1', '1451019549', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('471', '1', '1451019575', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('472', '1', '1451021642', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('473', '1', '1451021674', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('474', '1', '1451022264', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('475', '1', '1451022288', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('476', '1', '1451022292', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('477', '1', '1451022293', '/index.php/Admin/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('478', '1', '1451022306', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('479', '1', '1451022537', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('480', '1', '1451022541', '/index.php/AdPos/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('481', '1', '1451022550', '/index.php/AdPos/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('482', '1', '1451022552', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('483', '1', '1451022558', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('484', '1', '1451022559', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('485', '1', '1451022570', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('486', '1', '1451022575', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('487', '1', '1451022576', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('488', '1', '1451022581', '/index.php/AdPos/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('489', '1', '1451022582', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('490', '1', '1451022821', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('491', '1', '1451022824', '/index.php/Nav/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('492', '1', '1451022824', '/index.php/Nav/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('493', '1', '1451022863', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('494', '1', '1451022865', '/index.php/AdPos/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('495', '1', '1451022865', '/index.php/AdPos/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('496', '1', '1451022871', '/index.php/AdPos/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('497', '1', '1451022872', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('498', '1', '1451022925', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('499', '1', '1451022927', '/index.php/AdPos/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('500', '1', '1451022927', '/index.php/AdPos/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('501', '1', '1451022930', '/index.php/AdPos/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('502', '1', '1451022931', '/index.php/AdPos/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('503', '1', '1451023027', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('504', '1', '1451023027', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('505', '1', '1451023032', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('506', '1', '1451023036', '/index.php/Node/edit/id/49.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('507', '1', '1451023037', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('508', '1', '1451023048', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('509', '1', '1451023051', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('510', '1', '1451023051', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('511', '1', '1451023058', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('512', '1', '1451023067', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('513', '1', '1451023067', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('514', '1', '1451023552', '/index.php/Ad/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('515', '1', '1451023771', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('516', '1', '1451023772', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('517', '1', '1451023776', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('518', '1', '1451023777', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('519', '1', '1451023781', '/index.php/Node/edit/id/49.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('520', '1', '1451023782', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('521', '1', '1451023804', '/index.php/Node/edit/id/49.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('522', '1', '1451023805', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('523', '1', '1451023818', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('524', '1', '1451023821', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('525', '1', '1451023823', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('526', '1', '1451023828', '/index.php/Node/edit/id/44.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('527', '1', '1451023828', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('528', '1', '1451023848', '/index.php/Node/edit/id/43.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('529', '1', '1451023849', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('530', '1', '1451023869', '/index.php/Node/edit/id/43.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('531', '1', '1451023869', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('532', '1', '1451023872', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('533', '1', '1451023889', '/index.php/Cache/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('534', '1', '1451023890', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('535', '1', '1451023890', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('536', '1', '1451023960', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('537', '1', '1451024037', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('538', '1', '1451024179', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('539', '1', '1451024349', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('540', '1', '1451024436', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('541', '1', '1451024529', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('542', '1', '1451024531', '/index.php/Setting/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('543', '1', '1451024538', '/index.php/Setting/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('544', '1', '1451024549', '/index.php/Setting/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('545', '1', '1451024624', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('546', '1', '1451024628', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('547', '1', '1451024665', '/index.php/Setting/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('548', '1', '1451024666', '/index.php/Setting/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('549', '1', '1451024807', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('550', '1', '1451024813', '/index.php/Node/edit/id/27.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('551', '1', '1451024813', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('552', '1', '1451024816', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('553', '1', '1451024817', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('554', '1', '1451024823', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('555', '1', '1451024825', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('556', '1', '1451024826', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('557', '1', '1451024829', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('558', '1', '1451024830', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('559', '1', '1451024918', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('560', '1', '1451024927', '/index.php/Node/edit/id/27.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('561', '1', '1451024927', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('562', '1', '1451024985', '/index.php/Node/edit/id/27.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('563', '1', '1451024985', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('564', '1', '1451025063', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('565', '1', '1451025237', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('566', '1', '1451025267', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('567', '1', '1451025312', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('568', '1', '1451025379', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('569', '1', '1451025381', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('570', '1', '1451025739', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('571', '1', '1451025743', '/index.php/Link/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('572', '1', '1451025745', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('573', '1', '1451025791', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('574', '1', '1451025799', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('575', '1', '1451026271', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('576', '1', '1451026294', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('577', '1', '1451026905', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('578', '1', '1451027012', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('579', '1', '1451027039', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('580', '1', '1451027057', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('581', '1', '1451027282', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('582', '1', '1451027283', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('583', '1', '1451027341', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('584', '1', '1451027355', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('585', '1', '1451027356', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('586', '1', '1451027412', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('587', '1', '1451027485', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('588', '1', '1451027528', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('589', '1', '1451027532', '/index.php/Link/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('590', '1', '1451027534', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('591', '1', '1451027537', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('592', '1', '1451027552', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('593', '1', '1451027553', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('594', '1', '1451027658', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('595', '1', '1451027660', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('596', '1', '1451027660', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('597', '1', '1451027774', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('598', '1', '1451027775', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('599', '1', '1451027799', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('600', '1', '1451027800', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('601', '1', '1451027800', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('602', '1', '1451027801', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('603', '1', '1451027801', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('604', '1', '1451027802', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('605', '1', '1451027802', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('606', '1', '1451027803', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('607', '1', '1451027830', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('608', '1', '1451027831', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('609', '1', '1451027851', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('610', '1', '1451027851', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('611', '1', '1451027867', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('612', '1', '1451027867', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('613', '1', '1451028198', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('614', '1', '1451028539', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('615', '1', '1451028552', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('616', '1', '1451028553', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('617', '1', '1451028556', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('618', '1', '1451028557', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('619', '1', '1451028562', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('620', '1', '1451028564', '/index.php/Cache/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('621', '1', '1451028565', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('622', '1', '1451028566', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('623', '1', '1451028590', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('624', '1', '1451028596', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('625', '1', '1451028606', '/index.php/Node/edit/id/55.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('626', '1', '1451028606', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('627', '1', '1451028646', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('628', '1', '1451028713', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('629', '1', '1451029196', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('630', '1', '1451029264', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('631', '1', '1451267394', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('632', '1', '1451267395', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('633', '1', '1451267398', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('634', '1', '1451267402', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('635', '1', '1451267448', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('636', '1', '1451267450', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('637', '1', '1451267450', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('638', '1', '1451267456', '/index.php/Role/rbac.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('639', '1', '1451267457', '/index.php/Role/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('640', '1', '1451267459', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('641', '1', '1451267497', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('642', '1', '1451267595', '/index.php/Nav/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('643', '1', '1451269003', '/index.php/Link/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('644', '1', '1451269004', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('645', '1', '1451269389', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('646', '1', '1451269469', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('647', '1', '1451269511', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('648', '1', '1451269542', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('649', '1', '1451269705', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('650', '1', '1451269718', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('651', '1', '1451271025', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('652', '1', '1451271038', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('653', '1', '1451271045', '/index.php/Link/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('654', '1', '1451271046', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('655', '1', '1451271059', '/index.php/Link/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('656', '1', '1451271061', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('657', '1', '1451271398', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('658', '1', '1451271399', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('659', '1', '1451271435', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('660', '1', '1451271436', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('661', '1', '1451271441', '/index.php/Link/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('662', '1', '1451271624', '/index.php/Link/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('663', '1', '1451271690', '/index.php/Link/edit/id/6.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('664', '1', '1451271690', '/index.php/Link/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('665', '1', '1451271712', '/index.php/Link/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('666', '1', '1451271713', '/index.php/Link/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('667', '1', '1451271720', '/index.php/Cache/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('668', '1', '1451271721', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('669', '1', '1451271721', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('670', '1', '1451271751', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('671', '1', '1451271799', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('672', '1', '1451271837', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('673', '1', '1451272084', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('674', '1', '1451272148', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('675', '1', '1451272208', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('676', '1', '1451273058', '/index.php/Cate/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('677', '1', '1451273062', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('678', '1', '1451273063', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('679', '1', '1451273070', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('680', '1', '1451273115', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('681', '1', '1451273247', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('682', '1', '1451273379', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('683', '1', '1451273395', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('684', '1', '1451273503', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('685', '1', '1451274730', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('686', '1', '1451274739', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('687', '1', '1451274740', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('688', '1', '1451274840', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('689', '1', '1451274844', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('690', '1', '1451274889', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('691', '1', '1451274893', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('692', '1', '1451274922', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('693', '1', '1451274975', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('694', '1', '1451274995', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('695', '1', '1451274999', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('696', '1', '1451275000', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('697', '1', '1451275494', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('698', '1', '1451275496', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('699', '1', '1451275497', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('700', '1', '1451275605', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('701', '1', '1451275605', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('702', '1', '1451275606', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('703', '1', '1451275606', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('704', '1', '1451275607', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('705', '1', '1451275607', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('706', '1', '1451275632', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('707', '1', '1451275632', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('708', '1', '1451275658', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('709', '1', '1451275659', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('710', '1', '1451275692', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('711', '1', '1451275692', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('712', '1', '1451277023', '/index.php/Cate/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('713', '1', '1451277024', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('714', '1', '1451277035', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('715', '1', '1451277037', '/index.php/Cate/edit/id/10.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('716', '1', '1451277037', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('717', '1', '1451277324', '/index.php/Cate/edit/id/10.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('718', '1', '1451277325', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('719', '1', '1451277327', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('720', '1', '1451277328', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('721', '1', '1451277328', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('722', '1', '1451277328', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('723', '1', '1451277336', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('724', '1', '1451277401', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('725', '1', '1451277460', '/index.php/Cate/edit/id/10.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('726', '1', '1451277461', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('727', '1', '1451277465', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('728', '1', '1451277481', '/index.php/Cate/edit/id/10.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('729', '1', '1451277481', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('730', '1', '1451277483', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('731', '1', '1451277530', '/index.php/Cate/edit/id/10.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('732', '1', '1451277531', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('733', '1', '1451277534', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('734', '1', '1451277535', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('735', '1', '1451277537', '/index.php/Cate/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('736', '1', '1451277537', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('737', '1', '1451277542', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('738', '1', '1451277543', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('739', '1', '1451277562', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('740', '1', '1451277570', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('741', '1', '1451277571', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('742', '1', '1451277574', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('743', '1', '1451277575', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('744', '1', '1451284592', '/index.php/Cate/edit/id/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('745', '1', '1451284592', '/index.php/Cate/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('746', '1', '1451284595', '/index.php/Cate/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('747', '1', '1451284596', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('748', '1', '1451284600', '/index.php/Cate/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('749', '1', '1451284601', '/index.php/Cate/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('750', '1', '1451284990', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('751', '1', '1451285123', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('752', '1', '1451285570', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('753', '1', '1451285594', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('754', '1', '1451285615', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('755', '1', '1451285645', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('756', '1', '1451285659', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('757', '1', '1451285673', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('758', '1', '1451285751', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('759', '1', '1451285759', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('760', '1', '1451285868', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('761', '1', '1451285952', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('762', '1', '1451285954', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('763', '1', '1451285979', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('764', '1', '1451285989', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('765', '1', '1451286209', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('766', '1', '1451286235', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('767', '1', '1451286248', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('768', '1', '1451286513', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('769', '1', '1451286547', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('770', '1', '1451286547', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('771', '1', '1451286843', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('772', '1', '1451286862', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('773', '1', '1451286935', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('774', '1', '1451286969', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('775', '1', '1451287007', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('776', '1', '1451287014', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('777', '1', '1451287077', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('778', '1', '1451287108', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('779', '1', '1451287155', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('780', '1', '1451287238', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('781', '1', '1451287270', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('782', '1', '1451287356', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('783', '1', '1451287408', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('784', '1', '1451287535', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('785', '1', '1451287557', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('786', '1', '1451287617', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('787', '1', '1451287658', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('788', '1', '1451287720', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('789', '1', '1451287795', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('790', '1', '1451287893', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('791', '1', '1451287911', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('792', '1', '1451287939', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('793', '1', '1451287984', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('794', '1', '1451288051', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('795', '1', '1451288119', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('796', '1', '1451288182', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('797', '1', '1451288221', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('798', '1', '1451288237', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('799', '1', '1451288263', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('800', '1', '1451288278', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('801', '1', '1451288435', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('802', '1', '1451288464', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('803', '1', '1451288494', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('804', '1', '1451288518', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('805', '1', '1451288577', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('806', '1', '1451288660', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('807', '1', '1451288775', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('808', '1', '1451288830', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('809', '1', '1451288900', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('810', '1', '1451288914', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('811', '1', '1451288933', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('812', '1', '1451289260', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('813', '1', '1451289287', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('814', '1', '1451289376', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('815', '1', '1451289439', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('816', '1', '1451289471', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('817', '1', '1451289506', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('818', '1', '1451289541', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('819', '1', '1451289587', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('820', '1', '1451289627', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('821', '1', '1451289630', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('822', '1', '1451289740', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('823', '1', '1451289741', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('824', '1', '1451289751', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('825', '1', '1451289753', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('826', '1', '1451289753', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('827', '1', '1451289781', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('828', '1', '1451289806', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('829', '1', '1451289840', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('830', '1', '1451289884', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('831', '1', '1451289885', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('832', '1', '1451289930', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('833', '1', '1451289980', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('834', '1', '1451289999', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('835', '1', '1451290125', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('836', '1', '1451290128', '/index.php/Article/indexcate_id=6&user_id=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('837', '1', '1451290133', '/index.php/Article/indexcate_id=3&user_id=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('838', '1', '1451290148', '/index.php/Article/indexcate_id=3&user_id=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('839', '1', '1451290150', '/index.php/Article/index/cate_id/3/user_id/0/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('840', '1', '1451290150', '/index.php/Article/index/cate_id/3/user_id/0/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('841', '1', '1451290208', '/index.php/Article/indexcate_id=3&user_id=1&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('842', '1', '1451290211', '/index.php/Article/index/cate_id/3/user_id/1/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('843', '1', '1451290211', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('844', '1', '1451290212', '/index.php/Article/index/cate_id/3/user_id/1/p/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('845', '1', '1451290213', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('846', '1', '1451290214', '/index.php/Article/index/cate_id/3/user_id/1/p/4.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('847', '1', '1451290214', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('848', '1', '1451290219', '/index.php/Article/index/cate_id/3/user_id/1/p/4.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('849', '1', '1451290219', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('850', '1', '1451290219', '/index.php/Article/index/cate_id/3/user_id/1/p/4.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('851', '1', '1451290220', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('852', '1', '1451290222', '/index.php/Article/index/cate_id/3/user_id/1/p/4.htmlcate=0&uid=1&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('853', '1', '1451290222', '/index.php/Article/index/cate_id/3/user_id/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('854', '1', '1451290223', '/index.php/Article/index/cate_id/3/user_id/1/p/5/cate/0/uid/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('855', '1', '1451290224', '/index.php/Article/index/cate_id/3/user_id/1/p/5/cate/0/uid/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('856', '1', '1451290226', '/index.php/Article/index/cate_id/3/user_id/1/p/6/cate/0/uid/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('857', '1', '1451290227', '/index.php/Article/index/cate_id/3/user_id/1/p/6/cate/0/uid/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('858', '1', '1451290229', '/index.php/Article/index/cate_id/3/user_id/1/p/6/cate/0/uid/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('859', '1', '1451290230', '/index.php/Article/index/cate_id/3/user_id/1/p/6/cate/0/uid/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('860', '1', '1451290233', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('861', '1', '1451290236', '/index.php/Article/indexcate=0&uid=2&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('862', '1', '1451290240', '/index.php/Article/indexcate=0&uid=1&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('863', '1', '1451290242', '/index.php/Article/index/cate/0/uid/1/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('864', '1', '1451290242', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('865', '1', '1451290245', '/index.php/Article/index/cate/0/uid/1/p/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('866', '1', '1451290246', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('867', '1', '1451290250', '/index.php/Article/index/cate/0/uid/1/p/3.htmlcate=0&uid=1&title=%E5%95%8A%E6%98%AF%E7%9A%84%E6%92%92%E5%A4%A7%E6%97%B6%E4%BB%A3', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('868', '1', '1451290250', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('869', '1', '1451290263', '/index.php/Article/index/cate/0/uid/1/p/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('870', '1', '1451290263', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('871', '1', '1451290265', '/index.php/Article/index/cate/0/uid/1/p/1.htmlcate=0&uid=1&title=%E5%95%8A%E6%98%AF%E7%9A%84%E6%92%92%E5%A4%A7%E6%97%B6%E4%BB%A3', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('872', '1', '1451290265', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('873', '1', '1451290485', '/index.php/Article/index/cate/0/uid/1/p/1.htmlcate=0&uid=1&title=%E5%95%8A%E6%98%AF%E7%9A%84%E6%92%92%E5%A4%A7%E6%97%B6%E4%BB%A3', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('874', '1', '1451290486', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('875', '1', '1451290526', '/index.php/Article/index/cate/0/uid/1/p/1.htmlcate=0&uid=1&title=%E5%95%8A%E6%98%AF%E7%9A%84%E6%92%92%E5%A4%A7%E6%97%B6%E4%BB%A3', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('876', '1', '1451290526', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('877', '1', '1451291437', '/index.php/Article/index/cate/0/uid/1/p/1.htmlcate=0&uid=1&title=%E5%95%8A%E6%98%AF%E7%9A%84%E6%92%92%E5%A4%A7%E6%97%B6%E4%BB%A3', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('878', '1', '1451291438', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('879', '1', '1451291442', '/index.php/Article/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('880', '1', '1451291443', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('881', '1', '1451291614', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('882', '1', '1451291615', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('883', '1', '1451291913', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('884', '1', '1451292109', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('885', '1', '1451295259', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('886', '1', '1451295379', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('887', '1', '1451295438', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('888', '1', '1451295504', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('889', '1', '1451295534', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('890', '1', '1451295626', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('891', '1', '1451295653', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('892', '1', '1451295668', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('893', '1', '1451295710', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('894', '1', '1451295725', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('895', '1', '1451296345', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('896', '1', '1451296415', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('897', '1', '1451296447', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('898', '1', '1451296607', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('899', '1', '1451296916', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('900', '1', '1451297073', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('901', '1', '1451297159', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('902', '1', '1451297586', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('903', '1', '1451297595', '/index.php/Article/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('904', '1', '1451297596', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('905', '1', '1451297705', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('906', '1', '1451297819', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('907', '1', '1451297822', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('908', '1', '1451297822', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('909', '1', '1451297939', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('910', '1', '1451297940', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('911', '1', '1451298034', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('912', '1', '1451298034', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('913', '1', '1451298049', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('914', '1', '1451298049', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('915', '1', '1451298082', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('916', '1', '1451298082', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('917', '1', '1451298101', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('918', '1', '1451298101', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('919', '1', '1451298356', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('920', '1', '1451298357', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('921', '1', '1451366242', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('922', '1', '1451366243', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('923', '1', '1451366247', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('924', '1', '1451366249', '/index.php/Article/edit/id/9.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('925', '1', '1451366250', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('926', '1', '1451366264', '/index.php/Article/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('927', '1', '1451366266', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('928', '1', '1451366291', '/index.php/Article/index.htmlcate=0&uid=1&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('929', '1', '1451366294', '/index.php/Article/index/cate/0/uid/1/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('930', '1', '1451366294', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('931', '1', '1451366302', '/index.php/Article/index/cate/0/uid/1/p/2.htmlcate=0&uid=1&title=%E5%B9%BF%E5%91%8A%E7%AE%A1%E7%90%86', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('932', '1', '1451366302', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('933', '1', '1451366307', '/index.php/Article/index/cate/0/uid/1/p/1.htmlcate=0&uid=1&title=%E5%B9%BF%E5%91%8A%E7%AE%A1%E7%90%86', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('934', '1', '1451366307', '/index.php/Article/index/cate/0/uid/1/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('935', '1', '1451366312', '/index.php/Article/edit/id/8.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('936', '1', '1451366312', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('937', '1', '1451366325', '/index.php/Article/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('938', '1', '1451366326', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('939', '1', '1451366328', '/index.php/Article/index/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('940', '1', '1451366328', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('941', '1', '1451366330', '/index.php/Article/index/p/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('942', '1', '1451366331', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('943', '1', '1451366332', '/index.php/Article/edit/id/7.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('944', '1', '1451366332', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('945', '1', '1451366423', '/index.php/Article/edit/id/7.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('946', '1', '1451366424', '/index.php/Article/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('947', '1', '1451366430', '/index.php/Article/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('948', '1', '1451366431', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('949', '1', '1451366433', '/index.php/Article/index/p/5.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('950', '1', '1451366433', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('951', '1', '1451366435', '/index.php/Article/index/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('952', '1', '1451366435', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('953', '1', '1451366439', '/index.php/Article/index/p/3.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('954', '1', '1451366439', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('955', '1', '1451366444', '/index.php/Article/index/p/3.htmlcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('956', '1', '1451366444', '/index.php/Article/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('957', '1', '1451366451', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('958', '1', '1451366455', '/index.php/Article/indexcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('959', '1', '1451366460', '/index.php/Article/indexcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('960', '1', '1451366464', '/index.php/Article/indexcate=7&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('961', '1', '1451366467', '/index.php/Article/indexcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('962', '1', '1451366516', '/index.php/Article/indexcate=7&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('963', '1', '1451366520', '/index.php/Article/indexcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('964', '1', '1451366569', '/index.php/Article/indexcate=6&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('965', '1', '1451366571', '/index.php/Article/indexcate=9&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('966', '1', '1451366778', '/index.php/Article/indexcate=9&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('967', '1', '1451366782', '/index.php/Article/indexcate=0&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('968', '1', '1451368141', '/index.php/Article/indexcate=0&uid=0&title=', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('969', '1', '1451368143', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('970', '1', '1451368179', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('971', '1', '1451368206', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('972', '1', '1451368372', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('973', '1', '1451368399', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('974', '1', '1451368579', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('975', '1', '1451368878', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('976', '1', '1451369336', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('977', '1', '1451369432', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('978', '1', '1451369863', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('979', '1', '1451369866', '/index.php/Recycle/restore.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('980', '1', '1451369867', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('981', '1', '1451369902', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('982', '1', '1451369904', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('983', '1', '1451369908', '/index.php/Article/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('984', '1', '1451369909', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('985', '1', '1451369912', '/index.php/Article/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('986', '1', '1451369913', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('987', '1', '1451369915', '/index.php/Article/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('988', '1', '1451369916', '/index.php/Article/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('989', '1', '1451369919', '/index.php/Recycle/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('990', '1', '1451369922', '/index.php/Recycle/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('991', '1', '1451369923', '/index.php/Recycle/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('992', '1', '1451369927', '/index.php/Recycle/restore.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('993', '1', '1451369928', '/index.php/Recycle/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('994', '1', '1451369931', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('995', '1', '1451376282', '/index.php/Article/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('996', '1', '1461291284', '/index.php/Index/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('997', '1', '1461291285', '/index.php/Index/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('998', '1', '1461291562', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('999', '1', '1461291565', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1000', '1', '1461292035', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1001', '1', '1461292037', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1002', '1', '1461292059', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1003', '1', '1461292060', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1004', '1', '1461292121', '/index.php/Role/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1005', '1', '1461292122', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1006', '1', '1461292125', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1007', '1', '1461292126', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1008', '1', '1461292127', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1009', '1', '1461292127', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1010', '1', '1461292743', '/index.php/Admin/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1011', '1', '1461292746', '/index.php/Admin/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1012', '1', '1461292749', '/index.php/Admin/edit/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1013', '1', '1461292749', '/index.php/Admin/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1014', '1', '1461292893', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1015', '1', '1461292894', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1016', '1', '1461292895', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1017', '1', '1461292896', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1018', '1', '1461293151', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1019', '1', '1461293153', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1020', '1', '1461293156', '/index.php/Role/rbac/id/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1021', '1', '1461293156', '/index.php/Role/rbac/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1022', '1', '1461293262', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1023', '1', '1461293264', '/index.php/Role/edit/id/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1024', '1', '1461293264', '/index.php/Role/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1025', '1', '1461293294', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1026', '1', '1461293561', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1027', '1', '1461293584', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1028', '1', '1461293585', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1029', '1', '1461293630', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1030', '1', '1461293665', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1031', '1', '1461293684', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1032', '1', '1461293747', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1033', '1', '1461293895', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1034', '1', '1461293982', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1035', '1', '1461294071', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1036', '1', '1461294098', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1037', '1', '1461294126', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1038', '1', '1461294201', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1039', '1', '1461294216', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1040', '1', '1461294232', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1041', '1', '1461294460', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1042', '1', '1461294532', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1043', '1', '1461294559', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1044', '1', '1461294580', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1045', '1', '1461294638', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1046', '1', '1461294729', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1047', '1', '1461294734', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1048', '1', '1461294780', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1049', '1', '1461294803', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1050', '1', '1461294805', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1051', '1', '1461294970', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1052', '1', '1461295082', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1053', '1', '1461295245', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1054', '1', '1461295263', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1055', '1', '1461295269', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1056', '1', '1461295307', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1057', '1', '1461295454', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1058', '1', '1461295536', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1059', '1', '1461295572', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1060', '1', '1461295646', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1061', '1', '1461295647', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1062', '1', '1461295695', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1063', '1', '1461295696', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1064', '1', '1461295698', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1065', '1', '1461295713', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1066', '1', '1461295728', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1067', '1', '1461295742', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1068', '1', '1461295750', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1069', '1', '1461295767', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1070', '1', '1461295769', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1071', '1', '1461295793', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1072', '1', '1461295849', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1073', '1', '1461295871', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1074', '1', '1461295896', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1075', '1', '1461295926', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1076', '1', '1461295966', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1077', '1', '1461296128', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1078', '1', '1461296149', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1079', '1', '1461296186', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1080', '1', '1461296284', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1081', '1', '1461296719', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1082', '1', '1461296757', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1083', '1', '1461296770', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1084', '1', '1461296818', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1085', '1', '1461296821', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1086', '1', '1461296962', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1087', '1', '1461297082', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1088', '1', '1461297103', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1089', '1', '1461297124', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1090', '1', '1461297143', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1091', '1', '1461297268', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1092', '1', '1461299990', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1093', '1', '1461300000', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1094', '1', '1461300024', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1095', '1', '1461300134', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1096', '1', '1461300145', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1097', '1', '1461300146', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1098', '1', '1461300168', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1099', '1', '1461300206', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1100', '1', '1461300291', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1101', '1', '1461300357', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1102', '1', '1461300363', '/index.php/Node/edit/id/54.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1103', '1', '1461300364', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1104', '1', '1461300372', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1105', '1', '1461300813', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1106', '1', '1461300841', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1107', '1', '1461300941', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1108', '1', '1461300999', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1109', '1', '1461301070', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1110', '1', '1461301083', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1111', '1', '1461301171', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1112', '1', '1461301195', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1113', '1', '1461301293', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1114', '1', '1461301295', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1115', '1', '1461301308', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1116', '1', '1461302354', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1117', '1', '1461302362', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1118', '1', '1461302384', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1119', '1', '1461302414', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1120', '1', '1461302457', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1121', '1', '1461302469', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1122', '1', '1461302556', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1123', '1', '1461302557', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1124', '1', '1461302563', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1125', '1', '1461302607', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1126', '1', '1461302650', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1127', '1', '1461302657', '/index.php/Node/del.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1128', '1', '1461302658', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1129', '1', '1461302754', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1130', '1', '1461302909', '/index.php/Node/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1131', '1', '1461303142', '/index.php/Node/add.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1132', '1', '1461303145', '/index.php/Role/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1133', '1', '1461303147', '/index.php/Node/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1134', '1', '1461303150', '/index.php/Node/edit/id/17.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1135', '1', '1461303150', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1136', '1', '1461303154', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1137', '1', '1461303155', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1138', '1', '1461303157', '/index.php/Node/edit/id/17.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1139', '1', '1461303157', '/index.php/Node/edit/id/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1140', '1', '1461303160', '/index.php/Node/edit.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1141', '1', '1461303161', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1142', '1', '1461304287', '/index.php/Node/index.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1143', '1', '1461304292', '/index.php/Log/index', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1144', '1', '1461304302', '/index.php/Log/index/p/2.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1145', '1', '1461304303', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1146', '1', '1461304304', '/index.php/Log/index/p/77.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1147', '1', '1461304304', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1148', '1', '1461304306', '/index.php/Log/index/p/76.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1149', '1', '1461304306', '/index.php/Log/index/p/[object Object]', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1150', '1', '1461304308', '/index.php/Log/index/p/1.html', '127.0.0.1');
INSERT INTO `hx_log` VALUES ('1151', '1', '1461304308', '/index.php/Log/index/p/[object Object]', '127.0.0.1');

-- ----------------------------
-- Table structure for hx_nav
-- ----------------------------
DROP TABLE IF EXISTS `hx_nav`;
CREATE TABLE `hx_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1:显示2：不显示',
  `sort` int(6) DEFAULT '50',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='导航栏表';

-- ----------------------------
-- Records of hx_nav
-- ----------------------------
INSERT INTO `hx_nav` VALUES ('1', '0', '1', '0', '0', 'php');
INSERT INTO `hx_nav` VALUES ('2', '0', '1', '0', '0', 'mysql');
INSERT INTO `hx_nav` VALUES ('4', '0', '1', '0', '0', 'html');

-- ----------------------------
-- Table structure for hx_order_action
-- ----------------------------
DROP TABLE IF EXISTS `hx_order_action`;
CREATE TABLE `hx_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action_sn` varchar(30) DEFAULT NULL COMMENT '流水账号',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '被操作的交易号',
  `action_user` varchar(30) NOT NULL DEFAULT '' COMMENT '操作该次的人员',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作何操作0,未确认, 1已确认; 2已取消; 3无效; 4退货',
  `action_note` varchar(255) NOT NULL DEFAULT '' COMMENT '操作备注',
  `log_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '操作时间',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

-- ----------------------------
-- Records of hx_order_action
-- ----------------------------
INSERT INTO `hx_order_action` VALUES ('1', null, '2', 'admin', '1', '[售后] 1132', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('2', null, '2', 'admin', '1', '已经发货，注意接收', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('3', null, '1', 'admin', '1', '已经发货，注意接收', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('4', null, '2', '买家', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('5', null, '1', '买家', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('6', null, '3', 'admin', '1', '已经发货了，注意接收', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('7', null, '3', '买家', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('8', null, '5', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('9', null, '6', 'admin', '3', '暂时缺货', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('10', null, '7', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('11', null, '1', 'admin', '1', '[售后] 售后', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('12', null, '2', 'admin', '4', '质量问题', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('13', null, '12', 'buyer', '2', '用户取消', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('14', null, '13', 'admin', '1', '11', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('15', null, '14', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('16', null, '14', 'admin', '1', '已经发货，请接收', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('17', null, '15', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('18', null, '15', 'admin', '1', '已经付款', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('19', null, '15', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('20', null, '15', 'admin', '1', '北京供货商', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('21', null, '3', 'admin', '4', '不喜欢这个颜色', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('22', null, '15', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('23', null, '15', 'admin', '4', '退货', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('24', null, '16', 'admin', '1', '上海供货', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('25', null, '17', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('26', null, '17', 'admin', '4', '退货', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('27', null, '19', 'admin', '1', '', '2016-12-12 21:33:01');
INSERT INTO `hx_order_action` VALUES ('28', null, '5', 'admin', '1', '付款', '2016-12-12 21:33:01');

-- ----------------------------
-- Table structure for hx_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `hx_order_goods`;
CREATE TABLE `hx_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品的名称',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品的唯一货号',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品的购买数量',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '商品的购买数量',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品的市场售价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品的本店售价',
  `goods_attr` text NOT NULL COMMENT '购买该商品时所选择的属性',
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '当不是实物时，是否已发货，0，否；1，是',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是实物，0，否；1，是',
  `extension_code` varchar(30) NOT NULL DEFAULT '' COMMENT '用户id',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '' COMMENT '是否参加优惠活动，0，否；其他',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_order_goods
-- ----------------------------
INSERT INTO `hx_order_goods` VALUES ('1', '1', '8', '飞利浦9@9v', 'ECS000008', '0', '1', '478.79', '385.00', '颜色:黑 \n', '0', '1', '', '0', '0', '231');
INSERT INTO `hx_order_goods` VALUES ('2', '2', '12', '摩托罗拉A810', 'ECS000012', '0', '1', '1179.60', '960.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('3', '3', '17', '夏新N7', 'ECS000017', '0', '1', '2760.00', '2300.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('4', '4', '22', '多普达Touch HD', 'ECS000022', '0', '1', '7198.80', '5999.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('5', '5', '9', '诺基亚E66', 'ECS000009', '0', '3', '2757.60', '2200.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('6', '5', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '2000.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('7', '6', '5', '索爱原装M2卡读卡器', 'ECS000005', '0', '1', '24.00', '20.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('8', '7', '9', '诺基亚E66', 'ECS000009', '0', '1', '2757.60', '2298.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('9', '8', '20', '三星BC01', 'ECS000020', '0', '1', '336.00', '238.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('10', '8', '8', '飞利浦9@9v', 'ECS000008', '0', '1', '478.79', '385.00', '颜色:黑 \n', '0', '1', '', '0', '0', '231');
INSERT INTO `hx_order_goods` VALUES ('11', '9', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '2000.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('12', '10', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '0.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('13', '11', '23', '诺基亚N96', 'ECS000023', '0', '1', '4440.00', '3800.00', '附加配件: 原装电池 [+100]', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('14', '12', '20', '三星BC01', 'ECS000020', '0', '1', '336.00', '238.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('15', '13', '12', '摩托罗拉A810', 'ECS000012', '0', '1', '1179.60', '960.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('16', '14', '15', '摩托罗拉A810', 'ECS000015', '0', '5', '705.60', '588.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('17', '14', '20', '三星BC01', 'ECS000020', '0', '1', '336.00', '238.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('18', '14', '22', '多普达Touch HD', 'ECS000022', '0', '1', '7198.80', '5999.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('19', '14', '3', '诺基亚原装5800耳机', 'ECS000002', '0', '4', '81.60', '68.00', '颜色:银色 \n', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('20', '14', '9', '诺基亚E66', 'ECS000009', '0', '2', '2757.60', '2298.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('21', '15', '13', '诺基亚5320 XpressMusic', 'ECS000013', '0', '3', '1583.20', '1210.00', '颜色:红[10] \n', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('22', '15', '14', '诺基亚5800XM', 'ECS000014', '0', '1', '3150.00', '2493.75', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('23', '15', '24', 'P806', 'ECS000024', '0', '4', '2400.00', '1900.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('24', '15', '9', '诺基亚E66', 'ECS000009', '0', '1', '2757.60', '2183.10', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('25', '15', '8', '飞利浦9@9v', 'ECS000008', '0', '3', '478.79', '379.05', '颜色:黑 \n', '0', '1', '', '0', '0', '231');
INSERT INTO `hx_order_goods` VALUES ('26', '16', '12', '摩托罗拉A810', 'ECS000012', '0', '2', '1179.60', '933.85', '', '2', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('27', '16', '1', 'KD876', 'ECS000000', '0', '1', '1665.60', '1318.60', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('28', '17', '24', 'P806', 'ECS000024', '0', '1', '2400.00', '1900.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('29', '18', '24', 'P806', 'ECS000024', '0', '5', '2400.00', '100.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('30', '19', '12', '摩托罗拉A810', 'ECS000012', '0', '2', '1179.60', '933.85', '', '2', '1', '', '0', '0', '');
INSERT INTO `hx_order_goods` VALUES ('31', '19', '24', 'P806', 'ECS000024', '0', '2', '2400.00', '1850.00', '颜色:灰色 \n', '2', '1', '', '0', '0', '167');

-- ----------------------------
-- Table structure for hx_order_info
-- ----------------------------
DROP TABLE IF EXISTS `hx_order_info`;
CREATE TABLE `hx_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '订单号,唯一',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单的状态;1待付款,2：待发货,3待收货,4已收货,5：交易完成6：交易取消',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的姓名',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的国家id',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的省份id',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的城市id',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的地区id',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人的详细地址,用户页面填写',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的邮编,用户页面填写',
  `tel` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的电话,用户页面填写',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的手机,用户页面填写',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的Email, 用户页面填写',
  `postscript` varchar(255) NOT NULL DEFAULT '' COMMENT '订单附言,由用户提交订单前填写',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0' COMMENT '用户选择的配送方式id',
  `shipping_name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户选择的配送方式的名称',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0' COMMENT '用户选择的支付方式的id',
  `pay_name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户选择的支付方式名称',
  `inv_payee` varchar(120) NOT NULL DEFAULT '' COMMENT '发票抬头,用户页面填写',
  `inv_content` varchar(120) NOT NULL DEFAULT '' COMMENT '发票内容,用户页面选择',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品的总金额',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费用',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付费用,跟支付方式的配置相关',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '已付款金额',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '该订单使用金额的数量,取用户设定余额,用户可用余额,订单金额中最小者',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用的积分的数量,取用户使用积分,商品可用积分,用户拥有积分中最小者',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用积分金额',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用红包金额',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付款金额',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单生成时间',
  `confirm_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单确认时间',
  `pay_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单支付时间',
  `shipping_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单配送时间',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '红包id',
  `invoice_no` varchar(255) NOT NULL DEFAULT '' COMMENT '发货时填写, 可在订单查询查看',
  `extension_code` varchar(30) NOT NULL DEFAULT '' COMMENT '通过活动购买的商品的代号,group_buy是团购; auction是拍卖;snatch夺宝奇兵;正常普通产品该处理为空',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '通过活动购买的物品id,取值good_activity;如果是正常普通商品,该处为0',
  `inv_type` varchar(60) NOT NULL COMMENT '发票类型,用户页面选择',
  `tax` decimal(10,2) NOT NULL COMMENT '发票税额',
  `discount` decimal(10,2) NOT NULL COMMENT '折扣金额',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '1' COMMENT '是否删除1：正常2：删除',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of hx_order_info
-- ----------------------------
INSERT INTO `hx_order_info` VALUES ('1', '2009051298180', '1', '1', '刘先生', '1', '2', '52', '500', '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '5', '申通快递', '1', '余额支付', '', '', '385.00', '15.00', '0.00', '0.00', '400.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '122', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('2', '2009051255518', '1', '4', '刘先生', '1', '2', '52', '500', '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '960.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '111', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('3', '2009051267570', '1', '4', '刘先生', '1', '2', '52', '500', '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '2300.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('4', '2009051230249', '1', '1', '刘先生', '1', '2', '52', '500', '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '5999.00', '10.00', '0.00', '0.00', '5989.00', '0', '0.00', '20.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('5', '2009051276258', '1', '1', '刘先生', '1', '2', '52', '500', '[中国 北京 北京 海淀区] 中关村海兴大厦', '100085', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '5', '申通快递', '1', '余额支付', '', '', '8600.00', '15.00', '0.00', '5.00', '8610.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('6', '2009051217221', '3', '3', '叶先生', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '20.00', '15.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '35.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('7', '2009051227085', '3', '1', '叶先生', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '2298.00', '15.00', '0.00', '0.00', '1000.00', '0', '0.00', '0.00', '1198.10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '114.90', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('8', '2009051299732', '3', '0', '叶先生', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '623.00', '15.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '638.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('9', '2009051210718', '3', '0', '叶先生', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', 'text@ecshop.com', '', '5', '申通快递', '2', '银行汇款/转帐', '', '', '2000.00', '15.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '2015.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('10', '2009051268194', '1', '1', '刘先生', '1', '2', '52', '500', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '0.00', '10.00', '0.00', '0.00', '10.00', '17000', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 'exchange_goods', '24', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('11', '2009051264945', '0', '1', '林小姐', '1', '2', '52', '500', '中关村海兴大厦', '', '135474510', '', 'linzi@116.com', '', '3', '城际快递', '2', '银行汇款/转帐', '', '', '3800.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '3810.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('12', '2009051712919', '1', '2', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '3', '货到付款', '', '', '238.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '253.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('13', '2009051719232', '1', '1', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '3', '货到付款', '', '', '960.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '975.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('14', '2009052224892', '1', '1', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '14045.00', '10.00', '0.00', '0.00', '13806.60', '0', '0.00', '5.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '1123344', '', '0', '', '0.00', '243.40', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('15', '2009061585887', '1', '4', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '2', '银行汇款/转帐', '', '', '17044.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '17054.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('16', '2009061525429', '1', '1', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '3186.30', '10.00', '0.00', '0.00', '3196.30', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '2009061525121', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('17', '2009061503335', '1', '4', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '1900.00', '10.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('18', '2009061510313', '1', '1', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '500.00', '10.00', '0.00', '0.00', '500.00', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', 'group_buy', '8', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');
INSERT INTO `hx_order_info` VALUES ('19', '2009061909851', '1', '1', '刘先生', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', 'ecshop@ecshop.com', '', '3', '城际快递', '1', '余额支付', '', '', '5567.70', '10.00', '0.00', '0.00', '5577.70', '0', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '232421', '', '0', '', '0.00', '0.00', '2016-12-12 21:38:23', '1');

-- ----------------------------
-- Table structure for hx_payment
-- ----------------------------
DROP TABLE IF EXISTS `hx_payment`;
CREATE TABLE `hx_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '' COMMENT '支付方式 的英文缩写',
  `pay_name` varchar(120) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0' COMMENT '支付费用',
  `pay_desc` text NOT NULL COMMENT '支付方式描述',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pay_config` text NOT NULL COMMENT '用户名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可用;1是;2否',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否货到付款, 0否;1是',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否在线支付;0否;1是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='支付工具';

-- ----------------------------
-- Records of hx_payment
-- ----------------------------
INSERT INTO `hx_payment` VALUES ('1', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-07 21:09:05');
INSERT INTO `hx_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0', '0000-00-00 00:00:00', '2016-12-07 21:09:05');
INSERT INTO `hx_payment` VALUES ('3', 'cod', '货到付款', '0', '开通城市：×××\n货到付款区域：×××', '0', 'a:0:{}', '1', '1', '0', '0000-00-00 00:00:00', '2016-12-07 21:09:05');

-- ----------------------------
-- Table structure for hx_region
-- ----------------------------
DROP TABLE IF EXISTS `hx_region`;
CREATE TABLE `hx_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of hx_region
-- ----------------------------
INSERT INTO `hx_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `hx_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `hx_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `hx_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `hx_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `hx_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `hx_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `hx_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `hx_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `hx_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `hx_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `hx_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `hx_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `hx_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `hx_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `hx_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `hx_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `hx_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `hx_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `hx_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `hx_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `hx_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `hx_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `hx_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `hx_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `hx_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `hx_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `hx_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `hx_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `hx_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `hx_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `hx_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `hx_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `hx_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `hx_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `hx_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `hx_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `hx_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `hx_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `hx_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `hx_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `hx_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `hx_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `hx_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `hx_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `hx_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `hx_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `hx_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `hx_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `hx_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `hx_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `hx_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `hx_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `hx_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `hx_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `hx_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `hx_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `hx_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `hx_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `hx_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `hx_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `hx_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `hx_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `hx_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `hx_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `hx_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `hx_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `hx_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `hx_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `hx_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `hx_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `hx_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `hx_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `hx_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `hx_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `hx_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `hx_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `hx_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `hx_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `hx_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `hx_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `hx_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `hx_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `hx_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `hx_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `hx_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `hx_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `hx_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `hx_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `hx_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `hx_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `hx_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `hx_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `hx_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `hx_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `hx_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `hx_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `hx_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `hx_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `hx_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `hx_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `hx_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `hx_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `hx_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `hx_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `hx_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `hx_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `hx_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `hx_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `hx_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `hx_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `hx_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `hx_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `hx_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `hx_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `hx_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `hx_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `hx_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `hx_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `hx_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `hx_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `hx_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `hx_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `hx_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `hx_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `hx_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `hx_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `hx_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `hx_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `hx_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `hx_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `hx_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `hx_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `hx_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `hx_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `hx_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `hx_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `hx_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `hx_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `hx_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `hx_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `hx_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `hx_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `hx_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `hx_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `hx_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `hx_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `hx_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `hx_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `hx_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `hx_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `hx_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `hx_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `hx_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `hx_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `hx_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `hx_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `hx_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `hx_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `hx_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `hx_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `hx_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `hx_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `hx_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `hx_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `hx_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `hx_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `hx_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `hx_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `hx_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `hx_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `hx_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `hx_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `hx_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `hx_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `hx_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `hx_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `hx_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `hx_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `hx_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `hx_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `hx_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `hx_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `hx_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `hx_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `hx_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `hx_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `hx_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `hx_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `hx_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `hx_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `hx_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `hx_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `hx_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `hx_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `hx_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `hx_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `hx_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `hx_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `hx_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `hx_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `hx_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `hx_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `hx_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `hx_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `hx_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `hx_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `hx_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `hx_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `hx_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `hx_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `hx_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `hx_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `hx_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `hx_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `hx_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `hx_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `hx_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `hx_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `hx_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `hx_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `hx_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `hx_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `hx_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `hx_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `hx_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `hx_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `hx_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `hx_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `hx_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `hx_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `hx_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `hx_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `hx_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `hx_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `hx_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `hx_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `hx_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `hx_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `hx_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `hx_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `hx_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `hx_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `hx_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `hx_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `hx_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `hx_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `hx_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `hx_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `hx_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `hx_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `hx_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `hx_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `hx_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `hx_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `hx_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `hx_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `hx_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `hx_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `hx_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `hx_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `hx_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `hx_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `hx_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `hx_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `hx_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `hx_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `hx_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `hx_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `hx_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `hx_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `hx_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `hx_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `hx_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `hx_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `hx_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `hx_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `hx_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `hx_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `hx_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `hx_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `hx_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `hx_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `hx_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `hx_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `hx_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `hx_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `hx_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `hx_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `hx_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `hx_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `hx_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `hx_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `hx_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `hx_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `hx_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `hx_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `hx_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `hx_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `hx_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `hx_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `hx_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `hx_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `hx_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `hx_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `hx_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `hx_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `hx_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `hx_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `hx_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `hx_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `hx_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `hx_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `hx_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `hx_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `hx_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `hx_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `hx_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `hx_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `hx_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `hx_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `hx_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `hx_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `hx_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `hx_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `hx_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `hx_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `hx_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `hx_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `hx_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `hx_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `hx_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `hx_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `hx_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `hx_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `hx_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `hx_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `hx_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `hx_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `hx_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `hx_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `hx_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `hx_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `hx_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `hx_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `hx_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `hx_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `hx_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `hx_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `hx_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `hx_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `hx_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `hx_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `hx_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `hx_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `hx_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `hx_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `hx_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `hx_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `hx_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `hx_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `hx_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `hx_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `hx_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `hx_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `hx_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `hx_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `hx_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `hx_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `hx_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `hx_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `hx_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `hx_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `hx_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `hx_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `hx_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `hx_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `hx_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `hx_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `hx_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `hx_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `hx_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `hx_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `hx_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `hx_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `hx_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `hx_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `hx_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `hx_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `hx_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `hx_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `hx_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `hx_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `hx_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `hx_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `hx_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `hx_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `hx_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `hx_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `hx_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `hx_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `hx_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `hx_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `hx_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `hx_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `hx_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `hx_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `hx_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `hx_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `hx_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `hx_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `hx_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `hx_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `hx_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `hx_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `hx_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `hx_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `hx_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `hx_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `hx_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `hx_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `hx_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `hx_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `hx_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `hx_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `hx_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `hx_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `hx_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `hx_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `hx_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `hx_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `hx_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `hx_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `hx_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `hx_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `hx_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `hx_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `hx_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `hx_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `hx_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `hx_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `hx_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `hx_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `hx_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `hx_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `hx_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `hx_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `hx_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `hx_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `hx_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `hx_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `hx_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `hx_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `hx_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `hx_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `hx_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `hx_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `hx_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `hx_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `hx_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `hx_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `hx_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `hx_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `hx_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `hx_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `hx_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `hx_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `hx_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `hx_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `hx_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `hx_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `hx_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `hx_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `hx_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `hx_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `hx_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `hx_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `hx_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `hx_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `hx_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `hx_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `hx_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `hx_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `hx_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `hx_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `hx_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `hx_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `hx_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `hx_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `hx_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `hx_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `hx_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `hx_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `hx_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `hx_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `hx_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `hx_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `hx_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `hx_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `hx_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `hx_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `hx_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `hx_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `hx_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `hx_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `hx_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `hx_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `hx_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `hx_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `hx_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `hx_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `hx_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `hx_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `hx_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `hx_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `hx_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `hx_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `hx_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `hx_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `hx_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `hx_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `hx_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `hx_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `hx_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `hx_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `hx_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `hx_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `hx_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `hx_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `hx_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `hx_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `hx_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `hx_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `hx_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `hx_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `hx_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `hx_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `hx_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `hx_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `hx_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `hx_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `hx_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `hx_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `hx_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `hx_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `hx_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `hx_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `hx_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `hx_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `hx_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `hx_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `hx_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `hx_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `hx_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `hx_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `hx_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `hx_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `hx_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `hx_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `hx_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `hx_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `hx_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `hx_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `hx_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `hx_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `hx_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `hx_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `hx_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `hx_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `hx_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `hx_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `hx_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `hx_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `hx_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `hx_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `hx_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `hx_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `hx_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `hx_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `hx_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `hx_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `hx_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `hx_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `hx_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `hx_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `hx_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `hx_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `hx_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `hx_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `hx_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `hx_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `hx_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `hx_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `hx_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `hx_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `hx_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `hx_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `hx_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `hx_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `hx_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `hx_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `hx_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `hx_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `hx_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `hx_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `hx_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `hx_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `hx_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `hx_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `hx_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `hx_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `hx_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `hx_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `hx_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `hx_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `hx_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `hx_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `hx_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `hx_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `hx_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `hx_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `hx_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `hx_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `hx_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `hx_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `hx_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `hx_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `hx_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `hx_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `hx_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `hx_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `hx_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `hx_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `hx_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `hx_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `hx_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `hx_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `hx_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `hx_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `hx_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `hx_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `hx_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `hx_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `hx_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `hx_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `hx_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `hx_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `hx_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `hx_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `hx_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `hx_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `hx_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `hx_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `hx_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `hx_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `hx_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `hx_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `hx_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `hx_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `hx_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `hx_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `hx_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `hx_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `hx_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `hx_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `hx_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `hx_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `hx_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `hx_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `hx_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `hx_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `hx_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `hx_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `hx_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `hx_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `hx_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `hx_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `hx_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `hx_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `hx_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `hx_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `hx_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `hx_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `hx_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `hx_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `hx_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `hx_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `hx_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `hx_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `hx_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `hx_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `hx_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `hx_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `hx_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `hx_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `hx_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `hx_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `hx_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `hx_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `hx_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `hx_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `hx_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `hx_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `hx_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `hx_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `hx_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `hx_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `hx_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `hx_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `hx_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `hx_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `hx_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `hx_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `hx_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `hx_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `hx_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `hx_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `hx_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `hx_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `hx_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `hx_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `hx_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `hx_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `hx_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `hx_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `hx_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `hx_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `hx_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `hx_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `hx_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `hx_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `hx_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `hx_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `hx_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `hx_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `hx_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `hx_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `hx_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `hx_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `hx_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `hx_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `hx_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `hx_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `hx_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `hx_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `hx_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `hx_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `hx_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `hx_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `hx_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `hx_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `hx_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `hx_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `hx_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `hx_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `hx_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `hx_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `hx_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `hx_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `hx_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `hx_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `hx_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `hx_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `hx_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `hx_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `hx_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `hx_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `hx_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `hx_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `hx_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `hx_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `hx_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `hx_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `hx_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `hx_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `hx_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `hx_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `hx_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `hx_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `hx_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `hx_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `hx_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `hx_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `hx_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `hx_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `hx_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `hx_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `hx_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `hx_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `hx_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `hx_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `hx_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `hx_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `hx_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `hx_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `hx_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `hx_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `hx_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `hx_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `hx_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `hx_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `hx_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `hx_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `hx_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `hx_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `hx_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `hx_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `hx_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `hx_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `hx_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `hx_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `hx_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `hx_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `hx_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `hx_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `hx_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `hx_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `hx_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `hx_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `hx_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `hx_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `hx_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `hx_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `hx_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `hx_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `hx_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `hx_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `hx_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `hx_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `hx_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `hx_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `hx_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `hx_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `hx_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `hx_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `hx_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `hx_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `hx_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `hx_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `hx_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `hx_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `hx_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `hx_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `hx_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `hx_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `hx_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `hx_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `hx_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `hx_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `hx_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `hx_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `hx_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `hx_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `hx_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `hx_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `hx_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `hx_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `hx_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `hx_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `hx_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `hx_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `hx_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `hx_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `hx_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `hx_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `hx_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `hx_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `hx_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `hx_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `hx_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `hx_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `hx_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `hx_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `hx_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `hx_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `hx_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `hx_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `hx_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `hx_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `hx_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `hx_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `hx_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `hx_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `hx_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `hx_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `hx_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `hx_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `hx_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `hx_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `hx_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `hx_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `hx_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `hx_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `hx_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `hx_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `hx_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `hx_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `hx_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `hx_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `hx_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `hx_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `hx_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `hx_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `hx_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `hx_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `hx_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `hx_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `hx_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `hx_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `hx_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `hx_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `hx_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `hx_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `hx_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `hx_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `hx_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `hx_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `hx_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `hx_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `hx_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `hx_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `hx_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `hx_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `hx_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `hx_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `hx_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `hx_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `hx_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `hx_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `hx_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `hx_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `hx_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `hx_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `hx_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `hx_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `hx_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `hx_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `hx_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `hx_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `hx_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `hx_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `hx_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `hx_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `hx_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `hx_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `hx_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `hx_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `hx_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `hx_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `hx_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `hx_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `hx_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `hx_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `hx_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `hx_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `hx_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `hx_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `hx_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `hx_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `hx_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `hx_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `hx_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `hx_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `hx_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `hx_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `hx_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `hx_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `hx_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `hx_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `hx_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `hx_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `hx_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `hx_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `hx_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `hx_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `hx_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `hx_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `hx_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `hx_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `hx_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `hx_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `hx_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `hx_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `hx_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `hx_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `hx_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `hx_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `hx_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `hx_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `hx_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `hx_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `hx_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `hx_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `hx_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `hx_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `hx_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `hx_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `hx_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `hx_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `hx_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `hx_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `hx_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `hx_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `hx_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `hx_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `hx_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `hx_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `hx_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `hx_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `hx_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `hx_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `hx_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `hx_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `hx_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `hx_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `hx_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `hx_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `hx_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `hx_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `hx_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `hx_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `hx_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `hx_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `hx_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `hx_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `hx_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `hx_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `hx_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `hx_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `hx_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `hx_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `hx_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `hx_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `hx_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `hx_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `hx_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `hx_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `hx_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `hx_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `hx_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `hx_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `hx_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `hx_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `hx_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `hx_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `hx_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `hx_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `hx_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `hx_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `hx_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `hx_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `hx_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `hx_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `hx_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `hx_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `hx_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `hx_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `hx_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `hx_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `hx_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `hx_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `hx_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `hx_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `hx_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `hx_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `hx_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `hx_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `hx_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `hx_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `hx_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `hx_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `hx_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `hx_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `hx_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `hx_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `hx_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `hx_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `hx_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `hx_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `hx_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `hx_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `hx_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `hx_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `hx_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `hx_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `hx_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `hx_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `hx_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `hx_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `hx_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `hx_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `hx_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `hx_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `hx_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `hx_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `hx_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `hx_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `hx_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `hx_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `hx_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `hx_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `hx_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `hx_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `hx_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `hx_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `hx_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `hx_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `hx_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `hx_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `hx_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `hx_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `hx_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `hx_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `hx_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `hx_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `hx_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `hx_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `hx_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `hx_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `hx_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `hx_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `hx_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `hx_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `hx_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `hx_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `hx_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `hx_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `hx_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `hx_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `hx_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `hx_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `hx_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `hx_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `hx_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `hx_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `hx_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `hx_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `hx_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `hx_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `hx_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `hx_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `hx_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `hx_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `hx_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `hx_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `hx_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `hx_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `hx_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `hx_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `hx_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `hx_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `hx_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `hx_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `hx_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `hx_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `hx_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `hx_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `hx_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `hx_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `hx_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `hx_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `hx_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `hx_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `hx_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `hx_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `hx_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `hx_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `hx_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `hx_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `hx_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `hx_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `hx_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `hx_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `hx_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `hx_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `hx_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `hx_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `hx_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `hx_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `hx_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `hx_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `hx_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `hx_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `hx_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `hx_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `hx_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `hx_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `hx_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `hx_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `hx_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `hx_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `hx_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `hx_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `hx_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `hx_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `hx_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `hx_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `hx_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `hx_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `hx_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `hx_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `hx_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `hx_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `hx_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `hx_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `hx_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `hx_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `hx_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `hx_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `hx_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `hx_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `hx_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `hx_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `hx_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `hx_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `hx_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `hx_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `hx_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `hx_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `hx_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `hx_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `hx_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `hx_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `hx_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `hx_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `hx_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `hx_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `hx_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `hx_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `hx_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `hx_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `hx_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `hx_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `hx_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `hx_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `hx_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `hx_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `hx_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `hx_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `hx_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `hx_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `hx_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `hx_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `hx_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `hx_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `hx_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `hx_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `hx_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `hx_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `hx_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `hx_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `hx_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `hx_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `hx_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `hx_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `hx_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `hx_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `hx_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `hx_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `hx_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `hx_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `hx_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `hx_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `hx_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `hx_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `hx_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `hx_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `hx_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `hx_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `hx_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `hx_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `hx_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `hx_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `hx_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `hx_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `hx_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `hx_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `hx_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `hx_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `hx_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `hx_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `hx_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `hx_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `hx_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `hx_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `hx_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `hx_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `hx_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `hx_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `hx_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `hx_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `hx_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `hx_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `hx_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `hx_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `hx_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `hx_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `hx_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `hx_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `hx_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `hx_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `hx_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `hx_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `hx_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `hx_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `hx_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `hx_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `hx_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `hx_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `hx_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `hx_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `hx_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `hx_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `hx_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `hx_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `hx_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `hx_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `hx_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `hx_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `hx_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `hx_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `hx_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `hx_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `hx_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `hx_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `hx_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `hx_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `hx_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `hx_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `hx_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `hx_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `hx_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `hx_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `hx_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `hx_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `hx_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `hx_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `hx_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `hx_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `hx_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `hx_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `hx_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `hx_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `hx_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `hx_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `hx_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `hx_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `hx_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `hx_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `hx_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `hx_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `hx_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `hx_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `hx_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `hx_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `hx_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `hx_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `hx_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `hx_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `hx_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `hx_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `hx_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `hx_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `hx_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `hx_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `hx_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `hx_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `hx_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `hx_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `hx_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `hx_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `hx_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `hx_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `hx_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `hx_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `hx_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `hx_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `hx_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `hx_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `hx_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `hx_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `hx_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `hx_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `hx_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `hx_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `hx_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `hx_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `hx_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `hx_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `hx_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `hx_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `hx_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `hx_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `hx_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `hx_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `hx_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `hx_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `hx_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `hx_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `hx_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `hx_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `hx_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `hx_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `hx_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `hx_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `hx_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `hx_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `hx_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `hx_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `hx_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `hx_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `hx_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `hx_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `hx_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `hx_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `hx_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `hx_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `hx_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `hx_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `hx_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `hx_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `hx_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `hx_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `hx_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `hx_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `hx_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `hx_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `hx_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `hx_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `hx_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `hx_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `hx_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `hx_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `hx_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `hx_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `hx_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `hx_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `hx_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `hx_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `hx_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `hx_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `hx_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `hx_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `hx_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `hx_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `hx_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `hx_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `hx_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `hx_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `hx_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `hx_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `hx_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `hx_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `hx_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `hx_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `hx_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `hx_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `hx_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `hx_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `hx_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `hx_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `hx_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `hx_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `hx_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `hx_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `hx_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `hx_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `hx_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `hx_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `hx_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `hx_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `hx_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `hx_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `hx_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `hx_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `hx_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `hx_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `hx_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `hx_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `hx_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `hx_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `hx_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `hx_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `hx_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `hx_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `hx_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `hx_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `hx_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `hx_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `hx_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `hx_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `hx_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `hx_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `hx_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `hx_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `hx_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `hx_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `hx_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `hx_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `hx_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `hx_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `hx_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `hx_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `hx_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `hx_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `hx_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `hx_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `hx_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `hx_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `hx_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `hx_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `hx_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `hx_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `hx_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `hx_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `hx_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `hx_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `hx_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `hx_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `hx_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `hx_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `hx_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `hx_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `hx_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `hx_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `hx_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `hx_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `hx_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `hx_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `hx_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `hx_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `hx_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `hx_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `hx_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `hx_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `hx_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `hx_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `hx_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `hx_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `hx_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `hx_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `hx_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `hx_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `hx_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `hx_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `hx_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `hx_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `hx_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `hx_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `hx_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `hx_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `hx_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `hx_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `hx_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `hx_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `hx_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `hx_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `hx_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `hx_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `hx_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `hx_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `hx_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `hx_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `hx_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `hx_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `hx_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `hx_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `hx_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `hx_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `hx_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `hx_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `hx_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `hx_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `hx_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `hx_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `hx_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `hx_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `hx_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `hx_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `hx_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `hx_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `hx_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `hx_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `hx_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `hx_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `hx_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `hx_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `hx_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `hx_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `hx_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `hx_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `hx_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `hx_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `hx_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `hx_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `hx_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `hx_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `hx_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `hx_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `hx_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `hx_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `hx_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `hx_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `hx_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `hx_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `hx_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `hx_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `hx_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `hx_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `hx_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `hx_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `hx_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `hx_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `hx_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `hx_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `hx_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `hx_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `hx_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `hx_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `hx_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `hx_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `hx_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `hx_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `hx_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `hx_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `hx_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `hx_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `hx_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `hx_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `hx_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `hx_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `hx_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `hx_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `hx_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `hx_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `hx_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `hx_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `hx_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `hx_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `hx_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `hx_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `hx_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `hx_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `hx_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `hx_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `hx_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `hx_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `hx_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `hx_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `hx_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `hx_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `hx_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `hx_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `hx_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `hx_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `hx_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `hx_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `hx_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `hx_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `hx_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `hx_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `hx_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `hx_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `hx_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `hx_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `hx_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `hx_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `hx_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `hx_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `hx_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `hx_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `hx_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `hx_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `hx_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `hx_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `hx_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `hx_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `hx_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `hx_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `hx_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `hx_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `hx_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `hx_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `hx_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `hx_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `hx_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `hx_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `hx_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `hx_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `hx_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `hx_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `hx_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `hx_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `hx_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `hx_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `hx_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `hx_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `hx_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `hx_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `hx_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `hx_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `hx_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `hx_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `hx_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `hx_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `hx_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `hx_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `hx_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `hx_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `hx_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `hx_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `hx_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `hx_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `hx_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `hx_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `hx_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `hx_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `hx_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `hx_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `hx_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `hx_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `hx_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `hx_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `hx_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `hx_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `hx_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `hx_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `hx_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `hx_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `hx_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `hx_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `hx_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `hx_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `hx_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `hx_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `hx_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `hx_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `hx_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `hx_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `hx_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `hx_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `hx_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `hx_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `hx_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `hx_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `hx_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `hx_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `hx_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `hx_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `hx_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `hx_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `hx_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `hx_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `hx_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `hx_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `hx_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `hx_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `hx_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `hx_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `hx_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `hx_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `hx_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `hx_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `hx_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `hx_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `hx_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `hx_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `hx_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `hx_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `hx_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `hx_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `hx_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `hx_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `hx_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `hx_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `hx_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `hx_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `hx_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `hx_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `hx_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `hx_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `hx_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `hx_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `hx_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `hx_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `hx_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `hx_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `hx_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `hx_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `hx_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `hx_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `hx_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `hx_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `hx_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `hx_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `hx_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `hx_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `hx_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `hx_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `hx_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `hx_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `hx_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `hx_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `hx_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `hx_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `hx_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `hx_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `hx_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `hx_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `hx_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `hx_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `hx_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `hx_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `hx_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `hx_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `hx_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `hx_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `hx_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `hx_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `hx_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `hx_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `hx_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `hx_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `hx_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `hx_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `hx_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `hx_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `hx_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `hx_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `hx_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `hx_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `hx_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `hx_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `hx_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `hx_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `hx_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `hx_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `hx_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `hx_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `hx_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `hx_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `hx_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `hx_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `hx_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `hx_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `hx_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `hx_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `hx_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `hx_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `hx_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `hx_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `hx_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `hx_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `hx_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `hx_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `hx_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `hx_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `hx_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `hx_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `hx_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `hx_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `hx_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `hx_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `hx_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `hx_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `hx_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `hx_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `hx_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `hx_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `hx_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `hx_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `hx_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `hx_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `hx_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `hx_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `hx_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `hx_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `hx_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `hx_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `hx_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `hx_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `hx_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `hx_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `hx_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `hx_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `hx_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `hx_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `hx_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `hx_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `hx_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `hx_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `hx_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `hx_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `hx_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `hx_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `hx_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `hx_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `hx_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `hx_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `hx_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `hx_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `hx_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `hx_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `hx_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `hx_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `hx_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `hx_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `hx_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `hx_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `hx_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `hx_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `hx_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `hx_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `hx_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `hx_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `hx_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `hx_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `hx_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `hx_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `hx_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `hx_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `hx_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `hx_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `hx_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `hx_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `hx_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `hx_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `hx_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `hx_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `hx_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `hx_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `hx_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `hx_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `hx_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `hx_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `hx_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `hx_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `hx_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `hx_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `hx_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `hx_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `hx_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `hx_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `hx_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `hx_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `hx_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `hx_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `hx_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `hx_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `hx_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `hx_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `hx_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `hx_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `hx_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `hx_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `hx_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `hx_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `hx_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `hx_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `hx_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `hx_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `hx_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `hx_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `hx_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `hx_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `hx_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `hx_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `hx_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `hx_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `hx_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `hx_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `hx_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `hx_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `hx_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `hx_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `hx_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `hx_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `hx_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `hx_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `hx_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `hx_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `hx_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `hx_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `hx_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `hx_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `hx_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `hx_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `hx_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `hx_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `hx_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `hx_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `hx_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `hx_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `hx_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `hx_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `hx_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `hx_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `hx_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `hx_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `hx_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `hx_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `hx_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `hx_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `hx_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `hx_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `hx_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `hx_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `hx_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `hx_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `hx_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `hx_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `hx_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `hx_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `hx_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `hx_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `hx_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `hx_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `hx_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `hx_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `hx_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `hx_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `hx_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `hx_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `hx_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `hx_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `hx_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `hx_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `hx_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `hx_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `hx_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `hx_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `hx_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `hx_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `hx_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `hx_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `hx_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `hx_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `hx_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `hx_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `hx_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `hx_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `hx_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `hx_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `hx_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `hx_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `hx_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `hx_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `hx_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `hx_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `hx_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `hx_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `hx_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `hx_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `hx_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `hx_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `hx_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `hx_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `hx_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `hx_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `hx_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `hx_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `hx_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `hx_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `hx_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `hx_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `hx_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `hx_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `hx_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `hx_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `hx_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `hx_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `hx_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `hx_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `hx_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `hx_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `hx_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `hx_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `hx_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `hx_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `hx_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `hx_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `hx_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `hx_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `hx_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `hx_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `hx_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `hx_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `hx_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `hx_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `hx_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `hx_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `hx_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `hx_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `hx_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `hx_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `hx_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `hx_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `hx_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `hx_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `hx_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `hx_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `hx_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `hx_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `hx_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `hx_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `hx_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `hx_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `hx_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `hx_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `hx_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `hx_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `hx_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `hx_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `hx_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `hx_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `hx_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `hx_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `hx_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `hx_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `hx_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `hx_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `hx_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `hx_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `hx_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `hx_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `hx_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `hx_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `hx_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `hx_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `hx_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `hx_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `hx_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `hx_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `hx_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `hx_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `hx_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `hx_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `hx_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `hx_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `hx_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `hx_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `hx_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `hx_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `hx_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `hx_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `hx_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `hx_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `hx_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `hx_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `hx_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `hx_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `hx_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `hx_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `hx_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `hx_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `hx_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `hx_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `hx_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `hx_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `hx_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `hx_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `hx_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `hx_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `hx_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `hx_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `hx_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `hx_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `hx_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `hx_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `hx_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `hx_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `hx_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `hx_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `hx_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `hx_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `hx_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `hx_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `hx_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `hx_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `hx_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `hx_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `hx_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `hx_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `hx_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `hx_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `hx_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `hx_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `hx_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `hx_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `hx_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `hx_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `hx_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `hx_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `hx_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `hx_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `hx_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `hx_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `hx_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `hx_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `hx_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `hx_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `hx_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `hx_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `hx_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `hx_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `hx_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `hx_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `hx_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `hx_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `hx_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `hx_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `hx_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `hx_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `hx_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `hx_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `hx_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `hx_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `hx_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `hx_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `hx_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `hx_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `hx_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `hx_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `hx_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `hx_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `hx_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `hx_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `hx_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `hx_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `hx_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `hx_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `hx_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `hx_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `hx_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `hx_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `hx_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `hx_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `hx_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `hx_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `hx_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `hx_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `hx_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `hx_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `hx_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `hx_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `hx_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `hx_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `hx_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `hx_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `hx_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `hx_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `hx_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `hx_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `hx_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `hx_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `hx_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `hx_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `hx_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `hx_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `hx_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `hx_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `hx_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `hx_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `hx_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `hx_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `hx_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `hx_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `hx_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `hx_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `hx_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `hx_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `hx_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `hx_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `hx_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `hx_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `hx_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `hx_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `hx_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `hx_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `hx_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `hx_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `hx_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `hx_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `hx_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `hx_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `hx_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `hx_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `hx_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `hx_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `hx_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `hx_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `hx_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `hx_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `hx_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `hx_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `hx_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `hx_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `hx_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `hx_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `hx_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `hx_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `hx_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `hx_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `hx_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `hx_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `hx_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `hx_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `hx_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `hx_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `hx_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `hx_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `hx_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `hx_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `hx_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `hx_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `hx_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `hx_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `hx_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `hx_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `hx_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `hx_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `hx_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `hx_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `hx_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `hx_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `hx_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `hx_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `hx_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `hx_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `hx_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `hx_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `hx_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `hx_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `hx_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `hx_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `hx_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `hx_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `hx_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `hx_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `hx_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `hx_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `hx_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `hx_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `hx_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `hx_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `hx_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `hx_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `hx_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `hx_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `hx_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `hx_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `hx_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `hx_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `hx_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `hx_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `hx_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `hx_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `hx_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `hx_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `hx_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `hx_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `hx_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `hx_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `hx_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `hx_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `hx_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `hx_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `hx_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `hx_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `hx_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `hx_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `hx_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `hx_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `hx_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `hx_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `hx_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `hx_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `hx_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `hx_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `hx_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `hx_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `hx_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for hx_system
-- ----------------------------
DROP TABLE IF EXISTS `hx_system`;
CREATE TABLE `hx_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `title` varchar(100) DEFAULT NULL COMMENT '网站标题',
  `domain` varchar(200) DEFAULT NULL COMMENT '网站域名',
  `address` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `phone` varchar(100) DEFAULT NULL COMMENT '公司电话',
  `qq` varchar(50) DEFAULT NULL COMMENT '公司QQ',
  `email` varchar(100) DEFAULT NULL COMMENT '公司email',
  `keyword` varchar(200) DEFAULT NULL COMMENT '网站关键字',
  `desc` varchar(200) DEFAULT NULL COMMENT '网站描述',
  `copyright` varchar(200) DEFAULT NULL COMMENT '底部版权',
  `content` text COMMENT '关于我们',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_system
-- ----------------------------
INSERT INTO `hx_system` VALUES ('1', '嘎嘎时代科技有限公司', '嘎嘎时代科技', 'www.haophper.com', '霍营', '18600957490', '907274532', '907274532@qq.com', '嘎嘎时代', '嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代', '嘎嘎时代', '嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代2222222222');

-- ----------------------------
-- Table structure for hx_user
-- ----------------------------
DROP TABLE IF EXISTS `hx_user`;
CREATE TABLE `hx_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户现有资金',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户冻结资金',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费积分',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员等级积分',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1：启用；2：禁用',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货信息id,',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of hx_user
-- ----------------------------
INSERT INTO `hx_user` VALUES ('1', 'ecshop@ecshop.com', 'ecshop', '554fcae493e564ee0dc75bdf2ebf94ca', '0', '1960-03-03 00:00:00', '0.00', '0.00', '98388', '15390', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_user` VALUES ('2', 'vip@ecshop.com', 'vip', '232059cb5361a9336ccf1b8c2ba7657a', '0', '1949-01-01 00:00:00', '0.00', '0.00', '0', '0', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_user` VALUES ('3', 'text@ecshop.com', 'text', '1cb251ec0d568de6a929b520c4aed8d1', '0', '1949-01-01 00:00:00', '0.00', '0.00', '0', '0', '1', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_user` VALUES ('5', 'zuanshi@ecshop.com', 'zuanshi', '815a71fb334412e7ba4595741c5a111d', '0', '1949-01-01 00:00:00', '0.00', '10000.00', '0', '0', '1', '0', '0000-00-00 00:00:00', '2016-12-07 21:59:10');

-- ----------------------------
-- Table structure for hx_users
-- ----------------------------
DROP TABLE IF EXISTS `hx_users`;
CREATE TABLE `hx_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；hx_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` int(11) DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `last_login_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`) USING BTREE,
  KEY `user_nicename` (`user_nicename`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_users
-- ----------------------------
INSERT INTO `hx_users` VALUES ('1', 'haoxuan', '123456', 'haoxuan', '907274532@qq.com', '', '', '0', '0', '', '127.0.0.1', '', '1', '0', '1439514188', '1437654152');

-- ----------------------------
-- Table structure for hx_user_account
-- ----------------------------
DROP TABLE IF EXISTS `hx_user_account`;
CREATE TABLE `hx_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `admin_user` varchar(255) NOT NULL COMMENT '操作该笔交易的管理员的用户名',
  `amount` decimal(60,2) NOT NULL COMMENT '资金的数目，正数为增加，负数为减少',
  `admin_note` varchar(255) NOT NULL COMMENT '管理员的备注',
  `user_note` varchar(255) NOT NULL COMMENT '用户备注',
  `process_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '操作类型，2，提现；1，其实就是充值',
  `payment_id` tinyint(1) NOT NULL COMMENT '支付方式id',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经付款，０，未付；１，已付',
  `status` tinyint(1) DEFAULT '1' COMMENT '删除 1：正常，2：删除',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `pay_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员账户';

-- ----------------------------
-- Records of hx_user_account
-- ----------------------------
INSERT INTO `hx_user_account` VALUES ('1', '1', 'admin', '-111.00', '1111111qqqqq111', '11111wqewq1', '2', '1', '1', '1', '2016-12-07 22:45:51', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('2', '1', 'admin', '-111.00', '1111qqqqq', '1111', '2', '1', '1', '1', '2016-12-07 22:47:24', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('3', '1', 'admin', '-1111.00', '1111', '1111', '2', '1', '2', '1', '2016-12-07 22:47:58', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('4', '1', 'admin', '-1111.00', '1111', '1111', '2', '1', '2', '1', '2016-12-07 22:48:07', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('5', '1', 'admin', '99999999.99', '111', '11111', '1', '1', '2', '1', '2016-12-07 22:49:18', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('6', '1', 'admin', '11111111111.00', '111', '11111', '1', '1', '2', '1', '2016-12-07 22:49:45', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('7', '1', 'admin', '11111111111.00', '111', '11111', '1', '1', '2', '1', '2016-12-07 22:51:11', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('8', '1', 'admin', '111111.00', '11111', '11111', '1', '1', '2', '1', '2016-12-07 22:52:33', '0000-00-00 00:00:00');
INSERT INTO `hx_user_account` VALUES ('9', '1', 'admin', '-1111.00', '11111111', '11111', '2', '2', '1', '1', '2016-12-08 22:52:12', '2016-12-08 22:52:12');

-- ----------------------------
-- Table structure for hx_user_address
-- ----------------------------
DROP TABLE IF EXISTS `hx_user_address`;
CREATE TABLE `hx_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的名字',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的email',
  `country` smallint(5) NOT NULL DEFAULT '0' COMMENT '收货人的国家',
  `province` smallint(5) NOT NULL DEFAULT '0' COMMENT '收货人的省份',
  `city` smallint(5) NOT NULL DEFAULT '0' COMMENT '收货人城市',
  `district` smallint(5) NOT NULL DEFAULT '0' COMMENT '收货人的地区',
  `address` varchar(120) NOT NULL DEFAULT '' COMMENT '收货人的详细地址',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的邮编',
  `tel` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的电话',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的手机号',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员收货表';

-- ----------------------------
-- Records of hx_user_address
-- ----------------------------
INSERT INTO `hx_user_address` VALUES ('1', '', '1', '刘先生', 'ecshop@ecshop.com', '1', '2', '52', '502', '海兴大厦', '', '010-25851234', '13986765412', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `hx_user_address` VALUES ('2', '', '1', '叶先生', 'text@ecshop.com', '1', '2', '52', '510', '通州区旗舰凯旋小区', '', '13588104710', '', '0000-00-00 00:00:00', '2016-12-06 14:40:55');

-- ----------------------------
-- Table structure for hx_user_rank
-- ----------------------------
DROP TABLE IF EXISTS `hx_user_rank`;
CREATE TABLE `hx_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '' COMMENT '会员等级名称',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最低积分',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最高积分',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '该会员等级的商品折扣',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否在不是该等级会员购买页面显示该会员等级的折扣价格.1,显示;2,不显示',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否事特殊会员等级组.1,不是;2,是',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：启用;2：禁用',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表';

-- ----------------------------
-- Records of hx_user_rank
-- ----------------------------
INSERT INTO `hx_user_rank` VALUES ('1', '注册用户', '111', '1111', '1', '2', '2', '1', '2011-11-11 00:00:00', '2016-12-07 10:07:54');
INSERT INTO `hx_user_rank` VALUES ('2', 'vip', '111', '1111', '1', '1', '1', '1', '2011-11-11 00:00:00', '2016-12-07 20:46:50');
INSERT INTO `hx_user_rank` VALUES ('3', '代销用户', '111', '1111', '1', '1', '1', '1', '2011-11-11 00:00:00', '2016-12-07 20:46:47');
INSERT INTO `hx_user_rank` VALUES ('4', '11', '111', '1111', '1', '2', '2', '1', '2016-12-06 23:19:44', '2016-12-07 10:07:22');
