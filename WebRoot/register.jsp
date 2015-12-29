<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>用户注册</title>

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
				<h3>用户注册</h3>
				<s:property value="#request.tip" />
				<p>
					<s:form action="register" namespace="/com" method="post">
						<fieldset>
							<div>
								<label for="Name">用户名</label>
								<s:textfield name="user.username" />
							</div>
							<br /> <br />
							<div>
								<label for="password">密&nbsp&nbsp&nbsp&nbsp码</label>
								<s:password name="user.password" />
								<br />
							</div>
							<p />
							<div class="enter">
								<input type="submit" class="large button blue" value="注册" /> <input
									type="reset" class="large button yellow" value="重置" />
							</div>
						</fieldset>
					</s:form>
			</div>
		</center>

		<p>&nbsp;</p>
		<a href="index.jsp" class="large button green">返回首页</a>
	</center>
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>