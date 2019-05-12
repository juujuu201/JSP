<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
<style>
	html,body{
		padding:0;
		margin:0;
	}
	#menu{
		margin-top:-1%;
		width:70%;
		margin-left:15%;
		margin-right:15%;
	}
	.menutd{
		text-align:center;
	}
	a, a:hover, a:visited, a:active, a:link{
		font-size:1.2em;
		font-weight:bold;
		color:black;
		text-decoration:none;
	}
</style>
</head>
<body>
<table id="menu"> 
	<td class="menutd" style="width:15%;"><a href="index.jsp"><img src="img/logo.png" style="width:100%;"></a></td>
	<td class="menutd" style="width:8%;"></td>
	<td class="menutd"><a href="index.jsp#bike_info">사업소개</a></td>
	<td class="menutd"><a href="borrow.jsp">대여소 조회</a></td>
	<td class="menutd"><a href="voucher.jsp">이용권 구매</a></td>
	<td class="menutd"><a href="opinion.jsp">시민의견수렴</a></td>
	<td class="menutd"><a href="board.jsp">공지사항</a></td>
	<td class="menutd"><a href="safety.jsp">안전수칙</a></td>
</tr>
</table>
<hr style="border:solid 1.5px #72ebc8;">
</body>
</html>