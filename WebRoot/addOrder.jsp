<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加订单</title>
    
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
    <center>
     <s:form action="addOrder" namespace="/com" method="post">
    	用户名:<s:textfield name="userorder.username"/><br/>
    	起点站:<s:textfield name="userorder.originstation"/><br/>
    	终点站:<s:textfield name="userorder.terminalstation"/><br/>
    	始发时间:<s:textfield name="userorder.origintime"/><br/>
    	到达时间:<s:textfield name="userorder.terminaltime"/><br/>
    	票价:<s:textfield name="userorder.price"/><br/>
    	<br/>

  		<input type="submit" value="添加"/>
    </s:form>
    </center>
  </body>
</html>