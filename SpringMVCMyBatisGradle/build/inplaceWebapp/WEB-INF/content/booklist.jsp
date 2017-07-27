<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table width="700px" cellspacing="0" cellpadding="5">
                   	  <tr bgcolor="#CCCCCC">
                        	<th width="220" align="left">图片 </th> 
                        	<th width="180" align="left">书名 </th> 
                       	  	<th width="100" align="center">数量 </th> 
                        	<th width="60" align="right">价格 </th> 
                            <th width="60" align="right">操作</th> 
                        	
                        	<th width="90">支付</th>
                        	
                            
                      </tr>
                      
                      
                      <c:forEach items="${requestScope.list }" var="list">
		                    	<tr>
		                        	<td><img src="images/product/01.jpg" alt="image 01" /></td> 
		                        	<td>${list.name }</td> 
		                            <td align="center"><input type="text" value="${list.count }" name="count" /> </td>
		                            <td align="right">$${list.price }</td> 
		                            <td align="center"><input type="submit" value="修改"><a href="deleteShopcar/${list.id }">移除</a> </td>
		                            <td><a href="addOrder/${list.id }" class="more">支付</a></td>
								</tr>
						</c:forEach>
						
						
						
                        <tr>
                        	<td colspan="3" align="right"  height="40px">点击此处<a href="shopcarlist"><strong>更新</strong></a>&nbsp;&nbsp;</td>
                            <td align="right" style="background:#ccc; font-weight:bold"> 共计 </td>
                            <td align="right" style="background:#ccc; font-weight:bold">$140</td>
                            <td style="background:#ccc; font-weight:bold"> </td>
						</tr>
					</table>
</body>
</html>