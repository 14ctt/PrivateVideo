<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
   $(document).ready(function () {
/* 	$("input[name='user']").blur(function () {
		var name=$(this).val();
		
		if(name != null||name != ''){
			$.ajax({
				type:'POST',
				url: 'usersAction_ajxlog',
				data:{'name':name},				
				dataType:'text',
				success:function(data){		
					
					if(data=='-1'){		
						
						$(".qq").text('× 没有此用户').css('color','red');
					}else if(data=='1'){
					
						$(".qq").text('√ 用户名可以使用').css('color','green'); 
					}
				}
			})
			
		}
	}) */
	$("input").blur(function () {
		var pass=$("input[name='pwd']").val();
		var name=$("input[name='user']").val();
		if(pass != null||pass != ''){
			$.ajax({
				type:'POST',
				url: 'usersAction_ajxlog',
				data:{'pass':pass,
						'name':name
				},				
				
				dataType:'text',
				success:function(data){		
					
					if(data=='-2'){		
						
						$(".aa").text('× 密码与账号不匹配').css('color','red');
						$("img").remove();
					}else{
					
						$(".aa").text('√ 密码正确').css('color','green');
						$(".dd1").html("<img src = 'upload/"+data+"'/>");
						$("#ini1").click(function () {
							
							$("#foo").submit();
							})
					}
				}
			})
			
		}
	})
	/* $("#ini1").click(function () {
	$("#foo").submit();
	}) */
});
</script>
  <link rel="stylesheet" href="./admin/lib/layui/css/layui.css" media="all">
<style type="text/css">
body{
position: relative;
}
.dd2{

width: 500px;
height: 130px;
position:relative;
position: absolute;
top:200px;
left: 300px;
}
.dd1{
/* border:1px solid red; */
width:70px;
height: 70px;
border-radius: 50px;
position: absolute;
left: 160px;
top:-80px;

}
img{
width: 100%;
height: 100%;
border-radius: 50px;
}
.p1{
position: absolute;
left: 70px;

}
.p2{
position: absolute;
top:40px;
left: 70px;

}
#ini1{
 position: absolute;
top:90px;
left: 160px;
}
</style>
</head>
<body>

     <s:form action="usersAction_denglu" id="foo">
      <div class="dd2">
       <div class="dd1"></div>
      <p class="p1">用户名(邮箱)：<input type="text" name="user"/><span class="qq"></span></p>
      <p class="p2">密&nbsp;&nbsp;&nbsp;码：<input type="text" name="pwd"/><span class="aa"></p>
     <input type="button" class="layui-btn layui-btn-normal layui-btn-radius" id="ini1" value="登录"></button>
       </div>
  </s:form>
              
</body>
</html>