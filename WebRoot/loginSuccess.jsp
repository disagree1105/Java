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

<script type="text/javascript" src="<%=basePath%>/js/Calendar.js"></script>
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
		<div style="width:1000px;margin:0 auto;">
			<div style="width:40%;height:300px;;float:left;">
				<fieldset>
					<legend>航班查询</legend>
					<s:form action="findFlight" namespace="/com" method="post"> 起点城市:
					<s:textfield name="flight.originstation" />
						<br />
 		终点城市:<s:textfield name="flight.terminalstation" />
						<br />
 		出发日期:<s:textfield name="flight.origintime"
							onClick="new Calendar(2015,2016).show(this);" readonly="true"
							value="2016-01-01" />
						<br />
						<input type="submit" class="large button blue" value="查询航班" />
					</s:form>
					<p>
						<strong>* 在您使用我们的服务时, 我们默认您已经同意了我们的服务条款.<br> *
							这些条款可能在未经您同意的时候进行修改.
						</strong>
					</p>
				</fieldset>
			</div>
			<div style="width:50%;height:300px;float:right;">
				<div id="formwrapper">
					<center>
						<h3>
							<font color="#FF0000">欢迎您，<s:label
									value="%{#request.user.type}" /> <s:label
									value="%{#request.user.username}" /></font>
						</h3>

						<a href="../userInfo.jsp"><font color="#000000">&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt修改个人资料&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt&lt</font></a>
						<s:form action="listAllFlightsByUser" namespace="/com"
							method="post">
							<input type="submit" class="large button blue" value="查看所有航班" />
						</s:form>
						<s:form action="listMyUserorders" namespace="/com" method="post">
							<s:hidden name="user.username" value="%{#session.user.username}" />
							<input type="submit" class="large button red" value="查看我的订单" />
						</s:form>
					</center>

				</div>

			</div>
		</div>
	</center>
	<br />
	<a onclick="javascript:history.back(-1);" class="large button blue">返回上一页</a>
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
