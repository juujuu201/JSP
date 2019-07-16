<!-- 5-proc -->

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
	//String address=request.getParameter("address");
	//String email=request.getParameter("email");
%>

<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo"/>
<jsp:setProperty name="member" property="*"/>
<jsp:setProperty name="member" property="password" value="<%= member.getId() %>"/>

<table border=1>
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="member" property="id"/></td>
		<td>비밀번호</td>
		<td><jsp:getProperty name="member" property="password"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="member" property="name"/></td>
		<td>이메일</td>
		<td><jsp:getProperty name="member" property="email"/></td>
	</tr>
	<tr>
		<td>주소</td>
		<td colspan=3><jsp:getProperty name="member" property="address"/></td>
	</tr>
</table>

<%--
ID : <%=id %><br>
NAME : <%=name %><br>
ADDRESS : <%=address %><br>
EMAIL : <%=email %>
 --%>
</body>
</html>