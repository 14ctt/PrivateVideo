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
<title>注册-私人影院</title>
<link rel="stylesheet" href="./admin/lib/layui/css/layui.css"  media="all">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/headupload.js"></script>
<script type="text/javascript">
   $(document).ready(function () {
 	$("input[id='d5']").blur(function () {
		var useremail=$("input[id='d5']").val();
		
		if(useremail != null&&useremail != ''){
			$.ajax({
				type:'POST',
				url: 'usersAction_email',
				data:{'useremail':useremail,

				},				
				
				dataType:'text',
				success:function(data){		
					
					if(data=='2'){		
						
						$(".aa").text('× 邮箱已被注册').css('color','red');
						
					}else{
					
						$(".aa").text('√ 邮箱可以用').css('color','green');						
						$("#ini2").click(function () {
							alert("注册成功！");
							
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
background-color: #B3B3B3;

}
.dd2{

width: 700px;
height: 400px;
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
position: absolute;
top:100px;
}
.layui-input-block{
margin-top: 20px;

}
#ini1{
width:120px;
position: absolute;
top:140px;
left: 110px;
border-radius: 10px;
}

#myFile,.qwq{display: none;}
#d1{
position: absolute;
left: -80px;
top:0px;
}

#d2{
position: absolute;
left: -80px;
top:10px;
}
#d3{
position: absolute;
left: -80px;
top:20px;
}
#d4{
position: absolute;
left: 180px;
top:-168px;
}
#d5{
position: absolute;
left: 180px;
top:-158px;
}
#d7{
position: absolute;
left: 180px;
top:-148px;
}
#ini2{
width:510px;
position: absolute;
top:230px;
left: 30px;
border-radius: 10px;
}
.d3{
width:30px;
height:30px;

position: absolute;
top:50px;
left: 40px;
}
img{
width: 100px;
height: 100px;
}
.d8{

position: absolute;
top:100px;
left: 650px;
}
#headimg{

position: absolute;
top:100px;
left: 450px;
}
span{

position: absolute;
top:330px;
left: 700px;
}
</style>
</head>
<body>
<div class="d8">
 <form action="lunboAction.action" enctype="multipart/form-data" method="post">
    <input type="file" id="myFile" name="myFile">
   <input type="hidden"  name="savePath" value="upload">
    <input id="upload" type="button" value="上传头像" class="layui-btn layui-btn-normal">
   </form>
  
</div>
 <div id="headimg"></div>
<s:form action="usersAction_addUsers2" id="foo">
      <div class="dd2">
       <div class="dd1"></div>
   <div class="layui-form-item">

       <div class="layui-input-block">    
       <input type="text" id="d1"  name="userr.username" lay-verify="title" autocomplete="off" placeholder="请输入姓名" class="layui-input"/>
       </div>
      
       <div class="layui-input-block">      
      <input type="text" id="d2" name="userspasswd" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input"/>
       </div>
       
       <div class="layui-input-block">      
      <input type="text" id="d3" name="userr.sex" lay-verify="title" autocomplete="off" placeholder="请输入性别" class="layui-input"/>
       </div>
       
       <div class="layui-input-block">      
      <input type="text" id="d4" name="userr.age" lay-verify="title" autocomplete="off" placeholder="请输入年龄" class="layui-input"/>
       </div>
       
       <div class="layui-input-block">      
      <input type="text" id="d5" name="userr.useremail" lay-verify="title" autocomplete="off" placeholder="请QQ邮箱" class="layui-input"/>
       </div>
       
       <div class="qwq">      
      <input type="text"  name="userr.userimg" id="imgsrc" lay-verify="title" autocomplete="off" placeholder="图片地址" class="layui-input"/>
       </div>
       
       <div class="layui-input-block">      
      <input type="text" id="d7" name="userr.userphone" lay-verify="title" autocomplete="off" placeholder="请输入电话" class="layui-input"/>
       </div>
     
     <input type="button" class="layui-btn layui-btn-danger" id="ini2" value="注册">
       </div>      
   </div>
   <span class="aa"></span>
  </s:form>  

</body>
</html>