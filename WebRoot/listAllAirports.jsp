<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>所有机场</title>
    
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
    <center>机场列表</center>
    <center>
	<table border=1> 

	<tr>
	<th>机场号</th>
	<th>机场名称</th>
	<th>操作</th>
	</tr>
	<s:iterator value="#request.list" id="airport">
	<tr>
    <td><s:property value="#airport.aid"/></td>
    <td><s:property value="#airport.portname"/></td>
    <td><s:a href="deleteAirport.action?airport.aid=%{#airport.aid}">删除</s:a>
    	/<s:a href="updateAirportByManager.action?airport.aid=%{#airport.aid}">修改</s:a>
    </td>
	 </tr>
    </s:iterator>
    </table>
    <br>
    <a href='../addAirport.jsp'>
	<input type='button' value='添加机场'> 
	</a>
    </center>
  </body>
</html>
