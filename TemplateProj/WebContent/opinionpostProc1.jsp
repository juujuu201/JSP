<%@page import="java.text.DateFormat"%>
<%@page import="java.io.FileWriter"%>
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
	
	String cate=request.getParameter("cate");
	String title=request.getParameter("title");
	String id=request.getParameter("idd");
	String content=request.getParameter("content");
	String check=request.getParameter("check");
	
	//if(check.equals("true")) check="비공개글";
	//else check="공개글";
	
	Date date=new Date();
	Long time=date.getTime();
	
	DateFormat now = DateFormat.getDateInstance(DateFormat.MEDIUM);
	
	
	String filename=time+".txt";
	PrintWriter writer=null;
	String result;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/opinion/"+filename);
		writer = new PrintWriter(new FileWriter(filePath),true);
		writer.println(title);
		writer.println(now.format(date));
		writer.println(id);
		writer.println(cate);
		writer.println(content);
		//writer.println(check);
		
		//writer.flush();
		result="okay";
		
		writer.close();
	}catch(Exception e){
		out.print("오류 발생");
		result="fail";
	}finally{
		
	}
	response.sendRedirect("boardResult.jsp?result="+result);
%>
</body>
</html>