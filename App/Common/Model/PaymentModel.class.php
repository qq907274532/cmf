<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class PaymentModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	const IS_ONLINE=1; //是在线支付
	const IS_NOT_ONLINE=2;  //不是在线支付
    const IS_COD=1;//是货到付款
    const IS_NOT_COD=2;//不是货到付款
    public static $ONLINE_MAP=[
        self::IS_ONLINE=>'是',
        self::IS_NOT_ONLINE=>'不是',
    ];
	public static $COD_MAP=[
        self::IS_COD=>'是',
        self::IS_NOT_COD=>'不是',
    ];
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);

    /**
     * 查询出可用的支付方式
     * @return mixed
     */
   public function getPaymentListByStatus(){
       $result=$this->where(['status'=>self::STATUS_ENABLE])->order(['pay_order'=>'desc'])->select();
       return $result;
   }

}
?>