<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
	</head>

	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>添加管理员</legend>
			</fieldset>

			<form class="layui-form" action="" id="insertForm" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label"> <i class="layui-icon">&#xe63b;</i> </label>
					<div class="layui-input-inline">
						<input type="tel" name="admin_phone" lay-verify="phone" autocomplete="off" placeholder="请输入手机号码" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label"> <i class="layui-icon">&#xe642;</i> </label>
					<div class="layui-input-inline">
						<input type="password" id="pass1" name="admin_password" lay-verify="pass" autocomplete="off" placeholder="请输入密码" class="layui-input">
					</div>
					<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label"> </label>
					<div class="layui-input-inline">
						<input type="password" id="pass2" name="password" lay-verify="checkPass" autocomplete="off" placeholder="确认密码" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="demo1" onclick="checkInsertForm()">立即添加</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					laydate = layui.laydate;

	
				//自定义验证规则
				form.verify({
					checkPass: function(value) {
						if(document.getElementById("pass1").value!=document.getElementById("pass2").value) {
							return '两次输入密码不一致';
						}
					},
					pass: [/(.+){6,12}$/, '密码必须6到12位'],
					content: function(value) {
						layedit.sync(editIndex);
					}
				});

			});
			
			function checkInsertForm() {
				$("#insertForm").form({    
				    url:"admin/insert",
				    success:function(data){    
				        if(data.trim([])=="true"){
				        	$('.layui-input').val("");
				        	layui.use('layer', function(){
				        		  var layer = layui.layer;
				        		  layer.msg('添加成功');
				        		});
				        }else{
				        	layui.use('layer', function(){
				        		  var layer = layui.layer;
				        		  layer.msg('添加失败');
				        		});
				        }   
				    }   
				});
			}
		</script>
	</body>

</html>