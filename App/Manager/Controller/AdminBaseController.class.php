<?php
    namespace Manager\Controller;

    use Think\Controller;

    class AdminBaseController extends Controller
    {
        private $Auth;
        private $name;

        public function __construct()
        {

            parent::__construct();
            if (!isset($_SESSION['id'])) {
                $this->redirect('Login/index');
            }
            $this->Auth = new \Library\Auth();
            $this->name = MODULE_NAME . '/' . CONTROLLER_NAME . '/' . ACTION_NAME;

            //            $this->checkAuth($this->name, $_SESSION['id']);
            /*第三级菜单pid*/
            $openId = $this->Auth->getId($this->name);
            $this->assign('openFirstId', $this->Auth->getFirstId($openId));
            $this->assign('open', $openId);
            $this->assign('menus', $this->Auth->getRuleListById($_SESSION['id']));

        }

        /**
         * [checkAuth 判断是否有权限]
         * @return [type] [description]
         */
        public function checkAuth($auth, $id)
        {
            if (!in_array(CONTROLLER_NAME, C('NOT_AUTH_CONTROLLER'))) {
                if (!$this->Auth->check($auth, $id)) {
                    $this->error('没有权限访问本页面!', U('Index/index'));
                }
            }
        }


        //公共的分页 只适合单表查询
        /**
         * [公共分页]5
         * @param  [type] $model   [模型]
         * @param  [type] $where   [where条件]
         * @param  [type] $pageAll [每页多少条数]
         * @param  [type] $order   [排序]
         * @return [type]          [description]
         */
        public function page_com($model, $order = [], $where = [], $pageAll = '20')
        {

            $count = $model->where($where)->count();// 查询满足要求的总记录数
            $page_number = empty($pageAll) ? C('PAGE_NUMBER') : $pageAll;
            $Page = new \Library\Page($count, $page_number);
            //$Page       = new \Think\Page($count,$pageAll);// true实例化分页类 传入总记录数和每页显示的记录数(25)
            $show = $Page->show();// 分页显示输出
            // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
            $list = $model->where($where)->order($order)->limit($Page->firstRow . ',' . $Page->listRows)->select();
            $data = array(
                'list' => $list,
                'page' => $show
            );
            return $data;
        }


    }