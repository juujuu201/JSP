<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String pw=request.getParameter("pw");

	String filePath = application.getRealPath("/WEB-INF/member.txt");
	BufferedWriter writer = new BufferedWriter(new FileWriter(filePath,true));
	PrintWriter pwriter = new PrintWriter(writer,true);
	
	pwriter.write(id+"\n");
	pwriter.write(pw+"\n");
	pwriter.flush();
	pwriter.close();
%>		

<script>
	alert("환영합니다 :)");
</script>

<meta http-equiv='refresh' content='0;url=index.jsp'>

</body>
</html>