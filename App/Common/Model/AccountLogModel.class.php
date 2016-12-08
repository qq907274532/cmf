<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class AccountLogModel extends Model {

    /**
     * 用户账目日志
     * @param $user_id     //用户id
     * @param $user_money    //  用户该笔记录的余额
     * @param string $change_type   // 操作类型,0为充值,1,为提现,2为管理员调节,99为其它类型
     * @param int $frozen_money   // 被冻结的资金
     * @param int $rank_points    //等级积分
     * @param int $pay_points    //消费积分
     * @param string $change_desc  //该笔操作的备注
     * @return mixed
     */
      public function  addAcountLog($user_id,$user_money,$change_type='99',$frozen_money=0,$rank_points=0,$pay_points=0,$change_desc=''){
             $data=[
                 'user_id'=>$user_id,
                 'user_money'=>$user_money,
                 'change_type'=>$change_type,
                 'frozen_money'=>$frozen_money,
                 'rank_points'=>$rank_points,
                 'pay_points'=>$pay_points,
                 'change_desc'=>$change_desc,
                 'change_time'=>date('Y-m-d H:i:s'),
             ];
             return $this->add($data);
      }
}
?>