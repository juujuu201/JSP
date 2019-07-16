<!-- 4-proc -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" scope="request"/><!-- scope 값 둘 다 주어야 함 -->

<jsp:setProperty name="member" property="name" value="홍길자"/><!-- 홍길동 -> 홍길자로 바꿔줌 -->

<jsp:getProperty name="member" property="id"/><br>
<jsp:getProperty name="member" property="name"/><br>
</body>
</html>