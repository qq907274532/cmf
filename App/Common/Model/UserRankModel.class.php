<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class UserRankModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	const IS_SPECIAL_RANK=1; //是特殊会员
	const IS_NOT_SPECIAL_RANK=2;  //不是特殊会员
    const IS_SHOW_PRICE=1;//显示折扣价
    const IS_NOT_SHOW_PRICE=2;//不显示
    public static $SHOW_PRICE=[
        self::IS_NOT_SHOW_PRICE=>'不显示',
        self::IS_SHOW_PRICE=>'显示',
    ];
	public static $SPECIAL_RANK=[
        self::IS_NOT_SPECIAL_RANK=>'否',
        self::IS_SPECIAL_RANK=>'是',
    ];
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);
    protected $_validate = array(
        array('rank_name','require','会员等级名称必须填写'),
        array('rank_name','','会员等级名称已经存在！',0,'unique',1),
        array('min_points','require','最低积分必须填写'),
        array('max_points','require','最高积分必须填写'),
        array('discount','require','该会员等级的商品折扣必须填写'),
    );

    /**
     * @param $id
     * @return mixed
     */
    public function getUserRankInfoById($id){
        return $this->where(['rank_id'=>$id])->find();
    }

}
?>