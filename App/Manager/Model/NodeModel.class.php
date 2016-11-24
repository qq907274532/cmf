<?php
namespace Manager\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class NodeModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);
	protected $_validate = array(
      array('title','require','规则名称必须填写'), 
      array('name','require','规则标识必须填写'), 
      array('url','require','URL必须填写'), 
    
   );
}
?>