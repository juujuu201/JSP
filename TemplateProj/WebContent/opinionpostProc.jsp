<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="opinionpostProc1.jsp" method="post">
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>시민의견수렴</font>
<div style="width:70%;margin-left:15%;margin-bottom:5%;">
	<table cellspacing=0 cellpadding=0>
	<colgroup>
		<col style="background-color:#ececec;">
	</colgroup>
		<tr>
			<td style="width:20%;border-top:solid 1px lightgray;padding-left:1%;"><b>구분</b></td>
			<td style="border-top:solid 1px lightgray;">
				<select name="cate" style="width:98%;padding:1%;margin-left:1%;">
					<option value="선택">선택</option>
					<option value="이용방법">이용방법</option>
					<option value="대여소">대여소</option>
					<option value="결제관련">결제관련</option>
					<option value="홈페이지,앱">홈페이지,앱</option>
					<option value="장애,오류">장애,오류</option>
					<option value="정책건의">정책건의</option>
					<option value="기타문의">기타문의</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="padding-left:1%;border-top:solid 1px lightgray;"><b>제목</b></td>
			<td style="border-top:solid 1px lightgray;"><input name="title" type="text" size=92px style="padding:1%;margin-left:1%;">
		</tr>
		<tr>
			<td style="padding-left:1%;border-top:solid 1px lightgray;"><b>아이디</b></td>
			<td style="border-top:solid 1px lightgray;"><input name="id" type="text" size=92px style="padding:1%;margin-left:1%;">
		</tr>
		<tr>
			<td style="padding-left:1%;border-top:solid 1px lightgray;"><b>내용</b></td>
			<td style="border-top:solid 1px lightgray;"><textarea name="content" style="margin-left:1%;" cols=95 rows=25></textarea>
		</tr>
		<tr>
			<td style="padding-left:1%;border-top:solid 1px lightgray;"><b>사진 첨부</b></td>
			<td style="border-top:solid 1px lightgray;"><input style="margin-left:1%;" type="file">
		</tr>
		<tr>
			<td style="border-top:solid 1px lightgray;border-bottom:solid 1px black;padding-left:1%;"><b>공개여부</b></td>
			<td style="border-top:solid 1px lightgray;border-bottom:solid 1px black;"><input name="check" type="checkbox" value="true">비공개
		</tr>
		<tr>
			<td colspan=2 style="background-color:white;" >
				<p>
				
					<input align="center" type="reset" style="margin-left:19%;width:30%;margin-right:3%;font-weight:bold;text-align:center;background-color:white;border:solid 1px black;outline:0;padding:10px;float:left;" value="취소">
					<input align="center" type="submit" style="width:30%;font-weight:bold;text-align:center;background-color:#72ebc8;border:0;outline:0;padding:10px;float:left;" value="글쓰기">
				
			</td>
		</tr>
	</table>
</div>
<img src="https://www.bikeseoul.com/images/kr/bg/sub_bg3.png" align="left">
</form>
</body>
</html>