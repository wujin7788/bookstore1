<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%@include file="header.jsp"%>
    
 <html> 
	 <head>
	 <title>后台图书添加</title>
	 </head>
  
   <body>
   <center>   
    
    <form action="addBooks" method="post">
    	<table border="1" width="438">
    		<tr>
    			<td>请输入图书名称：</td>
    			<td>
    				<input type="text" name="name" id="name"/>
    			</td>
    		</tr>
    		<tr>
    			<td>作者:</td>
    			<td>
    				<input type="text" name="author"/>
    			</td>
    		</tr>
    		<tr>
    			<td>价格:</td>
    			<td>
    				<input type="text" name="price"/>
    			</td>
    		</tr>
    		<tr>
    			<td>入存数量:</td>
    			<td>
    				<input type="text" name="count"/>
    			</td>
    		</tr>
    		<tr>
    			<td>图片:</td>
    			<td>
    				<input type="file" name="file"/>
    			</td>
    		</tr>
    		<tr>
    			<td>描述：</td>
    			<td>
    				<textarea rows="3" cols="38" name="remark"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>所属分类：</td>
    			<td>
    				<select name="categoryId">
    					<c:forEach items="" var="c">
    						<option value=""></option>
    					</c:forEach>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>操作：</td>
    			<td colspan="2">
    				<input type="submit" value="保存"/>
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
