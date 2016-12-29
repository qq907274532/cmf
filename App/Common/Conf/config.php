<?php
return array(
    'DB_TYPE' => 'mysql',
    'DB_HOST' => '127.0.0.1',
    'DB_NAME' => 'cmf',
    'DB_USER' => 'root',
    'DB_PWD' => 'root',
    'DB_PORT' => '3306',
    'DB_PREFIX' => 'hx_',
	'URL_MODEL'=>'1',
	'COMM_TITLE'=>'易名轩管理系统',
	'PAGE_NUMBER'=>'15',
	/* 系统变量名称设置 */
	'VAR_MODULE'            =>  'g',     // 默认模块获取变量
	'VAR_CONTROLLER'        =>  'm',    // 默认控制器获取变量
	'VAR_ACTION'            =>  'c',    // 默认操作获取变量
	'MODULE_ALLOW_LIST' => array ( 'Home','Manager',),
    'DEFAULT_MODULE' => 'Manager' ,
    'DEFAULT_V_LAYER'       =>  'View/default',
	
);
