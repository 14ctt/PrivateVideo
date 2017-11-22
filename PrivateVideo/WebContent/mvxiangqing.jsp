<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>${mov.mvname}-电影详情</title>
  <link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
  <script type="text/javascript" src="./admin/js/xadmin.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
		<script src="./js/jquery-1.11.0.min.js"></script>
		<script src="./js/bootstrap.min.js"></script>
		<script src="./js/velocity.min.js"></script>
		<script src="./js/background-blur.min.js"></script>
		
			<script type="text/javascript">
			// Scripts for demo page
			$(document).ready(function() {
				var $previewEl = $('#preview');
				var $avatarEl = $('.avatar');
				var $avatarHolderEl = $('.avatar-holder');
				var $tintedEl = $('.tinted-thumbnails img');
				var $tintedHolderEl = $('#tinted-holder');
				var images = [];
				var avatars = [];
				// Simple slideshow
				$('.dvv3').each(function() {
					var $el = $(this);
					var img = $el.find('img').first().attr('src');
					images.push(img);
				});

				$previewEl.backgroundBlur({
					imageURL: images[0], // URL to the image that will be used for blurring
					blurAmount: 10, // Amount of blur (higher amount degrades browser performance)
					imageClass: 'bg-blur', // CSS class that will be applied to the image and to the SVG element,
					overlayClass: 'bg-blur-overlay', // CSS class of an element that will overlay the blur background (useful for additional effects or putting a spinner)
					duration: 1000, // If the image needs to be faded in, how long that should take
					endOpacity: 1 // Specify the final opacity that the image will have
				});

				// Avatar - based backgrounds
				$avatarEl.each(function() {
					var $avatar = $(this);
					var avatarImage = $avatar.find('img').first().attr('src');
					avatars.push(avatarImage);
					$avatar.click(function(e) {
						e.preventDefault();

						$avatarHolderEl.backgroundBlur(avatarImage);
					});
				});

				$avatarHolderEl.backgroundBlur({
					imageURL: avatars[0], // URL to the image that will be used for blurring
					blurAmount: 50, // Amount of blur (higher amount degrades browser performance)
					imageClass: 'avatar-blur' // CSS class that will be applied to the image and to the SVG element,
				});

				// Avatar - based backgrounds
				$tintedEl.each(function() {
					var $el = $(this);
					var avatarImage = $el.attr('src');
					$el.click(function(e) {
						e.preventDefault();
						$tintedHolderEl.backgroundBlur(avatarImage);
					});
				});

				$tintedHolderEl.backgroundBlur({
					imageURL: images[0], // URL to the image that will be used for blurring
					blurAmount: 10, // Amount of blur (higher amount degrades browser performance)
					imageClass: 'tinted-bg-blur', // CSS class that will be applied to the image and to the SVG element,
					overlayClass: 'tinted-bg-overlay', // CSS class of an element that will overlay the blur background (useful for additional effects or putting a spinner)
					duration: 1000, // If the image needs to be faded in, how long that should take
					endOpacity: 1 // Specify the final opacity that the image will have
				});

			});
		</script>
		<style>
	
			#preview-container {
				overflow: hidden;
				position: relative;
				width: 100%;
				height: 387px;
				
			}
			
			#preview {
				height: 300px;
			}
			/* Plugin will add this class to blurred image, providing you with control over certain aspects */
			
			.bg-blur {
				z-index: -2;
				opacity: 0;
				position: absolute;
				min-height: 100%;
				height: auto;
				display: block;
				top: 0;
				max-height: none;
				/* Add this CSS to remove transparent border around the image */
				left: -10%;
				width: 120%;
			}
			
			.bg-blur-overlay {
				z-index: -1;
				position: absolute;
				width: 100%;
				height: 100%;
				background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIgc3RvcC1vcGFjaXR5PSIwLjE1Ii8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
				background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 1) 100%);
				/* FF3.6+ */
				background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0.15)), color-stop(100%, rgba(0, 0, 0, 1)));
				/* Chrome,Safari4+ */
				background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 1) 100%);
				/* Chrome10+,Safari5.1+ */
				background: -o-linear-gradient(top, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 1) 100%);
				/* Opera 11.10+ */
				background: -ms-linear-gradient(top, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 1) 100%);
				/* IE10+ */
				background: linear-gradient(to bottom, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 1) 100%);
				/* W3C */
				filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#26000000', endColorstr='#000000', GradientType=0);
				/* IE6-8 */
			}
			
			.dvv1 {
				width: 100%;
				height: 387px;
				position: relative;
				
				background-repeat: no-repeat;
				background-size: 100% 100%;
			}
		}
		.dvv2 {
			border: 1px solid black;
			width: 100%;
			height: 337px;
			margin-top: 15px;
			overflow: scroll;
		}
		.dvv3 {
			width: 225px;
			height: 284px;
			margin-left: 17%;
			position: absolute;
			top: 70px;
		}
		.h3 {
			margin: auto;
			margin-left: 17%;
			position: absolute;
			top: 15px;
			color: white;
			
		}
		img {
			width: 100%;
			height: 100%;
		}
		.u1 {
			margin-left: 32%;
			position: absolute;
			top: 19%;
			color: white;
			font-size: 16px;
		}
		li {
			height: 50px;
			list-style: none;
		}
		.sp1 {
			position: absolute;
			top: 30%;
			left: 65%;
			color: white;
			font-size: 16px;
		}
		.hr1 {
			margin-left: 17%;
			position: absolute;
			top: 30px;
		}
		</style>

	</head>

	<body>
	<ul class="layui-nav layui-bg-green">
  <li class="layui-nav-item"><a href="index.jsp">私人专属影院</a></li>
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
	
		<div id="preview-container">
			<div id="preview">
				<div class="col-md-12">
					<div class="content">
					</div>
				</div>
			</div>
			<div class="dvv2">
				<h3 class="h3">${mov.mvname}</h3>
				<hr style="color: red;width: 1000px;" class="hr1" />
				<div class="dvv3">
					<img src="upload/${mov.mvimg}" class="img1" />
				</div>

				<ul class="u1">
					<li>导演：${mov.mvdirector}</li>
					<li>主演：${mov.mvactor}</li>
					<li>类型：${mov.types.typename}</li>
					<li>语言：${mov.mvlanguage}</li>
					<li>片长：${mov.mvtime}分钟</li>
					<li style="">剧情介绍：${mov.mvintroduction}</li>
				</ul>
				<span class="sp1">上映时间：${mov.releasetime}</span>
			</div>
		</div>	
<div style="width:1000px;margin: auto;">
		<iframe width=1000px height=400px frameborder=0 scrolling=auto src="showhome.jsp"></iframe>
		</div>
		<!--  --><div style="width:1000px;margin: auto;">
		<iframe width=1000px height=330px frameborder=0 scrolling=auto src="buy.jsp?mvid=${mov.mvid}"></iframe>
		</div>
	</body>

</html>