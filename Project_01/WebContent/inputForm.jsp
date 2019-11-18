<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="style.css" type="text/css">
	<script>
	function checkIt(){
		var input=eval("document.userinput");
		if(!input.id.value){
			alert("아이디를 입력해주세요");
			input.id.focus();
			return false;
		}//if
		if(!input.passwd.value){
			alert("비밀번호를 입력해주세요");
			input.passwd.focus();
			return false;
		}//if
		if(input.passwd.value!=input.passwd2.value){
			alert("비밀번호를 동일하게 입력해주세요");
			input.passwd.focus();
			return false;
		}//if
		if(!input.name.value){
			alert("이름을 입력해주세요");
			input.name.focus();
			return false;
		}//if
		if(!input.jumin1.value || !input.jumin2.value){
			alert("주민번호를 입력해주세요");
			input.jumin1.focus();
			return false;
		}//if
	}//function checkIt()
	
	function openConfirmId(input){
		if(!input.id.value){
			alert("아이디를 입력해주세요");
			input.id.focus();
			return false;
		}//if
		url="confirmId.jsp?id="+input.id.value;
		open(url,"confirm","toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
	}//function openConfirmId(input)
	</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<form method="post" name="userinput" action="inputProc.jsp" onSubmit="return checkIt()">
	<table width="600" border="1" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td colspan="2" height="39" align="center" bgcolor="<%=title_c%>">
				<font size="+1"><b>회원가입</b></font>
			</td>
		</tr>
		<tr>
			<td width="200" bgcolor="<%=value_c %>"><b> 아이디 입력 </b></td>
			<td width="400" bgcolor="<%=value_c %>"></td>
		</tr>
		<tr>
			<td width="200">사용자 ID</td>
			<td width="400">
				<input type="text" name="id" size="15">
				<input type="button" name="confirm_id" value="ID 중복확인" onclick="openConfirmId(this.form)">
			</td>
		</tr>
		<tr>
			<td width="200">비밀번호</td>
			<td width="400">
				<input type="password" name="passwd" size="15">
			</td>
		</tr>
		<tr>
			<td width="200">비밀번호 확인</td>
			<td width="400">
				<input type="password" name="passwd2" size="15">
			</td>
		</tr>
		<tr>
			<td width="200" bgcolor="<%=value_c %>"><b> 개인정보 입력 </b></td>
			<td width="400" bgcolor="<%=value_c %>"></td>
		</tr>
		<tr>
			<td width="200">사용자 이름</td>
			<td width="400">
				<input type="text" name="name" size="15">
			</td>
		</tr>
		<tr>
			<td width="200">주민등록번호</td>
			<td width="400">
				<input type="text" name="jumin1" size="6">-<input type="text" name="jumin2" size="7">
			</td>
		</tr>
		<tr>
			<td width="200">이메일</td>
			<td width="400">
				<input type="text" name="email" size="40">
			</td>
		</tr>
		<tr>
			<td width="200">개인 블로그</td>
			<td width="400">
				<input type="text" name="blog" size="40">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" bgcolor="<%=value_c %>">
				<input type="submit" name="confirm" value="등록">
				<input type="reset" name="reset" value="다시 입력">
				<input type="button" value="가입안함" onclick="javascript:window.location='main.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>