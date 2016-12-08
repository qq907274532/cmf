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
    public function getUserAccountInfoById($id){
        $info=$this->where(array('id' => $id))->find();
        return $info;
    }

    /**
     * @param $user_id    // 用户id
     * @param $admin_user   //  操作该笔交易的管理员的用户名
     * @param $amount       //   资金的数目，正数为增加，负数为减少
     * @param $admin_note   // 管理员的备注
     * @param $user_note    //   用户备注
     * @param $payment_id   //     支付方式id
     * @param $process_type  // 操作类型，2，提现；1，其实就是充值
     * @param $is_paid     //  是否已经付款，０，未付；１，已付
     * @return mixed
     * @throws \Exception
     */
    public function addAcount($user_id,$admin_user,$amount,$admin_note,$user_note,$payment_id,$process_type,$is_paid){
        $data = [
            'user_id' => $user_id,
            'process_type' => $process_type,
            'amount' => UserAccountModel::$PAY_TYPE_SYMBOL[$process_type] . $amount,
            'admin_user' =>$admin_user,
            'admin_note' => $admin_note,
            'user_note' => $user_note,
            'payment_id' => $payment_id,
            'status' => UserAccountModel::STATUS_ENABLE,
            'create_time' => date('Y-m-d H:i:s'),
            'pay_time' => date('Y-m-d H:i:s'),
            'is_paid' => $is_paid,
        ];
       
        return $this->add($data);
    }
  

}
?>