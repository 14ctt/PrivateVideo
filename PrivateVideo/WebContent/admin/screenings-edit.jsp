<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html>
<html>
  <base href="<%=basePath%>"/>
  <s:action name="screeningAction_findScreeningByID" executeResult="false">
    	<s:param name="screening.scid" value="%{#parameters.scid}"></s:param>  
	</s:action>
  <head>
    <meta charset="UTF-8">
    <title>场次编辑</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="<%=basePath%>/admin/css/font.css">
    <link rel="stylesheet" href="<%=basePath%>/admin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=basePath%>/admin/js/xadmin.js"></script>
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
              <label for="L_roomsid" class="layui-form-label">
                  <span class="x-red">*</span>场次ID
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_scid" name="screening.scid" required="" lay-verify="scid"
                  autocomplete="off" class="layui-input layui-btn-disabled" disabled="disabled" value="${Screenings.scid}" />
              </div>
          </div>

          <div class="layui-form-item">
              <label for="L_roomsname" class="layui-form-label">
                  <span class="x-red">*</span>场次日期
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="test1" placeholder="yyyy-MM-dd" name="screening.scdate" required="" lay-verify="scdate"
                  autocomplete="off" class="layui-input" value="${Screenings.scdate}" />
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_roomsdesc" class="layui-form-label">
                  <span class="x-red">*</span>开始时间
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="test4" placeholder="hh:mm:ss" name="screening.starttime" required="" lay-verify="starttime"
                  autocomplete="off" class="layui-input" value="${Screenings.starttime}" />
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_roomstype" class="layui-form-label">
                  <span class="x-red">*</span>结束时间
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="test5" placeholder="hh:mm:ss" name="screening.overtime" required="" lay-verify="overtime"
                  autocomplete="off" class="layui-input" value="${Screenings.overtime}" />
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
      /*    form.verify({
        	  typesname: function(value){
              if(value.length < 2){
                return '类别名字至少得2个字符啊';
              }
            },typesid: function(value){
                if(value.length < 0){
                    return 'ID不能为空哦~~';
                  }
                }
          });
  */
          //监听提交
          form.on('submit(add)', function(data){
           
            //发异步，把数据提交给action
  var  scid = $('input[name="screening.scid"]').val();          
  var  scdate = $('input[name="screening.scdate"]').val();
  var  starttime = $('input[name="screening.starttime"]').val();
  var  overtime = $('input[name="screening.overtime"]').val();
              //  alert(typename);
				$.ajax({
							type : 'POST',
							url : 'screeningAction_updateScreening',
							data : {
								'screening.scid' : scid
								,'screening.scdate' : scdate
								,'screening.starttime' : starttime
								,'screening.overtime' : overtime
							},
							dataType : 'text',
							success : function(data2) {
								//alert("测试")
					            layer.alert("更新成功", {icon: 6},function () {
					                
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
        
    	layui.use('laydate', function(){
    		  var laydate = layui.laydate;
    		  //常规用法
    		  laydate.render({
    		    elem: '#test1'
    		  });
    		  //时间选择器
    		  laydate.render({
    		    elem: '#test4'
    		    ,type: 'time'
    		  });
    		  laydate.render({
    			    elem: '#test5'
    			    ,type: 'time'
    			  });
    	});
    </script>

  </body>

</html>
</html>