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

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	 Date date = new Date();
	 Long time = date.getTime();
	 //out.println(time);
	 String filename=time+".txt";
	 
	 PrintWriter writer = null;	//여기서 writer 대신 out으로 하면 에러남. 이미 out 객체가 있어서
	 //out은 사용자의 웹  브라우저에, writer는 txt 파일에 출력하게 함
	 try{
		 String filePath = application.getRealPath("/WEB-INF/bbs"+filename);
		 writer = new PrintWriter(filePath);
		 writer.println("제목 : " + title + "<br>");
		 writer.println("작성자 : " + name + "<br>");
		 writer.println("내용 : "+content+"<br>");
		 
		 out.println("<font color='red'>게시물</font>이 저장되었습니다");
		 writer.flush();	//★꼭 해줘야 함
	 }
	 catch(Exception e){
		 out.println("오류 발생");
	 }
	 finally{
		 writer.close();
	 }
%>
</body>
</html>