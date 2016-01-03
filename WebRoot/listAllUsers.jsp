<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/table2.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/reg.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/button.css" />
</head>

<body>
	<center>
		<div
			style="position: absolute; left: 0; top: 0; width: 100%; height: 100%; z-index: -1">
			<img src="<%=basePath%>/image/background.jpg" height="100%"
				width="100%" />
		</div>
		<p>
			<img src="<%=basePath%>/image/label.jpg" width="1024" height="120">
		</p>

		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
			width="100%" color=#987cb9 SIZE=10>
		<br><center>
				<h3>
					<font color="#ff0000">用户列表</font>
				</h3>
			</center>
		<center>
			<s:form action="deleteUser" namespace="/com" method="post">
				<table>
<thead>
					<tr class="odd">
						<th scope="row" class="column1">用户名</th>
						<th scope="row" class="column1">密码</th>
						<th scope="row" class="column1">用户类型</th>
						<th scope="row" class="column1">姓名</th>
						<th scope="row" class="column1">性别</th>
						<th scope="row" class="column1">身份证</th>
						<th scope="row" class="column1">手机号</th>
						<th scope="row" class="column1">出生年月</th>
						<th scope="row" class="column1">积分</th>
						<th scope="row" class="column1">操作</th>
					</tr></thead><tbody>
					<s:iterator value="#request.list" id="user">
						<tr>
							<td><s:property value="#user.username" /></td>
							<td><s:property value="#user.password" /></td>
							<td><s:property value="#user.type" /></td>
							<td><s:property value="#user.name" /></td>
							<td><s:property value="#user.sex" /></td>
							<td><s:property value="#user.idcardnumber" /></td>
							<td><s:property value="#user.tel" /></td>
							<td><s:property value="#user.birthdate" /></td>
							<td><s:property value="#user.point" /></td>
							<td><s:a
									href="deleteUser.action?user.username=%{#user.username}">删除</s:a>
								/<s:a
									href="updateUserByManager.action?user.username=%{#user.username}">修改</s:a>
							</td>
						</tr>
					</s:iterator></tbody>
				</table>
				<br>
				<a href="../addUser.jsp" class="large button green">添加用户</a>
				<a onclick="javascript:history.back(-1);" class="large button blue">返回上一页</a>
			</s:form>
		</center>
	</center>
	<br />
	<br />
	<a href="<%=basePath%>/index.jsp" class="large button orange">返回首页</a>
	<br />
	<br />
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>
