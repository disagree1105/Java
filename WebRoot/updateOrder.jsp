<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改订单</title>
    
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
  修改订单信息
    <s:form action="updateOrder" namespace="/com" method="post">
    	<s:hidden name="userorder.orderid" value="%{#session.userorder.orderid}"/>
    	用户名:<s:textfield name="userorder.username" value="%{#session.userorder.username}" />
    	<br>
    	起点站:<s:textfield name="userorder.originstation" value="%{#session.userorder.originstation}"/><br>
    	终点站:<s:textfield name="userorder.terminalstation" value="%{#session.userorder.terminalstation}"/><br>
    	始发时间:<s:textfield name="userorder.origintime" value="%{#session.userorder.origintime}"/><br/>
    	到达时间:<s:textfield name="userorder.terminaltime" value="%{#session.userorder.terminaltime}"/><br/>
    	票价:<s:textfield name="userorder.price" value="%{#session.userorder.price}"/><br/>
    	<br/>
    		<s:submit value="修改"/>
     </s:form>
    </center>
  </body>
</html>
