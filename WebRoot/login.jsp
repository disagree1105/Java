<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户登录</title>
    
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
  <s:property value="#request.tip"/><p>
    <s:form action="login" namespace="/com" method="post">
    	用户名:<s:textfield name="user.username"/><br/>
    	<br/>
  		密&nbsp 码:<s:password name="user.password"/><br/>
  		<p/>
  		<input type="submit" value="登录"/>
    </s:form>
    </center>
  </body>
</html>
