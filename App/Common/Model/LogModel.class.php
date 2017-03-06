<?php
namespace Common\Model;
use Think\Model;
/*****
 *		文章模型
 *		editor	zhangxin
 *		date		2015-5-6 13:34:57
 *****/
class LogModel extends Model {
    
    /**
     * 添加log
     * @param $arr
     * @return mixed
     */
     public function addLog($arr){
         $data=[
             'uid'=>$arr['uid'],
             'module'=>$arr['module'],
             'controller'=>$arr['controller'],
             'action'=>$arr['action'],
             'post_value'=>json_encode($arr['post_value']),
             'get_value'=>json_encode($arr['get_value']),
             'create_time'=>date('Y-m-d H:i:s'),
         ];
         return $this->add($data);
     }

}
?>