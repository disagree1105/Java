<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改航班</title>
    
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
        <s:form action="updateFlight" namespace="/com" method="post">
       <s:hidden name="flight.flightid" value="%{#session.flight.flightid}"/>
    	起点站:<s:textfield name="flight.originstation" value="%{#session.flight.originstation}"/><br/>
    	终点站:<s:textfield name="flight.terminalstation" value="%{#session.flight.terminalstation}"/><br/>
    	始发时间:<s:textfield name="flight.origintime" value="%{#session.flight.origintime}"/><br/>
    	到达时间:<s:textfield name="flight.terminaltime" value="%{#session.flight.terminaltime}"/><br/>
    	总票数:<s:textfield name="flight.ticketsum" value="%{#session.flight.ticketsum}"/><br/>
    	余票数:<s:textfield name="flight.ticketleft" value="%{#session.flight.ticketleft}"/><br/>
    	票价:<s:textfield name="flight.price" value="%{#session.flight.price}"/><br/>
    	<br/>

  		<input type="submit" value="修改"/>
    </s:form>
    </center>
  </body>
</html>
