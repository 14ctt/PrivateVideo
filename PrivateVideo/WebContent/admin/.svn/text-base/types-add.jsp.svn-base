<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html>
<html>
  
  <head>
  <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <title>电影类别添加</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./admin/css/font.css">
    <link rel="stylesheet" href="./admin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="./admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./admin/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body">
        <form class="layui-form" action="" method="post">

          <div class="layui-form-item">
              <label for="L_username" class="layui-form-label">
                  <span class="x-red">*</span>类别名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_username" name="types.typename" required="" lay-verify="nikename"
                  autocomplete="off" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  增加
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
            nikename: function(value){
              if(value.length < 2){
                return '类别名字至少得2个字符啊';
              }
            }
          });

          //监听提交
          form.on('submit(add)', function(data){
           
            //发异步，把数据提交给action
  var  typename = $('input[name="types.typename"]').val();
              //  alert(typename);
				$.ajax({
							type : 'POST',
							url : 'addTypeAction_addtype',
							data : {
								'types.typename' : typename
							},
							dataType : 'text',
							success : function(data2) {
								//alert(data2)
					            layer.alert("增加成功", {icon: 6},function () {
					                
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
    </script>

  </body>

</html>