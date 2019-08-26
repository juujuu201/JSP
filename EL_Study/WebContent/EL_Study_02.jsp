<!-- 2 -->

<%@page import="mirim.hs.kr.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mem" class="mirim.hs.kr.Member"/>

<jsp:setProperty name="mem" property="id" value="Hong"/>
<jsp:setProperty name="mem" property="name" value="홍길동"/>
<jsp:setProperty name="mem" property="pw" value="1234"/>

<%
	//Member mem = new Member();
	
	//mem.setId("Hong");
	//mem.setName("홍길동");
	//mem.setPw("1234");
%>

<%-- ID : <%=mem.getId() %><br>--%>
<%-- 이름 : <%=mem.getName() %><br>--%>
<%-- 비밀번호 : <%=mem.getPw() %><br>--%>

ID : <jsp:getProperty name="mem" property="id"/><br>
이름 : <jsp:getProperty name="mem" property="name"/><br>
비밀번호 : <jsp:getProperty name="mem" property="pw"/><br>

<hr>

ID : ${mem.id}<br>
이름 : ${mem.name}<br>
비밀번호 : ${mem.pw}<br>

<pre>
	- pageScope : PAGE 영역을 참조하는 객체 
	- requestScope : REQUEST 영역을 참조하는 객체
	- sessionScope : SESSION 영역을 참조하는 객체
	- applicationScope : APPLICATION 영역을 참조하는 객체
	- param : 요청 파라미터를 참조하는 객체
	- paramValues : 요청 파라미터(배열)을 참조하는 객체
	- initParam : 초기화 파라미터를 참조하는 객체
	- cookie : cookie 객체를 참조하는 객체
</pre>

</body>
</html>