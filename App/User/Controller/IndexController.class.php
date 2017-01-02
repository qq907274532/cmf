<?php
namespace  User\Controller;
use Think\Controller;
class IndexController extends IndexBaseController {
    public function index(){
       $this->display();
    }
}