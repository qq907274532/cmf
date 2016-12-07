<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class UserAddressModel extends Model {
    /**
     * 查找用户的
     * @param $uid
     * @return mixed
     */
   public function getUsersAddressListByUid($uid,$order=['address_id'=>'desc']){
       $result=$this->order($order)->where(array('user_id'=>$uid))->select();
       return $result;
   }
}
?>