<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<form action="regist" method="post">
							
							<div class="form_text_ipt">
								<input name="loginname" type="text" placeholder="登录名">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="密码 ">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="email" type="text" placeholder="邮箱">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
						
							
							<div class="form_btn">
								<input type="submit" value="注册">
							</div>
							<div class="form_reg_btn">
								<span>已有账号?</span><a href="loginForm">马上登录</a>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min1.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
	</body>
</html>
