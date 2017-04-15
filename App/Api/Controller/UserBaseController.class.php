<?php
namespace  Api\Controller;
use Think\Controller\RestController;
class UserBaseController extends RestController {

    public function __construct() {
        parent::__construct();
    }
    protected function response($data, $message='',$code = 200,$type="json")
    {
        parent::response(['message'=>$message,'data'=>$data], $type, $code); // TODO: Change the autogenerated stub
    }
}