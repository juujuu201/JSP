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
<center>
<img src="img/img05.jpg" width="400" height="250"><br>
<%

	request.setCharacterEncoding("utf-8");	

	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/little.txt");
		//out.println(filePath);
		reader = new BufferedReader(new FileReader(filePath));
		//bufferedreader : 효율성 위해서
		
		while(true){
			String str=reader.readLine();
			if(str==null) break;	//buffer에 넣으면 line별로 읽을 수 있음
			out.println(str + "<br>");
		}
		
	}catch(Exception e){
		
	}finally{
		reader.close();	//close 안해도 에러 안남. 내가 개발해서 내가 혼자 써서. 여러 명이 쓰면 에러남
	}
	//파일처리, db연동, internet 자료(실시간) 작업할 때는 try-catch 처리 반드시 해야 함
	//이유 : 납품을 하면 실행되는 것도 있고 실행 안되는 것도 있음=>파일과 관련된 프로그램을 작성하면 파일을 똑같은 저장소에 저장해서 불러와야 되는데
	//파일 경로가 달라서, 실시간 db인 경우는 인터넷 등이 작동하지 않아서 등의 상황을 예측할 수 없어서
%>
</center>
</body>
</html>