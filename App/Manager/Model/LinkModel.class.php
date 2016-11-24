<?php
namespace Manager\Model;
use Think\Model;
/*****
 *		友情链接模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class LinkModel extends Model {
	protected $_validate = array(
      array('title','require','规则名称必须填写'), 
      array('name','require','规则标识必须填写'), 
      array('url','require','URL必须填写'), 
    
   );
}
?>