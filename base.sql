/*
Navicat MySQL Data Transfer

Source Server         : base
Source Server Version : 50557
Source Host           : 47.94.146.53:3306
Source Database       : base

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2019-04-09 10:01:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '1', '', '0', '1450752856', '1481180175');
INSERT INTO `tp_admin_group` VALUES ('2', '工具', '&#xe616;', '3', '1', '', '0', '1476016712', '1481180175');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` VALUES ('1', '0', '1', 'Admin', '后台管理', '后台管理，不可更改', '1', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('2', '1', '1', 'AdminGroup', '分组管理', ' ', '2', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('3', '1', '1', 'AdminNode', '节点管理', ' ', '2', '1', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('4', '1', '1', 'AdminRole', '角色管理', ' ', '2', '1', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('5', '1', '1', 'AdminUser', '用户管理', '', '2', '1', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('6', '1', '0', 'Index', '首页', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('7', '6', '0', 'welcome', '欢迎页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('8', '6', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('9', '1', '2', 'Generate', '代码自动生成', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('10', '1', '2', 'Demo/excel', 'Excel一键导出', '', '2', '0', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('11', '1', '2', 'Demo/download', '下载', '', '2', '0', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('12', '1', '2', 'Demo/downloadImage', '远程图片下载', '', '2', '0', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('13', '1', '2', 'Demo/mail', '邮件发送', '', '2', '0', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('14', '1', '2', 'Demo/qiniu', '七牛上传', '', '2', '0', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('15', '1', '2', 'Demo/hashids', 'ID加密', '', '2', '0', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('16', '1', '2', 'Demo/layer', '丰富弹层', '', '2', '0', '8', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('17', '1', '2', 'Demo/tableFixed', '表格溢出', '', '2', '0', '9', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('18', '1', '2', 'Demo/ueditor', '百度编辑器', '', '2', '0', '10', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('19', '1', '2', 'Demo/imageUpload', '图片上传', '', '2', '0', '11', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('20', '1', '2', 'Demo/qrcode', '二维码生成', '', '2', '0', '12', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('21', '1', '1', 'NodeMap', '节点图', '', '2', '1', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('22', '1', '1', 'WebLog', '操作日志', '', '2', '1', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('23', '1', '1', 'LoginLog', '登录日志', '', '2', '1', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('59', '1', '2', 'one.two.three.Four/index', '多级节点', '', '2', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('24', '23', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('25', '22', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('26', '22', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('27', '21', '0', 'load', '自动导入', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('28', '21', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('29', '5', '0', 'add', '添加', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('35', '5', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('36', '5', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('37', '5', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('38', '4', '0', 'user', '用户列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('39', '4', '0', 'access', '授权', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('40', '4', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('41', '4', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('42', '4', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('43', '4', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('44', '4', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('45', '3', '0', 'load', '节点快速导入测试', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` VALUES ('4', '编辑', 'edit', '1');
INSERT INTO `tp_admin_node_load` VALUES ('5', '添加', 'add', '1');
INSERT INTO `tp_admin_node_load` VALUES ('6', '首页', 'index', '1');
INSERT INTO `tp_admin_node_load` VALUES ('7', '删除', 'delete', '1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` VALUES ('1', '0', '领导组', ' ', '1', '0', '1208784792', '1254325558');
INSERT INTO `tp_admin_role` VALUES ('2', '0', '网编组', ' ', '0', '0', '1215496283', '1454049929');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1554774990', '127.0.0.1', '388', 'tianpian0805@gmail.com', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528');
INSERT INTO `tp_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1481206367', '127.0.0.1', '5', '', '', '', '1', '0', '1476777133', '1477399793');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_file
-- ----------------------------

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(67.0.3396.87)', 'Windows 7', '2019-03-18 18:03:50');
INSERT INTO `tp_login_log` VALUES ('2', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(67.0.3396.87)', 'Windows 7', '2019-03-22 11:21:06');
INSERT INTO `tp_login_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(73.0.3683.86)', 'Windows 7', '2019-04-09 09:56:36');

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';

-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` VALUES ('1', 'yuan1994', 'tpadmin', '2', '1', null, '2222', 'https://github.com/yuan1994/tpadmin', '2016-12-07', '13012345678', 'tianpian0805@gmail.com', '50', '1', '0', '1481947278', '1481947353');

-- ----------------------------
-- Table structure for tp_web_log_001
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_001`;
CREATE TABLE `tp_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_001
-- ----------------------------
INSERT INTO `tp_web_log_001` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903418');
INSERT INTO `tp_web_log_001` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1552903418');
INSERT INTO `tp_web_log_001` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"hjph\";}', '1552903431');
INSERT INTO `tp_web_log_001` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903431');
INSERT INTO `tp_web_log_001` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903432');
INSERT INTO `tp_web_log_001` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552903433');
INSERT INTO `tp_web_log_001` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1552903434');
INSERT INTO `tp_web_log_001` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903744');
INSERT INTO `tp_web_log_001` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903745');
INSERT INTO `tp_web_log_001` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903812');
INSERT INTO `tp_web_log_001` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903813');
INSERT INTO `tp_web_log_001` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903825');
INSERT INTO `tp_web_log_001` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903825');
INSERT INTO `tp_web_log_001` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903898');
INSERT INTO `tp_web_log_001` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903898');
INSERT INTO `tp_web_log_001` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903936');
INSERT INTO `tp_web_log_001` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903936');
INSERT INTO `tp_web_log_001` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903943');
INSERT INTO `tp_web_log_001` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903943');
INSERT INTO `tp_web_log_001` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903956');
INSERT INTO `tp_web_log_001` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903957');
INSERT INTO `tp_web_log_001` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903972');
INSERT INTO `tp_web_log_001` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903972');
INSERT INTO `tp_web_log_001` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903976');
INSERT INTO `tp_web_log_001` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903976');
INSERT INTO `tp_web_log_001` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/profile.html', 'admin', 'Pub', 'profile', 'GET', 'a:0:{}', '1552903978');
INSERT INTO `tp_web_log_001` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903982');
INSERT INTO `tp_web_log_001` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903982');
INSERT INTO `tp_web_log_001` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552903983');
INSERT INTO `tp_web_log_001` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1552903985');
INSERT INTO `tp_web_log_001` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903990');
INSERT INTO `tp_web_log_001` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903991');
INSERT INTO `tp_web_log_001` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552904441');
INSERT INTO `tp_web_log_001` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1552904442');
INSERT INTO `tp_web_log_001` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1552904445');
INSERT INTO `tp_web_log_001` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1552904465');
INSERT INTO `tp_web_log_001` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1552904476');
INSERT INTO `tp_web_log_001` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1552904480');
INSERT INTO `tp_web_log_001` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1552904484');
INSERT INTO `tp_web_log_001` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1552904485');
INSERT INTO `tp_web_log_001` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/ueditor/index.html?action=config&&noCache=1552904485963', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1552904485963\";}', '1552904485');
INSERT INTO `tp_web_log_001` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1552904496');
INSERT INTO `tp_web_log_001` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1552904498');
INSERT INTO `tp_web_log_001` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1552904500');
INSERT INTO `tp_web_log_001` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1552904505');
INSERT INTO `tp_web_log_001` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1552904506');
INSERT INTO `tp_web_log_001` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1552904510');
INSERT INTO `tp_web_log_001` VALUES ('48', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224190');
INSERT INTO `tp_web_log_001` VALUES ('49', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224190');
INSERT INTO `tp_web_log_001` VALUES ('50', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224192');
INSERT INTO `tp_web_log_001` VALUES ('51', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224196');
INSERT INTO `tp_web_log_001` VALUES ('52', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224203');
INSERT INTO `tp_web_log_001` VALUES ('53', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224335');
INSERT INTO `tp_web_log_001` VALUES ('54', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224346');
INSERT INTO `tp_web_log_001` VALUES ('55', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224347');
INSERT INTO `tp_web_log_001` VALUES ('56', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224363');
INSERT INTO `tp_web_log_001` VALUES ('57', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224365');
INSERT INTO `tp_web_log_001` VALUES ('58', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224365');
INSERT INTO `tp_web_log_001` VALUES ('59', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_001` VALUES ('60', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_001` VALUES ('61', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_001` VALUES ('62', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224378');
INSERT INTO `tp_web_log_001` VALUES ('63', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224378');
INSERT INTO `tp_web_log_001` VALUES ('64', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224379');
INSERT INTO `tp_web_log_001` VALUES ('65', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224379');
INSERT INTO `tp_web_log_001` VALUES ('66', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224380');
INSERT INTO `tp_web_log_001` VALUES ('67', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224861');
INSERT INTO `tp_web_log_001` VALUES ('68', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"6vfl\";}', '1553224867');
INSERT INTO `tp_web_log_001` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224867');
INSERT INTO `tp_web_log_001` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553224868');
INSERT INTO `tp_web_log_001` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224884');
INSERT INTO `tp_web_log_001` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553224884');
INSERT INTO `tp_web_log_001` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225013');
INSERT INTO `tp_web_log_001` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225013');
INSERT INTO `tp_web_log_001` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225025');
INSERT INTO `tp_web_log_001` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225025');
INSERT INTO `tp_web_log_001` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225041');
INSERT INTO `tp_web_log_001` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225042');
INSERT INTO `tp_web_log_001` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225050');
INSERT INTO `tp_web_log_001` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225050');
INSERT INTO `tp_web_log_001` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225057');
INSERT INTO `tp_web_log_001` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225057');
INSERT INTO `tp_web_log_001` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225111');
INSERT INTO `tp_web_log_001` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225111');
INSERT INTO `tp_web_log_001` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225137');
INSERT INTO `tp_web_log_001` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225138');
INSERT INTO `tp_web_log_001` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236242');
INSERT INTO `tp_web_log_001` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236243');
INSERT INTO `tp_web_log_001` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236252');
INSERT INTO `tp_web_log_001` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236253');
INSERT INTO `tp_web_log_001` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236512');
INSERT INTO `tp_web_log_001` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236512');
INSERT INTO `tp_web_log_001` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1553244293');
INSERT INTO `tp_web_log_001` VALUES ('94', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1554774984');
INSERT INTO `tp_web_log_001` VALUES ('95', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1554774984');
INSERT INTO `tp_web_log_001` VALUES ('96', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"nbtx\";}', '1554774990');
INSERT INTO `tp_web_log_001` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1554774990');
INSERT INTO `tp_web_log_001` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1554774990');

-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`tp_web_log_001`) COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
INSERT INTO `tp_web_log_all` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903418');
INSERT INTO `tp_web_log_all` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1552903418');
INSERT INTO `tp_web_log_all` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"hjph\";}', '1552903431');
INSERT INTO `tp_web_log_all` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903431');
INSERT INTO `tp_web_log_all` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903432');
INSERT INTO `tp_web_log_all` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552903433');
INSERT INTO `tp_web_log_all` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1552903434');
INSERT INTO `tp_web_log_all` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903744');
INSERT INTO `tp_web_log_all` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903745');
INSERT INTO `tp_web_log_all` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903812');
INSERT INTO `tp_web_log_all` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903813');
INSERT INTO `tp_web_log_all` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903825');
INSERT INTO `tp_web_log_all` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903825');
INSERT INTO `tp_web_log_all` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903898');
INSERT INTO `tp_web_log_all` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903898');
INSERT INTO `tp_web_log_all` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903936');
INSERT INTO `tp_web_log_all` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903936');
INSERT INTO `tp_web_log_all` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903943');
INSERT INTO `tp_web_log_all` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903943');
INSERT INTO `tp_web_log_all` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903956');
INSERT INTO `tp_web_log_all` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903957');
INSERT INTO `tp_web_log_all` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903972');
INSERT INTO `tp_web_log_all` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903972');
INSERT INTO `tp_web_log_all` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903976');
INSERT INTO `tp_web_log_all` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903976');
INSERT INTO `tp_web_log_all` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/profile.html', 'admin', 'Pub', 'profile', 'GET', 'a:0:{}', '1552903978');
INSERT INTO `tp_web_log_all` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903982');
INSERT INTO `tp_web_log_all` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903982');
INSERT INTO `tp_web_log_all` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552903983');
INSERT INTO `tp_web_log_all` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1552903985');
INSERT INTO `tp_web_log_all` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1552903990');
INSERT INTO `tp_web_log_all` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1552903991');
INSERT INTO `tp_web_log_all` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1552904441');
INSERT INTO `tp_web_log_all` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1552904442');
INSERT INTO `tp_web_log_all` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1552904445');
INSERT INTO `tp_web_log_all` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1552904465');
INSERT INTO `tp_web_log_all` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1552904476');
INSERT INTO `tp_web_log_all` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1552904480');
INSERT INTO `tp_web_log_all` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1552904484');
INSERT INTO `tp_web_log_all` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1552904485');
INSERT INTO `tp_web_log_all` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/ueditor/index.html?action=config&&noCache=1552904485963', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1552904485963\";}', '1552904485');
INSERT INTO `tp_web_log_all` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1552904496');
INSERT INTO `tp_web_log_all` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1552904498');
INSERT INTO `tp_web_log_all` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1552904500');
INSERT INTO `tp_web_log_all` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1552904505');
INSERT INTO `tp_web_log_all` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1552904506');
INSERT INTO `tp_web_log_all` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1552904510');
INSERT INTO `tp_web_log_all` VALUES ('48', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224190');
INSERT INTO `tp_web_log_all` VALUES ('49', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224190');
INSERT INTO `tp_web_log_all` VALUES ('50', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224192');
INSERT INTO `tp_web_log_all` VALUES ('51', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224196');
INSERT INTO `tp_web_log_all` VALUES ('52', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224203');
INSERT INTO `tp_web_log_all` VALUES ('53', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224335');
INSERT INTO `tp_web_log_all` VALUES ('54', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224346');
INSERT INTO `tp_web_log_all` VALUES ('55', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224347');
INSERT INTO `tp_web_log_all` VALUES ('56', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224363');
INSERT INTO `tp_web_log_all` VALUES ('57', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224365');
INSERT INTO `tp_web_log_all` VALUES ('58', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224365');
INSERT INTO `tp_web_log_all` VALUES ('59', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_all` VALUES ('60', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_all` VALUES ('61', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224366');
INSERT INTO `tp_web_log_all` VALUES ('62', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224378');
INSERT INTO `tp_web_log_all` VALUES ('63', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224378');
INSERT INTO `tp_web_log_all` VALUES ('64', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224379');
INSERT INTO `tp_web_log_all` VALUES ('65', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224379');
INSERT INTO `tp_web_log_all` VALUES ('66', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224380');
INSERT INTO `tp_web_log_all` VALUES ('67', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1553224861');
INSERT INTO `tp_web_log_all` VALUES ('68', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"6vfl\";}', '1553224867');
INSERT INTO `tp_web_log_all` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224867');
INSERT INTO `tp_web_log_all` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553224868');
INSERT INTO `tp_web_log_all` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553224884');
INSERT INTO `tp_web_log_all` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553224884');
INSERT INTO `tp_web_log_all` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225013');
INSERT INTO `tp_web_log_all` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225013');
INSERT INTO `tp_web_log_all` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225025');
INSERT INTO `tp_web_log_all` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225025');
INSERT INTO `tp_web_log_all` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225041');
INSERT INTO `tp_web_log_all` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225042');
INSERT INTO `tp_web_log_all` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225050');
INSERT INTO `tp_web_log_all` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225050');
INSERT INTO `tp_web_log_all` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225057');
INSERT INTO `tp_web_log_all` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225057');
INSERT INTO `tp_web_log_all` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225111');
INSERT INTO `tp_web_log_all` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225111');
INSERT INTO `tp_web_log_all` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553225137');
INSERT INTO `tp_web_log_all` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553225138');
INSERT INTO `tp_web_log_all` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236242');
INSERT INTO `tp_web_log_all` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236243');
INSERT INTO `tp_web_log_all` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236252');
INSERT INTO `tp_web_log_all` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236253');
INSERT INTO `tp_web_log_all` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1553236512');
INSERT INTO `tp_web_log_all` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1553236512');
INSERT INTO `tp_web_log_all` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(67.0.3396.87)', 'http://base.local/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1553244293');
INSERT INTO `tp_web_log_all` VALUES ('94', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1554774984');
INSERT INTO `tp_web_log_all` VALUES ('95', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1554774984');
INSERT INTO `tp_web_log_all` VALUES ('96', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"nbtx\";}', '1554774990');
INSERT INTO `tp_web_log_all` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1554774990');
INSERT INTO `tp_web_log_all` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(73.0.3683.86)', 'http://yichengbaobao.local/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1554774990');
