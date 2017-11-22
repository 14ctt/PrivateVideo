<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
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
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.content {
	width: 1200px;
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

.listab td {
	border: solid 1px;
	
}
</style>
<script type="text/javascript">
	$(function() {
		findRoomType();
		function findRoomType(){
			$.ajax({
				type : 'POST',
				url : 'roomAction_findRoomType.action',
				dataType : 'json',
				success : function(data) {
					$.each(data,function(i,object){
						var content  = '<option>'+object.roomtype+'</option>';
						$(".roomtype").append(content);
					});
					findRooms();
				}
			});
		}
		function findRooms(){
			var roomtype=$(".roomtype").val();
			var myArray=new Array;
			for(var i=0;i<$(".listab tr").length-1;i++){
				myArray[i]=$(".listab tr:eq("+(i+1)+")").children().first().html();
			}
			var jsonString = JSON.stringify(myArray);
			$.ajax({
				type : 'POST',
				url : 'ordersAction_findRoomsBySCIDandRoomName.action',
				data : {
					'order.rooms.roomtype' : roomtype,
					'scarr':jsonString
				},
				dataType : 'json',
				success : function(data) {
					$.each(data,function(i,object){
						var ys=$(".listab tr:eq("+(i+1)+")").children('td').eq(4);
						ys.html("");
						ys.text(object);
						if(object==0){
							var an=$(".listab tr:eq("+(i+1)+")").children('td').eq(6).children();
							an.attr("disabled", true); 
						}
					});
					findPrice();
				}
			});
		}
		function findPrice(){
			var roomtype=$(".roomtype").val();
			$.ajax({
				type : 'POST',
				url : 'roomAction_findPriceByType.action',
				data : {
					'room.roomtype' : roomtype
				},
				dataType : 'text',
				success : function(data) {
					var price=$("tr td:nth-child(6)");
					price.html("");
					price.text(data);
				}
			});
		}
		$('.scdate').change(function (){
			var date = $(this).val();
			if (date != null && date != '') {
				$.ajax({
					type : 'POST',
					url : 'screeningAction_findScreeningsByscdate.action',
					data : {
						'date' : date,
						'ajax' : 'ajax'
					},
					dataType : 'json',
					success : function(data) {
						var $tab=$(".listab");
						$(".listab tr:not(:first)").remove();
						$.each(data,function(i,object){
		    	            var content  = '<tr>';	
		    	            content += '<td style="display: none">'+object.scid+'</td>';
		    	            content += '<td>'+object.starttime+'</td>';
		    	            content += '<td>'+object.overtime+'</td>';
		    	            content += '<td><select class="roomtype">';
		    	            content += '</select></td>';
		    	            content += '<td></td>';
		    	            content += '<td></td>';
		    	            content += '<td><input type="submit" value="购买" class="sub"/></td>';
		    	            content +='</tr>';
		    	            $tab.append(content);
						});
						findRoomType();
						$(".sub").click(function (){
							var $tr=$(this).parent().parent();
							var scid=$tr.children().first().text();
							var price=$tr.children('td').eq(5).text();
							var scdate=$(".scdate").val();
							var mvid=$("#mvid").text();
							var userid=$("#userid").text();
							var cost=parseFloat(price);
							var roomtype=$tr.children('td').eq(3).children().val();
						    $.ajax({
								type : 'POST',
								url : 'ordersAction_addOrder.action',
								data : {
									'order.cost' : cost,
									'order.screenings.scid' : scid,
									'order.users.userid' : userid,
									'order.movies.mvid' : mvid,
									'order.rooms.roomtype':roomtype,
									'order.scheduledtime':scdate
								},
								dataType : 'text',
								success : function(data){
									if(data!=null){
										 window.location.href="http://localhost:8080/PrivateVideo/testOrders/add.jsp";
									}
								}
							})
						})
					}
				});
			}
		});
		$(".roomtype").live("change", function (){
			var $tr=$(this).parent().parent();
			var roomtype=$(this).val();
			var scid=$tr.children().first().text();
			$.ajax({
				type : 'POST',
				url : 'ordersAction_findRoomsBySCIDandRoomName.action',
				data : {
					'order.rooms.roomtype' : roomtype,
					'order.screenings.scid': scid
				},
				dataType : 'text',
				success : function(data) {
					var ys=$tr.children('td').eq(4);
					ys.html("");
					ys.text(data);
					var an=$tr.children('td').eq(6).children();
					if(data>0){
						an.attr("disabled", false); 
					}else{
						an.attr("disabled", true); 
					}
				}
			});
			$.ajax({
				type : 'POST',
				url : 'roomAction_findPriceByType.action',
				data : {
					'room.roomtype' : roomtype
				},
				dataType : 'text',
				success : function(data) {
					var price=$tr.children('td').eq(5);
					price.html("");
					price.text(data);
				}
			});
		});
		$(".sub").click(function (){
			var $tr=$(this).parent().parent();
			var scid=$tr.children().first().text();
			var price=$tr.children('td').eq(5).text();
			var scdate=$(".scdate").val();
			var mvid=$("#mvid").text();
			var userid=$("#userid").text();
			var cost=parseFloat(price);
			var roomtype=$tr.children('td').eq(3).children().val();
		    $.ajax({
				type : 'POST',
				url : 'ordersAction_addOrder.action',
				data : {
					'order.cost' : cost,
					'order.screenings.scid' : scid,
					'order.users.userid' : userid,
					'order.movies.mvid' : mvid,
					'order.rooms.roomtype':roomtype,
					'order.scheduledtime':scdate
				},
				dataType : 'text',
				success : function(data){
					if(data!=null){
						 window.location.href="http://localhost:8080/PrivateVideo/testOrders/add.jsp";
					}
				}
			})
		})
		$("form").submit(function() {return false;}); // 禁用 form 提交，页面不会跳转  
	});
</script>
</head>
<body>
	<s:action name="screeningAction_findScreeningsByscdate"
		executeResult="false"/>
	<s:action name="screeningAction_findDatelimit4"
		executeResult="false" />
	<div>
		<ul>
			<li id="mvid"><%=request.getParameter("mvid") %></li>
			<li id="userid">3</li>
		</ul>
	</div>
	<select class="scdate">
		<option selected="selected"><% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd").format(new Date())); %></option>
		<c:forEach items="${date}" var="date">
			<option>${date}</option>
		</c:forEach>
	</select>
	<div class="content">
		<s:form>
			<table class="listab">
				<tr>
					<th>开始时间</th>
					<th>结束时间</th>
					<th>房间类型</th>
					<th>剩余房间</th>
					<th>价钱</th>
				</tr>
				<c:forEach items="${Screenings}" var="object" varStatus="state">
					<tr>
						<td style="display: none">${object.scid}</td>
						<td>${object.starttime}</td>
						<td>${object.overtime}</td>
						<td>
						<select class="roomtype">
						</select>
						</td>
						<td></td>
						<td></td>
						<td><input type="submit"  value="购买" class="sub"/></td>
					</tr>
				</c:forEach>
			</table>
		</s:form>
	</div>
</body>
</html>