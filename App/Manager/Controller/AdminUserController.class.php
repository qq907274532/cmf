<?php
    namespace Manager\Controller;
    use Manager\Model\AdminUserModel;
    use Manager\Model\AuthGroupModel;
    use Think\Controller;

    class AdminUserController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = D('AdminUser');
            $this->modelRole = D('AuthGroup');
            $this->modelRoleAcc = M('auth_group_access');
        }

        public function index()
        {
            $this->order = array('create_time', 'id' => 'desc');
            $data = $this->page_com($this->model, $this->order);
            $roleAccess = $this->modelRoleAcc->select();
            $newRoleAccess = array_combine(array_column($roleAccess,'uid' ), array_column($roleAccess, 'group_id'));
            $roleList = $this->modelRole->select();
            $newRoleList = array_combine(array_column($roleList, 'id'), array_column($roleList, 'title'));
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['name'] = $newRoleList[$newRoleAccess[$v['id']]];
            }
            $this->data = $data;
            $this->display();
        }
        public function add()
        {
            if(IS_POST){
                try {
                    $data = I('post.');
                    $data['create_time'] = date("Y-m-d H:i:s");
                    $this->model->startTrans();
                    if (!$this->model->create($data)) {
                        throw new \Exception($this->model->getError());
                    } else {
                        $data['password'] = makePassword($data['password']);
                        $uid = $this->model->add($data);
                        $gid = $this->modelRoleAcc->add(array('group_id' => I('role'), 'uid' => $uid));
                        $this->model->commit();
                        $this->ajaxReturn(array('error' => 200, 'message' => "添加成功"));
                    }
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }

            }else{
                $this->roleList=$this->modelRole->where(array('status'=>AuthGroupModel::STATUS_ENABLE))->select();

                $this->display();
            }
        }
    }