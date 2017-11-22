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
function info(){
	$.ajax({
			type:"POST",
			url:"usersAction_finduserById.action",
			dataType:"json",
			success:function(data){
				$.each(data,function(i,user){
					$(".tbinfo").html("");
					$(".tbinfo").append("<tr><td>姓名</td><td>"+user.username+"</td></tr>"
							+"<tr><td>性别</td><td>"+user.sex+"</td></tr>"	
							+"<tr><td>年龄</td><td>"+user.age+"岁</td></tr>"	
							+"<tr><td>邮箱</td><td>"+user.useremail+"</td></tr>"
							+"<tr><td>图片</td><td>"+user.userimg+"</td></tr>"	
							+"<tr><td>电话</td><td>"+user.userphone+"</td></tr>");
				});
			}
		});
}
</script>
</head>
<body>
<s:action name="usersAction_finduserById" executeResult="false"></s:action>
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
				<img width="100px" height="100px" src="upload/${user.userimg}" class="layui-anim-rotate"/> </div><div class="username">欢迎！${user.username}</div></div>
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
				  <li class="layui-nav-item"><a href="personalCenter/user_info.jsp">我的信息</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/updatepwd.jsp">修改密码</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/myorder.jsp">我的订单</a></li>
				</ul>
			</div>
		</div>
		<div class="infomain site-text site-block" style="margin-top:30px;float:left;width:600px;">
			<div class="layui-bg-cyan" style="height:30px;font-size: 20px;">我的信息</div>
			<table class="layui-table" >								  
				<tbody>					
					
					<tr><td>姓名</td><td>${user.username}</td></tr>
					<tr><td>性别</td><td>${user.sex}</td></tr>
					<tr><td>年龄</td><td>${user.age}岁</td></tr>
					<tr><td>邮箱</td><td>${user.useremail}</td></tr>				
					<tr><td>电话</td><td>${user.userphone}</td></tr>
					<tr><td colspan="2"><a href="personalCenter/updateInfo.jsp"><button class="layui-btn layui-btn-normal">修改信息</button></a></td></tr>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>