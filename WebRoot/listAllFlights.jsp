<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>航班列表</title>
    
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
    <center>航班列表</center>
    <center>
	<table border=1> 

	<tr>
	<th>航班号</th>
	<th>起点站</th>
	<th>终点站</th>
	<th>始发时间</th>
	<th>到达时间</th>
	<th>总票数</th>
	<th>余票数</th>
	<th>票价</th>
	<th>操作</th>
	</tr>
	<s:iterator value="#request.list" id="flight">
	<tr>
    <td><s:property value="#flight.flightid"/></td>
    <td><s:property value="#flight.originstation"/></td>
    <td><s:property value="#flight.terminalstation"/></td>
    <td><s:property value="#flight.origintime"/></td>
    <td><s:property value="#flight.terminaltime"/></td>
    <td><s:property value="#flight.ticketsum"/></td>
    <td><s:property value="#flight.ticketleft"/></td>
    <td><s:property value="#flight.price"/></td>
    <td><s:a href="deleteFlight.action?flight.flightid=%{#flight.flightid}">删除</s:a>
    	/<s:a href="updateFlightByManager.action?flight.flightid=%{#flight.flightid}">修改</s:a>
    </td>
	 </tr>
    </s:iterator>
    </table>
    <br>
    <a href='../addFlight.jsp'>
	<input type='button' value='添加航班'> 
	</a>
    </center>
  </body>
</html>
