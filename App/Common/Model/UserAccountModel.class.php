<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class UserAccountModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";

	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'正常',
		self::STATUS_DISABLE=>'删除',
		);
    protected $_validate = array(
        array('rank_name','require','会员等级名称必须填写'),
        array('rank_name','','会员等级名称已经存在！',0,'unique',1),
        array('min_points','require','最低积分必须填写'),
        array('max_points','require','最高积分必须填写'),
        array('discount','require','该会员等级的商品折扣必须填写'),
    );

}
?>