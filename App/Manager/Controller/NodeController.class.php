<?php
    namespace Manager\Controller;

    use Manager\Model\AuthRuleModel;
    use Think\Controller;

    class NodeController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = D('AuthRule');
        }

        public function index()
        {
            $list = $this->model->order(array('sort', 'id' => 'desc'))->select();
            foreach ($list as $key => $value) {
                $list[$key]['nodeStatus'] = AuthRuleModel::$STATUS_MAP[$value['status']];
            }
            $this->list = node_merges($list);
            $this->display();
        }

        public function add()
        {
            $errno = 100;
            if (IS_POST) {
                $data = I('post.');
                if (!is_numeric($data['sort'])) {
                    $this->ajaxReturn(array('error' => $errno, 'msg' => '排序必须是数字'));
                }
                if (intval($data['menu']) < 0) {
                    $this->ajaxReturn(array('error' => $errno, 'msg' => '请选择是否是菜单'));
                }
                if (!$this->model->create($data)) {
                    $this->ajaxReturn(array('error' => $errno, 'msg' => $this->model->getError));
                } else {
                    if (!$this->model->add()) {
                        $this->ajaxReturn(array('error' => $errno, 'msg' => '添加失败'));
                    }
                }
                $this->ajaxReturn(array('error' => 200, 'msg' => '添加成功'));

            } else {
                $list = $this->model->where(array('status' => AuthRuleModel::STATUS_ENABLE))->order(array('sort', 'id' => 'desc'))->select();
                $this->assign('list', node_merges($list));
                $this->display();
            }
        }

        public function edit()
        {
            $id = I('id');
            $errno = 100;
            if (IS_POST) {
                if ($id <= 0) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "不合法请求"));
                }
                $data = I('post.');
                if(!is_numeric($data['sort'])){
                    $this->ajaxReturn(array('error' => $errno, 'message' => "排序必须是数字"));
                }
                if(intval($data['menu'])<0){
                    $this->ajaxReturn(array('error' => $errno, 'message' => "请选择是否是菜单"));
                }
                if (empty($data['icon'])) {
                    unset($data['icon']);
                }
                unset($data['id']);
                if (!$this->model->create()) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => $this->model->getError()));
                }
                if (!$this->model->where(array('id' => $id))->save($data)) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "修改失败"));
                }
                $this->ajaxReturn(array('error' => 200, 'message' => "修改成功"));
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('Node/index'));
                }
                $this->info = $this->model->where(array('id' => $id))->find();
                $list = $this->model->where(array('status' => AuthRuleModel::STATUS_ENABLE))->order(array('sort', 'id' => 'desc'))->select();
                $this->assign('list', node_merges($list));
                $this->display();
            }
        }

        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => 100, 'message' => "数据格式有误"));
            }
            $result = $this->model->where(array('pid' => $id))->select();
            if (!empty($result)) {
                $this->ajaxReturn(array('error' => 100, 'message' => "该分类下面有子类。请先删除子类"));
            }
            $status = intval(I('status', 0, 'intval')) == AuthRuleModel::STATUS_ENABLE ? AuthRuleModel::STATUS_DISABLE : AuthRuleModel::STATUS_ENABLE;
            if (!$this->model->where(array('id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }
    }