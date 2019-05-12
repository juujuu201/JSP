<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시민의견수렴</title>
</head>
<style>
table#opiniontable tr td{
padding:10px;}
#opinion{
	text-decoration:none;
	color:black;
	font-size:1em;
}
</style>
<body>
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>공지사항</font>
<div style="width:70%;margin-left:15%;margin-bottom:5%;">
<div style="background-color:#ececec;padding:2.5%;border-bottom:solid darkgray 2px;">
	<input type="text" size=60px style="border:solid 1px gray;margin-left:15%;padding:1.2%;margin-right:1%;" placeholder="검색어를 입력해주세요">
	<input type="button" style="background:url('img/icon_search.png') no-repeat center left;background-color:#72ebc8;width:80px;padding:1.2%;font-weight:bold;background-size:50%;border:0;outline:0;" value="&nbsp;&nbsp;&nbsp;&nbsp;검색">
</div>
	<table id="opiniontable" cellspacing=0 cellpadding=10 style="border-collapse:collapse;">
		<tr style="border-bottom:solid 2px #72ebc8;">
			<th>제목</th>
			<th>날짜</th>
		</tr>
		
		<%
		String dirPath=application.getRealPath("/WEB-INF/board");
		//out.println(dirpath);
	
		File dir = new File(dirPath);
		String fileNames[]=dir.list();
		%>

		
			<%
			for(String filename : fileNames){ 
				String file=filename.substring(0,filename.indexOf("."));
				
			%>
			<tr style="border-bottom:solid 1px lightgray;">
			<td><a href="boardpost.jsp?NAME=<%=filename %>"><%=file %></a><br></td>
			<td align="center">
				<%
				Date now=new Date();
				DateFormat time = DateFormat.getDateInstance(DateFormat.MEDIUM);
				%>
				<%=time.format(now) %>
			</td>
			</tr>
			<%
			} %>
	</table>
</div>
<img src="https://www.bikeseoul.com/images/kr/bg/sub_bg3.png" align="left">
</body>
</html>