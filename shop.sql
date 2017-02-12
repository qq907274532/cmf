/*
 Navicat Premium Data Transfer

 Source Server         : web
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : shop

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 01/19/2017 00:19:13 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `hx_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `hx_account_log`;
CREATE TABLE `hx_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `user_money` decimal(10,2) NOT NULL COMMENT '用户该笔记录的余额',
  `frozen_money` decimal(10,2) NOT NULL COMMENT '被冻结的资金',
  `rank_points` mediumint(9) NOT NULL COMMENT '等级积分',
  `pay_points` mediumint(9) NOT NULL COMMENT '消费积分',
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '该笔操作发生的时间',
  `change_desc` varchar(255) NOT NULL COMMENT '该笔操作的备注',
  `change_type` tinyint(3) unsigned NOT NULL COMMENT '操作类型,0为充值,1,为提现,2为管理员调节,99为其它类型',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账目日志表';

-- ----------------------------
--  Records of `hx_account_log`
-- ----------------------------
BEGIN;
INSERT INTO `hx_account_log` VALUES ('1', '5', '1100000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '11', '2'), ('2', '3', '400000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '21312', '2'), ('3', '2', '300000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '300000', '2'), ('4', '1', '50000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '50', '2'), ('5', '5', '0.00', '10000.00', '0', '0', '2016-12-06 17:11:24', '32', '2'), ('6', '1', '-400.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051298180', '99'), ('7', '1', '-975.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051255518', '99'), ('8', '1', '0.00', '0.00', '960', '960', '2016-12-06 17:11:24', '订单 2009051255518 赠送的积分', '99'), ('9', '1', '0.00', '0.00', '385', '385', '2016-12-06 17:11:24', '订单 2009051298180 赠送的积分', '99'), ('10', '1', '-2310.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051267570', '99'), ('11', '1', '0.00', '0.00', '2300', '2300', '2016-12-06 17:11:24', '订单 2009051267570 赠送的积分', '99'), ('12', '1', '-5989.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051230249', '99'), ('13', '1', '-8610.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051276258', '99'), ('14', '1', '0.00', '0.00', '0', '-1', '2016-12-06 17:11:24', '参加夺宝奇兵夺宝奇兵之夏新N7 ', '99'), ('15', '1', '0.00', '0.00', '0', '-1', '2016-12-06 17:11:24', '参加夺宝奇兵夺宝奇兵之诺基亚N96 ', '99'), ('16', '1', '0.00', '0.00', '0', '100000', '2016-12-06 17:11:24', '奖励', '2'), ('17', '1', '-10.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009051268194', '99'), ('18', '1', '0.00', '0.00', '0', '-17000', '2016-12-06 17:11:24', '支付订单 2009051268194', '99'), ('19', '1', '0.00', '0.00', '-960', '-960', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009051255518 赠送的积分', '99'), ('20', '1', '975.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009051255518 时使用的预付款', '99'), ('21', '1', '0.00', '0.00', '960', '960', '2016-12-06 17:11:24', '订单 2009051719232 赠送的积分', '99'), ('22', '3', '-1000.00', '0.00', '0', '0', '2016-12-06 17:11:24', '追加使用余额支付订单：2009051227085', '99'), ('23', '1', '-13806.60', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009052224892', '99'), ('24', '1', '0.00', '0.00', '14045', '14045', '2016-12-06 17:11:24', '订单 2009052224892 赠送的积分', '99'), ('25', '1', '0.00', '0.00', '-2300', '-2300', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009051267570 赠送的积分', '99'), ('26', '1', '2310.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009051267570 时使用的预付款', '99'), ('27', '1', '0.00', '0.00', '17044', '17044', '2016-12-06 17:11:24', '订单 2009061585887 赠送的积分', '99'), ('28', '1', '17054.00', '0.00', '0', '0', '2016-12-06 17:11:24', '1', '99'), ('29', '1', '0.00', '0.00', '-17044', '-17044', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009061585887 赠送的积分', '99'), ('30', '1', '-3196.30', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061525429', '99'), ('31', '1', '-1910.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061503335', '99'), ('32', '1', '0.00', '0.00', '1900', '1900', '2016-12-06 17:11:24', '订单 2009061503335 赠送的积分', '99'), ('33', '1', '0.00', '0.00', '-1900', '-1900', '2016-12-06 17:11:24', '由于退货或未发货操作，退回订单 2009061503335 赠送的积分', '99'), ('34', '1', '1910.00', '0.00', '0', '0', '2016-12-06 17:11:24', '由于取消、无效或退货操作，退回支付订单 2009061503335 时使用的预付款', '99'), ('35', '1', '-500.00', '0.00', '0', '0', '2016-12-06 17:11:24', '支付订单 2009061510313', '99'), ('37', '1', '-111.00', '0.00', '0', '0', '2016-12-08 22:17:27', '', '2'), ('38', '1', '-1111.00', '0.00', '0', '0', '2016-12-12 16:36:03', '', '2');
COMMIT;

-- ----------------------------
--  Table structure for `hx_admin_user`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员';

-- ----------------------------
--  Records of `hx_admin_user`
-- ----------------------------
BEGIN;
INSERT INTO `hx_admin_user` VALUES ('1', 'admin', 'pbkdf2_sha256$12000$HVqHjtCOhoKo$TZOQbvzgln4Ni4WfJtWw3Dz0it9ugCGIxXeAK9sen/4=', '907274532@qq.com', '1', '2017-01-02 12:12:08', '127.0.0.1', '2016-11-27 15:11:13', '2017-01-02 12:12:08');
COMMIT;

-- ----------------------------
--  Table structure for `hx_article`
-- ----------------------------
DROP TABLE IF EXISTS `hx_article`;
CREATE TABLE `hx_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_id` int(11) DEFAULT '0' COMMENT '分类id',
  `title` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` longtext COMMENT '文章内容',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `del` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:正常；2：删除',
  `recommend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐 1：否；2：是',
  `top` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否置顶:1否；2：是',
  `audit` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态1：待审核；2：审核成功；3：审核失败',
  `sort` int(11) NOT NULL DEFAULT '50',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';

-- ----------------------------
--  Table structure for `hx_auth_group`
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
--  Records of `hx_auth_group`
-- ----------------------------
BEGIN;
INSERT INTO `hx_auth_group` VALUES ('1', '超级管理员', null, '1', '76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,22,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1', '2016-11-27 16:28:50', '2016-12-12 20:42:01'), ('2', '普通管理员', '普通管理员', '1', '54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,17,18,19,20,21,43,44,45,46,47,48,49,50,51,52,53,37,38,39,40,41,42,24,25,26,27,28,29,30,31,32,33,34,35,36', '2016-11-27 16:28:50', '2016-12-06 20:51:06'), ('3', '测试', '测试1', '2', '51,33,22,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1', '2016-11-27 16:28:50', '2016-12-06 22:52:17');
COMMIT;

-- ----------------------------
--  Table structure for `hx_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `hx_auth_group_access`;
CREATE TABLE `hx_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='节点和角色中间表';

-- ----------------------------
--  Records of `hx_auth_group_access`
-- ----------------------------
BEGIN;
INSERT INTO `hx_auth_group_access` VALUES ('1', '1'), ('2', '2'), ('3', '0'), ('4', '1'), ('7', '2'), ('8', '2'), ('9', '2');
COMMIT;

-- ----------------------------
--  Table structure for `hx_auth_rule`
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
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='节点表';

-- ----------------------------
--  Records of `hx_auth_rule`
-- ----------------------------
BEGIN;
INSERT INTO `hx_auth_rule` VALUES ('1', 'Manageer/Rbac/index', '权限管理', '1', '1', '', '0', 'Rbac/index', '0', '1', 'fa-gear'), ('2', 'Manageer/AdminUser/list', '管理员管理', '1', '1', '', '1', 'AdminUser/index', '1', '1', ''), ('3', 'Manager/AdminUser/index', '列表', '1', '1', '', '2', 'AdminUser/index', '0', '0', ''), ('4', 'Manager/AdminUser/add', '添加', '1', '1', '', '2', 'AdminUser/add', '1', '0', ''), ('5', 'Manager/AdminUser/edit', '修改', '1', '1', '', '2', 'AdminUser/edit', '2', '0', ''), ('6', 'Manager/AdminUser/del', '启用/禁用', '1', '1', '', '2', 'AdminUser/del', '4', '0', ''), ('7', 'Manager/Node/list', '节点管理', '1', '1', '', '1', 'Node/index', '2', '1', 'cogs'), ('8', 'Manager/Node/index', '列表', '1', '1', '', '7', 'Node/index', '0', '0', ''), ('9', 'Manager/Node/add', '添加', '1', '1', '', '7', 'Node/add', '2', '0', ''), ('10', 'Manager/Node/edit', '修改', '1', '1', '', '7', 'Node/edit', '3', '0', ''), ('11', 'Manager/Node/del', '启用/禁用', '1', '1', '', '7', 'Node/del', '4', '0', ''), ('12', 'Manager/Role/list', '角色管理', '1', '1', '', '1', 'Role/index', '2', '1', ''), ('13', 'Manager/Role/index', '列表', '1', '1', '', '12', 'Role/index', '1', '0', ''), ('14', 'Manager/Role/add', '添加', '1', '1', '', '12', 'Role/add', '2', '0', ''), ('15', 'Manager/Role/edit', '修改', '1', '1', '', '12', 'Role/edit', '3', '0', ''), ('16', 'Manager/Role/del', '启用/禁用', '1', '1', '', '12', 'Role/del', '4', '0', ''), ('17', 'Manager/Users/lists', '会员管理', '1', '1', '', '0', 'Users/index', '2', '1', ' fa-user'), ('18', 'Manager/Users/list', '会员管理', '1', '1', '', '17', 'Users/index', '1', '1', ''), ('19', 'Manager/Users/index', '列表', '1', '1', '', '18', 'Users/index', '1', '0', ''), ('20', 'Manager/Users/del', '启用/禁用', '1', '1', '', '18', 'User/del', '2', '0', ''), ('55', 'Manager/UserRank/list', '会员等级', '1', '1', '', '17', 'UserRank/index', '2', '1', ''), ('22', 'Manager/Role/rbac', '授权', '1', '1', '', '12', 'Role/rbac', '5', '0', ''), ('23', 'Manager/UserInfo/list', '个人信息', '1', '1', '', '24', 'UserInfo/index', '2', '0', ''), ('24', 'Manager/UserInfo/index', '修改昵称', '1', '1', '', '27', 'UserInfo/index', '1', '0', ''), ('25', 'Manager/UserInfo/pass', '修改密码', '1', '1', '', '27', 'UserInfo/pass', '2', '0', ''), ('26', 'Manager/Link/list', '友情链接', '1', '1', '', '24', 'Link/index', '3', '1', ''), ('27', 'Manager/Link/index', '列表', '1', '1', '', '30', 'Link/index', '1', '0', ''), ('28', 'Manager/Link/add', '添加', '1', '1', '', '30', 'Link/add', '2', '0', ''), ('29', 'Manager/Link/edit', '修改', '1', '1', '', '30', 'Link/edit', '3', '0', ''), ('30', 'Manager/Link/del', '删除', '1', '1', '', '30', 'Link/del', '4', '0', ''), ('31', 'Manager/Cache/list', '缓存管理', '1', '1', '', '24', 'Cache/index', '4', '1', ''), ('32', 'Manager/Cache/index', '清理缓存', '1', '1', '', '35', 'Cache/index', '1', '0', ''), ('33', 'Manager/Com/list', '内容管理', '1', '1', '', '0', 'Com/list', '1', '1', 'fa-tasks'), ('34', 'Manager/Cate/list', '文章分类', '1', '1', '', '33', 'Cate/index', '1', '1', ''), ('35', 'Manager/Cate/index', '列表', '1', '1', '', '34', 'Cate/index', '1', '0', ''), ('36', 'Manager/Cate/add', '添加', '1', '1', '', '34', 'Cate/add', '2', '0', ''), ('37', 'Manager/Cate/edit', '修改', '1', '1', '', '34', 'Cate/edit', '3', '0', ''), ('38', 'Manager/Cate/del', '删除', '1', '1', '', '34', 'Cate/del', '4', '0', ''), ('39', 'Manager/Article/list', '文章管理', '1', '1', '', '33', 'Article/index', '2', '1', ''), ('40', 'Manager/Article/index', '列表', '1', '1', '', '39', 'Article/index', '1', '0', ''), ('41', 'Manager/Article/add', '添加', '1', '1', '', '39', 'Article/add', '2', '0', ''), ('42', 'Manager/Article/edit', '修改', '1', '1', '', '39', 'Article/edit', '3', '0', ''), ('43', 'Manager/Article/del', '删除', '1', '1', '', '39', 'Article/del', '4', '0', ''), ('44', 'Manager/Comment/list', '评论管理', '1', '1', '', '33', 'Comment/index', '3', '1', ''), ('45', 'Manager/Comment/index', '列表', '1', '1', '', '44', 'Comment/index', '1', '0', ''), ('46', 'Manager/Comment/del', '删除', '0', '1', '', '44', 'Comment/del', '2', '0', ''), ('47', 'Manager/Recycle/list', '回收站', '1', '1', '', '33', 'Recycle/index', '4', '1', ''), ('48', 'Manager/Recycle/index', '列表', '1', '1', '', '47', 'Recycle/index', '1', '0', ''), ('49', 'Manager/Recycle/restore', '恢复', '1', '1', '', '47', 'Recycle/restore', '2', '0', ''), ('50', 'Manager/Recycle/del', '删除', '1', '1', '', '47', 'Recycle/del', '3', '0', ''), ('51', 'Manager/Users/accountDetails', '账目明细', '1', '1', '', '18', 'Users/accountDetails', '50', '2', ''), ('52', 'Manager/Users/receiptAddress', '收货地址', '1', '1', '', '18', 'Users/receiptAddress', '50', '2', ''), ('56', 'Manager/UserRank/index', '等级列表', '1', '1', '', '55', 'UserRank/index', '50', '0', ''), ('57', 'Manager/UserRank/add', '增加等级', '1', '1', '', '55', 'UserRank/add', '2', '0', ''), ('58', 'Manager/UserRank/edit', '修改等级', '1', '1', '', '55', 'UserRank/edit', '3', '0', ''), ('59', 'Manager/UserRank/del', '删除等级', '1', '1', '', '55', 'UserRank/del', '4', '0', ''), ('60', 'Manager/Feedback/list', '会员留言', '1', '1', '', '17', 'Feedback/index', '4', '1', ''), ('61', 'Manager/Feedback/index', '刘洋列表', '1', '1', '', '60', 'Feedback/index', '1', '2', ''), ('62', 'Manager/Feedback/info', '查看详情', '1', '1', '', '60', 'Feedback/info', '2', '2', ''), ('63', 'Manager/Feedback/del', '删除留言', '1', '1', '', '60', 'Feedback/del', '3', '2', ''), ('64', 'Manager/UserRank/showPrice', '是否显示价格', '1', '1', '', '55', 'UserRank/showPrice', '50', '2', ''), ('65', 'Manager/UserRank/specialRank', '是否特殊会员', '1', '1', '', '55', 'UserRank/specialRank', '50', '2', ''), ('66', 'Manager/RechargeCash/list', '充值提现', '1', '1', '', '17', 'RechargeCash/index', '3', '1', ''), ('67', 'Manager/RechargeCash/index', '申请列表', '1', '1', '', '66', 'RechargeCash/index', '1', '1', ''), ('68', 'Manager/RechargeCash/add', '添加申请', '1', '1', '', '66', 'RechargeCash/add', '2', '2', ''), ('69', 'Manager/RechargeCash/edit', '修改申请', '1', '1', '', '66', 'RechargeCash/edit', '3', '2', ''), ('70', 'Manager/RechargeCash/del', '删除申请', '1', '1', '', '66', 'RechargeCash/del', '5', '2', ''), ('71', 'Manager/RechargeCash/check', '审核申请', '1', '1', '', '66', 'RechargeCash/check', '4', '2', ''), ('72', 'Manager/Order/lists', '订单管理', '1', '1', '', '0', 'Order/lists', '4', '1', 'fa-columns fa-fw'), ('73', 'Manager/Order/list', '订单列表', '1', '1', '', '72', 'Order/index', '1', '1', ''), ('74', 'Manager/Order/index', '订单列表', '1', '1', '', '73', 'Order/index', '1', '2', ''), ('75', 'Manager/Order/look', '查看', '1', '1', '', '73', 'Order/look', '2', '2', ''), ('76', 'Manager/Order/del', '移除', '1', '1', '', '73', 'Order/del', '3', '2', '');
COMMIT;

-- ----------------------------
--  Table structure for `hx_back_goods`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_back_order`
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
  `consignee` varchar(60) DEFAULT '',
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
  `return_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `agency_id` smallint(5) unsigned DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_booking_goods`
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
  `dispose_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_cate`
-- ----------------------------
DROP TABLE IF EXISTS `hx_cate`;
CREATE TABLE `hx_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT '50',
  `status` tinyint(4) DEFAULT '1' COMMENT '1:启用，2：禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章分类表';

-- ----------------------------
--  Table structure for `hx_comments`
-- ----------------------------
DROP TABLE IF EXISTS `hx_comments`;
CREATE TABLE `hx_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL COMMENT '评论内容',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `aid` int(11) DEFAULT NULL COMMENT '评论内容id',
  PRIMARY KEY (`id`),
  KEY `comment_parent` (`parentid`),
  KEY `createtime` (`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_delivery_goods`
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_delivery_order`
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_feedback`
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
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `message_img` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '是否回复',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户留言';

-- ----------------------------
--  Table structure for `hx_link`
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='友情链接';

-- ----------------------------
--  Table structure for `hx_log`
-- ----------------------------
DROP TABLE IF EXISTS `hx_log`;
CREATE TABLE `hx_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '管理员远',
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1152 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_nav`
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='导航栏表';

-- ----------------------------
--  Table structure for `hx_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `hx_order_action`;
CREATE TABLE `hx_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action_sn` varchar(30) DEFAULT NULL COMMENT '流水账号',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '被操作的交易号',
  `action_user` varchar(30) NOT NULL DEFAULT '' COMMENT '操作该次的人员',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作何操作0,未确认, 1已确认; 2已取消; 3无效; 4退货',
  `action_note` varchar(255) NOT NULL DEFAULT '' COMMENT '操作备注',
  `log_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单操作记录表';

-- ----------------------------
--  Table structure for `hx_order_goods`
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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `hx_order_info`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单生成时间',
  `confirm_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单确认时间',
  `pay_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单支付时间',
  `shipping_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单配送时间',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '红包id',
  `invoice_no` varchar(255) NOT NULL DEFAULT '' COMMENT '发货时填写, 可在订单查询查看',
  `extension_code` varchar(30) NOT NULL DEFAULT '' COMMENT '通过活动购买的商品的代号,group_buy是团购; auction是拍卖;snatch夺宝奇兵;正常普通产品该处理为空',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '通过活动购买的物品id,取值good_activity;如果是正常普通商品,该处为0',
  `inv_type` varchar(60) NOT NULL COMMENT '发票类型,用户页面选择',
  `tax` decimal(10,2) NOT NULL COMMENT '发票税额',
  `discount` decimal(10,2) NOT NULL COMMENT '折扣金额',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '1' COMMENT '是否删除1：正常2：删除',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
--  Table structure for `hx_payment`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付工具';

-- ----------------------------
--  Table structure for `hx_region`
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
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域表';

-- ----------------------------
--  Table structure for `hx_system`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `hx_system`
-- ----------------------------
BEGIN;
INSERT INTO `hx_system` VALUES ('1', '嘎嘎时代科技有限公司', '嘎嘎时代科技', 'www.haophper.com', '霍营', '18600957490', '907274532', '907274532@qq.com', '嘎嘎时代', '嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代', '嘎嘎时代', '嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代2222222222');
COMMIT;

-- ----------------------------
--  Table structure for `hx_user`
-- ----------------------------
DROP TABLE IF EXISTS `hx_user`;
CREATE TABLE `hx_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户现有资金',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户冻结资金',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消费积分',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员等级积分',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1：启用；2：禁用',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货信息id,',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

-- ----------------------------
--  Table structure for `hx_user_account`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pay_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员账户';

-- ----------------------------
--  Table structure for `hx_user_address`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员收货表';

-- ----------------------------
--  Table structure for `hx_user_rank`
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
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员等级表';

-- ----------------------------
--  Table structure for `hx_users`
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
  `birthday` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `last_login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
