<!-- 2 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request"/>
<!-- 이름이 test여서 study_01.jsp에 있는 자바빈 test와 공유해서 사용
이름이 다르다면 공유 사용 X
★★이때, scope 꼭 써주어야 함!!
에러 찾기 힘드니 주의할 것!! -->
<jsp:getProperty name="test" property="id"/>

</body>
</html>