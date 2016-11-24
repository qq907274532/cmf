-- YMX SQL Dump Program
-- 
-- DATE : 2015-12-24 16:35:42
-- Vol : 1
DROP TABLE IF EXISTS `hx_ad`;
CREATE TABLE `hx_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `cate_id` int(11) DEFAULT NULL COMMENT '广告位id',
  `sort` int(11) DEFAULT '50' COMMENT '排序',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_ad ( `ad_id`, `ad_name`, `ad_content`, `status`, `cate_id`, `sort`, `time` ) VALUES  ('1','测试测试','测试测试测试测试测试测试测试测试测试测试','1','1','1','1439533953');
INSERT INTO hx_ad ( `ad_id`, `ad_name`, `ad_content`, `status`, `cate_id`, `sort`, `time` ) VALUES  ('3','测试测试','测试测试测试测试测试测试测试测试测试测试','0','1','2','1439533843');
DROP TABLE IF EXISTS `hx_admin`;
CREATE TABLE `hx_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '后台管理用户',
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(1) DEFAULT NULL,
  `lock` tinyint(4) DEFAULT '1' COMMENT '锁定状态2锁定，1：未锁定',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `uid` int(11) DEFAULT NULL COMMENT '操作人id',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_admin ( `id`, `username`, `password`, `sort`, `lock`, `time`, `uid`, `update_time` ) VALUES  ('1','admin','e10adc3949ba59abbe56e057f20f883e','0','1','1437654152','1','1450935921');
