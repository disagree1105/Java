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
<script type="text/javascript" src="js/Calendar.js"></script>
<script language="javascript">
	function chk(Form) {
		if (Form.user.username.value == "") {
			alert("请输入用户名!");
			Form.user.username.focus();
			return (false);
		}
		if (Form.user.password.value == "") {
			alert("请输入密码!");
			Form.user.password.focus();
			return (false);
		}
	}
</script>
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
				<s:property value="#request.tip" />
				<s:fielderror/>
				<s:form action="register" namespace="/com" method="post"
					onsubmit="return chk(this)" validate="true">
					<fieldset>
						<legend>用户注册</legend>
						<p>
							<strong> 标有*的为必选项</strong>
						</p>
						<div>
							<label for="userame">用户名</label>
							<s:textfield name="user.username" size="30" maxlength="20" />
						</div>
						<div>
							<label for="password">密码</label>
							<s:password name="user.password" size="30" maxlength="20" />
						</div>
						<div>
							<label for="type">用户类型</label>
							<s:select name="user.type" list="{'注册用户'}" />
						</div>
						<div>
							<label for="birthdate">出生年月</label>
							<s:textfield name="user.birthdate"
								onClick="new Calendar().show(this);" readonly="true" value="2016-01-01" />
						</div>
						<div>
							<label for="name">真实姓名</label>
							<s:textfield name="user.name" size="6" maxlength="6" />
						</div>
						<div>
							<label for="Sex">性 别</label>
							<s:select name="user.sex" list="{'男','女' }" />
						</div>
						<div>
							<label for="idcardnumber">身份证号</label>
							<s:textfield name="user.idcardnumber" size="25" minlength="18"
								maxlength="18" />
						</div>
						<div>
							<label for="tel">手机号码</label>
							<s:textfield name="user.tel" size="11" minlength="11"
								maxlength="11" />
						</div>
						<p>
							<strong>* 在提交您的注册信息时, 我们认为您已经同意了我们的服务条款.<br /> 
							*这些条款可能在未经您同意的时候进行修改.
							</strong>
						</p>
						<div class="enter">
							<input type="submit" class="large button blue" value="注册" /> <input
								type="reset" class="large button yellow" value="重置" />
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