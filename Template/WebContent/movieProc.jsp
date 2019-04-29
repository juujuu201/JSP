<%@page import="java.io.File"%>
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
	String dirPath=application.getRealPath("/WEB-INF/movie");
	//out.println(dirpath);
	
	File dir = new File(dirPath);
	String fileNames[]=dir.list();
%>
<h4>영화 목록</h4>
<%
	for(String filename : fileNames){%>
		<a href="movieReader.jsp?NAME=<%=filename%>"><%=filename%></a><br>
	<%}
%>
</body>
</html>