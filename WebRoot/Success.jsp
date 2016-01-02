<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
操作成功！感谢您的购买！
<c:if test="${session.user.point<2000 && session.user.point>=1000}">
您的积分大于1000，可享受9.5折优惠！
</c:if>
<c:if test="${session.user.point>=2000 && session.user.point<5000}">
您的积分大于2000，可享受9折优惠！
</c:if>
<c:if test="${session.user.point>=5000}">
您的积分大于5000，可享受8折优惠！
</c:if>
您此次增加了<s:label value="%{#session.addpoint}"/>分的积分,
您现在拥有<s:label value="%{#session.user.point}"/>分的积分。
<s:form action="listMyUserorders" namespace="/com" method="post">
<s:hidden name="user.username" value="%{#session.user.username}" />
<input type="submit" class="large button red" value="查看我的订单" />
</s:form>
  </body>
</html>
