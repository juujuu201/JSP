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
	out.println("현재 페이지는 forward_02.jsp입니다<br>");//출력하기 위해 버퍼에 담겨있다가 forward 되면서 버퍼에서 지워짐
%>
<jsp:forward page="forward_03.jsp"/>
<%="forward 이후의 실행 문자열입니다" %><br><%--실행X --%>

</body>
</html>