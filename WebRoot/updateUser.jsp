<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>修改用户</title>
    
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
       <s:form action="updateUser" namespace="/com" method="post">
       <s:hidden name="user.userid" value="%{#session.user.userid}"/>
    	用户名:<s:textfield name="user.username" value="%{#session.user.username}"/><br/>
    	密码:<s:textfield name="user.username" value="%{#session.user.password}"/><br/>
    	类型:<s:textfield name="user.username" value="%{#session.user.type}"/><br/>
    	姓名:<s:textfield name="user.username" value="%{#session.user.name}"/><br/>
    	身份证:<s:textfield name="user.username" value="%{#session.user.idcardnumber}"/><br/>
    	手机号:<s:textfield name="user.username" value="%{#session.user.tel}"/><br/>
    	年龄:<s:textfield name="user.username" value="%{#session.user.age}"/><br/>
    	<br/>

  		<input type="submit" value="修改"/>
    </s:form>
    </center>
  </body>
</html>
