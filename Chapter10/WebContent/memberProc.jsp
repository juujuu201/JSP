<!-- 3-proc -->

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
	//String name=request.getParameter("name");
%>
<!-- 
String id=request.getParameter("id");
String name=request.getParameter("name");
	
=>마트에서 id 하나를 사서 계산하고 name 하나를 사서 계산하고 ... 반복하는 것과 같다
시간 오래 걸리고 효율성 떨어짐
bean(Model)을 이용해서 한꺼번에 옮기는 것이 좋음(카트를 이용해 한 번에 계산하는 것과 같은 원리)
 -->

<%--<jsp:useBean id="test" class="mirim.hs.kr.TestBean">
	<jsp:setProperty name="test" property="id"/><!-- value에 값 써주면 form에서 입력받은 값 대신 value에 저장되어 있는 값으로 바뀜-->
	<jsp:setProperty name="test" property="name"/><!-- value에 값 써주면 form에서 입력받은 값 대신 value에 저장되어 있는 값으로 바뀜-->
</jsp:useBean>
--%>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean">
	<jsp:setProperty name="test" property="*"/><!-- form에서 입력받을 값이 많을 때 setProperty를 많이 써주기보다는 property속성에 *(아스테리크)를 써주면 들어있는 모든 값을 가져옴 -->
</jsp:useBean>

<%=test.getId() %><br>
<%=test.getName() %>
</body>
</html>