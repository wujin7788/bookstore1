<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的订单</title>
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
         	<li><a href="showOrder" class="selected">我的订单</a></li> 
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
        	<table width="700px" cellspacing="0" cellpadding="5">
                   	  <tr bgcolor="#CCCCCC">
                        	<th width="220" align="left">图片 </th> 
                        	<th width="180" align="left">书名 </th> 
                       	  	<th width="100" align="center">数量 </th> 
                        	<th width="60" align="right">单价 </th> 
                        	<th width="60" align="right">共计 </th> 
                        	<th width="60" align="right">查看订单状态 </th> 
                        	<th width="90"> </th>
                            
                      </tr>
                      
                      <c:forEach items="${requestScope.orderlist }" var="list">
                    	<tr>
                        	<td><img src="images/product/01.jpg" alt="image 01" /></td> 
                        	<td>${list.name }</td> 
                            <td align="center">${list.count }</td>
                            <td align="right">$${list.price } </td> 
                            <td align="right">$100 </td>
                            <th width="60" align="right"><a href="#">查看订单状况</a></th> 
						</tr>
						</c:forEach>
					</table>
                    <div style="float:right; width: 215px; margin-top: 20px;">
                    
                       
                        <div class="cleaner h20"></div>
                        <div class="continueshopping"><a href="showProduct" class="more">继续购物</a></div>
                    	
                    </div>
            
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
</div>


</body>
</html>