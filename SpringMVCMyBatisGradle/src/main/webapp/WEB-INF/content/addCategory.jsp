<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%@include file="header.jsp"%>
  <html> 
	 <head>
	 <title>后台类别添加</title>
	 </head>
  
   <body>
   <center>    
    <form action="${pageContext.request.contextPath}/listCategory?op=addCategory" method="post">
    	<table border="1" width="438">
    		<tr>
    			<td>*分类名称：</td>
    			<td>
    				<input type="text" name="name" id="name"/>
    			</td>
    		</tr>
    		<tr>
    			<td>描述:</td>
    			<td>
    				<textarea rows="3" cols="38" name="description"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>操作：</td>
    			<td colspan="2">
    				<input type="button" value="保存" onclick="toSubmit()"/>
    			</td>
    		</tr>
    	</table>
    </form>
    <script type="text/javascript">
    	function toSubmit(){
    		var nameValue = document.getElementById("name").value;
    		if(nameValue.trim()==""){
    			alert("请输入分类名称");
    			return;
    		}
    		document.forms[0].submit();
    	}
    </script>
  </body>
</html>
