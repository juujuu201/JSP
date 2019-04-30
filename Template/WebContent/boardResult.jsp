<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String str = request.getParameter("result");
	
		if(str.equals("okay")){
			out.println("<font color='red'>게시물</font>이 저장되었습니다");
		}
		else{
			out.println("파일에 데이터를 저장할 수 없습니다");
		}
	%>
	
	<meta http-equiv='refresh' content='1;url=list.jsp'>