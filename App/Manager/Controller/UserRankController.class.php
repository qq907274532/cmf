<?php
    namespace Manager\Controller;

    use Common\Model\UserRankModel;

    class UserRankController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = new UserRankModel();
        }

        public function index()
        {
            $this->order = array('create_time', 'rank_id' => 'desc');
            $data = $this->page_com($this->model, $this->order);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['statusName'] = UserRankModel::$STATUS_MAP[$v['status']];
                $data['list'][$k]['showPriceName'] = UserRankModel::$SHOW_PRICE[$v['show_price']];
                $data['list'][$k]['specialRankName'] = UserRankModel::$SPECIAL_RANK[$v['special_rank']];
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
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => $this->model->getError()));
                }
                if ($this->model->add($data)) {
                    $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => "添加成功"));
                } else {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "添加失败"));
                }


            } else {
                $this->special_rank = UserRankModel::$SPECIAL_RANK;
                $this->show_price = UserRankModel::$SHOW_PRICE;
                $this->display();
            }
        }

        public function edit()
        {
            $id = I('id');
            if (IS_POST) {
                if ($id <= 0) {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "不合法请求"));
                }
                $data = I('post.');
                unset($data['id']);
                if (!$this->model->create($data)) {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => $this->model->getError()));
                }
                if ($this->model->where(array('rank_id' => $id))->save($data)) {
                    $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => "修改成功"));
                } else {
                    $this->ajaxReturn(array('error' => 100, 'message' => "修改失败"));
                }
            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('UserRank/index'));
                }
                $this->info = $this->model->getUserRankInfoById($id);
                $this->special_rank = UserRankModel::$SPECIAL_RANK;
                $this->show_price = UserRankModel::$SHOW_PRICE;
                $this->display();
            }
        }

        /**
         * 设置是否是特殊会员
         */
        public function specialRank()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "数据格式有误"));
            }
            $status = intval(I('status', 0, 'intval')) == UserRankModel::IS_SPECIAL_RANK ? UserRankModel::IS_SPECIAL_RANK : UserRankModel::IS_NOT_SPECIAL_RANK;
            if (!$this->model->where(array('rank_id' => $id))->save(array('special_rank' => $status))) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => '操作成功'));
        }

        /**
         * 是否显示价格
         */
        public function showPrice()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "数据格式有误"));
            }
            $status = intval(I('status', 0, 'intval')) == UserRankModel::IS_SHOW_PRICE ? UserRankModel::IS_SHOW_PRICE : UserRankModel::IS_NOT_SHOW_PRICE;
            if (!$this->model->where(array('rank_id' => $id))->save(array('show_price' => $status))) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => '操作成功'));
        }

        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "数据格式有误"));
            }
            $status = intval(I('status', 0, 'intval')) == UserRankModel::STATUS_ENABLE ? UserRankModel::STATUS_DISABLE : UserRankModel::STATUS_ENABLE;
            if (!$this->model->where(array('rank_id' => $id))->save(array('status' => $status))) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => '操作成功'));
        }
    }