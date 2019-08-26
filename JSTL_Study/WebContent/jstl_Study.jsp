<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name1="홍길동";
%>
이름 : <%=name1 %><br>
<%
	name1="";
%>
이름 : <%=name1 %><br>

<hr>

<c:set var="name2" value="홍길순"/><!-- 변수 선언 -->
이름 : <c:out value="${name2}"/><br><!-- 변수 출력 -->
<c:remove var="name2"/><!-- 값 제거 -->
이름 : <c:out value="${name2}"/><br><!- 변수 출력 -->

<hr>

<%
	try{
		out.println(2/0);
	}
	catch(Exception e){%>
		<%="익셉션 발생" %>
<%		out.println(e.getMessage());
	}
%>

<hr>

<c:catch var="message">
	익셉션 발생<%=2/0 %>
</c:catch>
<c:out value="${message}"/>

<hr>

<%
	if((1+2)==3){%>
		<%="1+2=3" %>
<%	}
%>
<p>
<c:if test="${1+2==3}"><!-- test에 조건 -->
	1+2=3
</c:if>
<p>
<%
	if((1+2)!=4){%>
		<%="1+2!=4" %>
<%	}
%>
<p>
<c:if test="${1+2!=4}"><!-- test에 조건 -->
	1+2!=4
</c:if>

<hr>

<%
	for(int i=1; i<=10; i++){%>
		<%=i %><br>	
<%	}%>

<p>

<c:forEach var="i" begin="1" end="10">
	${i}<br>
</c:forEach>

<p>

<c:forEach var="i" begin="1" end="10" step="2">
	${i}<br>
</c:forEach>
</body>
</html>