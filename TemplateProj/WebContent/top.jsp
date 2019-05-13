<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>top</title>
<style>
	#top{
		margin-left:15%;
		margin-right:15%;
	}
	#space{
		width:20%;
	}
	*{
		font-size:small;
	}
	td{
		padding-top:0.4%;
		padding-bottom:0.4%;
	}
</style>
</head>
<body>

<table id="top">
<tr>
	<td>
		<a href="https://www.bikeseoul.com:447/main.do?lang=en">ENGLISH&nbsp;&nbsp;</a>
		<a href="https://www.bikeseoul.com:447/main.do?lang=zh">中國語&nbsp;&nbsp;</a>
		<a href="https://www.bikeseoul.com:447/main.do?lang=ja">日本語</a>
	</td>
	<td id="space"></td>
	<td>
	<%
	if(session.getAttribute("id")==null){
%>
<a href="login.jsp"><b>로그인</b></a>&nbsp;&nbsp;
<%
	}
	else{
		session.removeAttribute("id");
		response.sendRedirect("login.jsp");
%>
		<a href="index.jsp"><b>로그아웃</b></a>&nbsp;&nbsp;
		
<%} %>
		<a href="signup.jsp"><b>회원가입</b></a>&nbsp;&nbsp;
		<a href="notice.jsp">알림&nbsp;&nbsp;</a>
		<a href="https://www.bikeseoul.com/info/infoReg.do">이용안내</a>
	</td>
</tr>
</table>
<hr style="border: solid 0.5px lightgray;">
</body>
</html>