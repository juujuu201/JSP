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
	String pageName=request.getParameter("pageName");
	out.println(pageName+"<br>");
	String name=request.getParameter("name");
%>
현재 페이지는 <%=pageName %>입니다<br>
<b><%=name %></b>님의 방문을 환영합니다<br>
</body>
</html>