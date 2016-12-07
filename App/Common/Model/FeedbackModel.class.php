<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class FeedbackModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	//'留言','投诉','询问','售后','求购'
    const CATEGPRY_COMPLAINT=1;//投诉,
    const CATEGPRY_INQUIRY=2;//询问
    const CATEGPRY_CUSTOMER_SERVICE=3;//售后
	const CATEGPRY_BUY=4;//求购
    public static $CATEGPRY_MAP=[
        self::CATEGPRY_COMPLAINT=>'投诉',
        self::CATEGPRY_INQUIRY=>'询问',
        self::CATEGPRY_CUSTOMER_SERVICE=>'售后',
        self::CATEGPRY_BUY=>'求购'
    ];

	public static $STATUS_MAP=[
        self::STATUS_ENABLE=>'启用',
        self::STATUS_DISABLE=>'禁用',
    ];


}
?>