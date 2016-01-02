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
<script type="text/javascript" src="js/Calendar.js"></script>
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
					<font color="#FF0000">修改用户信息</font>
				</h3>
				<s:fielderror/>
				<s:form action="updateUserDone" namespace="/com" method="post" validate="true">
					<s:hidden name="user.userid" value="%{#session.updateuser.userid}" />
					<fieldset>
						<div>
							<label for="userame">用户名:</label>
							<s:textfield name="user.username" size="30" maxlength="16"
								value="%{#session.updateuser.username}" />
						</div>
						<div>
							<label for="password">密码:</label>
							<s:textfield name="user.password" size="30" maxlength="16"
								value="%{#session.updateuser.password}" />
						</div>
						<div>
							<label for="type">用户类型</label>
							<s:select name="user.type" list="{'注册用户','机场','管理员'}" />
						</div>
						<div>
							<label for="name">真实姓名:</label>
							<s:textfield name="user.name" size="30" maxlength="20"
								value="%{#session.updateuser.name}" />
						</div>
						<div>
							<label for="Sex">性 别</label>
							<s:select name="user.sex" list="{'男','女' }" />
						</div>
						<div>
							<label for="idcard">身份证:</label>
							<s:textfield name="user.idcardnumber" size="30" maxlength="20"
								value="%{#session.updateuser.idcardnumber}" />
						</div>
						<div>
							<label for="phonenumber">手机号:</label>
							<s:textfield name="user.tel" size="30" maxlength="20"
								value="%{#session.updateuser.tel}" />
						</div>
						<div>
							<label for="age">出生年月:</label>
							<s:textfield name="user.birthdate" size="30" maxlength="20"
								onClick="new Calendar().show(this);" value="%{#session.updateuser.birthdate}" />
						</div>

						<div>
 							<label for="point">积分:</label>
 							<s:textfield name="user.point" size="30" maxlength="20"
 								value="%{#session.updateuser.point}" />
 					</div>

							<div>
							<label for="point">积分:</label>
							<s:textfield name="user.point" size="30" maxlength="20"
								value="%{#session.updateuser.point}" />
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
