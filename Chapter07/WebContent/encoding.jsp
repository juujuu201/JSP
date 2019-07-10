<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- http://localhost:8088/Chapter07/login.jsp?id=홍길동 --> <!-- 에러나는 것에 대한 해결방법 -->
<%
	String name="홍길동";
	
	//response.sendRedirect("index.jsp?name="+name);//깨짐
	
	String encodingValue=URLEncoder.encode(name,"utf-8");
	response.sendRedirect("index.jsp?name="+encodingValue);
%>
</body>
</html>