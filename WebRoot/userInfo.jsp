<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户 信息</title>
    
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
  修改个人信息
    <s:form action="userUpdate" namespace="/com" method="post">
    	<s:hidden name="user.id"
    		value="%{#session.user.id}"/>
    		用户名不能修改<s:textfield name="user.username"
    		value="%{#session.user.username}" readonly="true"/>
    		<br>
    		修改密码<s:textfield name="user.password" 
    		value="%{#session.user.password}"/>
    		<s:submit value="修改"/>
     </s:form>
    </center>
  </body>
</html>