<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<link rel="stylesheet" href="css/userinfoCss.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/headupload.js"></script>
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css"
	media="all">
<script type="text/javascript" src="./admin/lib/layui/layui.js"></script>
<link rel="stylesheet" href="./css/mv.css">
<link rel="stylesheet"
	href="//res.layui.com/layui/dist/css/layui.css?t=1510717147129"
	media="all">
<link rel="stylesheet"
	href="//res.layui.com/css/global.css?t=1510717147129" media="all">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图形页面</title>
</head>
<body>
	<ul class="layui-nav layui-bg-green">
		<li class="layui-nav-item" style="font-size: 30px;">个人中心</li>
		<li class="layui-nav-item"><a href="index.jsp">首页</a></li>
		<li class="layui-nav-item"><a href="">电影</a></li>
		<li class="layui-nav-item"><a href="">动画</a></li>
		<li class="layui-nav-item"><a href="javascript:;">电影类别</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">科幻片</a>
				</dd>
				<dd>
					<a href="">爱情片</a>
				</dd>
				<dd>
					<a href="">犯罪片</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="">关于我们</a></li>
		<li class="layui-nav-item" style="float: right;"><a
			href="./login.jsp">注销</a></li>
		<li class="layui-nav-item layui-this" style="float: right;">欢迎回来,<%=session.getAttribute("username")%></a></li>

	</ul>
	<div class="main">

		<div class="itemmain">
			<div class="item" style="padding-top: 30px;">
				<div style="height: 25px; width: 200px;"></div>
				<div class="headnamediv">
					<div class="headimg">
						<img width="100px" height="100px" src="upload/${uselt.userimg}"
							class="layui-anim-rotate" />
					</div>
					<div class="username">欢迎！${uselt.username}</div>
				</div>
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;">
					<li class="layui-nav-item"><a
						href="personalCenter/user_info.jsp">我的信息</a></li>
					<li class="layui-nav-item"><a
						href="personalCenter/updatepwd.jsp">修改密码</a></li>
					<li class="layui-nav-item"><a
						href="personalCenter/myorder.jsp">我的订单</a></li>
					<li class="layui-nav-item"><a
						href="personalCenter/graphical.jsp">我的消费情况</a></li>
				</ul>
			</div>
		</div>
		<div class="infomain site-text site-block"
			style="margin-top: 30px; float: left; width: 600px;">

			<s:action name="usersAction_tu" executeResult="false"></s:action>
			<s:action name="showChartAction" executeResult="false">
				<s:param name="type">
					<s:text name="dcd" />
				</s:param>
				<s:param name="titlename">
					<s:text name="每月消费比例" />
				</s:param>
				<s:param name="cagetoryname">
					<s:text name="图例" />
				</s:param>
				<s:param name="valuename">
					<s:text name="数量" />
				</s:param>
			</s:action>
			<img src="upload/${imgname}">

		</div>
	</div>

</body>
</html>