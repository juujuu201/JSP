<!-- 3.proc -->

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
	
	//String id=request.getParameter("id");
	//String pw=request.getParameter("pw");
%>

ID : ${param.id }<br>
PW : ${param.pw }<br>
<hr>
ID : ${param["id"]}<br>
PW : ${param["pw"]}<br>

<hr>

application 영역 : <%=application.getAttribute("application_Key") %><br>
session 영역 : <%=session.getAttribute("session_Key") %><br>

<p>

application 영역 : ${applicationScope.application_Key}<br>
session 영역 : ${sessionScope.session_Key}<br>
request 영역 : ${requestScope.request_Key}<br><!--forward나 include 시키지 않으면 값 안 나옴-->
page 영역 : ${pageScope.page_Key}<br><!-- page여서 el폼만 사용 가능 -->

<hr>
web.xml에 등록한 값<p>
${initParam.id}<br>
${initParam.pw}<br>
${initParam.name}<br>
</body>
</html>