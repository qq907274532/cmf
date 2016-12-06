<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title><?php echo C('COMM_TITLE');?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- STYLESHEETS --><!--[if lt IE 9]>
    <script src="/Public/admin/js/flot/excanvas.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/Public/admin/css/cloud-admin.css" >
    <link rel="stylesheet" type="text/css"  href="/Public/admin/css/themes/default.css" id="skin-switcher" >
    <link rel="stylesheet" type="text/css"  href="/Public/admin/css/responsive.css" >

    <link href="/Public/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- DATE RANGE PICKER -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <!-- TABLE CLOTH -->

    <link rel="stylesheet" type="text/css" href="/Public/admin/js/typeahead/typeahead.css"/>
    <!-- FILE UPLOAD -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/bootstrap-fileupload/bootstrap-fileupload.min.css"/>
    <!-- SELECT2 -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/select2/select2.min.css"/>
    <!-- UNIFORM -->
    <link rel="stylesheet" type="text/css" href="/Public/admin/js/uniform/css/uniform.default.min.css"/>

    <!-- FONTS -->

</head>
<body>
<!-- HEADER -->
<header class="navbar clearfix" id="header">
    <div class="container">
        <div class="navbar-brand">
            <!-- COMPANY LOGO -->
            <a href="index.html">
                <img src="/Public/admin/img/logo/logo.png" alt="Cloud Admin Logo" class="img-responsive" height="30" width="120">
            </a>
            <!-- /COMPANY LOGO -->
            <!-- TEAM STATUS FOR MOBILE -->
            <div class="visible-xs">
                <a href="#" class="team-status-toggle switcher btn dropdown-toggle">
                    <i class="fa fa-users"></i>
                </a>
            </div>
            <!-- /TEAM STATUS FOR MOBILE -->
            <!-- SIDEBAR COLLAPSE -->
            <div id="sidebar-collapse" class="sidebar-collapse btn">
                <i class="fa fa-bars"
                        data-icon1="fa fa-bars"
                        data-icon2="fa fa-bars" ></i>
            </div>
            <!-- /SIDEBAR COLLAPSE -->
        </div>
        <!-- NAVBAR LEFT -->
        <ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">


        </ul>
        <!-- /NAVBAR LEFT -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
            <!-- BEGIN NOTIFICATION DROPDOWN -->
            <li class="dropdown" id="header-notification">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell"></i>
                    <span class="badge"></span>

                </a>

            </li>
            <!-- END NOTIFICATION DROPDOWN -->
            <!-- BEGIN INBOX DROPDOWN -->
            <li class="dropdown" id="header-message">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-envelope"></i>
                    <span class="badge"></span>
                </a>

            </li>
            <!-- END INBOX DROPDOWN -->
            <!-- BEGIN TODO DROPDOWN -->
            <li class="dropdown" id="header-tasks">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-tasks"></i>
                    <span class="badge"></span>
                </a>

            </li>
            <!-- END TODO DROPDOWN -->
            <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user" id="header-user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img alt="" src="/Public/admin/img/avatars/avatar3.jpg" />
                    <span class="username"><?php echo (session('name')); ?></span>
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-user"></i> 修改资料</a></li>
                    <li><a href="<?php echo U('Login/logout');?>"><i class="fa fa-power-off"></i> 退出登录</a></li>
                </ul>
            </li>
            <!-- END USER LOGIN DROPDOWN -->
        </ul>
        <!-- END TOP NAVIGATION MENU -->
    </div>

    <!-- TEAM STATUS -->

    <!-- /TEAM STATUS -->
</header>
<section id="page"><!--/HEADER -->
<!--/HEADER -->

<!-- PAGE -->

<!-- SIDEBAR -->
<div id="sidebar" class="sidebar">
    <div class="sidebar-menu nav-collapse">
        <div class="divide-20"></div>
        <!-- SEARCH BAR -->
        <div id="search-bar">
            <input class="search" type="text" placeholder="Search"><i class="fa fa-search search-icon"></i>
        </div>
        <!-- /SEARCH BAR -->

        <!-- SIDEBAR QUICK-LAUNCH -->
        <!-- <div id="quicklaunch">
        <!-- /SIDEBAR QUICK-LAUNCH -->

        <!-- SIDEBAR MENU -->
        <ul>
            <li <?php if( CONTROLLER_NAME == 'Index'): ?>class="active"<?php endif; ?>>
                <a href="<?php echo U('Index/index');?>">
                    <i class="fa fa-home"></i> <span class="menu-text">首页</span> <span class="selected"></span>
                </a>
            </li>
            <?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li <?php if($openFirstId == $vo['id']): ?>class="has-sub active" <?php else: ?> class="has-sub"<?php endif; ?>>
                    <a href="javascript:;" class=""> <i class="fa <?php echo ($vo["icon"]); ?>"></i> <span class="menu-text"><?php echo ($vo["title"]); ?></span>
                        <span <?php if($openFirstId == $vo['id']): ?>class="arrow open"<?php else: ?>class="arrow"<?php endif; ?>></span>
                    </a>
                <ul class="sub">
                    <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li <?php if($v['id'] == $open): ?>class="current"<?php endif; ?> >
                         <a class="" href="<?php echo ($v["urls"]); ?>"><span class="sub-menu-text"><?php echo ($v["title"]); ?></span></a>
                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>


        </ul>
        <!-- /SIDEBAR MENU -->
    </div>
