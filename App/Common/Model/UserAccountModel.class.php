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
    const PAY_TYPE_RECHARGE=1;    //充值
    const PAY_TYPE_WITHDRAWALS=2; //提现
    const PAY_STATUS_SUCCESS=1;//已完成
    const PAY_STATUS_UNPAID=2;//未确认
    public static $PAY_STATUS=[
        self::PAY_STATUS_SUCCESS=>'已完成',
        self::PAY_STATUS_UNPAID=>'未确认'
    ];
    public static $PAY_TYPE_MAP=[
        self::PAY_TYPE_RECHARGE=>'充值',
        self::PAY_TYPE_WITHDRAWALS=>'提现'
    ];
    public static $PAY_TYPE_SYMBOL=[
        self::PAY_TYPE_RECHARGE=>'',
        self::PAY_TYPE_WITHDRAWALS=>'-',
    ];
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'正常',
		self::STATUS_DISABLE=>'删除',
		);
    protected $_validate = array(
        array('amount','require','金额必须填写'),
        array('admin_note','require','管理员备注必须填写'),
        array('user_note','require','会员备注必须填写'),
    );
  

}
?>