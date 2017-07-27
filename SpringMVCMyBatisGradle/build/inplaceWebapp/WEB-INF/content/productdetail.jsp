<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情页</title>
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
         	<li><a href="collectList" class="selected">我的收藏</a></li>
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
        	<h2>商品详情</h2>
            <div class="col col_13">
        	<a  rel="lightbox[portfolio]" href="images/product/10_l.jpg" title="Lady Shoes"><img src="images/product/10.jpg" alt="Image 10" /></a>
            </div>
            <div class="col col_13 no_margin_right">
                <table>
                    <tr>
                        <td height="30" width="160">书名：</td>
                        <td>$100</td>
                    </tr>
                    <tr>
                        <td height="30">作者：</td>
                        <td>In Stock</td>
                    </tr>
                    <tr>
                        <td height="30">价格：</td>
                        <td>Product 14</td>
                    </tr>
                    <tr>
                        <td height="30">所属类别:</td>
                        <td>Apple</td>
                    </tr>
                    <tr><td height="30">数量：</td><td><input type="text" value="1" style="width: 20px; text-align: right" /></td></tr>
                </table>
                <div class="cleaner h20"></div>
                <a href="shoppingcart.html" class="add_to_cart">加入购物车</a>
			</div>
            <div class="cleaner h30"></div>
            
            <h5><strong>商品描述：</strong></h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur semper quam sit amet turpis rhoncus id venenatis tellus sollicitudin. Fusce ullamcorper, dolor non mollis pulvinar, turpis tortor commodo nisl, et semper lectus augue blandit tellus. Quisque id bibendum libero.</p>	
            
            <div class="cleaner h50"></div>
            
            <div class="cleaner"></div>
        </div> <!-- END of content -->
        <div class="cleaner"></div>
    </div> <!-- END of main -->
 
 </div> <!-- END of footer -->   



</body>
</html>