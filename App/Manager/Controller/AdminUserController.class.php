<?php
    namespace Manager\Controller;

    use Manager\Model\AdminUserModel;
    use Manager\Model\AuthGroupAccessModel;
    use Manager\Model\AuthGroupModel;
    use Manager\Model\AuthRuleModel;

    class AdminUserController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model =new AdminUserModel();
        }

        public function index()
        {
            $authGroupAccessModel = new AuthGroupAccessModel();
            $authGroupModel =new AuthRuleModel();
            $this->order = array('create_time', 'id' => 'desc');
            $data = $this->page_com($this->model, $this->order);
            $roleAccess = $authGroupAccessModel->getList();
            $newRoleAccess = array_combine(array_column($roleAccess, 'uid'), array_column($roleAccess, 'group_id'));
            $roleList = $authGroupModel->getAuthRuleListByWhere();
            $newRoleList = array_combine(array_column($roleList, 'id'), array_column($roleList, 'title'));
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['name'] = $newRoleList[$newRoleAccess[$v['id']]];
                $data['list'][$k]['statusName'] = AdminUserModel::$STATUS_MAP[$v['status']];
            }
            $this->data = $data;
            $this->display();
        }

        public function add()
        {
            if (IS_POST) {
                $authGroupAccessModel = new AuthGroupAccessModel();
                try {
                    $data = I('post.');
                    $data['create_time'] = date("Y-m-d H:i:s");
                    if(!checkEmail($data['email'])){
                        throw new \Exception("邮箱格式不正确");
                    }
                    $this->model->startTrans();
                    if (!$this->model->create($data)) {
                        throw new \Exception($this->model->getError());
                    } else {
                        $data['password'] = makePassword($data['password']);
                        $uid = $this->model->add($data);
                        $gid = $authGroupAccessModel->add(array('group_id' => I('role'), 'uid' => $uid));
                        $this->model->commit();
                        $this->ajaxReturn(array('error' => 200, 'message' => "添加成功"));
                    }
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }

            } else {
                $authGroupModel = new AuthRuleModel();
                $this->roleList = $authGroupModel->getAuthRuleListByWhere(['id'=>'desc'],['status' => AuthGroupModel::STATUS_ENABLE]);
                $this->display();
            }
        }

        public function edit()
        {
            $id = I('id');
            $authGroupAccessModel = new AuthGroupAccessModel();
            if (IS_POST) {
                try {
                    if ($id <= 0) {
                        $this->ajaxReturn(array('error' => 100, 'message' => "不合法请求"));
                    }
                    $this->model->startTrans();
                    $group_id = I('post.role');
                    $email = I('post.email');
                    if(!checkEmail($email)){
                        throw new \Exception("邮箱格式不正确");
                    }
                    $authGroupAccessModel->where(array('uid' => $id))->save(['group_id'=>$group_id]);
                    $this->model->where(array('id'=>$id))->save(['email'=>$email]);
                    $this->model->commit();
                    $this->ajaxReturn(array('error' => 200, 'message' => "修改成功"));
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('AdminUser/index'));
                }
                $authGropModel = new AuthGroupModel();
                $info = $this->model->getAdminUserInfoById($id);
                $authGroupInfo= $authGroupAccessModel->getInfoByUid($id);
                $info['role_id'] =$authGroupInfo['group_id'];
                $this->roleList = $authGropModel->getAuthGroupList(['id'=>'desc'],['status' => AuthGroupModel::STATUS_ENABLE]);
                $this->assign('info', $info);
                $this->display();
            }
        }
        public function modifyPassword(){
            $id = I('id', 0, 'intval');
            $errno = 100;
            if(IS_POST){
                if ($id <= 0) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "数据格式有误"));
                }
                if(empty($password=I('post.password'))){
                    $this->ajaxReturn(array('error' => $errno, 'message' => "新密码不能为空"));
                }
                if(empty($repassword=I('post.repassword'))){
                    $this->ajaxReturn(array('error' => $errno, 'message' => "确认密码不能为空"));
                }
                if($password!=$repassword){
                    $this->ajaxReturn(array('error' => $errno, 'message' => "新密码和确认密码不一致"));
                }
                $data['password']=makePassword($password);
                if (!$this->model->where(array('id' => $id))->save($data)) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => '操作失败'));
                }
                $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
            }else{
                $this->id = $id;
                $this->display();
            }
        }
        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => 100, 'message' => "数据格式有误"));
            }
            $status = intval(I('status', 0, 'intval')) == AdminUserModel::STATUS_ENABLE ? AdminUserModel::STATUS_DISABLE : AdminUserModel::STATUS_ENABLE;
            if (!$this->model->where(array('id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }
    }