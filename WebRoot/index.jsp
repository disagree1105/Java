<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<base href="<%=basePath%>">
<title>机票预订系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
<link rel="stylesheet" type="text/css" href="css/cloud.css" />
<link rel="stylesheet" type="text/css" href="css/reg.css" />
<link rel="stylesheet" type="text/css" href="css/button.css" />
<link rel="stylesheet" type="text/css" href="css/DB_gallery.css" />
<link rel="stylesheet" type="text/css" href="css/fontEffect.css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/Calendar.js"></script>
<script type="text/javascript" src="js/jquery.DB_gallery.js"></script>
<script type="text/javascript" src="js/j.suggest.js"></script>
<script type="text/javascript" src="js/j.dimensions.js"></script>
<script type="text/javascript" src="js/aircity.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
			$(".ani-bg").animate({
				marginTop : "420px"
			}, 2500);
	});
</script>
<script type="text/javascript">
	$(function() {

		$("#arrcity").suggest(citys, {
			hot_list : commoncitys,
			dataContainer : '#arrcity_3word',
			onSelect : function() {
				$("#city2").click();
			},
			attachObject : '#suggest'
		});

		$("#city2").suggest(citys, {
			hot_list : commoncitys,
			attachObject : "#suggest2"
		});

	});
</script>
</head>
<body>

	<div
		style="position: absolute; left: 0; top: 0; width: 100%; height: 100%; z-index: -1">
		<div id="clouds">
			<div class="cloud x1"></div>
			<!-- Time for multiple clouds to dance around -->
			<div class="cloud x2"></div>
			<div class="cloud x3"></div>
			<div class="cloud x4"></div>
			<div class="cloud x5"></div>
		</div>
	</div>
	<br>
	<!-- 	<a class="large button blue" href="login.jsp">管理员登录</a> -->
	<!-- 	<c:set var="username" scope="session" value="%{#session.user.name}"/> -->

	<c:choose>
		<c:when test="${session.user.username!=null}">
			<font color="#FF0000">您好，<s:label
					value="%{#session.user.type}" /> <s:label
					value="%{#session.user.username}" /></font>

			<c:if test="${session.user.type=='管理员'}">
				<a class="large button blue" href="loginManager.jsp">个人中心</a>
			</c:if>
			<c:if test="${session.user.type=='注册用户'}">
				<a class="large button blue" href="loginSuccess.jsp">个人中心</a>
			</c:if>
			<c:if test="${session.user.type=='机场'}">
				<a class="large button blue" href="loginAirport.jsp">个人中心</a>
			</c:if>

			<a class="large button pink" href="findFlight.jsp">查询余票</a>
			<a class="large button red" href="pointRule.jsp">积分优惠</a>
			<a class="large button orange" href="logout.jsp">注销</a>
			<a class="large button yellow" href="aboutUs.jsp">关于我们</a>
		</c:when>

		<c:otherwise>
			<a class="large button orange" href="login.jsp">用户登录</a>
			<a class="large button yellow" href="register.jsp">用户注册</a>
			<a class="large button blue" href="logwarn.jsp">我的订单</a>
			<a class="large button pink" href="findFlight.jsp">查询余票</a>
			<a class="large button red" href="pointRule.jsp">积分优惠</a>
			<a class="large button yellow" href="aboutUs.jsp">关于我们</a>
		</c:otherwise>

	</c:choose>
	<br>
	<br>

	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<div style="width:1000px;margin:0 auto;">
		<div style="width:40%;height:480px;;float:left;">
			<!-- <img src="image/frame.png" width="500" height="200"> -->
			<br /> <br />
			<div class="logo">
				<img src="image/frame.png" alt="" class="frame" /> <img
					src="image/ani-bg.png" alt="" class="ani-bg" /> <br />
			</div>
			<br /> <br /> <br /> <br /> <br /> <br /> <br />

			<fieldset>
				<legend>机票预订</legend>
				<s:form action="findFlight" namespace="/com" method="post">
					<p>
						<strong> 标有*的为必选项</strong>
					</p>
					<div id="box">
						<label for="start">起点城市</label> <input type="text"
							name="flight.originstation" id="arrcity" />
						<div id='suggest' class="ac_results"></div>
						<br>
					</div>
					<div id="box">
						<label for="end">终点城市</label> <input type="text"
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
					<!-- 				<div> -->
					<!-- 					<label for="ticketType">机票种类</label><select name="ticketType"> -->
					<!-- 						<option selected="selected">成人票</option> -->
					<!-- 						<option>儿童票</option> -->
					<!-- 						<option>婴儿票</option> -->
					<!-- 					</select> -->
					<!-- 				</div> -->
					<!-- 				<div> -->
					<!-- 					<label for="tel">联系电话</label> <input type="text" name="memberTel" -->
					<!-- 						id="tel" value="" size="20" /> *<br> -->
					<!-- 				</div> -->
					<div class="enter">

						<input type="submit" class="large button blue" value="同意协议并查询" />
					</div>
				</s:form>
				<p>
					<strong>* 在提交您的信息时, 我们认为您已经同意了我们的服务条款.<br> *
						这些条款可能在未经您同意的时候进行修改.
					</strong>
				</p>
			</fieldset>

		</div>

		<div style="width:50%;height:480px;float:right;">
			<div id="DB_gallery">
				<div class="DB_imgSet">
					<div class="DB_imgWin">
						<img src="img/img1.jpg" alt="" />
					</div>

					<div class="DB_page">
						<span class="DB_current">0</span>-<span class="DB_total">0</span>
					</div>

					<div class="DB_prevBtn">
						<img src="galleryImgs/prev_off.png" alt="上一页" />
					</div>

					<div class="DB_nextBtn">
						<img src="galleryImgs/next_off.png" alt="下一页" />
					</div>
				</div>
				<div class="DB_thumSet">
					<ul class="DB_thumMove">

						<li><a href="galleryImgs/pic1.jpg"><img
								src="galleryImgs/thum1.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic2.jpg"><img
								src="galleryImgs/thum2.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic3.jpg"><img
								src="galleryImgs/thum3.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic4.jpg"><img
								src="galleryImgs/thum4.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic5.jpg"><img
								src="galleryImgs/thum5.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic6.jpg"><img
								src="galleryImgs/thum6.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic1.jpg"><img
								src="galleryImgs/thum1.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic2.jpg"><img
								src="galleryImgs/thum2.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic3.jpg"><img
								src="galleryImgs/thum3.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic4.jpg"><img
								src="galleryImgs/thum4.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic5.jpg"><img
								src="galleryImgs/thum5.jpg" alt="" /></a></li>

						<li><a href="galleryImgs/pic6.jpg"><img
								src="galleryImgs/thum6.jpg" alt="" /></a></li>
					</ul>

					<div class="DB_thumLine"></div>

					<div class="DB_prevPageBtn">
						<img src="galleryImgs/prev_page.png" alt="上一页" />
					</div>

					<div class="DB_nextPageBtn">
						<img src="galleryImgs/next_page.png" alt="下一页" />
					</div>
				</div>
			</div>
		</div>
		<div style="clear:both;"></div>
	</div>

	<script type="text/javascript">
		$('#DB_gallery').DB_gallery({

			thumWidth : 110,

			thumGap : 8,

			thumMoveStep : 4,

			moveSpeed : 300,

			fadeSpeed : 500

		});
	</script>
	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>
	<font color='#929293'>CopyRight &copy; 徐明绮，陈霁鹏,All Rights
		Reserved</font>
</body>
</html>