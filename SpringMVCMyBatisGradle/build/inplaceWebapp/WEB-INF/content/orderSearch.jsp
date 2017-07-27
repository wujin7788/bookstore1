<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台订单查询</title>
</head>
<body>

 <center>
    <table border="1" width="738">
    	<tr>
    	
    		<th>书名</th>
    		<th>单价</th>
    		<th>销售数量</th>
    		<th>总价</th>
    		<th>操作</th>
    	</tr>
    	<c:forEach items="${page.records}" var="b" varStatus="vs">
    		<tr class="${vs.index%2==0?'odd':'even'}">
	    		
	    		<td>${b.name }</td>
	    		<td>${b.price }</td>
	    		<td>${s.count }</td>
	    		<td>${money }</td>
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