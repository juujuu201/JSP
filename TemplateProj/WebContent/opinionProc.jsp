<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.text.DateFormat"%>
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
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>시민의견수렴</font>
<div style="width:70%;margin-left:15%;margin-bottom:5%;">
<div style="background-color:#f8f8f8;padding:2.5%;border-bottom:solid darkgray 2px;">
	<input type="text" size=60px style="border:solid 1px gray;margin-left:15%;padding:1.2%;margin-right:1%;" placeholder="검색어를 입력해주세요">
	<input type="button" style="background:url('img/icon_search.png') no-repeat center left;background-color:#72ebc8;width:80px;padding:1.2%;font-weight:bold;background-size:50%;border:0;outline:0;" value="&nbsp;&nbsp;&nbsp;&nbsp;검색">
</div>
	<table id="opiniontable" cellspacing=0 cellpadding=10 style="border-collapse:collapse;">
		<tr style="border-bottom:solid 2px #72ebc8;">
			<th>제목</th>
			<th>답변상태</th>
			<th>아이디</th>
		</tr>
		<%
		String dirPath=application.getRealPath("/WEB-INF/opinion");
		String realfilename;
		String writer;
		String file;
		
		File dir = new File(dirPath);
		String fileNames[]=dir.list();
		%>
		
		<%
			for(String filename : fileNames){ 
				String FilePath = application.getRealPath("/WEB-INF/opinion/"+filename);
				BufferedReader reader = new BufferedReader(new FileReader(FilePath));
				
				int cnt=0;
				while(true){
					String str = reader.readLine();
					if(cnt==0) {
						realfilename=str;
						file=filename.substring(0,realfilename.indexOf("."));
					}
					if(cnt==2) writer=str;
					cnt++;
				}		
			%>
			<tr style="border-bottom:solid 1px lightgray;">
			<td><a href="opinionpost.jsp?NAME<%=file %>"><%=realfilename %></a></td>
			<td align="center">답변대기</td>
			<td align="center"><%=writer %></td>
			</tr>
			<%
			} %>
		<tr>
			<td colspan=3 align="center">
				<img src="https://www.bikeseoul.com/images/first.gif" alt="처음 페이지 보기" onclick="">
				<img src="https://www.bikeseoul.com/images/p_prev.gif" alt="이전 페이지 보기" onclick="">
				<%
					//게시물 갯수/5만큼 for 문 돌려서 페이지 수 나타내기
				%>
				<img src="https://www.bikeseoul.com/images/p_next.gif" alt="다음 페이지 보기" onclick="">
				<img src="https://www.bikeseoul.com/images/last.gif" alt="마지막 페이지 보기" onclick="">
			</td>
		</tr>
		<tr>
			<td colspan=3 align="center">
				<form action="opinionpost.jsp"><input type="submit" style="width:50%;font-weight:bold;text-align:center;background-color:#72ebc8;border:0;outline:0;padding:10px;" value="글쓰기"></form>
			</td>
		</tr>
		<tr>
			<td colspan=3><p></td>
		</tr>
		<tr>
			<td colspan=3 style="background-color:#efefef;width:100%;">
				<font style="color:gray;">
					시민의견 수렴 게시판은 회원 
					<font style="color:red;">누구나 자유롭게 의견을 게시할 수 있는 열린 공간</font>입니다. 
					상업성 광고, 저속한 표현, 비방, 정치적 성향, 반복게시물 등은 관리자에 의해 통보없이 
					삭제될 수 있으며, 홈페이지를 통해 불법 유해 정보 게시, 배포 시 정보통신망 이용촉진 및 
					정보보호 등에 관한 법률 제 74조에 의거 1년 이하 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.
				</font>
			</td>
		</tr>
	</table>
</div>
<img src="https://www.bikeseoul.com/images/kr/bg/sub_bg3.png" align="left">
</body>
</html>