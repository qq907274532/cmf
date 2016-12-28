<?php
namespace Common\Model;
use Think\Model;
/*****
 *		Node模型
 *		editor	wxy
 *		date		2015-5-6 13:34:57
 *****/
class UserModel extends Model {
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);

    /**
     * @param $username
     * @return mixed
     */
	public function getUserInfoByUserName($username){
        $info=$this->where(['username'=>$username])->find();
        return $info;
    }

    /**
     * @param $uid
     * @return mixed
     */
    public function getUserInfoByUserId($uid){
        $info=$this->where(['id'=>$uid])->getField('username');
        return $info;
    }
    public function getUserListByWhere($where=[],$order=['id'=>'desc']){
        return $this->where($where)->order($order)->select();
    }

}
?>