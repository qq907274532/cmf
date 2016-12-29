<?php
    namespace Manager\Controller;

    use Common\Model\AccountLogModel;
    use Common\Model\PaymentModel;
    use Common\Model\UserAccountModel;
    use Common\Model\UserModel;

    class RechargeCashController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = new UserAccountModel();
        }

        public function index()
        {
            $payMentModel = new PaymentModel();
            $userModel = new UserModel();
            $this->order = array('create_time' => 'desc', 'id' => 'desc');
            //查询出支付方式
            $payMent = $payMentModel->getPaymentListByStatus();
            //组合成新的数组
            $newPayMent = array_combine(array_column($payMent, 'pay_id'), array_column($payMent, 'pay_name'));
            $where = ['status' => UserAccountModel::STATUS_ENABLE];
            $username = empty(I('username')) ? '' : I('username');
            $process_type = empty(I('process_type')) ? '' : I('process_type');
            $payMentType = empty(I('payMent')) ? '' : I('payMent');
            $is_paid = empty(I('is_paid')) ? '' : I('is_paid');
            if (!empty($title)) {
                $userInfo = $userModel->getUserInfoByUserName($username);
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
            $userList = $userModel->getUserListByWhere();
            $newUserList = array_combine(array_column($userList, 'id'), array_column($userList, 'username'));
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['user_name'] = '暂无此用户';
                if (in_array($v['user_id'], array_keys($newUserList))) {
                    $data['list'][$k]['user_name'] = $newUserList[$v['user_id']];
                }
                $data['list'][$k]['amount'] = "¥" . sprintf('%0.2f', abs($v['amount'])) . "元";
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
                $userModel = new UserModel();
                $username = I('post.username');
                $userInfo = $userModel->getUserInfoByUserName($username);
                $this->model->startTrans();
                try {
                    if (empty($userInfo)) {
                        throw new \Exception('该用户名不存在');
                    }
                    $is_paid = I('post.is_paid');
                    $pay_type = I('post.process_type');
                    $admin_note = I('post.admin_note');
                    $user_note = I('post.user_note');
                    $payMent = I('post.payMent');
                    $amount = I('post.amount');

                    $this->model->addAcount($userInfo['id'], $_SESSION['name'], $amount, $admin_note, $user_note, $payMent, $pay_type, $is_paid);
                    if ($is_paid == UserAccountModel::PAY_STATUS_SUCCESS) {
                        $accountLogModel = new AccountLogModel();
                        $accountLogModel->addAcountLog($userInfo['id'], $amount, $pay_type);
                    }
                    $this->model->commit();
                    $this->ajaxReturn(array('error' => 200, 'message' => "申请成功"));
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }

            } else {
                $payMentModel = new PaymentModel();
                $this->pay_status = UserAccountModel::$PAY_STATUS;
                $this->pay_type = UserAccountModel::$PAY_TYPE_MAP;
                $this->payMent = $payMentModel->getPaymentListByStatus();
                $this->display();
            }
        }

        public function edit()
        {
            $id = I('id');
            $errno = 100;
            if (IS_POST) {
                if (($id = I('id', 0, 'intval')) <= 0) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "数据格式有误"));
                }
                if (empty($admin_note = I('admin_note'))) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "管理员的备注必须填写"));
                }
                if (empty($user_note = I('user_note'))) {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "用户备注必须填写"));
                }
                $data = [
                    'admin_note' => $admin_note,
                    'user_note' => $user_note,
                ];
                if ($this->model->where(['id' => $id])->save($data)) {
                    $this->ajaxReturn(array('error' => 200, 'message' => "修改成功"));
                } else {
                    $this->ajaxReturn(array('error' => $errno, 'message' => "修改失败"));
                }
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('RechargeCash/index'));
                }
                $payMentModel = new PaymentModel();
                $userModel = new UserModel();
                $info = $this->model->getUserAccountInfoById($id);
                $info = [
                    'username' => $userModel->getUserInfoByUserId($info['user_id']),
                    'amount' => abs($info['amount']),
                ];
                $this->pay_status = UserAccountModel::$PAY_STATUS;
                $this->pay_type = UserAccountModel::$PAY_TYPE_MAP;
                $this->payMent = $payMentModel->getPaymentListByStatus();
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
                    if (empty($is_paid = I('post.is_paid'))) {
                        throw new \Exception('到款状态必须选择');
                    }
                    if (empty($admin_note = I('post.admin_note'))) {
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
                        $accountLogModel = new AccountLogModel();
                        $accountLogModel->addAcountLog($info['user_id'], $info['amount'], $info['process_type']);
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
                $userModel = new UserModel();
                $info = $this->model->getUserAccountInfoById($id);
                $info = [
                    'username' => $userModel->getUserInfoByUserId($info['user_id']),
                    'process_type_name' => UserAccountModel::$PAY_TYPE_MAP[$info['process_type']],
                ];
                $this->pay_status = UserAccountModel::$PAY_STATUS;
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