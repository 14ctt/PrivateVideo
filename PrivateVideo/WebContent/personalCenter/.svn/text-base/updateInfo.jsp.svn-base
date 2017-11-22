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
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/headupload.js"></script>
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
<script type="text/javascript" src="./admin/lib/layui/layui.js"></script>
<link rel="stylesheet" href="./css/mv.css">
<link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css?t=1510717147129"  media="all">
  <link rel="stylesheet" href="//res.layui.com/css/global.css?t=1510717147129" media="all">
<style type="text/css">
#myFile{display: none;}
img{
width: 100px;
height: 100px;
}
.infos{
	margin-left:auto; margin-right:auto;
}
</style>
<script type="text/javascript">
$(function(){
	$(".ulmain li").hover(function(){
		$(this).css("color","red");
	},function(){
		$(this).css("color","#000000");
	});
	$(".ulmain li").click(function(){
		
	});
});
</script>
</head>
<body>
<s:action name="usersAction_usersSelectId2" executeResult="false" />	
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
	<div class="main">
		
		<div class="itemmain">
			<div class="item" style="padding-top:30px;">
				<div style="height:25px;width:200px;"></div>
				<div class="headnamediv">
				<div class="headimg">
				<img width="100px" height="100px" src="upload/${uselt.userimg}" class="layui-anim-rotate"/> </div>
				<div class="username">欢迎！${uselt.username}</div></div>
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
				  <li class="layui-nav-item"><a href="personalCenter/user_info.jsp">我的信息</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/updatepwd.jsp">修改密码</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/myorder.jsp">我的订单</a></li>
				</ul>
			</div>
		</div>
		<div class="infomain site-text site-block" style="margin-top:30px;float:left;width:600px;">
		
					 
			<form style="width:200px;margin-left:80px;" action="lunboAction.action"  style="height:20px;width:100px;" enctype="multipart/form-data" method="post">
			    <input style="display:none;" type="file" id="myFile" name="myFile">
			   	<input style="display:none;"  name="savePath" value="upload">
			   	<button type="button" class="layui-btn" id="upload" value="点击上传图片">
				  <i class="layui-icon">&#xe67c;</i>点击上传图片
				</button>
		   	</form>
		   
			<form  style="height:300px; width:450px;margin-left:auto; margin-right:auto;" action="usersAction_updateUser">
				<div style="float:left;width:100px;height:100px;margin-left:70px;display:inline-block;" id="headimg"><img src="upload/${uselt.userimg}"/></div>
			    <div class="layui-form-item">
			    	<div class="layui-input-inline" style="padding-left:20px;">
			    	<s:radio name="userr.sex" list="#{'男':'男','女':'女'}" listKey="key" listValue="value" value="%{#request.uselt.sex}" label="性别"/>
			    	</div>
			    </div>
			    <div class="layui-form-item">
			    	<label class="layui-form-label">昵称</label>
			    	<div class="layui-input-inline">
			      	<input name="userr.username" value="${uselt.username}" required lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
			    	</div>    			
  				</div>
  				<div class="layui-form-item">
			    	<label class="layui-form-label">年龄</label>
			    	<div class="layui-input-inline">
			      	<input name="userr.age" value="${uselt.age}" required lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
			    	</div>    			
  				</div>
  				<div class="layui-form-item">
			    	<label class="layui-form-label">邮箱</label>
			    	<div class="layui-input-inline">
			      	<input name="userr.useremail" value="${uselt.useremail}" required lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
			    	</div>    			
  				</div>
  				<div class="layui-form-item">
			    	<label class="layui-form-label">电话</label>
			    	<div class="layui-input-inline">
			      	<input name="userr.userphone" value="${uselt.userphone}" required lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
			    	</div>    			
  				</div>		       
				<s:textfield style="display:none;" name="userr.userimg" id="imgsrc" value="%{#request.uselt.userimg}"/> 
				<s:textfield style="display:none;" name="userr.userid" value="%{#request.uselt.userid}"/>
			    <div class="layui-form-item" style="float:left;">
				    <div class="layui-input-block">
				      <button class="layui-btn" type="submit" lay-submit lay-filter="formDemo">修改</button>				   
				    </div>
  				</div>
			</form>
		</div>
	</div>
<script>
layui.use('form', function(){
  var form = layui.form;
});
</script>
</body>
</html>