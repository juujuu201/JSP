<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
forward_03.jsp
<%
	String id=request.getParameter("id");
	String hobby=request.getParameter("hobby");
%>
<br>
<b><%=id %></b>님의 취미는<b><%=hobby %></b>
</body>
</html>