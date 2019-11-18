<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mirim.hs.kr.*" %>
<%@ include file="/view/color.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	
	LogonDBBean manager=LogonDBBean.getInstance();
	int check=manager.confirmId(id);//check=-1, 1
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 확인</title>
<link rel="stylesheet" href="style.css" type="text/css">
<script>
	function setId(){
		opener.document.userinput.id.value="<%=id%>";
		self.close();
	}
</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<%
	if(check==1){//아이디가 중복 ==> 사용 불가%>
		<table width="270" border="0" cellspacing="0" cellpadding="5">
			<tr bgcolor="<%=title_c%>">
				<td height="30"><%=id %>는 사용중인 아이디입니다.</td>
			</tr>
		</table>
		
		<form method="post" action="confirmId.jsp">
			<table width="270" border="0"cellspacing="0" cellpadding="5">
				<tr>
					<td align="center" bgcolor="<%=value_c%>">
						다른 아이디를 선택하세요<br>
						<input type="text" name="id" size="10">
						<input type="submit" value="ID중복확인">
					</td>
				</tr>
			</table>
		</form>
	<%}
	else{//해당 아이디 사용 가능%>
		<table width="270" border="0" cellspacing="0" cellpadding="5">
			<tr bgcolor="<%=title_c %>">
				<td align="center">
					<%=id %>는 사용하실 수 있는 아이디입니다.<br>
					<input type="button" value="닫기" onclick="setId()">
				</td>
			</tr>
		</table>
	<%}
%>
</body>
</html>