<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID:<%=config.getInitParameter("id") %><!-- hong -->
PW:<%=config.getInitParameter("pw") %>
Name:<%=config.getInitParameter("name") %>

<hr>

<%=config.getServletName() %>
<p>
<%
	Enumeration en=config.getInitParameterNames();
	while(en.hasMoreElements()){
		String key=(String)en.nextElement();
		String value=config.getInitParameter(key);
		out.println(key+" "+value+"<br>");
	}//while
%>
</body>
</html>