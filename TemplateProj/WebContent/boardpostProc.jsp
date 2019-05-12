<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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

	String filename = request.getParameter("NAME");
	
%>
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>공지사항</font>
<div style="width:70%;margin-left:15%;margin-bottom:5%;">
<hr style="border:solid 1px #72ebc8;">
<%
	BufferedReader reader = null;
	try{
		String FilePath = application.getRealPath("/WEB-INF/board/"+filename);
		reader = new BufferedReader(new FileReader(FilePath));
		
		int cnt=0;
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			if(cnt==0)out.println("<b>"+str+"</b><p>");
			else if(cnt==2) out.println(str+"<br><hr style='border:solid 1px #72ebc8'");
			else out.println(str+"<br>");
			cnt++;
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
%>
<div style="border:solid 1px black;padding:1% 3%;width:10%;margin-left:45%;margin-top:10%;" align="center">
	<a href="board.jsp"><b>목록</b></a>
</div>
</body>
</html>