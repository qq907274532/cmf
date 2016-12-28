<?php
namespace Common\Model;
use Think\Model;
/*****
 *		导航栏模型
 *		editor	zhangxin
 *		date		2015-5-6 13:34:57
 *****/
class NavModel extends Model {
	const STATUS_ENABLE='1';
	const STATUS_DISABLE='2';
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'显示',
		self::STATUS_DISABLE=>'不显示',
		);
	protected $_validate = array(
      array('name','require','导航栏必须填写'), //默认情况下用正则进行验证
    
   );
	


}
?>