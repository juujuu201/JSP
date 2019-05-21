<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ir=request.getParameter("name");
%>
<%="main.jsp가 넘겨준 값은 "+ir+"입니다" %>
</body>
</html>