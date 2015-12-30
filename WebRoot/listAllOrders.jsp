<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>所有订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <center>订单列表</center>
    <center>
	<table border=1> 
	<tr>
	<th>用户id</th>
	<th>航班id</th>
	<th>操作</th>
	</tr>
	<s:iterator value="#request.list" id="userorder">
	<tr>
    <td><s:property value="#userorder.userid"/></td>
    <td><s:property value="#userorder.flightid"/></td>
    <td><s:a href="deleteOrder.action?userorder.orderid=%{#userorder.orderid}">删除</s:a>
    	/<s:a href="updateOrderByManager.action?userorder.orderid=%{#userorder.orderid}">修改</s:a>
    </td>
	 </tr>
    </s:iterator>
    </table>
    <br>
    <a href='../addOrder.jsp'>
	<input type='button' value='添加订单'> 
	</a>
    </center>
  </body>
</html>