</div><!--/HEADER -->
<!-- /SIDEBAR -->
<div id="main-content">
    <!-- SAMPLE BOX CONFIGURATION MODAL FORM-->

    <!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
    <div class="container">
        <div class="row">
            <div id="content" class="col-lg-12">
                <!-- PAGE HEADER-->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header">
                            <!-- STYLER -->

                            <!-- /STYLER -->
                            <!-- BREADCRUMBS -->
                            <ul class="breadcrumb">
                                <li>
                                    <i class="fa fa-home"></i>
                                    <a href="<?php echo U('Index/index');?>">首页</a>
                                </li>
                                <li>
                                    <a href="<?php echo U('AdminUser/index');?>">管理员</a>
                                </li>
                                <li>添加管理员</li>
                                <a href="<?php echo U('AdminUser/index');?>" class="btn btn-primary pull-right "><i class="fa fa-arrow-left"></i>返回 </a>
                            </ul>
                            <div class="clearfix">

                            </div>
                            <!-- /BREADCRUMBS -->

                        </div>
                    </div>
                </div>
                <!-- /PAGE HEADER -->
                <!-- SIMPLE STRIPED -->
                <div class="row">

                    <div class="col-md-12">
                        <!-- BOX -->
                        <div class="box border primary">
                            <div class="box-title">
                                <h4><i class="fa fa-table"></i>添加管理员</h4>
                                <div class="tools">

                                    <a href="javascript:;" class="collapse">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>
                            <div class="box-body big">
                                <form class="form-horizontal" role="form" id="myForm">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">用户名：</label>

                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="username" id="username" value=""
                                                    placeholder="用户名">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">密码：</label>

                                        <div class="col-sm-4">
                                            <input type="password" class="form-control" name="password" id="password"
                                                    placeholder="密码" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">确认密码：</label>

                                        <div class="col-sm-4">
                                            <input type="password" class="form-control" name="repassword" id="repassword"
                                                    placeholder="确认密码" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">权限组：</label>

                                        <div class="col-sm-4">
                                            <select class="form-control" name="role_id" id="role">
                                                <?php if(is_array($roleList)): $i = 0; $__LIST__ = $roleList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v["id"]); ?>"><?php echo ($v["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-4 col-sm-6">

                                            <div type="text" class="btn btn-success" id="submit">提交</div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                        <!-- /BOX -->
                    </div>
                </div>

                <!-- /BORDERED HOVER -->
            </div>
            <!--/HEADER -->
            <div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
</div>
</div><!-- /CONTENT-->
<div class="separator"></div>
</div>
</div>
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


<!-- DATE RANGE PICKER -->
<script src="/Public/admin/js/bootstrap-daterangepicker/moment.min.js"></script>

<script src="/Public/admin/js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<!-- SLIMSCROLL -->
<script type="text/javascript" src="/Public/admin/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="/Public/admin/js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
<!-- BLOCK UI -->
<script type="text/javascript" src="/Public/admin/js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<!-- TABLE CLOTH -->
<script type="text/javascript" src="/Public/admin/js/tablecloth/js/jquery.tablecloth.js"></script>
<script type="text/javascript" src="/Public/admin/js/tablecloth/js/jquery.tablesorter.min.js"></script>
<!-- COOKIE -->
<script type="text/javascript" src="/Public/admin/js/jQuery-Cookie/jquery.cookie.min.js"></script>
<!-- CUSTOM SCRIPT -->
<script src="/Public/admin/js/script.js"></script>
<script src="/Public/layer/layer.js"></script>
<script src="/Public/kindeditor/kindeditor.js"></script>
<script>
    jQuery(document).ready(function() {
        App.setPage("simple_table");  //Set current page
        App.init(); //Initialise plugins and elements
    });
</script>
<!-- /JAVASCRIPTS -->
</body>
</html>
            <script type="text/javascript">
                $(function(){
                    $("#submit").click(function(){
                        var sort=$("input[name='sort']").val();
                        var username=$("input[name='username']").val();
                        var password=$("input[name='password']").val();
                        var repassword=$("input[name='repassword']").val();
                        var role=$("#role").val();
                        if($.trim(username)=='') {
                            throwExc("用户名必须填写");
                            return false;
                        }
                        if($.trim(password)=='') {
                            throwExc("密码必须填写");
                            return false;
                        }
                        if($.trim(repassword)=='') {
                            throwExc("确认密码必须填写");
                            return false;
                        }
                        if(role==''&& !isNaN(role)) {
                            throwExc("请选择权限组");
                            return false;
                        }
                        $.post("<?php echo U('AdminUser/add');?>",{
                            'role':role,
                            'password':password,
                            'repassword':repassword,
                            'username':username
                        },function( response ){
                            if(response.error==100) {
                                throwExc(response.message);
                                return false;
                            }else if(response.error==200) {
                                showSucc(response.message);
                                setTimeout("load()",1000);
                            }
                        },"json");
                    });
                });
                function load(){
                    window.location.href="<?php echo U('AdminUser/index');?>";
                }
            </script>