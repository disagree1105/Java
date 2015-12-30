<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>用户列表</title>
    
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
    
    <center>用户列表</center>
    <center>
    <s:form action="deleteUser" namespace="/com" method="post">
	<table border=1> 

	<tr>
	<th>用户名</th>
	<th>密码</th>
	<th>用户类型</th>
	<th>姓名</th>
	<th>身份证</th>
	<th>手机号</th>
	<th>年龄</th>
	<th>操作</th>
	</tr>
	<s:iterator value="#request.list" id="user">
	<tr>
    <td><s:property value="#user.username"/></td>
    <td><s:property value="#user.password"/></td>
    <td><s:property value="#user.type"/></td>
    <td><s:property value="#user.name"/></td>
    <td><s:property value="#user.idcardnumber"/></td>
    <td><s:property value="#user.tel"/></td>
    <td><s:property value="#user.age"/></td>
    <td><s:a href="deleteUser.action?user.username=%{#user.username}">删除</s:a>
    	/<s:a href="updateUserByManager.action?user.username=%{#user.username}">修改</s:a>
    </td>
	 </tr>
    </s:iterator>
    </table>
    <br>
    <a href='../addUser.jsp'>
	<input type='button' value='添加用户'> 
	</a>
    </s:form>
    </center>
  </body>
</html>
