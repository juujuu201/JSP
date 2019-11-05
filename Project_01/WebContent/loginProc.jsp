<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mirim.hs.kr.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	
	LogonDBBean manager=LogonDBBean.getInstance();
	int check=manager.userCheck(id, passwd);//1:회원, 0:비밀번호 틀림, -1:비회원
	
	if(check==1){//회원
		session.setAttribute("memId",id);
		response.sendRedirect("main.jsp");
	}
	else if(check==0){//비밀번호 재확인%>
		<script>
			alert("비밀번호를 다시 한 번 확인해주세요");
			history.go(-1);
		</script>
	<%}
	else if(check==-1){//비회원%>
		<script>
			alert("아이디가 존재하지 않습니다");
			location.href="inputForm.jsp";
		</script>
	<%}
%>