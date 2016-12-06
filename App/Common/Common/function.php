<?php
    /**
     * Created by PhpStorm.
     * User: John
     * Date: 2016/11/24
     * Time: 9:20
     */
    /**
     * 递归重组节点信息
     */
    function node_merges($node,$access=null,$pid=0){
        $arr=array();
        foreach ($node as $v) {
            if(is_array($node)){
                $v['access']=in_array($v['id'], $access)?1:0;
            }
            if($v['pid']==$pid){
                $v['child']=node_merges($node,$access,$v['id']);
                if (empty($v['child'])) {
                    $v['show'] = 0;
                } else {
                    $v['show'] = 1;
                }
                $arr[]=$v;
            }
        }
        return $arr;
    }
    /**
     * 生成商户唯一订单id
     *
     * @return string
     */
    function generate_orderid()
    {
        $tmp = str_replace('.', '', microtime(true)); //毫秒

        return str_pad($tmp, 15, '0') . mt_rand(1000, 9999);
    }
    /**
     * 检验django密码
     *
     * @param $storepassword 已加密的密码
     * @param $password 明文密码
     *
     * @return bool
     */
    function checkPassword($storepassword, $password)
    {
        list($algorithm, $iterations, $salt, $hash) = explode('$', $storepassword, 4);
        $newhash = base64_encode(hash_pbkdf2("sha256", $password, $salt, $iterations, 0, true));
        if (strcmp($newhash, $hash) !== 0) {
            return false;
        } else {
            return true;
        }

    }

    /**
     * 创建django密码
     *
     * @param $password 明文密码
     *
     * @return string
     */
    function makePassword($password)
    {
        $salt = randomChar(12);
        $iterations = 12000;
        $hash = base64_encode(hash_pbkdf2("sha256", $password, $salt, $iterations, 0, true));
        return "pbkdf2_sha256\$" . $iterations . "\$" . $salt . "\$" . $hash;
    }
    /**
     * 随机密令
     *
     * @param $length
     *
     * @return null|string
     */
    function randomChar($length)
    {
        $str = null;
        $strPol = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
        $max = strlen($strPol) - 1;

        for ($i = 0; $i < $length; $i++) {
            $str .= $strPol[rand(0, $max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
        }
        return $str;
    }