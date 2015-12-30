<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加用户</title>
    
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
     <s:form action="addUser" namespace="/com" method="post">
    	用户名:<s:textfield name="user.username"/><br/>
    	密码:<s:textfield name="user.password"/><br/>
    	类型:<s:textfield name="user.type"/><br/>
    	姓名:<s:textfield name="user.name"/><br/>
    	身份证:<s:textfield name="user.idcardnumber"/><br/>
    	手机号:<s:textfield name="user.tel"/><br/>
    	年龄:<s:textfield name="user.age"/><br/>
    	<br/>

  		<input type="submit" value="添加"/>
    </s:form>
    </center>
  </body>
</html>
