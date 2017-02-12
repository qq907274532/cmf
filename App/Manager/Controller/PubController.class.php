<?php
    namespace Manager\Controller;

    use Common\Model\OrderInfoModel;
    use Think\Controller;
    class PubController extends Controller
    {
        public function index()
        {
           $orderInfoModel = new OrderInfoModel();
           $arr=[
              'order_sn'=>generate_orderid(),
              'user_id'=>1,
              'order_status'=>1,
              'consignee'=>'张鑫',
              'country'=>1,
              'province'=>1,
              'city'=>1,
              'district'=>1,
              'address'=>'这是测试订单',
              'zipcode'=>'277500',
              'mobile'=>'18518011371',
              'shipping_id'=>1,
              'shipping_name'=>'这是测试',
              'pay_id'=>1,
              'pay_name'=>'微信支付',
              'goods_amount'=>100,
              'shipping_fee'=>0,
              'insure_fee'=>0,
              'money_paid'=>0,
              'surplus'=>0,
              'integral'=>0,
              'integral_money'=>0,
              'bonus'=>0,
              'order_amount'=>200,
              'create_time'=>date('Y-m-d H:i:s'),
           ];
            $orderInfoModel->add($arr);
            exit;
        }
    }