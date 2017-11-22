<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <base href="<%=basePath%>"/>
   <base target="_blank" />
    <s:action name="usersAction_voidSelect" executeResult="false" /><!-- 查询所有电影 -->
  <meta charset="utf-8">
  <title>私人电影院</title>
  <link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
   <link rel="stylesheet" href="./css/mv.css">
   <link rel="stylesheet" href="./css/liMarquee.css">
   <link rel="stylesheet" href="./admin/css/xadmin.css">
    <script type="text/javascript" src="./admin/js/xadmin.js"></script>
   <style>
.dowebok { width: 1350px; font-size: 14px;}
.dowebok a { margin: 0 15px; color: #333; text-decoration: none;}
.dowebok a:hover { text-decoration: underline;}
</style>

</head>
<body>
 


<!-- 条目中可以是任意内容，如：<img src="">
	<textarea id="demo" style="display: none;"></textarea> -->

<ul class="layui-nav layui-bg-green">
  <li class="layui-nav-item"><a href="">私人专属影院</a></li>
  <li class="layui-nav-item layui-this"><a href="">电影</a></li>
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

  <%if(session.getAttribute("username")==null){ %>
  <li class="layui-nav-item" style="float: right;"><a href="./registered.jsp">注册</a></li>
   <li class="layui-nav-item layui-this" style="float: right;"><a href="./login.jsp">登录</a></li>
   <%}else{%>

   <li class="layui-nav-item" style="float: right;"><a href="./personalCenter/myorder.jsp">个人中心</a></li>
   <li class="layui-nav-item layui-this" style="float: right;">欢迎回来,<%=session.getAttribute("username") %></a></li>
   <%}%>
</ul>

<div class="lunbo-bg">
<div class="lunbo">
 <div class="layui-carousel" id="test1">
  <div carousel-item>
  	  <div><img src="img/lunbo4.jpg"/></div>
    <div><img src="img/lunbo1.jpg"/></div>
    <div><img src="img/lunbo2.jpg"/></div>
    <div><img src="img/lunbo3.jpg"/></div>
    <div><img src="img/lunbo5.jpg"/></div>
  </div>
</div>
</div>
</div>
<div class="content1">
	<blockquote class="layui-elem-quote">
	     类别：
		<a href="usersAction_voidSelt.action?name=1">科幻片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="usersAction_voidSelt.action?name=2">爱情片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="usersAction_voidSelt.action?name=3">犯罪片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="usersAction_voidSelt.action?name=4">恐怖片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="usersAction_voidSelt.action?name=5">动画片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<a href="usersAction_voidSelt.action?name=6">喜剧片</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	</blockquote>
	<hr class="layui-bg-blue">
</div>
<div class="content2">
	<blockquote class="layui-elem-quote">
所有电影&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form class="layui-form"><!-- 电影搜索 -->

</form>
	</blockquote>	
	<div class="dowebok">
	<table style="text-align: center;"><tr>
				
<c:forEach items="${request.voide}" var="voi" varStatus="aa">
				<td>
				<a href="usersAction_voidXq?id=${voi.mvid}">
				   <img src="./upload/${voi.mvimg}" /> </a>
				   <div>
				    <span class="span1">电影名:</span> <span class="span2">${voi.mvname}</span><br />
					<a href="https://baike.baidu.com/item/${voi.mvdirector}">
					<span class="span1">导&nbsp;演：</span>
                    <span class="span3">${voi.mvdirector}</span>
                    </a>
                    </div>
				   
				</td>

				</c:forEach>
					</tr>
				

			
			</table>
	</div><!-- 滑动结束 -->
<hr class="layui-bg-blue">
			<blockquote class="layui-elem-quote">
房间一览
	</blockquote>	
	<div class="homeshow">
<img alt="房间一" src="homeimg/1.jpg">
<img alt="房间一" src="homeimg/2.jpg">
<img alt="房间一" src="homeimg/3.jpg">
<img alt="房间一" src="homeimg/4.jpg">
<img alt="房间一" src="homeimg/5.jpg">
<img alt="房间一" src="homeimg/6.jpg">
<img alt="房间一" src="homeimg/7.jpg">
<img alt="房间一" src="homeimg/8.jpg">
<img alt="房间一" src="homeimg/9.jpg">
<img alt="房间一" src="homeimg/10.jpg">
	</div>
	
	<hr class="layui-bg-blue">
			<blockquote class="layui-elem-quote">
相关活动
	</blockquote>
</div>
<br><br><br>
  <div class="footer" style="text-align: center;">
        <div class="copyright">
        Copyright ©2017 私人影院管理系统  All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;by&nbsp;&nbsp;7组
        </div>  
    </div>

<script src="./admin/lib/layui/layui.js"></script>
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.liMarquee.js"></script>
<script>
$(function(){
	$('.dowebok').liMarquee();
	direction: 'right'
});

	$(function(){
		$('.homeshow').liMarquee();
		direction: 'right'
	});
layui.use('form', function(){
	  var form = layui.form;

	});
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '1500px' //设置容器宽度
    ,height: '400px'
    ,arrow: 'hover' //始终显示箭头
    ,anim: 'fade' //切换动画方式
  });
});
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