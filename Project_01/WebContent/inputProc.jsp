<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mirim.hs.kr.*"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="mirim.hs.kr.LogonDataBean"></jsp:useBean>
<jsp:setProperty name="member" property="*"/>
<%
	member.setReg_date(new Timestamp(System.currentTimeMillis()));

	LogonDBBean manager=LogonDBBean.getInstance();
	manager.insertMember(member);
	
	response.sendRedirect("loginForm.jsp");
%>