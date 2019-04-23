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
	request.setCharacterEncoding("UTF-8");
	int number=Integer.parseInt(request.getParameter("number"));
	
	
	if(number<=10){
%>
입력받은 숫자는 <%=number %>입니다
<%} %>
</body>
</html>