<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/acfun/">
		<meta charset="utf-8">
		<title>AcFun后台</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="adminpage/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="adminpage/css/global.css" media="all">
		<link rel="stylesheet" href="adminpage/plugins/font-awesome/css/font-awesome.min.css">

	</head>

	<body>
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header header header-demo">
				<div class="layui-main">
					<div class="admin-login-box">
						<a class="logo" style="left: 2;" href="">
							<span style="font-size: 22px;">Acfun</span>
						</a>
						<div class="admin-side-toggle">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</div>
					<ul class="layui-nav admin-header-item">
						
						<li class="layui-nav-item">
							<a href="javascript:;" class="admin-header-user">
								<img src="images/0.jpg" />
								<span>${loginAdmin }</span>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="javascript:;"><i class="fa fa-user-circle" aria-hidden="true"></i> 个人信息</a>
								</dd>
								<dd>
									<a href="javascript:;"><i class="fa fa-gear" aria-hidden="true"></i> 设置</a>
								</dd>
								<dd id="lock">
									<a href="javascript:;">
										<i class="fa fa-lock" aria-hidden="true" style="padding-right: 3px;padding-left: 1px;"></i> 锁屏 (Alt+L)
									</a>
								</dd>
								<dd>
									<a href="adminpage/login.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<div class="layui-side layui-bg-black" id="admin-side">
				<div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side"></div>
			</div>
			<div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
				<div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
					<ul class="layui-tab-title">
						<li class="layui-this">
							<i class="fa fa-dashboard" aria-hidden="true"></i>
							<cite>主页</cite>
						</li>
					</ul>
					<div class="layui-tab-content" style="min-height: 150px; padding: 5px 0 0 0;">
						<div class="layui-tab-item layui-show" style="padding:20px;overflow:hidden; color:red; ">
							<h1 style="font-size:24px;">* 三期项目：仿AcFun弹幕视频资讯综合网站</h1>
<h1 style="font-size:24px;">* github地址: <a style="font-size:24px;color:green;" href="https://github.com/xiao-apple/Acfun_yc26/tree/master">xiao-apple</a></h1>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-footer footer footer-demo" id="admin-footer">
				<div class="layui-main">
					<p>2017 &copy;
						<a href="http://www.acfun.cn/" target="_blank">acfun</a> fycloud
					</p>
				</div>
			</div>
			<div class="site-tree-mobile layui-hide">
				<i class="layui-icon">&#xe602;</i>
			</div>
			<div class="site-mobile-shade"></div>
			
			<!--锁屏模板 start-->
			<script type="text/template" id="lock-temp">
				<div class="admin-header-lock" id="lock-box">
					<div class="admin-header-lock-img">
						<img src="images/0.jpg"/>
					</div>
					<div class="admin-header-lock-name" id="lockUserName">${loginAdmin }</div>
					<input type="text" class="admin-header-lock-input" value="输入密码解锁.." name="lockPwd" id="lockPwd" />
					<button class="layui-btn layui-btn-small" id="unlock">解锁</button>
				</div>
			</script>
			<!--锁屏模板 end -->
			
			<script type="text/javascript" src="adminpage/js/jquery-3.1.1.min.js"></script>
			<script type="text/javascript" src="adminpage/plugins/layui/layui.js"></script>
			<script type="text/javascript" src="adminpage/datas/nav.js"></script>
			<script src="adminpage/js/index.js"></script>
	</body>
</html>