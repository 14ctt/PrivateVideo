<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户中心</title>
<link rel="stylesheet" href="css/userinfoCss.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
<link rel="stylesheet" href="./css/mv.css">

<link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css?t=1510717147129"  media="all">
  <link rel="stylesheet" href="//res.layui.com/css/global.css?t=1510717147129" media="all">
<script type="text/javascript">
$(function(){
	$(".ulmain li").hover(function(){
		$(this).css("color","red");
	},function(){
		$(this).css("color","#000000");
	});	
});
</script>
</head>
<body>
<ul  class="layui-nav layui-bg-green">
  <li class="layui-nav-item" style="font-size: 30px;">个人中心</li>
  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
  <li class="layui-nav-item"><a href="">电影</a></li>
  <li class="layui-nav-item"><a href="">动画</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;">电影类别</a>
    <dl class="layui-nav-child">
      <dd><a href="">科幻片</a></dd>
      <dd><a href="">爱情片</a></dd>
      <dd><a href="">犯罪片</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">关于我们</a></li>
  <li class="layui-nav-item" style="float: right;"><a href="./login.jsp">注销</a></li>
   <li class="layui-nav-item layui-this" style="float: right;">欢迎回来,<%=session.getAttribute("username") %></a></li>
   
</ul>
	<div class="main" >
		<div class="itemmain">
			<div class="item">
				<div style="height:25px;width:200px;"></div>
			<div class="headnamediv"><div class="headimg">
			<img width="100px" height="100px" src="<%=session.getAttribute("img") %>" class="layui-anim-rotate"/> </div>
			<div class="username">欢迎！<%=session.getAttribute("username") %></div></div>
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
				  <li class="layui-nav-item"><a href="personalCenter/user_info.jsp">我的信息</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/updatepwd.jsp">修改密码</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/myorder.jsp">我的订单</a></li>
				</ul>
			</div>
		</div>
		<div class="infomain site-text site-block" style="margin-top:30px;float:left;width:600px;">
		
		<form class="layui-form" style="margin-top:50px;margin-left:auto;margin-right:auto;" action="usersAction_updatepassword" method="post">
			<div class="layui-form-item">
	    		<label class="layui-form-label">原密码</label>
	    		<div class="layui-input-inline">
	      		<input type="password" name="userr.userpasswd" required lay-verify="required" placeholder="请输入愿密码" autocomplete="off" class="layui-input">
	    		</div>
	    		<div class="layui-form-mid layui-word-aux">${messing}</div>
	    		<br><br><br>
	    		<div class="layui-form-item">
	    		<label class="layui-form-label">新密码</label>
	    		<div class="layui-input-inline">
	      		<input type="password" name="userspasswd" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
	    		</div>
	    		<div class="layui-form-mid layui-word-aux"></div>
  				</div>
	  			<div class="layui-form-item">
		    		<label class="layui-form-label">确认新密码</label>
		    		<div class="layui-input-inline">
		      		<input type="password"  required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
		    		</div>
		    		<div class="layui-form-mid layui-word-aux"></div>		    		
	  			</div>
	  			<div style="display:block;width:400px;"><button class="layui-btn layui-btn-normal" type="submit">修改</button><button class="layui-btn layui-btn-normal" type="reset">重置</button></div>
  			</div>
		</form>
		</div>
	</div>
</body>
</html>