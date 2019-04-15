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
	String id=request.getParameter("id");
%>
[로그인 성공]<br>

<b>
<font color="blue"><%=id %></font>의 방문을 환영합니다!
</b>
</body>
</html>