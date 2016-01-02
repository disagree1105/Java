<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<SCRIPT language=javascript>
	function go() {
		window.history.go(-1);
	}
	setTimeout("go()", 10000);
</SCRIPT>
<base href="<%=basePath%>">

<title>删除成功</title>

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
<style type="text/css">
.z-msg {
	background-color: #edf1f8;
}

.z-msg .z-msg-box {
	position: relative;
	margin: 0 auto;
	text-align: center;
	padding: 23px 0px 125px 0;
	width: 980px;
	height: 364px;
}

.z-msg .msgbox {
	position: absolute;
	right: 185px;
	top: 145px;
	width: 300px;
	text-align: center;
	line-height: 16px;
}

.z-msg .msgbox .title {
	line-height: 30px;
	text-align: center;
	font-size: 24px;
	color: #4d73b1;
	margin-bottom: 15px;
}

.z-msg .msgbox .content {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	text-align: left;
}

.z-msg .bg {
	margin: 0 auto;
	width: 773px;
	height: 364px;
	background: url(image/successPage.png) no-repeat;
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
		<div class="z">
			<div class="z-msg">
				<div class="z-msg-box">
					<div class="bg"></div>
					<div class="msgbox">
						<div class="title">
							<s:actionerror />
							   退票成功！感谢您的购买！<font color="ff0000">将在10秒后自动跳转到上一页。</font>
							
							  <s:form action="listMyUserorders" namespace="/com" method="post">
<s:hidden name="user.username" value="%{#session.user.username}" />
<input type="submit" class="large button red" value="查看我的订单" />
</s:form>
						</div>
						<a onclick="javascript:history.back(-1);"
							class="large button blue">返回上一页</a> <a href="index.jsp"
							class="large button orange">返回首页</a>
					</div>
				</div>
			</div>
		</div>
	</center>
	<br />

	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>

</body>
</html>
