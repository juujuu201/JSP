<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="signupformProc1.jsp" method="post">
<font style="font-size:2em;font-weight:bold;margin-left:15%;">이용권 구매</font>
<div id="div1" align="center" style="margin-left:15%;width:70%;margin-bottom:5%;margin-top:5%;">
	<table style="width:100%;" cellspacing=0>
		<tr>
			<td align="center" style="width:33%;background-color:black;color:white;padding:2%;"><b style="font-size:1.2em;">약관동의</b></td>
			<td align="center" style="width:33%;border:solid 1px black;padding:2%;"><b style="font-size:1.2em;">본인인증</b></td>
			<td align="center" style="width:33%;border:solid 1px black;padding:2%;"><b style="font-size:1.2em;">정보입력</b></td>
		</tr>
		<tr>
			<td align="center" colspan=3><p><br><br><br>
				<font style="font-size:1.2em;color:black;">
					<b><a href="term.jsp"><u>서비스 이용약관(상세내용 보기)</u></a><br>
					<a href="term.jsp"><u>개인정보 수집ㆍ이용 동의 (상세내용 보기)</u></a><br>
					<a href="term.jsp"><u>수집한 개인정보의 제 3자 정보제공 동의 (상세내용 보기)</u></a><br>
					<a href="term.jsp"><u>위치기반 서비스 이용약관에 동의 (상세내용 보기)</u></a><br></b>
					에 동의하여 가입합니다.<p><br>
					<input type="checkbox"> 위 약관을 모두 읽었으며 이에 동의합니다<p><br><br>
					아이디 : <input name="id" type="text" size=13><p>
					비밀번호 : <input name="pw" type="password" size=25>
				</font>
			</td>
		</tr>
		<tr>
			<td><input type="submit" style="margin-left:120%;width:50%;font-weight:bold;text-align:center;background-color:#72ebc8;border:0;outline:0;padding:10px;" value="회원가입"></td>
		</tr>
	</table>
</div>
</form>


</body>
</html>