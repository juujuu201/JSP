<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
isAutoFlush() : <%=out.isAutoFlush() %><br>	<!-- 기본값 : true -->
getBufferSize() : <%=out.getBufferSize() %><br>
getRemaining() : <%=out.getRemaining() %><br>

<%=out.clearBuffer() %>

<%=out.flush() %>
<hr>
<h2>out 내장객체 out.println()활용</h2>
<%
	String name="Mirim";
	out.println("출력되는 내용 <b>: "+name+"</b>입니다");
%>

출력되는 내용은 <%=name %>입니다</br>
출력되는 내용은 <b>Mirim</b>입니다
</body>
</html>