INSERT INTO hx_admin ( `id`, `username`, `password`, `sort`, `lock`, `time`, `uid`, `update_time` ) VALUES  ('2','zhangxin','e10adc3949ba59abbe56e057f20f883e','2','1','1447483984','1','1447483984');
INSERT INTO hx_admin ( `id`, `username`, `password`, `sort`, `lock`, `time`, `uid`, `update_time` ) VALUES  ('5','demo','e10adc3949ba59abbe56e057f20f883e','50','1','1447484046','1','1447484046');
DROP TABLE IF EXISTS `hx_adpos`;
CREATE TABLE `hx_adpos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '广告位名称',
  `sort` int(11) DEFAULT '50' COMMENT '排序',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_adpos ( `id`, `name`, `sort`, `time` ) VALUES  ('1','首页','1','1439530851');
DROP TABLE IF EXISTS `hx_article`;
CREATE TABLE `hx_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` longtext COMMENT '文章内容',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `del` int(11) DEFAULT '0' COMMENT '0:正常；1：删除',
  `recommend` enum('未推荐','推荐') DEFAULT '未推荐' COMMENT '是否推荐',
  `top` enum('未置顶','置顶') DEFAULT '未置顶' COMMENT '是否置顶',
  `audit` enum('待审核','审核不通过','审核通过') DEFAULT '待审核',
  `sort` int(11) DEFAULT '50',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('3','3','13245asds','asdsadasdasjk阿喀琉斯讲的是看见','加宽了丹江口撒娇的了卡萨极乐空间了','1422330654','1','未推荐','置顶','待审核','50','1');
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('4','3','撒大是的撒','啊是的撒大事','大叔大叔大叔','1422499170','1','未推荐','置顶','待审核','50','1');
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('5','5','测试','','','1439471607','0','推荐','置顶','待审核','50','1');
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('6','5','啊是的撒大时代','啊是的撒大时代','&lt;p&gt;啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代啊是的撒大时代&lt;/p&gt;','1439476132','0','推荐','置顶','审核不通过','50','1');
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('7','5','啊是的撒的','啊时代的淡淡的淡淡的淡淡的淡淡的淡淡的','&lt;p&gt;撒大大大大大大大大大大大大大大大&lt;/p&gt;','1439476207','0','推荐','置顶','审核不通过','50','1');
INSERT INTO hx_article ( `id`, `cate_id`, `title`, `desc`, `content`, `time`, `del`, `recommend`, `top`, `audit`, `sort`, `userid` ) VALUES  ('8','5','广告管理','啊是的撒','啊是的撒的撒旦撒旦','1439479445','0','未推荐','未置顶','审核通过','50','1');
DROP TABLE IF EXISTS `hx_auth_group`;
CREATE TABLE `hx_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) DEFAULT NULL COMMENT '操作人id',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_auth_group ( `id`, `title`, `status`, `rules`, `sort`, `create_time`, `update_time`, `user_id` ) VALUES  ('1','超级管理员','1','54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,1,2,3,4,5,6,12,13,14,15,16,23,7,8,9,10,11,17,18,19,20,21,80,81,82,83,72,73,74,75,76,77,78,79,43,44,45,46,47,48,49,50,51,52,53,37,38,39,40,41,42,24,25,26,27,28,29,30,31,32,33,34,35,36','1','1437654152','1437654152','1');
INSERT INTO hx_auth_group ( `id`, `title`, `status`, `rules`, `sort`, `create_time`, `update_time`, `user_id` ) VALUES  ('2','普通管理员','1','54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,17,18,19,20,21,43,44,45,46,47,48,49,50,51,52,53,37,38,39,40,41,42,24,25,26,27,28,29,30,31,32,33,34,35,36','2','1447483984','1447483984','1');
DROP TABLE IF EXISTS `hx_auth_group_access`;
CREATE TABLE `hx_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_auth_group_access ( `uid`, `group_id` ) VALUES  ('1','1');
INSERT INTO hx_auth_group_access ( `uid`, `group_id` ) VALUES  ('2','2');
INSERT INTO hx_auth_group_access ( `uid`, `group_id` ) VALUES  ('5','2');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('1','Manageer/Rbac/index','权限管理','1','1','','0','Rbac/index','0','1','fa-gear');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('2','Manageer/Admin/list','管理员管理','1','1','','1','Admin/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('3','Manager/Admin/index','列表','1','1','','2','Admin/index','0','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('4','Manager/Admin/add','添加','1','1','','2','Admin/add','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('5','Manager/Admin/edit','修改','1','1','','2','Admin/edit','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('6','Manager/Admin/del','启用/禁用','1','1','','2','Admin/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('7','Manager/Node/list','节点管理','1','1','','1','Node/index','2','1','cogs');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('8','Manager/Node/index','列表','1','1','','7','Node/index','0','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('9','Manager/Node/add','添加','1','1','','7','Node/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('10','Manager/Node/edit','修改','1','1','','7','Node/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('11','Manager/Node/del','启用/禁用','1','1','','7','Node/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('12','Manager/Role/list','角色管理','1','1','','1','Role/index','2','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('13','Manager/Role/index','列表','1','1','','12','Role/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('14','Manager/Role/add','添加','1','1','','12','Role/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('15','Manager/Role/edit','修改','1','1','','12','Role/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('16','Manager/Role/del','启用/禁用','1','1','','12','Role/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('17','Manager/User/lists','用户管理','1','1','','0','User/index','2','1',' fa-user');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('18','Manager/User/list','用户管理','1','1','','17','User/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('19','Manager/User/index','列表','1','1','','18','User/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('20','Manager/User/enable','启用','1','1','','18','User/enable','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('21','Manager/User/shield','禁用','1','1','','18','User/shield','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('23','Manager/Role/rbac','授权','1','1','','12','Role/rbac','5','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('24','Manager/System/list','基本设置','1','1','','0','System/list','12','1','fa-cog');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('25','Manager/Setting/list','网站设置','1','1','','24','Setting/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('26','Manager/Setting/index','显示','1','1','','25','Setting/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('27','Manager/UserInfo/list','个人信息','1','1','','24','UserInfo/index','2','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('28','Manager/UserInfo/index','修改昵称','1','1','','27','UserInfo/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('29','Manager/UserInfo/pass','修改密码','1','1','','27','UserInfo/pass','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('30','Manager/Link/list','友情链接','1','1','','24','Link/index','3','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('31','Manager/Link/index','列表','1','1','','30','Link/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('32','Manager/Link/add','添加','1','1','','30','Link/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('33','Manager/Link/edit','修改','1','1','','30','Link/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('34','Manager/Link/del','删除','1','1','','30','Link/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('35','Manager/Cache/list','缓存管理','1','1','','24','Cache/index','4','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('36','Manager/Cache/index','清理缓存','1','1','','35','Cache/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('37','Manager/Nav/list','导航管理','1','1','','0','Nav/index','7','1','fa-tachometer');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('38','Manager/Nav/Common','导航栏管理','1','1','','37','Nav/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('39','Manager/Nav/index','列表','1','1','','38','Nav/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('40','Manager/Nav/add','添加','1','1','','38','Nav/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('41','Manager/Nav/edit','修改','1','1','','38','Nav/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('42','Manager/Nav/del','删除','1','1','','38','Nav/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('43','Manager/Ad/list','广告管理','1','1','','0','Ad/list','6','1','fa-comment-o');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('44','Manager/AdPos/list','广告位','1','1','','43','AdPos/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('45','Manager/AdPos/index','列表','1','1','','44','AdPos/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('46','Manager/AdPos/add','列表','1','1','','44','AdPos/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('47','Manager/AdPos/edit','修改','1','1','','44','AdPos/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('48','Manager/AdPos/del','删除','1','1','','44','AdPos/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('49','Manager/Ad/lists','广告管理','1','1','','43','Ad/index','2','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('50','Manager/Ad/index','列表','1','0','','49','Ad/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('51','Manager/Ad/add','添加','1','0','','49','Ad/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('52','Manager/Ad/edit','修改','1','0','','49','Ad/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('53','Manager/Ad/del','删除','1','0','','49','Ad/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('54','Manager/Com/list','内容管理','1','1','','0','Com/list','0','1','fa-tasks');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('55','Manager/Cate/list','文章分类','1','1','','54','Cate/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('56','Manager/Cate/index','列表','0','1','','55','Cate/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('57','Manager/Cate/add','添加','0','1','','55','Cate/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('58','Manager/Cate/edit','修改','0','1','','55','Cate/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('59','Manager/Cate/del','删除','0','1','','55','Cate/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('60','Manager/Article/list','文章管理','1','1','','54','Article/index','2','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('61','Manager/Article/index','列表','1','1','','60','Article/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('62','Manager/Article/add','添加','1','1','','60','Article/add','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('63','Manager/Article/edit','修改','1','1','','60','Article/edit','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('64','Manager/Article/del','删除','1','1','','60','Article/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('65','Manager/Comment/list','评论管理','1','1','','54','Comment/index','3','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('66','Manager/Comment/index','列表','1','1','','65','Comment/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('67','Manager/Comment/del','删除','0','1','','65','Comment/del','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('68','Manager/Recycle/list','回收站','1','1','','54','Recycle/index','4','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('69','Manager/Recycle/index','列表','1','1','','68','Recycle/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('70','Manager/Recycle/restore','恢复','1','1','','68','Recycle/restore','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('71','Manager/Recycle/del','删除','1','1','','68','Recycle/del','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('72','Manager/Back/list','备份管理','1','1','','0','Back/list','6','1',' fa-gears');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('73','Manager/BackUp/list','数据备份','1','1','','72','BackUp/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('74','Manager/BackUp/index','备份','1','1','','73','BackUp/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('75','Manager/Restore/list','数据恢复','1','1','','72','Restore/index','2','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('76','Manager/Restore/index','列表','1','1','','75','Restore/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('77','Manager/Restore/import','恢复','1','1','','75','Restore/import','2','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('78','Manager/Restore/download','下载','1','1','','75','Restore/download','3','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('79','Manager/Restore/del','删除','1','1','','75','Restore/del','4','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('80','Manager/Log/list','日志管理','1','1','','0','Log/list','6','1','fa-envelope-o');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('81','Manager/Log/lists','操作日志','1','1','','80','Log/index','1','1','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('82','Manager/Log/index','列表','1','1','','81','Log/index','1','0','');
INSERT INTO hx_auth_rule ( `id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `url`, `sort`, `menu`, `icon` ) VALUES  ('83','Manager/Log/del','启用/禁用','1','1','','81','Log/del','2','0','');
DROP TABLE IF EXISTS `hx_cate`;
CREATE TABLE `hx_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) DEFAULT NULL,
  `cate` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT '50',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('3','0','PHP','50');
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('4','0','js','50');
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('5','0','Mysql','50');
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('6','3','js','50');
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('7','3','mysql','50');
INSERT INTO hx_cate ( `id`, `pid`, `cate`, `sort` ) VALUES  ('8','5','mysql','1');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `hx_link`;
CREATE TABLE `hx_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `desc` text NOT NULL COMMENT '友情链接描述',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1:显示；0：不显示',
  `sort` int(10) NOT NULL DEFAULT '50' COMMENT '排序',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_link ( `id`, `url`, `name`, `image`, `desc`, `status`, `sort`, `time` ) VALUES  ('2','http://www.phpercode.com','百度','/Uploads/link/20150814/20150814203522.jpg','','1','50','1439555722');
