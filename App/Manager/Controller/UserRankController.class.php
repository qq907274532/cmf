<?php
    namespace Manager\Controller;

    use Common\Model\UserRankModel;
    use Manager\Model\AdminUserModel;
    use Manager\Model\AuthGroupModel;
    use Think\Controller;

    class UserRankController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = D('UserRank');
        }

        public function index()
        {
            $this->order = array('create_time', 'rank_id' => 'desc');
            $data = $this->page_com($this->model, $this->order);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['statusName'] = UserRankModel::$STATUS_MAP[$v['status']];
                $data['list'][$k]['showPriceName'] = UserRankModel::$SHOW_PRICE[$v['show_price']];
                $data['list'][$k]['specialRankName'] =UserRankModel::$SPECIAL_RANK[$v['special_rank']];
            }
            $this->data = $data;
            $this->display();
        }

        public function add()
        {
            if (IS_POST) {
                $data = I('post.');
                $data['create_time'] = date("Y-m-d H:i:s");
                $data['status'] = UserRankModel::STATUS_ENABLE;
                if (!$this->model->create($data)) {
                    $this->ajaxReturn(array('error' => 100, 'message' =>$this->model->getError()));
                }
                if($this->model->add($data)){
                    $this->ajaxReturn(array('error' => 200, 'message' => "添加成功"));
                } else{
                    $this->ajaxReturn(array('error' => 100, 'message' => "添加失败"));
                }


            } else {
//                print_r(UserRankModel::$SPECIAL_RANK;);die;
                $this->special_rank=UserRankModel::$SPECIAL_RANK;
                $this->show_price=UserRankModel::$SHOW_PRICE;
                $this->display();
            }
        }

        public function edit()
        {
            $id = I('id');
            if (IS_POST) {
                if ($id <= 0) {
                    $this->ajaxReturn(array('error' => 100, 'message' => "不合法请求"));
                }
                $data['group_id'] = I('post.role');
                if (!$this->modelRoleAcc->where(array('uid' => $id))->save($data)) {
                    $this->ajaxReturn(array('error' => 100, 'message' => "修改失败"));
                }
                $this->ajaxReturn(array('error' => 200, 'message' => "修改成功"));
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('AdminUser/index'));
                }
                $info = $this->model->where(array('id' => $id))->find();
                $info['role_id'] = $this->modelRoleAcc->where(array('uid' => $id))->getField('group_id');
                $this->roleList = $this->modelRole->where(array('status' => AuthGroupModel::STATUS_ENABLE))->select();
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
            if (!$this->model->where(array('rank_id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }
    }