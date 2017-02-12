<?php
    namespace Manager\Controller;

    use Common\Model\FeedbackModel;

    class FeedbackController extends AdminBaseController
    {
        private $model;
        private $order;

        public function __construct()
        {
            parent::__construct();
            $this->model = new FeedbackModel();
        }

        public function index()
        {
            $this->order = array('msg_time', 'msg_id' => 'desc');
            $where = ['msg_status' => FeedbackModel::STATUS_ENABLE, 'parent_id' => 0];
            $title = empty(I('title')) ? '' : I('title');
            if (!empty($title)) {
                $where['msg_title'] = array('like', '%' . $title . '%');
            }

            $data = $this->page_com($this->model, $this->order, $where);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['msg_type_name'] = FeedbackModel::$CATEGPRY_MAP[$v['msg_type']];
                $data['list'][$k]['is_replay'] = "未回复";
                $replayInfo = $this->model->where(array('parent_id' => $v['msg_id']))->getField('msg_id');
                if ($replayInfo) {
                    $data['list'][$k]['is_replay'] = "已回复";
                }
            }
            $this->data = $data;
            $this->display();
        }

        public function info()
        {
            $id = I('id');
            if (IS_POST) {
                $data['msg_content'] = I('post.msg_content');
                $data['email'] = I('post.user_email');
                $data['parent_id'] = I('post.parent_id');
                $msg_id = I('post.msg_id');
                if (empty($data['msg_content'])) {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "回复内容必须填写"));
                }
                if (!checkEmail($data['email'])) {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "邮件格式不正确"));
                }
                if (empty($data['parent_id'])) {
                    $data['parent_id'] = $msg_id;
                    $data['user_id'] = $_SESSION['id'];
                    $data['user_name'] = $_SESSION['name'];
                    $data['msg_time'] = date('Y-m-d H:i:s');
                    $data['msg_title'] = 'reply';
                    $msgReplay = $this->model->add($data);
                } else {
                    $data['user_name'] = $_SESSION['name'];
                    $data['msg_title'] = 'reply';
                    $msgReplay = $this->model->where(array('parent_id' => $msg_id))->save($data);
                }

                if ($msgReplay) {
                    $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => "回复成功"));
                } else {
                    $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "回复失败"));
                }


            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('FeedBack/index'));
                }
                $this->info = $this->model->where(array('msg_id' => $id))->find();
                $this->replay = $this->model->where(array('parent_id' => $id))->find();
                $this->display();
            }
        }

        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => "数据格式有误"));
            }

            if (!$this->model->where(array('msg_id' => $id))->save(array('msg_status' => FeedbackModel::STATUS_DISABLE))) {
                $this->ajaxReturn(array('error' => self::ERROR_NUMBER, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => self::SUCCESS_NUMBER, 'message' => '操作成功'));
        }
    }