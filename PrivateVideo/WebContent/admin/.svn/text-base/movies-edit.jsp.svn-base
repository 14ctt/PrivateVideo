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
  <s:action name="addTypeAction_findAllTypes" executeResult="false"></s:action>
    <meta charset="UTF-8">
    <title>更新电影相关信息</title>
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
                  <div id="headimg" class="layui-upload-img"><img src="<%=basePath%>/upload/${movie.mvimg}"/></div>
               
              </div>
          </div>

              <input type="hidden" name="movie.mvimg" id="imgsrc" value="${movie.mvimg}" required="" lay-verify="mvimg"
                  autocomplete="off" class="layui-input">
                  
  <input type="hidden" id="L_usersid" name="mv.mvid" class="layui-input" value="${movie.mvid}">
          <div class="layui-form-item">
              <label for="L_mv" class="layui-form-label">
                              <span class="x-red">*</span> 电影类型
              </label>
              <div class="layui-input-inline">
               <s:select id="isMvtypes" name="mv.types.typeid" list="%{#request.types}" 
		listKey="typeid" listValue="typename" value="%{#request.movie.types.typeid}"/>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_mvname" class="layui-form-label">
                  <span class="x-red">*</span>电影名字
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_mvname" name="mv.mvname" value="${request.movie.mvname}" lay-verify="mvname" autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_mvreleasetime" class="layui-form-label">
                  <span class="x-red">*</span>上映时间
              </label>
              <div class="layui-input-inline">
                    <input type="text" name="mv.releasetime" value="${request.movie.releasetime}" class="layui-input" id="L_mvreleasetime" placeholder="yyyy-MM-dd HH:mm:ss" lay-verify="mvreleasetime">
              </div>
          </div>          
           <div class="layui-form-item">
              <label for="L_age" class="layui-form-label">
                  <span class="x-red">*</span>影片时长(分钟)
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_mvtime" name="mv.mvtime" lay-verify="mvtime"
                  autocomplete="off" class="layui-input" value="${request.movie.mvtime}">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_mvlanguage" class="layui-form-label">
                  <span class="x-red">*</span>语言
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="mvlanguage" name="mv.mvlanguage" lay-verify="mvlanguage"
                  autocomplete="off" class="layui-input" value="${request.movie.mvlanguage}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_mvdirector" class="layui-form-label">
                  <span class="x-red">*</span>导演
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="mvdirector" name="mv.mvdirector" lay-verify="mvdirector"
                  autocomplete="off" class="layui-input" value="${request.movie.mvdirector}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_mvactor" class="layui-form-label">
                  <span class="x-red">*</span>演员
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="mvactor" name="mv.mvactor" lay-verify="mvactor"
                  autocomplete="off" class="layui-input" value="${request.movie.mvactor}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_mvintroduction" class="layui-form-label">
                  <span class="x-red">*</span>简介
              </label>
              <div class="layui-input-inline">
                  <textarea name="mv.mvintroduction" id="mvintroduction" rows="3" placeholder="请输入内容" class="layui-textarea"
                  lay-verify="mvintroduction">${request.movie.mvintroduction}</textarea>
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
    layui.use('laydate', function(){//时间选择器
    	  var laydate = layui.laydate;
    		  laydate.render({
    		    elem: '#L_mvreleasetime'
    		    ,type: 'datetime'
    		  });
    		 });
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则
          /*
          form.verify({
        	  mvimg: function(value){
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
          */

          //监听提交
          form.on('submit(add)', function(data){
        	  var  mvimg = $('input[name="movie.mvimg"]').val();
        	  var  mvid = $('input[name="mv.mvid"]').val();
        	  var  mvtypes = $('#isMvtypes').val();//获取选择的电影类型
        	  var  mvname = $('input[name="mv.mvname"]').val();//电影名字
        	  var  mvreleasetime = $('input[name="mv.releasetime"]').val();//上映时间
        	  var  mvtime = $('input[name="mv.mvtime"]').val();//时长
        	  var  mvlanguage = $('input[name="mv.mvlanguage"]').val();//语言
        	  var  mvdirector = $('input[name="mv.mvdirector"]').val();//导演
        	  var  mvactor = $('input[name="mv.mvactor"]').val();//演员
        	  var  mvintroduction = $('#mvintroduction').val();//简介
        	 // alert(usersex);
				$.ajax({
							type : 'POST',
							url : 'movieAction_updatemovie',
							data : {
								'mv.mvimg' : mvimg
								,'mv.mvid' : mvid
								,'mv.types.typeid' : mvtypes
								,'mv.mvname' : mvname
								,'mv.releasetime' : mvreleasetime
								,'mv.mvtime' : mvtime
								,'mv.mvlanguage' : mvlanguage
								,'mv.mvdirector' : mvdirector
								,'mv.mvactor' : mvactor
								,'mv.mvintroduction' : mvintroduction
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