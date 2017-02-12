<?php
return array(
	'SHOW_PAGE_TRACE' => false,
	'URL_CASE_INSENSITIVE' => false,
	'server_info' => php_uname(), //服务器信息
	'server' => $_SERVER['SERVER_SOFTWARE'], //服务器环境
	'php' => PHP_VERSION, //php版本
	'mysql' => mysqli_get_server_info(), //mysql信息
	'lan' => $_SERVER['HTTP_ACCEPT_LANGUAGE'], //服务器语言
	'IP' => get_client_ip(), //服务器ip
	
	'AUTH_ON' => true, //认证开关
    'AUTH_TYPE' => 1, // 认证方式，1为时时认证；2为登录认证。
    'AUTH_GROUP' => 'auth_group', //用户组数据表名
    'AUTH_GROUP_ACCESS' => 'auth_group_access', //用户组明细表
    'AUTH_RULE' => 'auth_rule', //权限规则表
    'AUTH_USER' => 'admin_user',//用户信息表
    'NOT_AUTH_CONTROLLER' => ['Index'],//用户信息表
    'DEFAULT_V_LAYER'       =>  'View/default',


);