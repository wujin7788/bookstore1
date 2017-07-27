<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>找回密码</title>

</head>
<body>
<center>
			<form action="find" method="post">
							<font color="red">${requestScope.message }</font>
							<div class="form_text_ipt">
								请输入登录名：
							</div>
							<div class="form_text_ipt">
								<input name="loginname" type="text" placeholder="登录名">
							</div>
							<br/>
							<div class="form_text_ipt">
								请输入预留邮箱：
							</div>
							<div class="form_text_ipt">
								<input name="email" type="text" placeholder="邮箱 ">
							</div>
							<br/>
							<div class="form_btn">
								<input type="submit" value="找回密码">
							</div>
							
						</form>
</center>

</body>
</html>