<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원정보 입력</h2>
<form action="proc.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	성별 : 
		남<input type="radio" name="gen" value="M">
		여<input type="radio" name="gen" value="F" checked><br>
	메인 수신 여부 : 
	공지 메일:<input type="checkbox" name="inotice">
	광고 메일:<input type="checkbox" name="cnotice">
	배송 메일:<input type="checkbox" name="dnotice"><br>
	직업 : <select name="job">
		<option>회사원</option>
		<option>학생</option>
		<option>기타</option>
	</select><br>
	<input type="submit" value="확인">
	<input type="reset" value="취소">
</form>
</body>
</html>