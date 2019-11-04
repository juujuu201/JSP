<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<%
		try{
			if(session.getAttribute("memId")==null){//비회원		%>
	<script type="text/javascript">
		function focusIt(){
			document.inform.id.focus();
		}//function focusIt
		
		function checkIt(){
			inputForm=eval("document.inform");
			if(!inputForm.id.value){
				alert("아이디를 입력하세요");
				inputForm.id.focus();
				return false;
			}//if id
			if(!inputForm.passwd.value){
				alert("비밀번호를 입력하세요");
				inputForm.passwd.focus();
				return false;
			}//if passwd
		}//function checkIt
	</script>
</head>
<body bgcolor="<%=bodyback_c%>" onLoad="focusIt()">
	<table width="500" cellpadding="0" cellspacing="0" align="center" border="1">
		<form name="inform" method="post" action="loginProc.jsp" onSubmit="return checkIt()">
			<tr>
				<td width="300" bgcolor="<%=bodyback_c%>" height="20"></td>
				<td bgcolor="<%=title_c%>" width="100" align="center">아이디</td>
				<td width="100" bgcolor="<%=value_c%>">
					<input type="text" name="id" size="15">
				</td>
			</tr>
			<tr>
				<td rowspan="2" bgcolor="<%=bodyback_c%>" width="300">메인입니다</td>
				<td bgcolor="<%=title_c%>" width="100" align="center">패스워드</td>
				<td width="100" bgcolor="<%=value_c%>">
					<input type="password" name="passwd" size="15">
				</td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="<%=title_c%>" align="center">
					<input type="submit" name="submit" value="로그인">
					<input type="button" value="회원가입" onclick="javascript:window.location='inputForm.jsp'">
				</td>
			</tr>
		</form>
	</table>
<%			}//if
			else{//회원	%>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td width="300" bgcolor="<%=bodyback_c%>" height="20">
				환영합니다
			</td>
			<td rowspan="3" bgcolor="<%=value_c%>" align="center">
				<%=session.getAttribute("memId") %>님이 방문하셨습니다
				<form method="post" action="logout.jsp">
					<input type="submit" value="로그아웃">
					<input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'">
				</form>
			</td>
		</tr>
		<tr>
			<td rowspan="2" bgcolor="<%=bodyback_c%>" width="300">
				메인입니다
			</td>
		</tr>
	</table>
<%			}//else
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

</body>
</html>