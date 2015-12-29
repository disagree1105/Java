<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查询结果</title>
    
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
       查找结果：
       <br/>
       始发站: <s:label name= "result" value= "%{#session.flight.originstation}" /><br/>
       终点站: <s:label name= "result" value= " %{#session.flight.terminalstation}" /><br/>
       始发时间: <s:label name= "result" value= " %{#session.flight.origintime}" /><br/>
       到达时间: <s:label name= "result" value= " %{#session.flight.terminaltime}" /><br/>
      剩余票数: <s:label name= "result" value= " %{#session.flight.ticketleft}" /><br/>
       票价:<s:label name= "result" value= " %{#session.flight.price}" /><br/>
  </body>
</html>
