<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>爱书屋网站</title>

<link href="css/style.css" rel="stylesheet" type="text/css">

</head>

<body class="login">

<div class="login_m">
	<div class="login_logo"><img src="images/logo.png" width="196" height="46"></div>
	<div class="login_boder">
		
		<form action="managerLogin" method="post">
			<div class="login_padding">
			<font color=red>${requestScope.message }</font>
				<h2>登录名</h2>
				<label>
					<input type="text" name="loginname" id="username" class="txt_input txt_input2" onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}" value="Your name">
				</label>
				<h2>密码 </h2>
				<label>
					<input type="password" name="password" id="userpwd" class="txt_input" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="******">
				</label>
				<p class="forgot"><a href="javascript:void(0);">忘记密码</a></p>
				<div class="rem_sub">
					<div class="rem_sub_l">
						<input type="checkbox" name="checkbox" id="save_me">
						<label for="checkbox">记住密码</label>
					</div>
					<label>
						<input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
					</label>
				</div>
			</div>
		</form>
		
	</div><!--login_boder end-->
</div><!--login_m end-->


</body>
</html>