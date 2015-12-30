<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>登录成功</title>
    
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
  <s:property value="#request.tip"/><p>
  	欢迎您，<s:label value="%{#request.user.username}"/>
  	<a href="/SSHSY6/index.jsp">返回主页</a>
    <a href="/SSHSY6/userInfo.jsp">个人中心</a>
     <s:form action="listAllUsers" namespace="/com" method="post">
     <s:submit value="查看所有用户"/>
     </s:form>
     <s:form action="listAllFlights" namespace="/com" method="post">
     <s:submit value="查看所有航班"/>    
     </s:form>    
     <s:form action="listAllAirports" namespace="/com" method="post">
     <s:submit value="查看所有机场"/>    
     </s:form>
     
  </body>
</html> 
