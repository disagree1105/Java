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


<title>登录成功</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/reg.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/button.css" />
<style type="text/css">
a:link, a:visited {
	text-decoration: none;
}
</style>
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
		<div id="formwrapper">
			<s:property value="#request.tip" />
			<center>
				<h3>
					<font color="#FF0000">欢迎您， <s:label
							value="%{#request.user.username}" /></font>
				</h3>
			</center>
			<a href="../userInfo.jsp">修改个人资料</a>
			<s:form action="listAllUsers" namespace="/com" method="post">
				<input type="submit" class="large button blue" value="查看所有用户" />
			</s:form>
			<s:form action="listAllFlights" namespace="/com" method="post">
				<input type="submit" class="large button blue" value="查看所有航班" />
			</s:form>
			<s:form action="listAllAirports" namespace="/com" method="post">
				<input type="submit" class="large button blue" value="查看所有机场" />
			</s:form>
			<s:form action="listAllUserorders" namespace="/com" method="post">
				<input type="submit" class="large button blue" value="查看所有订单" />
			</s:form>

			<s:form action="findFlight" namespace="/com" method="post">
		始发站:<s:textfield name="flight.originstation" />
				<br />
 		终点站:<s:textfield name="flight.terminalstation" />
				<br />
 		出发日期:<s:textfield name="flight.origintime" />
				<br />
				<input type="submit" class="large button blue" value="查询航班" />
			</s:form>
		</div>
	</center>
	<br />
	<a href="index.jsp" class="large button green">返回首页</a>
	<br />
	<br />
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>
