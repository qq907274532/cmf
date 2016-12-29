<?php
namespace Manager\Model;
use Think\Model;
/*****
 *		文章模型
 *		editor	zhangxin
 *		date		2015-5-6 13:34:57
 *****/
class AdminUserModel extends Model {
	
	const TBL_ADMIN="admin_user";
	const TBL_RULE="auth_rule";
	const STATUS_ENABLE="1";
	const STATUS_DISABLE="2";
	protected $_validate = array(
     array('username','require','管理员名称必须填写'),  // 都有时间都验证
     array('email','require','管理员名称必须填写'),  // 都有时间都验证
     array('username','','管理员名称已经存在！',0,'unique',1), // 在新增的时候验证name字段是否唯一
     array('password','require','密码必须填写'),  // 只在登录时候验证
     array('repassword','password','确认密码和密码不一致',0,'confirm'), // 验证确认密码是否和密码一致
   );
	public static $STATUS_MAP=array(
		self::STATUS_ENABLE=>'启用',
		self::STATUS_DISABLE=>'禁用',
		);

	/**
	 * [userInfo 查询用户是否存在]
	 * @return [type] [description]
	 */
	public function userInfo($where){
		$userInfo=$this->where($where)->find();
		return $userInfo;
	}
	public function infoUpdate($id,$data){
		M(self::TBL_ADMIN)->where(array('id'=>$id))->save($data);
	}

	/**
	 * [check_verify 验证验证码是否正确]
	 * @param  [type] $code [验证码]
	 * @param  string $id   [description]
	 * @return [type]       [description]
	 */
	public function check_verify($code, $id = ''){
      $verify = new \Think\Verify();
      return $verify->check($code, $id);
    }
	public function cate($id){
		$cate=M(self::TBL_CATE)->where(array('id'=>$id))->getField('cate');
		return $cate;
	}
    /**
     * @param $id
     * @return mixed
     */
    public function getAdminUserInfoById($id){
        return $this->where(['id'=>$id])->find();
    }


}
?>