<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mirim.hs.kr.LogonDBBean"%>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");//id=choi
	String passwd=request.getParameter("passwd");//passwd=1234
	
	LogonDBBean logon=LogonDBBean.getInstance();
	int check=logon.userCheck(id, passwd);
	
	if(check==1){//회원
		session.setAttribute("id", id);//<"id","choi">
		response.sendRedirect("sessionMain.jsp");
	}
	else if(check==0){//비밀번호 확인%>
		<script>
			alert("비밀번호를 확인해주세요");
			history.go(-1);
		</script>
	<%}
	else if(check==-1){//비회원
		response.sendRedirect("insertMemberForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>