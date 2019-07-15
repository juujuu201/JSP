<!-- 1 -->

<%@page import="mirim.hs.kr.TestBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--<%
	TestBean test = new TestBean();
	test.setId("Hong");
	out.println(test.getId());
%>--%>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request"/>		<!-- 패키지까지 모두 써주어야 함 -->
<%--<%
	test.setId("kim");
%>
<jsp:getProperty name="test" property="id"/>--%>

<jsp:setProperty name="test" property="id" value="Hong"/>	<!-- name에 useBean에 있는 id값 그대로 써주면 됨 -->
<jsp:getProperty name="test" property="id"/>

<!-- 
useBean으로 만들고 setId, getId,setProperty,getProperty 섞어쓰는 것은 상관없으나
new와 setProperty, getProperty를 섞어쓰는 것은 불가능
 -->
 
 <jsp:forward page="study_02.jsp"/>
</body>
</html>