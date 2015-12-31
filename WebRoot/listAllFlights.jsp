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

<title>航班列表</title>

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
		<br> <center>
				<h3>
					<font color="#ff0000">航班列表</font>
				</h3>
			</center>
			<br />
		<center>
			<table class="zebra">

				<tr>
					<th>航班号</th>
					<th>起点站</th>
					<th>终点站</th>
					<th>始发时间</th>
					<th>到达时间</th>
					<th>总票数</th>
					<th>余票数</th>
					<th>票价</th>
					<th>操作</th>
				</tr>
				<s:iterator value="#request.list" id="flight">
					<tr>
						<td><s:property value="#flight.flightid" /></td>
						<td><s:property value="#flight.originstation" /></td>
						<td><s:property value="#flight.terminalstation" /></td>
						<td><s:property value="#flight.origintime" /></td>
						<td><s:property value="#flight.terminaltime" /></td>
						<td><s:property value="#flight.ticketsum" /></td>
						<td><s:property value="#flight.ticketleft" /></td>
						<td><s:property value="#flight.price" /></td>
						<td><s:a
								href="deleteFlight.action?flight.flightid=%{#flight.flightid}">删除</s:a>
							/<s:a
								href="updateFlightByManager.action?flight.flightid=%{#flight.flightid}">修改</s:a>
						</td>
					</tr>
				</s:iterator>
			</table>
			<br> <a href="<%=basePath%>/addFlight.jsp" class="large button green">添加航班</a>
			<a onclick="javascript:history.back(-1);" class="large button blue">返回上一页</a>
		</center>
	</center>
	<br />
	<br />
	<a href="<%=basePath%>/index.jsp" class="large button red">返回首页</a>
	<br />
	<br />
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>
