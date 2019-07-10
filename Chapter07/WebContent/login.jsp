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

	if(id.equals("choi")){
		response.sendRedirect("index.jsp?name=hong");
	}
	else{
		response.sendRedirect("join.jsp");
	}
%>

<%--ID=<%=id %> --%>
<!-- http://localhost:8088/Chapter07/login.jsp?id=hong -->
<!-- http://localhost:8088/Chapter07/login.jsp?id=홍길동 --> <!-- 에러남 -->
<!-- http://localhost:8088/Chapter07/index.jsp -->
</body>
</html>