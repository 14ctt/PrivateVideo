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
  <s:action name="ordersAction_findAllOrders" executeResult="false" />
    <meta charset="UTF-8">
    <title>订单列表-私人影院管理系统</title>
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
        <a>订单管理</a>
        <a>
          <cite>订单列表</cite></a>
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
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <span class="x-right" style="line-height:40px">共有数据：${request.Orders.size()} 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>订单编号</th>
             <th>电影名</th>
            <th>房间号</th>
            <th>场次编号</th>
             <th>用户姓名</th>
               <th>下单时间</th>
               <th>支付</th>
            <th>预定日期</th>
            <th>操作</th></tr>
        </thead>
        <tbody>
        <c:forEach items="${Orders}" var="orders"><!-- 循环数据开始 -->
          <tr>
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="${orders.orderno}"><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${orders.orderno}</td>
            <td>${orders.movies.mvname}</td>
            <td>${orders.rooms.roomname}</td>
            <td>${orders.screenings.scid}</td>
             <td>${orders.users.username}</td>
             <td>${orders.reconfirmtime}</td>
             <td>${orders.cost}元</td>
            <td>${orders.scheduledtime}</td>
            

            <td class="td-manage">
                    <a class="layui-btn layui-btn-mini" lay-event="edit" onclick="x_admin_show('查看','usersAction_usersSelectId?id=${use.userid}',800,600)" href="javascript:;">查看</a>
        <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del" onclick="member_del(this,${orders.orderno})" href="javascript:;">删除</a>
              
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
    	  alert(id);
          layer.confirm('确认要删除吗？',function(index){
				$.ajax({
					type : 'GET',
					url : 'ordersAction_delectOrder.action',
					data : {
						'order.orderno' : id
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