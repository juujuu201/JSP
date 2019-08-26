<!-- 3.form -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="EL_proc.jsp" method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	<input type="submit" value="로그인">
</form>

<%
	application.setAttribute("application_Key","application_Value");
	session.setAttribute("session_Key", "session_Value");
	request.setAttribute("request_Key", "request_Value");
	pageContext.setAttribute("page_Key","page_Value");
%>
<jsp:forward page="EL_proc.jsp"/>
</body>
</html>