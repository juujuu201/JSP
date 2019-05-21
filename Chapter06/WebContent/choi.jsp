<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 처리 페이지</title>
</head>
<body>
<%
	response.setStatus(200);
%>
이런~ 에러가 발생했군요...<br>
최대한 빠르게 조치하겠습니다<br>
<%--크롬에서는 괜찮은데 internet explorer에서는 513바이트 이하이면 원래의 에러 페이지 띄워줌 
방법 두가지
-513바이트를 넘게 해줌
-response.setStatus(200);--%>
<b>예외 타입</b> : <%=exception.getClass().getName() %><br>
<b>예외 메시지</b> : <%=exception.getMessage() %>
</body>
</html>