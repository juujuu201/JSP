<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
오늘은 월요일<br>
<%
	out.println("내일은 화요일");
%>

<%="모레는 수요일" %><br>
<hr>
<h3>현재 페이지는 1.jsp입니다</h3>

<%-- <%
	response.sendRedirect("2.jsp");
%> --%>

<jsp:forward page="2.jsp">

sendRedirect() 이후입니다<br>
</body>
</html>