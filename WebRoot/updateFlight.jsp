<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<head>

<title>修改航班信息</title>

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
					<font color="#FF0000">修改航班信息(当前身份:<s:label
									value="%{#session.user.type}" />)</font>
				</h3>
				<s:fielderror/>
				<s:form action="updateFlight" namespace="/com" method="post" validate="true">
					<s:hidden name="flight.flightid"
						value="%{#session.flight.flightid}" />
					<fieldset>
						<div>
							<label for="originstation">起点站:</label>
							<s:textfield name="flight.originstation"
								value="%{#session.flight.originstation}" size="30"
								maxlength="20" />
						</div>
						<div>
							<label for="terminalstation">终点站:</label>
							<s:textfield name="flight.terminalstation"
								value="%{#session.flight.terminalstation}" size="30"
								maxlength="20" />
						</div>
						<div>
							<label for="origintime">始发时间:</label>
							<s:textfield name="flight.origintime"
								value="%{#session.flight.origintime}" size="30" maxlength="20" />
						</div>
						<div>
							<label for="terminaltime">到达时间:</label>
							<s:textfield name="flight.terminaltime"
								value="%{#session.flight.terminaltime}" size="30" maxlength="20" />
						</div>
						<div>
							<label for="ticketsum">总票数:</label>
							<s:textfield name="flight.ticketsum"
								value="%{#session.flight.ticketsum}" size="30" maxlength="20" />
						</div>
						<div>
							<label for="ticketleft">余票数:</label>
							<s:textfield name="flight.ticketleft"
								value="%{#session.flight.ticketleft}" size="30" maxlength="20" />
						</div>
						<div>
							<label for="price">票价:</label>
							<s:textfield name="flight.price" value="%{#session.flight.price}"
								size="30" maxlength="20" />
						</div>
						<div class="enter">
							<input type="submit" class="large button green" value="修改并提交" />
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
