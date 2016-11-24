<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title><?php echo C('COMM_TITLE');?>|登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="/Public/admin/js/flot/excanvas.min.js"></script><![endif]-->
    <link rel="stylesheet" type="text/css" href="/Public/admin/css/cloud-admin.css">

    <link href="/Public/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
    <!-- UNIFORM -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/uniform/css/uniform.default.min.css"/>
    <!-- ANIMATE -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/css/animatecss/animate.min.css"/>
    <!-- FONTS -->

</head>
<body class="login">
<!-- PAGE -->
<section id="page">
    <!-- HEADER -->
    <header>
        <!-- NAV-BAR -->
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo">
                        <a href="index.html"><img src="/Public/admin/img/logo/logo-alt.png" height="40" alt="logo name"/></a>
                    </div>
                </div>
            </div>
        </div>
        <!--/NAV-BAR -->
    </header>
    <!--/HEADER -->
    <!-- LOGIN -->
    <section id="login" class="visible">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-box-plain">
                        <h2 class="bigintro"><?php echo C('COMM_TITLE');?></h2>

                        <div class="divide-40"></div>
                       <form role="form">
                        <div class="form-group">
                            <label for="">用户名：</label> <i class="fa fa-envelope"></i> <input type="text" class="form-control"
                                name="username">
                        </div>
                        <div class="form-group">
                            <label for="">密码：</label> <i class="fa fa-lock"></i> <input type="password" class="form-control" id="password"
                                name="password">
                        </div>
                        <div class="form-group">
                            <label for="">验证码：</label> <i class="fa  fa-picture-o"></i> <input type="text" class="form-control"
                                name="verify" value="" style="width:60%;"> <img src="<?php echo U('Login/verify');?>" id="verify"
                                style="cursor: pointer;float: right;margin-top: -34px;height: 32px;width: 38%"/>
                        </div>
                        <button type="button" id="submit" class="btn btn-danger">登录</button>
                         </form>
                        <!-- SOCIAL LOGIN -->

                        <div class="divide-20"></div>
                        <div class="social-login center">
                            <a class="btn btn-primary btn-lg"> <i class="fa fa-facebook"></i> </a> <a class="btn btn-info btn-lg"> <i
                                class="fa fa-twitter"></i> </a> <a class="btn btn-danger btn-lg"> <i class="fa fa-google-plus"></i> </a>
                        </div>
                        <!-- /SOCIAL LOGIN -->

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/LOGIN -->

    <!-- FORGOT PASSWORD -->
</section>
<!--/PAGE -->
<!-- JAVASCRIPTS -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQUERY -->
<script src="/Public/admin/js/jquery/jquery-2.0.3.min.js"></script>
<!-- JQUERY UI-->
<script src="/Public/admin/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<!-- BOOTSTRAP -->
<script src="/Public/admin/bootstrap-dist/js/bootstrap.min.js"></script>
<script charset="utf-8" src="/Public/layer/layer.js"></script>

<!-- UNIFORM -->
<script type="text/javascript" src="/Public/admin/js/uniform/jquery.uniform.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="/Public/admin/js/script.js"></script>
<script type="text/javascript">
    $(function(){
        $("#verify").click(function(){
            var src="<?php echo U('Login/verify','','');?>";
            var urlSrc=src+'/id/'+Math.random();
            $(this).attr('src',urlSrc);

        });
        $("#submit").click(function(){
            var username=$("input[name='username']").val();
            var password=$("input[name='password']").val();
            var verify=$("input[name='verify']").val();
            if(username=='') {
                throwExc("用户名必须填写")
                return false;
            }else if(password=='') {
                throwExc("密码必须填写")
                return false;
            }else if(verify=='') {
                throwExc("验证码必须填写")
                return false;
            }
            $.post("<?php echo U('Login/index');?>",{
                "username":username,
                "password":password,
                "verify":verify
            },function( response ){
                if(response.error==100) {
                    throwExc(response.message);
                    var src="<?php echo U('Login/verify','','');?>";
                    var urlSrc=src+'/id/'+Math.random();
                    $("#verify").attr('src',urlSrc);
                    return false;
                }else if(response.error==200) {
                    showSucc(response.message);

                    setTimeout("load()",1100);
                }
            },"json");

        });
    });
    function load(){
        window.location.href="<?php echo U('Index/index');?>";
    }
</script>
<!-- /JAVASCRIPTS -->
</body>
</html>