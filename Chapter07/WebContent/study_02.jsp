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
	out.println("출력");

	JspWriter choi=pageContext.getOut();
	choi.println("출력2");
	
	String name=request.getParameter("name");
	out.println(name);
	
	ServletRequest request2=pageContext.getRequest();
	String name2=request.getParameter("name");
	out.println(name2);
	
	ServletResponse response2=pageContext.getResponse();
	
	out.println("<hr>"+application.getServerInfo()+"<br>");
	out.println(application.getMimeType("Chapter07/test.html")+"<br>");
	out.println(application.getRealPath("1.jsp"));
	application.log("2019.06.03 09:00 update by choi");//콘솔 창에
%>
</body>
</html>