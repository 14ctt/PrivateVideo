<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  
  <head>
  <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <title>更新用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="<%=basePath%>/admin/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="<%=basePath%>/admin/css/font.css">
    <link rel="stylesheet" href="<%=basePath%>/admin/css/xadmin.css">
    <script type="text/javascript" src="<%=basePath%>/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="<%=basePath%>/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=basePath%>/admin/js/xadmin.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/ajaxfileupload.js"></script>
<!--<script type="text/javascript" src="<%=basePath%>/admin/js/adminupload.js"></script>-->
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
#myFile{display: none;}
img{
width: 100px;
height: 100px;
}
</style>
  </head>
  
  <body>
    <div class="x-body">
       
         <div class="layui-form-item">
          <label for="L_userimg" class="layui-form-label">
                  <span class="x-red">*</span>头像上传
              </label>
 <form action="" enctype="multipart/form-data" method="post">
    <input type="file" id="myFile"  name="myFile">
   <input type="hidden"  name="savePath" value="upload">
    <!-- <input id="upload" type="button" value="上传"> -->
    <button type="button" id="upload" class="layui-btn" id="test1">
  <i class="layui-icon">&#xe67c;</i>上传图片
</button>
   </form>
   
    
</div>
 <form class="layui-form">
           <div class="layui-form-item">
              <label for="L_touxiang" class="layui-form-label">
                  <span class="x-red">*</span>头像显示
              </label>
              <div class="layui-input-inline">
                  <div id="headimg" class="layui-upload-img"><img src="<%=basePath%>/upload/${uselt.userimg}"/></div>
               
              </div>
          </div>
           <!--
 <label for="L_email" class="layui-form-label">
 <span class="x-red">*</span>头像显示
   </label>

  -->
            <!--<div class="layui-form-item">
              <label for="L_touxiang" class="layui-form-label">
                  <span class="x-red">*</span>头像地址
              </label>
              <div class="layui-input-inline">
                  <input type="hidden" name="userr.userimg" id="imgsrc" required="" lay-verify="userimg"
                  autocomplete="off" class="layui-input">    
              </div>
          </div>
            -->
              <input type="hidden" name="userr.userimg" id="imgsrc" value="${request.uselt.userimg}" required="" lay-verify="userimg"
                  autocomplete="off" class="layui-input">
  <input type="hidden" id="L_usersid" name="userr.userid" class="layui-input" value="${request.uselt.userid}">
          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>邮箱
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_email" name="userr.useremail" required="" lay-verify="email"
                  autocomplete="off" class="layui-input" value="${request.uselt.useremail}">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>将会成为您唯一的登入名
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_username" class="layui-form-label">
                  <span class="x-red">*</span>姓名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_username" name="userr.username" value="${request.uselt.username}" required="" lay-verify="userename" autocomplete="off" class="layui-input">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_sex" class="layui-form-label">
                  <span class="x-red">*</span>性别
              </label>
               <div class="layui-input-inline">
                 <!--<s:radio name="userr.sex" list="#{'男':'男','女':'女'}" listKey="key" listValue="value" />-->
                  <input type="radio" name="userr.sex" value="男" title="男" checked="">
                <input type="radio" name="userr.sex" value="女" title="女">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_age" class="layui-form-label">
                  <span class="x-red">*</span>年龄
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_username" name="userr.age" required="" lay-verify="age"
                  autocomplete="off" class="layui-input" value="${request.uselt.age}">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_userphone" class="layui-form-label">
                  <span class="x-red">*</span>电话
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_username" name="userr.userphone" required="" lay-verify="userphone"
                  autocomplete="off" class="layui-input" value="${request.uselt.userphone}">
              </div>
          </div>

          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  更新
              </button>
          </div>
      </form>
    </div>
    <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则
          form.verify({
        	  userimg: function(value){
                  if(value.length < 2){
                      return '没上传头像吧？';
                    }
                  }
        	  ,userename: function(value){
              if(value.length < 2){
                return '昵称至少得2个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
            ,age: function(value){
                if(value.length < 1){
                    return '年龄不能为空哦';
                }
            }
            ,userphone: function(value){
                if(value.length < 1){
                    return '手机号不能为空哦';
                }
            }
          });

          //监听提交
          form.on('submit(add)', function(data){
        	  var  userimg = $('input[name="userr.userimg"]').val();
        	  var  userid = $('input[name="userr.userid"]').val();
        	  var  useremail = $('input[name="userr.useremail"]').val();
        	  //var  userpasswd = $('input[name="userr.userpasswd"]').val();
        	  var  username = $('input[name="userr.username"]').val();
        	  var  usersex = $('input[name="userr.sex"]:checked').val();
        	  //var  usersex = $('input[name="userr.sex"]').val();
        	  var  userage = $('input[name="userr.age"]').val();
        	  var  userphone = $('input[name="userr.userphone"]').val();
        	 // alert(usersex);
				$.ajax({
							type : 'POST',
							url : '<%=basePath%>/usersAction_updateUsers',
							data : {
								'userr.userimg' : userimg
								,'userr.useremail' : useremail
								,'userr.userid' : userid
								,'userr.username' : username
								,'userr.sex' : usersex
								,'userr.age' : userage
								,'userr.userphone' : userphone
							},
							dataType : 'text',
							success : function(data2) {
						    
					            layer.alert("更新成功,请返回刷新查看", {icon: 6},function () {
					                // 获得frame索引
					                var index = parent.layer.getFrameIndex(window.name);
					                //关闭当前frame
					                parent.layer.close(index);
					            });
								}
							
						});
          

            return false;
          });
          
      
        });
        
 
        $("#upload").click(function(){
       	 $("#myFile").trigger("click");
       	 $("#myFile").change(function(){
       		   $.ajaxFileUpload({
       	            url: 'uploadAction', 
       	            type: 'post',
       	            secureuri: false, //一般设置为false
       	            fileElementId: 'myFile', // 上传文件的id、name属性名
       	            dataType: 'text', //返回值类型，一般设置为json、application/json
       	            success : function(data) {  
       	         if(data!=0){
       	        	 $("#headimg").empty();
       	            $("#headimg").html("<img src = './/upload/"+data+"'/>");
       	         $("#imgsrc").val("");
       	            $("#imgsrc").val(data);
       	           }else{
       	            alert('上传的头像不符合格式要求，请使用标准软件编辑的图片');
       	           } 
       	         }
       	        }); 
       	 });

         });

    </script>

  </body>

</html>