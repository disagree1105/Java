<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
<!-- <marquee onmouseout="scroll" direction="left" width="660px" height="40px" SCROLLDELAY="440px" >
 		<font size=6><font color=black>浙江工业大学社团欢迎您！</font></font></marquee> -->
<title>机票预订系统</title>
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
<link rel="stylesheet" type="text/css" href="css/DB_gallery.css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/Calendar.js"></script>
<script type="text/javascript" src="js/jquery.DB_gallery.js"></script>
</head>

<body>
	<div
		style="position: absolute; left: 0; top: 0; width: 100%; height: 100%; z-index: -1">
		<img src="image/bg.png" height="100%" width="100%" />
	</div>

	<br>
	<a class="large button blue" href="login.jsp">管理员登录</a>
	<a class="large button orange" href="login.jsp">用户登录</a>
	<a class="large button yellow" href="register.jsp">用户注册</a>
	<br>


	<p>
		<img src="image/head.png" width="1024" height="61">
	</p>
	<br>

	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"
		width="100%" color=#987cb9 SIZE=10>
	<br>


	<div style="width:1000px;margin:0 auto;">
		<div style="width:40%;height:500px;;float:left;">
			<fieldset>
				<legend>机票预订</legend>
				<p>
					<strong> 标有*的为必选项</strong>
				</p>
				<div>
					<label for="start">起点城市</label> <input type="text" name="startCity"
						id="startCity" value="" size="20" maxlength="30" /> <br>
				</div>
				<div>
					<label for="end">终点城市</label> <input type="text" name="endCity"
						id="endCity" size="20" maxlength="15" /> <br>
				</div>
				<div>
					<label for="date">出发日期</label> <input type="text" name="date"
						id="date" onClick="new Calendar().show(this);" readonly="readonly" />
				</div>
				<div>
					<label for="ticketType">机票种类</label><select name="ticketType">
						<option selected="selected">成人票</option>
						<option>儿童票</option>
						<option>婴儿票</option>
					</select>
				</div>
				<div>
					<label for="tel">联系电话</label> <input type="text" name="memberTel"
						id="tel" value="" size="20" /> *<br>
				</div>
				<div class="enter">
					<input name="Submit" type="submit" class="buttom" value="同意协议并预订" />
				</div>
				<p>
					<strong>* 在提交您的注册信息时, 我们认为您已经同意了我们的服务条款.<br> *
						这些条款可能在未经您同意的时候进行修改.
					</strong>
				</p>
			</fieldset>
		</div>
		<div style="width:50%;height:400px;float:right;">
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
