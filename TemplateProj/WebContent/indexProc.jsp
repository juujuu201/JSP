<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울자전거 따릉이 -무인대여시스템</title>
<style>
	html, body{
		margin:0;
		padding:0;
	}
	table{
		width:100%;
	}
	td{
		padding:0;
		margin:0;
	}
</style>
</head>
<body style="overflow-x:hidden;overflow-y:auto;">

<% 
String contentpage=request.getParameter("CONTENTPAGE");
%>

<table bordder="1" cellpadding="0" cellspacing="0">
<tr>
	<td><jsp:include page="top.jsp"/> </td>
</tr>
<tr>
	<td><jsp:include page="menu.jsp" flush="false"/> </td>
</tr>
<tr>
	<td> <jsp:include page="<%= contentpage %>" flush="false"/> </td>
</tr>
<tr>
	<td><jsp:include page="bottom.jsp" flush="false"/> </td>
</tr>
</table>
</body>
</html>