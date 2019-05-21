<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--<jsp:include page="top.jsp"></jsp:include> --%>
<%@ include file="top.jsp" %>
<h1>include 연습</h1>
<i>
include file 지시어 : 여러 jsp 파일에서 공통으로 사용되는 부분을 별도의 파일로 만들어 필요할 때마다 불러다 씀
</i>
<b>액션 태그를 이용한 include</b><br>

==================================================================================<br>
<font color="blue" size=4>
	<jsp:include page="intag.jsp"/><br>
	<jsp:include page="intag1.jsp">
		<jsp:param name="name" value="Korea"/>
	</jsp:include>
</font>
==================================================================================<br>

<%@ include file="bottom.jsp" %>
<%--<jsp:include page="bottom.jsp"></jsp:include> --%>
</body>
</html>