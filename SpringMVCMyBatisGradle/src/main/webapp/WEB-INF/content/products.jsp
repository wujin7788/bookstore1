<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商城主页</title>

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>


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
           
            <li><a href="showProduct" class="selected">商品</a></li>
         	<li><a href="shopCar" class="selected">购物车</a></li>  
         	<li><a href="myOrder" class="selected">我的订单</a></li> 
         	<li><a href="listCollect" class="selected">我的收藏</a></li>
        	<li><a href="changePwd" class="selected">修改密码</a></li>
         	<li><a href="loginForm" class="selected">退出登录</a></li>
         	<li>当前在线人数：${sessionScope.count }</li>
         	
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    
    <div class="cleaner h20"></div>
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    
        
        <div id="sidebar">
        	<h3>类别</h3>
            <ul class="sidebar_menu">
			    <li><a href="showProduct"> 文学类</a></li>
                <li><a href="showProduct">科学类</a></li>				
                <li><a href="showProduct">教育类</a></li>
                <li><a href="showProduct">体育类</a></li>				
            	<li><a href="showProduct">历史类</a></li>
                <li><a href="showProduct">生物科学</a></li>     
                <li><a href="showProduct">医药卫生类</a></li>				
                <li><a href="showProduct">儿童读物类</a></li>
				<li><a href="showProduct">生活类</a></li>
				<li><a href="showProduct">农业科学类</a></li>
				<li><a href="showProduct">天文学</a></li>
                <li><a href="showProduct">艺术类</a></li>
			</ul>    
        </div> <!-- END of sidebar -->
        
        <div id="content">
        	<h2>类别商品详情</h2>
		        <c:forEach items="${requestScope.listproduct }" var="book">
		        	<div class="col col_14 product_gallery">
		            	<a href="productdetail"><img src="images/product/01.jpg" alt="Product 01" /></a>
		                <h3>${book.name }</h3>
		                <p class="product_price">$${book.price }</p>
		                
		                <a href="goToShopcar/${book.id }" class="add_to_cart">加入购物车</a>
		                 <a href="${pageContext.request.contextPath }/addCollect/${book.id }" class="add_to_cart">加入收藏夹</a>
		                
		            </div>  
                 </c:forEach>	 	
           
          <div class="cleaner h50"></div>
   
        </div> <!-- END of content -->
        <div class="cleaner"></div>
    </div> <!-- END of main -->
 
 </div> <!-- END of footer -->   



</body>
</html>