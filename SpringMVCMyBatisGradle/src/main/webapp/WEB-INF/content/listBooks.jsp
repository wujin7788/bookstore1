<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%@include file="header.jsp"%>
  
 <html> 
 <head>
 <title>后台图书查询</title>
 </head>
  
   <body>
   <center>
    <table border="1" width="738">
    	<tr>
    	
    		<th>书名</th>
    		<th>图片</th>
    		<th>单价</th>
    		<th>库存数量</th>
    		<th>操作</th>
    	</tr>
    	<c:forEach items="${requestScope.booklist}" var="b" >
    		<tr >
	    		
	    		<td>${b.name }</td>
	    		<td>
	    			<img src="${pageContext.request.contextPath}/images/${b.image}" />
	    		</td>
	    		<td>${b.price }</td>
	    		<td>${b.count }</td>
	    		<td>
	    			<a href="#">修改</a>
	    			<a href="#">删除</a>
	    		</td>
	    	</tr>
    	</c:forEach>
    	
    </table>
    </center>
  </body>
</html>
