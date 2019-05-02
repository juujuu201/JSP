<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
String name=request.getParameter("name");
String title=request.getParameter("title");
String content=request.getParameter("content");

Date date=new Date();
Long time=date.getTime();

String filename=time+".txt";
PrintWriter writer=null;
String result;

try{
	String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);
	writer = new PrintWriter(filePath);
	writer.printf("제목  : %s %n",title);
	writer.printf("글쓴이 : %s %n",name);
	writer.printf("%s",content);
	
	//out.println("<font color='red'>게시물이 저장되었습니다</font>");
	writer.flush();
	result="okay";
	
}catch(Exception e){
	out.print("오류 발생");
	result="fail";
}finally{
	
}
response.sendRedirect("boardResult.jsp?result="+result);
%>
</body>
</html>