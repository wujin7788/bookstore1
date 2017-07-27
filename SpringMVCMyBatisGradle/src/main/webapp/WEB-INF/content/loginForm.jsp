<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="./css/reset.css" />
		<link rel="stylesheet" href="./css/common.css" />
		<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script src="js/jquery.cookie.js" type="text/javascript"></script>
		<script type="text/javascript">
		 
		  $(document).ready(function () {
		    if ($.cookie("rmbUser") == "true") {
		    $("#ck_rmbUser").attr("checked", true);
		    $("#txt_loginname").val($.cookie("loginname"));
		    $("#txt_password").val($.cookie("password"));
		    }
		  });
		 
		  //记住用户名密码
		  function Save() {
		    if ($("#ck_rmbUser").attr("checked")) {
		      var str_loginname = $("#txt_loginname").val();
		      var str_password = $("#txt_password").val();
		      $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
		      $.cookie("loginname", str_loginname, { expires: 7 });
		      $.cookie("password", str_password, { expires: 7 });
		    }
		    else {
		      $.cookie("rmbUser", "false", { expire: -1 });
		      $.cookie("loginname", "", { expires: -1 });
		      $.cookie("password", "", { expires: -1 });
		    }
		  };
		</script>
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
							<center>
							<div class="form_btn">
								<input type="submit" value="登录" style="height:35px;width:300px;background-color:red;">
							</div>
							</center>
							<div>
							<div class="form_reg_btn">
								<span>还没有账号？</span><a href="register">马上注册</a>
							</div>
							<div class="right check_right">
									<a href="managerLoginForm">管理员登录</a>
								</div>
								</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="./js/jquery.min1.js" ></script>
		<script type="text/javascript" src="./js/common.js" ></script>
	</body>
</html>
