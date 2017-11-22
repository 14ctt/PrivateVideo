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
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
<link rel="stylesheet" href="./css/mv.css">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function(){
		
		$(".infomain>.dv1").css("display","block");
		$(".infomain>.dv2").css("display","none");
		$(".infomain>.dv33").css("display","none");
		
		
		$(".infotitle>span").hover(function(){
			$(this).css("color","#fbfd93");
			$(this).css("cursor","pointer");
			$(this).siblings().css("color","#000000");
		},function(){
			//$(this).siblings().css("color","#000000");
		});
		
		$(".infotitle>span").click(function(){
			$(this).css("color","#fbfd93");
			$(this).css("cursor","pointer");
			$(this).siblings().css("color","#000000");
			var $val = $(this).text();
			if($val == '全部订单'){
				
				$(".infomain>.dv1").css("display","block");
				$(".infomain>.dv2").css("display","none");
				$(".infomain>.dv33").css("display","none");
			}else if($val == '未看订单'){
				$(".infomain>.dv1").css("display","none");
				$(".infomain>.dv2").css("display","block");
				$(".infomain>.dv33").css("display","none");
				
			}else if($val=='已看订单'){
				$(".infomain>.dv1").css("display","none");
				$(".infomain>.dv2").css("display","none");
				$(".infomain>.dv33").css("display","block");
			}
		});
	});
</script> 
</head>
<body>
	<s:action name="usersAction_findorders" executeResult="false"></s:action>
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
			<div class="item">
				<div style="height:25px;width:200px;"></div>
				<div class="headnamediv"><div class="headimg"><img width="100px" height="100px" src="${img}" class="layui-anim-rotate"/> </div><div class="username">欢迎！<%=session.getAttribute("username") %></div></div>
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
				  <li class="layui-nav-item"><a href="personalCenter/user_info.jsp">我的信息</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/updatepwd.jsp">修改密码</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/myorder.jsp">我的订单</a></li>
				  <li class="layui-nav-item"><a href="personalCenter/graphical.jsp">我的消费情况</a></li>
				</ul>
			</div>
		</div>
		<div class="infomain" >
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					  <ul class="layui-tab-title">
					    <li class="layui-this">全部电影订单</li>
					    <li>未看电影订单</li>
					    <li>已看电影订单</li>
					  </ul>

					  <div class="layui-tab-content" style="height: 100px;">					    
						    <div class="layui-tab-item layui-show">
							   <table class="layui-table">								  
									<thead>
									    <tr>
									      <th>编号</th><th>电影名称</th><th>房间编号</th>
									      <th>房间类型</th><th>放映时间</th><th>结束时间</th>
									      <th>放映日期</th>
									      <th>价格</th>
									    </tr> 
									</thead>
									<tbody>
										<c:forEach items="${orders}" var="order">
											<tr><td>${order.orderno}</td><td>${order.movies.mvname}</td>
											<td>${order.rooms.roomname}</td><td>${order.rooms.roomtype}</td>
											<td>${order.screenings.starttime}</td><td>${order.screenings.overtime}</td>
											<td><fmt:formatDate value="${order.scheduledtime}" pattern="yyyy年MM月dd日"></fmt:formatDate></td><td>${order.cost}元</td></tr>
										</c:forEach>
									</tbody>
								</table>
						    	
						    </div>
						    <div class="layui-tab-item">
						     	<table class="layui-table">								  
									<thead>
									    <tr>
									       <th>编号</th><th>电影名称</th><th>房间编号</th>
									      <th>房间类型</th><th>放映时间</th><th>结束时间</th>
									      <th>放映日期</th>
									      <th>价格</th>
									    </tr> 
									</thead>
									<tbody>
										<c:forEach items="${intime}" var="order">
											<tr><td>${order.orderno}</td><td>${order.movies.mvname}</td><td>${order.rooms.roomname}</td><td>${order.rooms.roomtype}</td><td>	${order.screenings.starttime}</td><td>${order.screenings.overtime}</td>
											<td><fmt:formatDate value="${order.scheduledtime}" pattern="yyyy年MM月dd日"></fmt:formatDate></td><td>${order.cost}元</td></tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						    <div class="layui-tab-item">
						    	<table class="layui-table">								  
									<thead>
									    <tr>
									      <th>编号</th><th>电影名称</th><th>房间编号</th>
									      <th>房间类型</th><th>放映时间</th><th>结束时间</th>
									      <th>放映日期</th>
									      <th>价格</th>
									    </tr> 
									</thead>
									<tbody>
										<c:forEach items="${outtime}" var="inorder">
											<tr><td>${inorder.orderno}</td><td>${inorder.movies.mvname}</td><td>${inorder.rooms.roomname}</td><td>${inorder.rooms.roomtype}</td><td>${inorder.screenings.starttime}</td><td>${inorder.screenings.overtime}</td>
											<td><fmt:formatDate value="${inorder.scheduledtime}" pattern="yyyy年MM月dd日"></fmt:formatDate></td><td>${inorder.cost}元</td></tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
					  </div>
				</div> 
		</div>
	</div>
	<script src="./admin/lib/layui/layui.js"></script>
<script>

layui.use('layedit', function(){
  var layedit = layui.layedit;
  layedit.build('demo'); //建立编辑器
});

layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>
</body>
</html>