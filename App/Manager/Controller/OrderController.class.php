<?php
    namespace Manager\Controller;


    class OrderController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
//            $this->model = D('User');
        }

        public function index()
        {

//            $username = empty(I('username')) ? '' : I('username');
//            $startTime = empty(I('startTime')) ? '' : I('startTime');
//            $endTime = empty(I('endTime')) ? '' : I('endTime');
//            $this->order = array('create_time', 'id' => 'desc');
//            $where = "1=1";
//            if (!empty($username)) {
//                $where .= " and  (username like '%" . $username . "%')";
//            }
//            if (!empty($startTime)) {
//                $where .= " and create_time >='" . $startTime . "'";
//            }
//            if (!empty($endTime)) {
//                $where .= " and create_time <='" . $startTime . "'";
//            }
//            $data = $this->page_com($this->model, $this->order, $where);
//            foreach ($data['list'] as $k => $v) {
//                $data['list'][$k]['statusName'] = UserModel::$STATUS_MAP[$v['status']];
//            }
//            $this->data = $data;
            $this->display();
        }

        public function accountDetails()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->error("不合法请求", U('Users/index'));
            }
            $this->data = $this->page_com(D('AccountLog'),['log_id'=>'desc'], array('user_id'=>$id));
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
                $this->ajaxReturn(array('error' => 100, 'message' => "数据格式有误"));
            }
            $status = intval(I('status', 0, 'intval')) == UserModel::STATUS_ENABLE ? UserModel::STATUS_DISABLE : UserModel::STATUS_ENABLE;
            if (!$this->model->where(array('id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }
    }