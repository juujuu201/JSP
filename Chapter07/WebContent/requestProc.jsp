<%@page import="java.util.Enumeration"%>
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

	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String grade=request.getParameter("grade");
	String subject=request.getParameter("subject");
%>

학번 : <%=num %><br>
이름 : <%=name %><br>
학년 : <%=grade %><br>
과목 : <%=subject %>
<hr>
<%
	Enumeration en =request.getParameterNames();
	//num-name-grade-subject
	
	while(en.hasMoreElements()){//boolean type
		String key=(String)en.nextElement();
		String value=request.getParameter(key);
		out.println(key+" : "+value+"<br>");
	}
%>
<hr>
<%
	request.setAttribute("choi","1");
	request.setAttribute("lee","2");
	request.setAttribute("park","3");
	
	String lee = (String)request.getAttribute("lee");
	out.println(lee+"<p>");
	
	Enumeration enum1=request.getAttributeNames();
	while(enum1.hasMoreElements()){
		String key=(String)enum1.nextElement();
		String value=(String)request.getAttribute(key);
		out.println(key+" : "+value+"<br>");
	}
	out.println("<hr>");
	request.removeAttribute("choi");
	Enumeration enum2=request.getAttributeNames();
	while(enum2.hasMoreElements()){
		String key=(String)enum2.nextElement();
		String value=(String)request.getAttribute(key);
		out.println(key+" : "+value+"<br>");
	}
%>
</body>
</html>