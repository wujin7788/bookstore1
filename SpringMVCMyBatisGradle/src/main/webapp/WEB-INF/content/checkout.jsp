<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付页面</title>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">
</script>
</head>

<body id="subpage">
<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title">
        	<h1>欢迎光临爱书屋</h1>
        </div>  
    </div> <!-- END of header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>    
            <li><a href="products" class="selected">商品</a></li>
         	<li><a href="shopCar" class="selected">购物车</a></li>  
         	<li><a href="myOrder" class="selected">我的订单</a></li> 
         	<li><a href="listCollect" class="selected">我的收藏</a></li>
        	<li><a href="changePwd" class="selected">修改密码</a></li>
         	<li><a href="loginForm" class="selected">退出登录</a></li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    <div class="cleaner h20"></div>
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main">
        <div id="sidebar">
        	<h3>类别</h3>
            <ul class="sidebar_menu">
			    <li><a href="#"> 文学类</a></li>
                <li><a href="#">科学类</a></li>				
                <li><a href="#">教育类</a></li>
                <li><a href="#">体育类</a></li>				
            	<li><a href="#">历史类</a></li>
                <li><a href="#">生物科学</a></li>     
                <li><a href="#">医药卫生类</a></li>				
                <li><a href="#">儿童读物类</a></li>
				<li><a href="#">生活类</a></li>
				<li><a href="#">农业科学类</a></li>
				<li><a href="#">天文学</a></li>
                <li><a href="#">艺术类</a></li>
			</ul>    
        </div> <!-- END of sidebar -->
        
          <div id="content">
        	<h2>请支付</h2>
             <h3>购物车</h3>
            <h4>共计: <strong>$140</strong></h4>
			<p><input type="checkbox" />确认金额无误</p>
            <table style="border:1px solid #CCCCCC;" width="100%">
                <tr>
                    <td height="80px"> <img src="images/paypal.gif" alt="paypal" /></td>
                    <td width="400px;" style="padding: 0px 20px;">支付宝支付
                    </td>
                    <td><a href="#" class="more">支付</a></td>
                </tr>
                <tr>
                    <td  height="80px"><img src="images/2co.gif" alt="paypal" />
                    </td>
                    <td  width="400px;" style="padding: 0px 20px;">微信支付
                    </td>
                    <td><a href="#" class="more">支付</a></td>
                </tr>
            </table>
               
            
            <div class="cleaner"></div>
        </div> <!-- END of content -->
        <div class="cleaner"></div>
    </div> <!-- END of main -->
 
 </div> <!-- END of footer -->   



</body>
</html>