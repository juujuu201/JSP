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
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
%>

[로그인 성공]<br>
<b><font color="yellowgreen" size=6><%=id %></font></b>님의 방문을 환영합니다:)
</body>
</html>