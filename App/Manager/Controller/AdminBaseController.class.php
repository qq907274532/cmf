<?php
    namespace Manager\Controller;

    use Think\Controller;

    class AdminBaseController extends Controller
    {
        public function __construct()
        {
            parent::__construct();

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
        public function page_com($model, $order=[], $where = [], $pageAll ='' )
        {

            $count = $model->where($where)->count();// 查询满足要求的总记录数
            $page_number=empty($pageAll)?C('PAGE_NUMBER'):$pageAll;
            $Page = new \Classs\Page($count, $page_number);
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