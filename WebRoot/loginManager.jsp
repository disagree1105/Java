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
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/j.suggest.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/j.dimensions.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/aircity.js"></script>
<script type="text/javascript">
$(function(){

	$("#arrcity").suggest(citys,{hot_list:commoncitys,dataContainer:'#arrcity_3word',onSelect:function(){$("#city2").click();},attachObject:'#suggest'});
	
	$("#city2").suggest(citys,{hot_list:commoncitys,attachObject:"#suggest2"});
	
});
</script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/reg.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/button.css" />
<style type="text/css">
a:link, a:visited {
	text-decoration: none;
}
</style>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

body {
	font-family: Arial, Helvetica, sans-serif, "宋体";
	font-size: 12px;
	text-align: center;
}

h1 {
	margin: 0;
	padding: 20px 0;
	font-size: 16px;
}

ol {
	padding-left: 20px;
	line-height: 130%;
}

#box {
	text-align: left;
	margin: 0 auto;
}

#suggest, #suggest2 {
	width: 200px;
}

.gray {
	color: gray;
}

.ac_results {
	background: #fff;
	border: 1px solid #7f9db9;
	position: absolute;
	z-index: 10000;
	display: none;
}

.ac_results ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

.ac_results li a {
	white-space: nowrap;
	text-decoration: none;
	display: block;
	color: #05a;
	padding: 1px 3px;
}

.ac_results li {
	border: 1px solid #fff;
}

.ac_over, .ac_results li a:hover {
	background: #c8e3fc;
}

.ac_results li a span {
	float: right;
}

.ac_result_tip {
	border-bottom: 1px dashed #666;
	padding: 3px;
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
					<div id="box">
							<label for="start">起点城市</label> 
							<input type="text"
								name="flight.originstation" id="arrcity" />
							<div id='suggest' class="ac_results"></div>
							<br>
						</div>
						<div id="box">
							<label for="end">终点城市</label>
							 <input type="text"
								name="flight.terminalstation" id="city2" />
							<div id='suggest2' class="ac_results"></div>
							<br>
						</div>
						<div id="box">
							<label for="date">出发日期</label>
							<s:textfield name="flight.origintime"
								onClick="new Calendar(2015,2016).show(this);" readonly="true"
								value="2016-01-01" />
						</div>
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
							<font color="#FF0000">欢迎您， <s:label
									value="%{#session.user.type}" /> <s:label
									value="%{#session.user.username}" /></font>
						</h3>
						<s:form action="listAllUsers" namespace="/com" method="post">
							<input type="submit" class="large button yellow" value="查看所有用户" />
						</s:form>
						<s:form action="listAllFlights" namespace="/com" method="post">
							<input type="submit" class="large button blue" value="查看所有航班" />
						</s:form>
						<s:form action="listAllAirports" namespace="/com" method="post">
							<input type="submit" class="large button orange" value="查看所有机场" />
						</s:form>
						<s:form action="listAllUserorders" namespace="/com" method="post">
							<input type="submit" class="large button pink" value="查看所有订单" />
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
