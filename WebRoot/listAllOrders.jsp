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
	<th>订单号</th>
	<th>用户名</th>
	<th>起点站</th>
	<th>终点站</th>
	<th>始发时间</th>
	<th>到达时间</th>
	<th>票价</th>
	<th>操作</th>
	</tr>
	<s:iterator value="#request.list" id="userorder">
	<tr>
	 <td><s:property value="#userorder.orderid"/></td> 
     <td><s:property value="#userorder.username"/></td> 
     <td><s:property value="#userorder.originstation"/></td>
     <td><s:property value="#userorder.terminalstation"/></td>
     <td><s:property value="#userorder.origintime"/></td>
     <td><s:property value="#userorder.terminaltime"/></td>
     <td><s:property value="#userorder.price"/></td>
   	 <td><s:a href="deleteOrder.action?userorder.orderid=%{#userorder.orderid}">删除</s:a>
    	/<s:a href="updateUserorderByManager.action?userorder.orderid=%{#userorder.orderid}">修改</s:a>
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
