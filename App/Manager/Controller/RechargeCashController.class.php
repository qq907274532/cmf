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
            $where=['status'=>UserAccountModel::STATUS_ENABLE];
            $title=empty(I('title'))?'':I('title');
//            if(!empty($title)){
//                $where['msg_title']= array('like','%'.$title.'%');
//            }

            $data = $this->page_com($this->model, $this->order,$where);
            foreach ($data['list'] as $k => $v) {
                $data['list'][$k]['amount']="¥".sprintf('%0.2f',abs($v['amount']))."元";
                $data['list'][$k]['user_name'] = D('User')->getUserInfoByUserId($v['user_id']);
                $data['list'][$k]['process_type_name'] = UserAccountModel::$PAY_TYPE_MAP[$v['process_type']];
                $data['list'][$k]['is_paid_name'] = UserAccountModel::$PAY_STATUS[$v['is_paid']];

            }
            $this->data = $data;
            $this->display();
        }
        public function add(){
            if(IS_POST){
                $username=I('post.username');
                $userInfo=D('User')->getUserInfoByUserName($username);
                if(empty($userInfo)){
                    $this->ajaxReturn(array('error' => 100, 'message' => "该用户名不存在"));
                }
                $this->model->startTrans();
                try {
                    $is_paid=I('post.is_paid');
                    $pay_type=I('post.process_type');
                    $amount=I('post.amount');
                    $data=[
                        'user_id'=>$userInfo['id'],
                        'process_type'=>$pay_type,
                        'amount'=>UserAccountModel::$PAY_TYPE_SYMBOL[$pay_type].$amount,
                        'admin_user'=>$_SESSION['name'],
                        'admin_note'=>I('post.admin_note'),
                        'user_note'=>I('post.user_note'),
                        'payment'=>I('post.payMentName'),
                        'status'=>UserAccountModel::STATUS_ENABLE,
                        'create_time'=>date('Y-m-d H:i:s'),
                        'is_paid'=>$is_paid,
                    ];
                    if (!$this->model->create($data)) {
                        throw new \Exception($this->model->getError());
                    }
                    if($is_paid==UserAccountModel::PAY_STATUS_UNPAID){
                        $this->model->add();
                    } else{

                    }
                    $this->model->commit();
                    $this->ajaxReturn(array('error' => 200, 'message' => "申请成功"));
                } catch (\Exception $e) {
                    $this->model->rollback();
                    $this->ajaxReturn(array('error' => 100, 'message' => $e->getMessage()));
                }


            }else{
                $this->pay_status=UserAccountModel::$PAY_STATUS;
                $this->pay_type=UserAccountModel::$PAY_TYPE_MAP;
                $this->payMent=D('Payment')->getPaymentListByStatus();
                $this->display();
            }
        }
        public function check(){
            $id=I('id');
            if(IS_POST){

            }else{
                if ($id <= 0) {
                    $this->error("不合法请求", U('RechargeCash/index'));
                }
                $this->pay_status=UserAccountModel::$PAY_STATUS;
                $info=$this->model->where(array('id'=>$id))->find();
                $info['username']= D('User')->getUserInfoByUserId($info['user_id']);;
                $info['process_type_name']= UserAccountModel::$PAY_TYPE_MAP[$info['process_type']];
                $this->assign('info',$info);
                $this->display();
            }
        }
        public function info()
        {
            $id=I('id');
            if (IS_POST) {
                $data['msg_content'] = I('post.msg_content');
                $data['email'] = I('post.user_email');
                $data['parent_id'] = I('post.parent_id');
                $msg_id=I('post.msg_id');
                if(empty($data['msg_content'])){
                    $this->ajaxReturn(array('error' => 100, 'message' => "回复内容必须填写"));
                }
                if(!checkEmail($data['email'])){
                    $this->ajaxReturn(array('error' => 100, 'message' => "邮件格式不正确"));
                }
                if(empty($data['parent_id'])){
                    $data['parent_id']=$msg_id;
                    $data['user_id']=$_SESSION['id'];
                    $data['user_name']=$_SESSION['name'];
                    $data['msg_time']=date('Y-m-d H:i:s');
                    $data['msg_title']='reply';
                    $msgReplay=$this->model->add($data);
                }else{
                    $data['user_name']=$_SESSION['name'];
                    $data['msg_title']='reply';
                    $msgReplay=$this->model->where(array('parent_id'=>$msg_id))->save($data);
                }

                if($msgReplay){
                    $this->ajaxReturn(array('error' => 200, 'message' => "回复成功"));
                } else{
                    $this->ajaxReturn(array('error' => 100, 'message' => "回复失败"));
                }


            } else {
                if ($id <= 0) {
                    $this->error("不合法请求", U('FeedBack/index'));
                }
                $this->info=$this->model->where(array('msg_id'=>$id))->find();
                $this->replay=$this->model->where(array('parent_id'=>$id))->find();
                $this->display();
            }
        }
        public function del()
        {
            if (($id = I('id', 0, 'intval')) <= 0) {
                $this->ajaxReturn(array('error' => 100, 'message' => "数据格式有误"));
            }

            if (!$this->model->where(array('id' => $id))->save(array('status' =>UserAccountModel::STATUS_DISABLE))) {
                $this->ajaxReturn(array('error' => 100, 'message' => '操作失败'));
            }
            $this->ajaxReturn(array('error' => 200, 'message' => '操作成功'));
        }
    }