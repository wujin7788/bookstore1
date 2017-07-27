<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>修改密码</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="./css/styles.css" type="text/css" rel="stylesheet"/>
    <script src="./css/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u186" class="ax_default _二级标题">
        <div id="u186_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u187" class="text" style="visibility: visible;">
          <p><span>修改密码</span></p>
         
        </div>
      </div>
			<form action="updatePassword" method="post">
				<input type="hidden" value="${sessionScope.user.id }" name="id">
		     
		
		      <!-- Unnamed (矩形) -->
		      <div id="u190" class="ax_default label">
		        <div id="u190_div" class=""></div>
		        <!-- Unnamed () -->
		        <div id="u191" class="text" style="visibility: visible;">
		          <p><span>请输入新密码：</span><input type="text" name="password"></p>
		        </div>
		        
		      </div>
		      
		      
				<div class="ax_default label"><input type="submit" value="确定修改"></div>
		   </form>
    </div>
  </body>
</html>
