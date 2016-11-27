<?php
    namespace Manager\Controller;

    use Think\Controller;

    class IndexController extends AdminBaseController
    {
        public function index()
        {
            $this->display();
        }
    }