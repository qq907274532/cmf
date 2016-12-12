<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class OrderInfoModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	const ORDER_PENDING_PAYMENT=1;   //待支付
	const ORDER_TO_BE_SHIPPED=2;  //待发货
    const ORDER_RECEIPT_OF_GOODS=3;  //待收货D
    const ORDER_RECEIVED_GOODS=4;  //已收货
	const ORDER_TRANSACTION_COMPLETION=5;  //交易完成
	const ORDER_TRANSACTION_CANCELLATION=6; //交易取消
    public static $ORDER_STATUS_MAP=[
        self::ORDER_PENDING_PAYMENT=>'待支付',
        self::ORDER_TO_BE_SHIPPED=>'待发货',
        self::ORDER_RECEIPT_OF_GOODS=>'待收货',
        self::ORDER_RECEIVED_GOODS=>'已收货',
        self::ORDER_TRANSACTION_COMPLETION=>'交易完成',
        self::ORDER_TRANSACTION_CANCELLATION=>'交易取消',
    ];
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);



}
?>