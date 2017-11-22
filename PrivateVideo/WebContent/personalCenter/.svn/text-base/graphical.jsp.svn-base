<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图形页面</title>
</head>
<body>
<form action="usersAction_tu"></form>
<s:action name="usersAction_tu" executeResult="false"></s:action>
<s:action name="showChartAction" executeResult="false">
	 <s:param name="type"><s:text name="dcd"/></s:param>
     <s:param name="titlename"><s:text name="每月消费比例"/></s:param>
     <s:param name="cagetoryname"><s:text name="图例"/></s:param>
     <s:param name="valuename"><s:text name="数量"/></s:param>
</s:action>
<img src="upload/${imgname}">
</body>
</html>