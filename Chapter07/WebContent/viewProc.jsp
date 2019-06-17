<%@page import="java.util.Map"%>
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

<% request.setCharacterEncoding("utf-8"); %>
<b>request.getParameter() 메서드 사용</b><br>

name=<%=request.getParameter("name") %><br>
address=<%=request.getParameter("address") %><br><p>

<b>request.getParameterValues() 메서드 사용</b><br>
<%
	String values[]=request.getParameterValues("pet");

	if(values!=null){
		for(int i=0; i<values.length; i++){
			out.println(values[i]+"<br>");
		}
	}
%>

<p>
<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration en=request.getParameterNames();

while(en.hasMoreElements()){
	String key=(String)en.nextElement();
	out.println(key+"<br>");
}
%>

<b>request.getParameterMap() 메서드 사용</b><p>
<%
	Map map=request.getParameterMap();
	String nameParam[]=(String[])map.get("name");
	String petParam[]=(String[])map.get("pet");
	out.println("이름 : "+nameParam[0]+"<br>");
	
	if(petParam!=null){
		for(int i=0; i<petParam.length; i++){
			out.println(petParam[i]+"<br>");
		}
	}
	
%>

<p>
<hr>
<b>헤더 목록 출력</b>
<p>
<%
	Enumeration headerEn=request.getHeaderNames();
	while(headerEn.hasMoreElements()){
		String headerKey=(String)headerEn.nextElement();
		String headerValue=request.getHeader(headerKey);
		out.println(headerKey+" : "+headerValue+"<br>");
	}
%>
</body>
</html>