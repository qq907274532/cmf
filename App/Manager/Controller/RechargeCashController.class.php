<?php
    namespace Manager\Controller;

    use Common\Model\UserAccountModel;
    use Common\Model\UserModel;
    use Think\Controller;

    class RechargeCashController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = D('UserAccount');
        }

        public function index()
        {
            $this->order = array('create_time', 'id' => 'desc');
            //查询出支付方式
            $payMent = D('Payment')->getPaymentListByStatus();
            //组合成新的数组
            $newPayMent = array_combine(array_column($payMent, 'pay_id'), array_column($payMent, 'pay_name'));
            $where = ['status' => UserAccountModel::STATUS_ENABLE];
            $username = empty(I('username')) ? '' : I('username');
            $process_type = empty(I('process_type')) ? '' : I('process_type');
            $payMentType = empty(I('payMent')) ? '' : I('payMent');
            $is_paid = empty(I('is_paid')) ? '' : I('is_paid');
            if (!empty($title)) {
                $userInfo = D('User')->getUserInfoByUserName($username);
                $where['user_id'] = array('eq', $userInfo['id']);
            }
            if (!empty($process_type)) {
                $where['process_type'] = array('eq', $process_type);
            }
            if (!empty($is_paid)) {
                $where['is_paid'] = array('eq', $is_paid);
            }
            if (!empty($payMentType)) {
                $where['payment_id'] = array('eq', $payMentType);
            }
            $data = $this->page_com($this->model, $this->order, $where);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['amount'] = "¥" . sprintf('%0.2f', abs($v['amount'])) . "元";
                $data['list'][$k]['user_name'] = D('User')->getUserInfoByUserId($v['user_id']);
                $data['list'][$k]['payment'] = $newPayMent[$v['payment_id']];
                $data['list'][$k]['process_type_name'] = UserAccountModel::$PAY_TYPE_MAP[$v['process_type']];
                $data['list'][$k]['is_paid_name'] = UserAccountModel::$PAY_STATUS[$v['is_paid']];

            }
            $this->payMent = $payMent;
            $this->pay_status = UserAccountModel::$PAY_STATUS;
            $this->pay_type = UserAccountModel::$PAY_TYPE_MAP;
            $this->data = $data;
            $this->display();
        }

        //添加申请
        public function add()
        {
            if (IS_POST) {
                $username = I('post.username');
                $userInfo = D('User')->getUserInfoByUserName($username);
                $this->model->startTrans();
                try {
                    if (empty($userInfo)) {
                        throw new \Exception('该用户名不存在');
                    }
                    $is_paid = I('post.is_paid');
                    $pay_type = I('post.process_type');
                    $amount = I('post.amount');
                    $data = [
                        'user_id' => $userInfo['id'],
                        'process_type' => $pay_type,
                        'amount' => UserAccountModel::$PAY_TYPE_SYMBOL[$pay_type] . $amount,
                        'admin_user' => $_SESSION['name'],
                        'admin_note' => I('post.admin_note'),
                        'user_note' => I('post.user_note'),
                        'payment_id' => I('post.payMent'),
                        'status' => UserAccountModel::STATUS_ENABLE,
                        'create_time' => date('Y-m-d H:i:s'),
                        'pay_time' => date('Y-m-d H:i:s'),
                        'is_paid' => $is_paid,
                    ];
                    if (!$this->model->create($data)) {
                        throw new \Exception($this->model->getError());
                    }
                    $this->model->add();
                    if ($is_paid == UserAccountModel::PAY_STATUS_SUCCESS) {
                        D('AccountLog')->addAcountLog($userInfo['id'], $amount, $pay_type);
                    }
                    $this->model->commit();
                    $this->ajaxReturn(array('error' => 200, 'message' => "申请成功"));
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }

            } else {
                $this->pay_status = UserAccountModel::$PAY_STATUS;
                $this->pay_type = UserAccountModel::$PAY_TYPE_MAP;
                $this->payMent = D('Payment')->getPaymentListByStatus();
                $this->display();
            }
        }
        public function edit(){
            $id = I('id');
            $errno=100;
            if(IS_POST){
                if (($id = I('id', 0, 'intval')) <= 0) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "数据格式有误"));
                }
                if (empty($admin_note = I('admin_note'))) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "管理员的备注必须填写"));
                }
                if (empty($user_note = I('user_note'))) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "用户备注必须填写"));
                }
               $data=[
                   'admin_note'=>$admin_note,
                   'user_note'=>$user_note,
               ];
                if($this->model->where(['id'=>$id])->save($data)){
                    $this->ajaxReturn(array('error' => 200, 'message' => "修改成功"));
                }else{
                    $this->ajaxReturn(array('error' => $errno, 'message' => "修改失败"));
                }
            }else{
                if ($id <= 0) {
                    $this->error("不合法请求", U('RechargeCash/index'));
                }
                $info = $this->model->getUserAccountInfoById($id);
                $this->pay_status = UserAccountModel::$PAY_STATUS;
                $info['username'] = D('User')->getUserInfoByUserId($info['user_id']);;
                $info['amount']=abs($info['amount']);
                $this->pay_type = UserAccountModel::$PAY_TYPE_MAP;
                $this->payMent = D('Payment')->getPaymentListByStatus();
                $this->assign('info', $info);
                $this->display();
            }
        }
        //审核
        public function check()
        {
            $id = I('id');
            if (IS_POST) {
                try {
                    $is_paid = I('post.is_paid');
                    $admin_note = I('post.admin_note');
                    if (empty($is_paid)) {
                        throw new \Exception('到款状态必须选择');
                    }
                    if (empty($admin_note)) {
                        throw new \Exception('管理员备注必须填写');
                    }
                    $data = [
                        'is_paid' => $is_paid,
                        'admin_note' => $admin_note,
                    ];
                    $this->model->startTrans();
                    $info = $this->model->getUserAccountInfoById($id);
                    $this->model->where(['id' => $id])->save($data);
                    if ($is_paid == UserAccountModel::PAY_STATUS_SUCCESS) {
                        D('AccountLog')->addAcountLog($info['user_id'], $info['amount'], $info['process_type']);
                    }
                    $this->model->commit();
                    $this->ajaxReturn(array('error' => 200, 'message' => "操作成功"));
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('RechargeCash/index'));
                }
                $info = $this->model->getUserAccountInfoById($id);
                $this->pay_status = UserAccountModel::$PAY_STATUS;
                $info['username'] = D('User')->getUserInfoByUserId($info['user_id']);;
                $info['process_type_name'] = UserAccountModel::$PAY_TYPE_MAP[$info['process_type']];
                $this->assign('info', $info);
                $this->display();
            }
        }


        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => 100, 'message' => "数据格式有误"));
            }

            if (!$this->model->where(array('id' => $id))->save(array('status' => UserAccountModel::STATUS_DISABLE))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }

    }