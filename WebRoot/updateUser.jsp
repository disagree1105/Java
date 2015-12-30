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


<title>修改用户</title>

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
					<font color="#FF0000">修改用户信息(当前身份：管理员)</font>
				</h3>
				<s:form action="updateUser" namespace="/com" method="post">
					<s:hidden name="user.userid" value="%{#session.user.userid}" />
					<fieldset>
						<div>
							<label for="userame">用户名:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.username}" />
						</div>
						<div>
							<label for="password">密码:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.password}" />
						</div>
						<div>
							<label for="type">类型:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.type}" />
						</div>
						<div>
							<label for="name">姓名:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.name}" />
						</div>
						<div>
							<label for="idcard">身份证:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.idcardnumber}" />
						</div>
						<div>
							<label for="phonenumber">手机号:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.tel}" />
						</div>
						<div>
							<label for="age">年龄:</label>
							<s:textfield name="user.username" size="30" maxlength="20"
								value="%{#session.user.age}" />
						</div>
						<div class="enter">
							<input type="submit" class="large button blue" value="修改并提交" />
						</div>

					</fieldset>
				</s:form>
			</div>
		</center>

	</center>
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
