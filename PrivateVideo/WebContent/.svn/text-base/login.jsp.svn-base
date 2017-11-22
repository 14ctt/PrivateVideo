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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录-私人影院</title>
<script src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css"  media="all">
<script type="text/javascript">
   $(document).ready(function () {
	$("input[name='pwd']").blur(function () {
		var pass=$("input[name='pwd']").val();
		var name=$("input[name='user']").val();
		if(pass != null||pass != ''||name != null||name != ''){
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

});
</script>

<style type="text/css">
body{
position: relative;
background-image: url("img/login.jpg");
background-size: 100%;
margin: auto;
}
.dd2{

width: 320px;
height: 170px;
position:relative;
position: absolute;
top:200px;
left: 400px;

}
.dd1{

width:70px;
height: 70px;
border-radius: 50px;
position: absolute;
left: 190px;
top:-60px;

}
img{
width: 100%;
height: 100%;
border-radius: 50px;

}
.layui-input{
width: 250px;
/* 文本框背景透明 */
background: none;
border-radius: 10px;
}
.layui-input-block{
margin-top: 20px;

}
#ini1{
width:120px;
position: absolute;
top:200px;
left: 110px;
border-radius: 10px;
}
#ini2{
width:120px;
position: absolute;
top:200px;
left: 240px;
border-radius: 10px;
}
</style>
</head>
<body>
<%session.setAttribute("username", null);session.setAttribute("userid", null); %>
<s:form action="usersAction_denglu" id="foo">
      <div class="dd2">
       <div class="dd1"></div>
   <div class="layui-form-item">
 
       <div class="layui-input-block">
      邮箱：
      <input type="text" name="user" lay-verify="title" autocomplete="off" placeholder="请输入邮箱" class="layui-input"/><span class="qq"></span>
      </div>
      
      <div class="layui-input-block">
       密码：
      <input type="password" name="pwd" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input"/><span class="aa"></span>
     </div>
     <input type="button" class="layui-btn layui-btn-danger" id="ini1" value="登录">
     <a href="./registered.jsp">
     <input type="button" class="layui-btn layui-btn-danger" id="ini2" value="注册">
     </a>
       </div>      
   </div>
  </s:form>  

</body>
</html>