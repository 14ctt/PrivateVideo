<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="paging" uri="/WEB-INF/paging.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.content {
	text-align:center;
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	font-family: "微软雅黑";
	font-size: 14px;
}

.listab {
	margin-left: auto;
	margin-right: auto;
	border: solid 1px;
}
.listab td{
	border: solid 1px;
}
</style>

</head>
<body>
	<s:action name="ordersAction_findAllOrders" executeResult="false" />
	<div class="content">
      	选择日期
        <input type="text" id="scdate" name="screening.scdate">
		<table class="listab">
			<tr>
				<th>訂單编号</th>
				<th>電影名</th>
				<th>房間號</th>
				<th>場次編號</th>
				<th>用戶名</th>
				<th>確認時間</th>
				<th>價錢</th>
				<th>預定日期</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${Orders}" var="orders">
				<tr>
					<td>${orders.orderno}</td>
					<td>${orders.movies.mvname}</td>
					<td>${orders.rooms.roomname}</td>
					<td>${orders.screenings.scid}</td>
					<td>${orders.users.username}</td>
					<td>${orders.reconfirmtime}</td>
					<td>${orders.cost}</td>
					<td>${orders.scheduledtime}</td>
					<td><a href="ordersAction_delectOrder.action?order.orderno=${orders.orderno}">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>