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
<base href="<%=basePath%>">
<title>添加航班</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/reg.css" />
<link rel="stylesheet" type="text/css" href="css/button.css" />
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
			<img src="image/background.jpg" height="100%" width="100%" />
		</div>
		<p>
			<img src="image/label.jpg" width="1024" height="120">
		</p>
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
			width="100%" color=#987cb9 SIZE=10>
		<br>
		<center>
			<div id="formwrapper">
				<h3>
					<font color="#FF0000">添加航班信息(当前身份:<s:label
							value="%{#session.user.type}" />)
					</font>
				</h3>
				<s:fielderror/>
				<s:form action="addFlight" namespace="/com" method="post" validate="true">
					<fieldset>
						<div>
							<label for="start">始发站:</label>
							<s:textfield name="flight.originstation" size="30" />
						</div>
						<div>
							<label for="end">终点站:</label>
							<s:textfield name="flight.terminalstation" size="30" />
						</div>
						<br />
						<div>
							<label for="startname">始发时间(格式：YYYY-MM-DD HH:MM):</label>
							<s:textfield name="flight.origintime" size="30" />
						</div>
						<br />
						<div>
							<label for="arrivename">到达时间(格式：YYYY-MM-DD HH:MM):</label>
							<s:textfield name="flight.terminaltime" size="30" />
						</div>
						<div>
							<label for="titalTick">总票数:</label>
							<s:textfield name="flight.ticketsum" size="30" />
						</div>
						<div>
							<label for="restTick">余票数:</label>
							<s:textfield name="flight.ticketleft" size="30" />
						</div>
						<div>
							<label for="price">票价:</label>
							<s:textfield name="flight.price" size="30" />
						</div>
						<div class="enter">
							<input type="submit" class="large button green" value="添加该航班" />
							<a onclick="javascript:history.back(-1);"
								class="large button blue">返回上一页</a>
						</div>
					</fieldset>
				</s:form>
			</div>
		</center>
	</center>
	<a href="index.jsp" class="large button orange">返回首页</a>
	<br />
	<br />
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>
