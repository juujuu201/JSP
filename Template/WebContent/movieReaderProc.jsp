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
	
	out.println(filename);
%>

<h4>파일 이름 : <%=filename %></h4>
<%
	BufferedReader reader = null;
	try{
		String FilePath = application.getRealPath("/WEB-INF/movie/"+filename);
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	//try-catch는 ★db, 파일 처리, 인터넷 자료★ 가져올 때 반드시  해야함
%>
</body>
</html>