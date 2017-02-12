<?php
    namespace Manager\Controller;


    use Common\Model\OrderInfoModel;
    use Common\Model\UserModel;

    class OrderController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = new OrderInfoModel();
        }

        public function index()
        {

            $username = empty(I('username')) ? '' : I('username');
            $orderNum = empty(I('order_num')) ? '' : I('order_num');
            $orderStatus = empty(I('order_status')) ? '' : I('order_status');
          
            $this->order = array('create_time', 'order_id' => 'desc');
            $where = [
                'status' => OrderInfoModel::STATUS_ENABLE
            ];

            if (!empty($username)) {
                $where['username'] = array('like', '%' . $username . '%');
            }
            if (!empty($orderStatus)) {
                $where['order_status'] = array('eq', $orderStatus);
            }
            if (!empty($orderNum)) {
                $where['order_sn'] = array('eq', $orderNum);
            }
            $data = $this->page_com($this->model, $this->order, $where);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['orderStatusName'] = OrderInfoModel::$ORDER_STATUS_MAP[$v['order_status']];
            }
            $this->data = $data;
            $this->list = OrderInfoModel::$ORDER_STATUS_MAP;
            $this->display();
        }

        public function accountDetails()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->error("不合法请求", U('Users/index'));
            }
            $this->data = $this->page_com(D('AccountLog'), ['log_id' => 'desc'], array('user_id' => $id));
            $this->display();
        }

        /**
         *收货地址列表
         */
        public function receiptAddress()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->error("不合法请求", U('Users/index'));
            }
            $userAddress = D('UserAddress')->getUsersAddressListByUid($id);
            $getRegionList = D('Region')->getRegionList();
            $newRegionList = array_combine(array_column($getRegionList, 'region_id'), array_column($getRegionList, 'region_name'));
            foreach ($userAddress as $k => $v) {
                $userAddress[$k]['country_name'] = $newRegionList[$v['country']];
                $userAddress[$k]['province_name'] = $newRegionList[$v['province']];
                $userAddress[$k]['city_name'] = $newRegionList[$v['city']];
                $userAddress[$k]['district_name'] = $newRegionList[$v['district']];
            }
            $this->assign('userAddress', $userAddress);
            $this->display();
        }

        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "数据格式有误"));
            }
            $status = OrderInfoModel::STATUS_DISABLE;
            if (!$this->model->where(array('order_id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => '操作成功'));
        }
    }