INSERT INTO hx_link ( `id`, `url`, `name`, `image`, `desc`, `status`, `sort`, `time` ) VALUES  ('3','http://www.baidu.com','百度','/Uploads/link/20150814/20150814202239.jpg','','1','50','1439554959');
DROP TABLE IF EXISTS `hx_log`;
CREATE TABLE `hx_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '管理员远',
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('1','1','1447579218','Manager/Node/edit','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('3','1','1447581530','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('4','1','1447581534','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('5','1','1447581545','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('6','1','1447581548','/index.php/Admin/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('7','1','1450928739','/index.php/Index/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('8','1','1450928740','/index.php/Index/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('9','1','1450928745','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('10','1','1450928746','/index.php/Admin/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('11','1','1450928881','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('12','1','1450928881','/index.php/Admin/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('13','1','1450928925','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('14','1','1450928926','/index.php/Admin/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('15','1','1450928933','/index.php/Admin/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('16','1','1450928933','/index.php/Admin/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('17','1','1450928971','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('18','1','1450928972','/index.php/Role/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('19','1','1450928976','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('20','1','1450928977','/index.php/Node/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('21','1','1450928983','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('22','1','1450928984','/index.php/Role/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('23','1','1450928986','/index.php/User/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('24','1','1450929005','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('25','1','1450929005','/index.php/Node/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('26','1','1450929007','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('27','1','1450929007','/index.php/Role/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('28','1','1450929219','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('29','1','1450929230','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('30','1','1450929246','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('31','1','1450929248','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('32','1','1450929293','/index.php/User/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('33','1','1450929317','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('34','1','1450929323','/index.php/Node/del.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('35','1','1450929324','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('36','1','1450929328','/index.php/Node/del.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('37','1','1450929329','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('38','1','1450929334','/index.php/Node/del.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('39','1','1450929336','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('40','1','1450929395','/index.php/Node/edit/id/6.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('41','1','1450929396','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('42','1','1450929404','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('43','1','1450929408','/index.php/Admin/del.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('44','1','1450929410','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('45','1','1450929413','/index.php/Admin/del.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('46','1','1450929414','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('47','1','1450929416','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('48','1','1450929417','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('49','1','1450929419','/index.php/Node/edit/id/59.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('50','1','1450929420','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('51','1','1450929428','/index.php/Node/edit/id/6.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('52','1','1450929428','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('53','1','1450929446','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('54','1','1450929447','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('55','1','1450929451','/index.php/Node/edit/id/16.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('56','1','1450929451','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('57','1','1450929455','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('58','1','1450929456','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('59','1','1450929457','/index.php/Node/edit/id/11.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('60','1','1450929458','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('61','1','1450929460','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('62','1','1450929461','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('63','1','1450929469','/index.php/Node/edit/id/83.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('64','1','1450929469','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('65','1','1450929482','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('66','1','1450929483','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('67','1','1450929520','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('68','1','1450929557','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('69','1','1450929595','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('70','1','1450929818','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('71','1','1450929831','/index.php/Log/index/p/2.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('72','1','1450929832','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('73','1','1450929836','/index.php/Log/index/p/3.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('74','1','1450929836','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('75','1','1450929838','/index.php/Log/index/p/4.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('76','1','1450929838','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('77','1','1450929840','/index.php/Log/index/p/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('78','1','1450929840','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('79','1','1450929841','/index.php/Log/index/p/6.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('80','1','1450929842','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('81','1','1450929844','/index.php/Log/index/p/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('82','1','1450929844','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('83','1','1450929865','/index.php/Log/index/p/2.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('84','1','1450929865','/index.php/Log/index/p/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('85','1','1450929872','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('86','1','1450929877','/index.php/Node/edit/id/71.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('87','1','1450929877','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('88','1','1450929886','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('89','1','1450930019','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('90','1','1450930037','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('91','1','1450930065','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('92','1','1450930171','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('93','1','1450930183','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('94','1','1450930271','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('95','1','1450930344','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('96','1','1450930367','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('97','1','1450930390','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('98','1','1450930416','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('99','1','1450930437','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('100','1','1450930456','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('101','1','1450932129','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('102','1','1450932233','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('103','1','1450932279','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('104','1','1450932324','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('105','1','1450932337','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('106','1','1450932395','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('107','1','1450932425','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('108','1','1450932499','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('109','1','1450932542','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('110','1','1450932566','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('111','1','1450932611','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('112','1','1450932653','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('113','1','1450932679','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('114','1','1450932693','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('115','1','1450932707','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('116','1','1450932722','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('117','1','1450932945','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('118','1','1450932993','/index.php/Log/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('119','1','1450932997','/index.php/Log/indexgroup_id=0&starTime=2015-12-01+12%3A56%3A00&endTime=','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('120','1','1450933010','/index.php/Log/indexgroup_id=0&starTime=2015-12-25+12%3A56%3A00&endTime=','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('121','1','1450933019','/index.php/Log/indexgroup_id=1&starTime=2015-11-29+12%3A56%3A00&endTime=','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('122','1','1450933062','/index.php/Log/indexgroup_id=1&starTime=2015-11-29+12%3A56%3A00&endTime=','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('123','1','1450933165','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('124','1','1450933433','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('125','1','1450933523','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('126','1','1450933536','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('127','1','1450933568','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('128','1','1450933616','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('129','1','1450933638','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('130','1','1450934332','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('131','1','1450934333','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('132','1','1450934335','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('133','1','1450934357','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('134','1','1450934358','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('135','1','1450934359','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('136','1','1450934531','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('137','1','1450934534','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('138','1','1450934536','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('139','1','1450934537','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('140','1','1450934538','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('141','1','1450934685','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('142','1','1450934716','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('143','1','1450934719','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('144','1','1450934747','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('145','1','1450934830','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('146','1','1450934895','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('147','1','1450934924','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('148','1','1450935010','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('149','1','1450935060','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('150','1','1450935079','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('151','1','1450935105','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('152','1','1450935211','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('153','1','1450935579','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('154','1','1450935581','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('155','1','1450935683','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('156','1','1450935732','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('157','1','1450935748','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('158','1','1450935813','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('159','1','1450935906','/index.php/Admin/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('160','1','1450935907','/index.php/Admin/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('161','1','1450935910','/index.php/Admin/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('162','1','1450935910','/index.php/Admin/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('163','1','1450935913','/index.php/Admin/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('164','1','1450935915','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('165','1','1450935916','/index.php/Admin/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('166','1','1450935917','/index.php/Admin/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('167','1','1450935921','/index.php/Admin/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('168','1','1450935923','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('169','1','1450936068','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('170','1','1450936069','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('171','1','1450936071','/index.php/Role/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('172','1','1450936273','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('173','1','1450936275','/index.php/Node/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('174','1','1450936923','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('175','1','1450936925','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('176','1','1450938136','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('177','1','1450938171','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('178','1','1450938725','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('179','1','1450938773','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('180','1','1450938809','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('181','1','1450938815','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('182','1','1450938843','/index.php/Nav/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('183','1','1450938844','/index.php/Admin/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('184','1','1450938904','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('185','1','1450938978','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('186','1','1450939016','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('187','1','1450939040','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('188','1','1450939081','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('189','1','1450939926','/index.php/Nav/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('190','1','1450939928','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('191','1','1450939929','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('192','1','1450939951','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('193','1','1450939952','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('194','1','1450939972','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('195','1','1450939973','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('196','1','1450940006','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('197','1','1450940006','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('198','1','1450941164','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('199','1','1450941208','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('200','1','1450941243','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('201','1','1450941261','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('202','1','1450941262','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('203','1','1450941304','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('204','1','1450941304','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('205','1','1450941307','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('206','1','1450941355','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('207','1','1450941364','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('208','1','1450941365','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('209','1','1450941376','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('210','1','1450941410','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('211','1','1450941433','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('212','1','1450941493','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('213','1','1450941494','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('214','1','1450941503','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('215','1','1450941521','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('216','1','1450941522','/index.php/Nav/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('217','1','1450941526','/index.php/Nav/edit/id/5.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('218','1','1450941526','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('219','1','1450941528','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('220','1','1450941530','/index.php/Nav/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('221','1','1450941533','/index.php/Nav/edit/id/3.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('222','1','1450941533','/index.php/Nav/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('223','1','1450941536','/index.php/Nav/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('224','1','1450941537','/index.php/Nav/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('225','1','1450941543','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('226','1','1450941550','/index.php/Node/edit/id/37.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('227','1','1450941625','/index.php/Node/edit/id/37.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('228','1','1450941647','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('229','1','1450941649','/index.php/Role/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('230','1','1450941649','/index.php/Role/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('231','1','1450941667','/index.php/Role/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('232','1','1450941668','/index.php/Role/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('233','1','1450941691','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('234','1','1450941703','/index.php/Node/edit/id/37.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('235','1','1450941704','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('236','1','1450941736','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('237','1','1450941737','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('238','1','1450941886','/index.php/Node/edit/id/24.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('239','1','1450941886','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('240','1','1450941895','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('241','1','1450941896','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('242','1','1450941905','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('243','1','1450941908','/index.php/Role/edit/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('244','1','1450941908','/index.php/Role/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('245','1','1450941914','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('246','1','1450941944','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('247','1','1450942001','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('248','1','1450942017','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('249','1','1450942019','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('250','1','1450942117','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('251','1','1450942118','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('252','1','1450942130','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('253','1','1450942131','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('254','1','1450942350','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('255','1','1450942350','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('256','1','1450942414','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('257','1','1450942415','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('258','1','1450942434','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('259','1','1450942434','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('260','1','1450942465','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('261','1','1450942465','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('262','1','1450942473','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('263','1','1450942844','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('264','1','1450942845','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('265','1','1450942846','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('266','1','1450942919','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('267','1','1450942955','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('268','1','1450942958','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('269','1','1450942958','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('270','1','1450942960','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('271','1','1450942980','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('272','1','1450942981','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('273','1','1450942985','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('274','1','1450942986','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('275','1','1450942993','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('276','1','1450942993','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('277','1','1450942997','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('278','1','1450942998','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('279','1','1450943004','/index.php/Login/logout.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('280','1','1450943014','/index.php/Index/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('281','1','1450943014','/index.php/Index/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('282','1','1450943019','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('283','1','1450943023','/index.php/Node/edit/id/72.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('284','1','1450943023','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('285','1','1450943028','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('286','1','1450943030','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('287','1','1450943036','/index.php/Node/edit/id/73.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('288','1','1450943036','/index.php/Node/edit/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('289','1','1450943041','/index.php/Node/edit.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('290','1','1450943042','/index.php/Node/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('291','1','1450943050','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('292','1','1450943053','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('293','1','1450943053','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('294','1','1450943057','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('295','1','1450943058','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('296','1','1450943061','/index.php/Role/rbac/id/1.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('297','1','1450943061','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('298','1','1450943064','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('299','1','1450943065','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('300','1','1450943069','/index.php/Role/rbac/id/2.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('301','1','1450943069','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('302','1','1450943083','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('303','1','1450943087','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('304','1','1450943088','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('305','1','1450943091','/index.php/Role/rbac/id/2.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('306','1','1450943091','/index.php/Role/rbac/id/[object Object]','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('307','1','1450943093','/index.php/Role/rbac.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('308','1','1450943095','/index.php/Role/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('309','1','1450943221','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('310','1','1450943224','/index.php/Node/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('311','1','1450943352','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('312','1','1450943408','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('313','1','1450943479','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('314','1','1450943535','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('315','1','1450943551','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('316','1','1450943553','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('317','1','1450943560','/index.php/Role/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('318','1','1450943561','/index.php/Role/add.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('319','1','1450943607','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('320','1','1450943647','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('321','1','1450943688','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('322','1','1450943715','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('323','1','1450943747','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('324','1','1450943796','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('325','1','1450943833','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('326','1','1450943937','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('327','1','1450943960','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('328','1','1450943981','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('329','1','1450943995','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('330','1','1450944033','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('331','1','1450944052','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('332','1','1450944123','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('333','1','1450944146','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('334','1','1450944170','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('335','1','1450944187','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('336','1','1450944199','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('337','1','1450944209','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('338','1','1450944256','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('339','1','1450944287','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('340','1','1450944297','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('341','1','1450944311','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('342','1','1450944403','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('343','1','1450944437','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('344','1','1450944493','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('345','1','1450944552','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('346','1','1450944587','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('347','1','1450944597','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('348','1','1450944611','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('349','1','1450944621','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('350','1','1450944630','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('351','1','1450944936','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('352','1','1450944952','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('353','1','1450945651','/index.php/BackUp/index','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('354','1','1450945653','/index.php/BackUp/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('355','1','1450945661','/index.php/BackUp/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('356','1','1450945669','/index.php/BackUp/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('357','1','1450945692','/index.php/BackUp/index.html','127.0.0.1');
INSERT INTO hx_log ( `id`, `uid`, `time`, `name`, `ip` ) VALUES  ('358','1','1450946142','/index.php/BackUp/index.html','127.0.0.1');
DROP TABLE IF EXISTS `hx_nav`;
CREATE TABLE `hx_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1:显示2：不显示',
  `sort` int(6) DEFAULT '50',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('1','0','1','0','0','php');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('2','0','1','0','0','mysql');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('3','0','2','0','1450941536','js');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('4','0','1','0','0','html');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('5','4','1','3','1450941529','css');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('6','1','1','1','1439542420','thinkphp');
INSERT INTO hx_nav ( `id`, `pid`, `status`, `sort`, `time`, `name` ) VALUES  ('7','0','1','1','1450938843','测试');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_system ( `id`, `name`, `title`, `domain`, `address`, `phone`, `qq`, `email`, `keyword`, `desc`, `copyright`, `content` ) VALUES  ('1','嘎嘎时代科技有限公司','嘎嘎时代科技','www.haophper.com','霍营','18600957490','907274532','907274532@qq.com','嘎嘎时代','嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代','嘎嘎时代','嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代嘎嘎时代');
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
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO hx_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `user_activation_key`, `user_status`, `score`, `last_login_time`, `create_time` ) VALUES  ('1','haoxuan','123456','haoxuan','907274532@qq.com','','','0','0','','127.0.0.1','','1','0','1439514188','1437654152');
