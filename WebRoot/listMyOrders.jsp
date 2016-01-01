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

<title>所有订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/Zebra.css" />
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
		<br>
		<center>
			<h3>
				<font color="#ff0000">订单列表</font>
			</h3>
		</center>
		<br />
		<center>
			<table class="zebra">
				<tr>
					<th>订单号</th>
					<th>用户名</th>
					<th>起点站</th>
					<th>终点站</th>
					<th>始发时间</th>
					<th>到达时间</th>
					<th>票价</th>
					<th>操作</th>
				</tr>
				<s:iterator value="#request.list" id="userorder">
					<tr>
						<td><s:property value="#userorder.orderid" /></td>
						<td><s:property value="#userorder.username" /></td>
						<td><s:property value="#userorder.originstation" /></td>
						<td><s:property value="#userorder.terminalstation" /></td>
						<td><s:property value="#userorder.origintime" /></td>
						<td><s:property value="#userorder.terminaltime" /></td>
						<td><s:property value="#userorder.price" /></td>
						<td><s:a href="deleteOrder.action?userorder.orderid=%{#userorder.orderid}">退票</s:a>

						</td>
					 </tr>
				</s:iterator>
			</table>
			<br><a onclick="javascript:history.back(-1);" class="large button blue">返回上一页</a>
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
