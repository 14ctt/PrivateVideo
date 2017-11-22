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
  <s:action name="usersAction_usersSelect" executeResult="false" /><!-- 查询所有用户 -->
    <meta charset="UTF-8">
    <title>后台管理-私人影院管理系统</title>
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
<style type="text/css">img{width: 35px;height: 35px;}</style>
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a>首页</a>
        <a>会员管理</a>
        <a>
          <cite>会员列表</cite></a>
      </span>
    
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
        <!-- 
          <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end">
           -->
          <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加用户','./admin/users-add.jsp',800,600)"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：${request.user.size()} 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
             <th>头像</th>
            <th>用户性名</th>
            <th>性别</th>
             <th>年龄</th>
               <th>邮箱</th>
               <th>*密码</th>
            <th>手机</th>
            <th>操作</th></tr>
        </thead>
        <tbody>
        <c:forEach items="${request.user}" var="use"><!-- 循环数据开始 -->
          <tr>
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="${use.userid}"><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${use.userid}</td>
            <td><img src="upload/${use.userimg}" class="layui-anim-rotate"/></td>
            <td>${use.username}</td>
            <td>${use.sex}</td>
             <td>${use.age}</td>
              
             <td>${use.useremail}</td>
             <td>${use.userpasswd}</td>
            <td>${use.userphone}</td>
            

            <td class="td-manage">
                    <a class="layui-btn layui-btn-mini" lay-event="edit" onclick="x_admin_show('编辑','usersAction_usersSelectId?id=${use.userid}',800,600)" href="javascript:;">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del" onclick="member_del(this,${use.userid})" href="javascript:;">删除</a>
              
            </td>
          </tr>
</c:forEach>
        </tbody>
      </table>
      <div class="page">
        <div>
          <a class="prev" href="">&lt;&lt;</a>
          <a class="num" href="">1</a>
          <span class="current">2</span>
          <a class="num" href="">3</a>
          <a class="num" href="">489</a>
          <a class="next" href="">&gt;&gt;</a>
        </div>
      </div>

    </div>
    <script>
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

    

      /*用户-删除*/
      function member_del(obj,id){
    	 // alert(id);
          layer.confirm('确认要删除吗？',function(index){
				$.ajax({
					type : 'GET',
					url : 'usersAction_delUsers',
					data : {
						'userr.userid' : id
					},
					dataType : 'text',
					success : function(data2) {
						//alert("测试")
						  $(obj).parents("tr").remove();
			              layer.msg('已删除!',{icon:1,time:1000});
						}
					
				});
            
          });
      }


      function delAll (argument) {

    	  var dataArry = tableCheck.getData;
        //var  dataArry = data.split(",");
        layer.confirm('确认要删除吗？'+tableCheck.getData(),function(index){
			$.ajax({
				type : 'POST',
				url : 'usersAction_delmany',
				data : {'Uid':dataArry},
				dataType : 'text',
				success : function(data2) {
		            layer.msg('删除成功', {icon: 1});
		            $(".layui-form-checked").not('.header').parents('tr').remove();
					}
			});

        });
      }
    </script>

  </body>

</html>