<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"
    	 info="2019-4-8 2번째 수정 by Lee"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%Timestamp now = new Timestamp(System.currentTimeMillis()); 
	  SimpleDateFormat format= new SimpleDateFormat("yyyy-MM-dd");
	  String strDate=format.format(now);
	%>
	
	<%=getServletInfo() %>
</body>
</html>