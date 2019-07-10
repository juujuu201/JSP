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

	String name="홍길동";
	String pageName="include_02.jsp";
%>
현재 페이지는 include_01.jsp 입니다<br>
<hr>
<%--<%@include file="include_02.jsp" %> --%>
<jsp:include page="include_02.jsp" flush="false">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="pageName" value="<%=pageName %>"/>
</jsp:include>
<hr>
include_01.jsp 하단
<%
	request.setAttribute("hong","gildong");
%>
</body>
</html>