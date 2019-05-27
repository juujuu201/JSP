<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	getProtocol() : <%=request.getProtocol() %><br>				<!-- HTTP/1.1 -->
	getServerName() : <%=request.getServerName() %><br>			<!-- localhost -->
	getMethod() : <%=request.getMethod() %><br>					<!-- GET -->
	getRequestURI() : <%=request.getRequestURI() %><br>			<!-- /Chapter07/requestBasic.jsp -->
	getRequestURL() : <%=request.getRequestURL() %><br>			<!-- http://localhost:8088/Chapter07/requestBasic.jsp -->
	getRemoteHost() : <%=request.getRemoteHost() %><br>			<!-- 0:0:0:0:0:0:0:1 -->
	getRemoteAddr() : <%=request.getRemoteAddr() %><br>			<!-- 0:0:0:0:0:0:0:1 -->
																<!-- 0:0:0:0:0:0:0:1은 IPv6 방식의 127.0.0.1(0:0:0:0:0:0:0:1과 127.0.0.1은 같다) -->
	getServerPort() : <%=request.getServerPort() %><br>			<!-- 8088 -->
	getContextPath() : <%=request.getContextPath() %><br>		<!-- /Chapter07 -->
	
</body>
</html>