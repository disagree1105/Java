<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加航班</title>
    
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
     <s:form action="addFlight" namespace="/com" method="post">
    	始发站:<s:textfield name="flight.originstation"/><br/>
    	终点站:<s:textfield name="flight.terminalstation"/><br/>
    	始发时间(格式：YYYY-MM-DD HH:MM:SS):<s:textfield name="flight.origintime"/><br/>
    	到达时间(格式：YYYY-MM-DD HH:MM:SS):<s:textfield name="flight.terminaltime"/><br/>
    	总票数:<s:textfield name="flight.ticketsum"/><br/>
    	余票数:<s:textfield name="flight.ticketleft"/><br/>
    	票价:<s:textfield name="flight.price"/><br/>
    	<br/>

  		<input type="submit" value="添加"/>
    </s:form>
    </center>
  </body>
</html>
