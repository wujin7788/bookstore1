<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="./css/reset.css" />
		<link rel="stylesheet" href="./css/common.css" />
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登录
						</div>
						<form action="login" method="post">
							<font color="red">${requestScope.message }</font>
							<div class="form_text_ipt">
								<input name="loginname" type="text" placeholder="登录名">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="密码 ">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 记住密码</label>
								</div>
								<div class="right check_right">
									<a href="pwdReback">忘记密码</a>
								</div>
							</div>
							<div class="form_btn">
								<button type="button">登录</button>
							</div>
							<div class="form_reg_btn">
								<span>还没有账号？</span><a href="register">马上注册</a>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="./js/jquery.min.js" ></script>
		<script type="text/javascript" src="./js/common.js" ></script>
	</body>
</html>
