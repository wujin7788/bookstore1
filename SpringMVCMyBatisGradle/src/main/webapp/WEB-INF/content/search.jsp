<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台查询图书</title>
</head>
<body>
<center>
 <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/listBooks?op=addBook" method="post">
    	<table border="1" width="438">
    		<tr>
    			<td>请输入类别名称：</td>
    			<td>
    				<input type="text" name="name" id="name"/>
    			</td>
    		</tr>
    		<tr>
    			<td>操作：</td>
    			<td colspan="2" >
    				<input type="submit" value="查询"/>
    			</td>
    		</tr>
    		
    	
    		</table>
    
   </form>
   
</center>
</body>
</html>