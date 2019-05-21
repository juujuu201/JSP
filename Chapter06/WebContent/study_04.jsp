<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
*Http 주요 응답 상태 코드
- 200 : 요청이 정상적으로 처리됨★
- 307 : 임시로 페이지가 리다이렉트됨
- 400 : 클라이언트의 요청이 잘못된 구문으로 구성됨
- 404 : 지정된 url을 처리하기  위한 자원이 존재하지 않음(url 잘못 입력)★
- 405 : 요청된 메서드를 허용되지 않음
- 500 : 서버 내부 에러(jsp에서 exception이 발생하는 경우)★
- 503 : 서버가 일시적으로 서비스를 제공할 수 없음(급격하게 부하가 몰리거나 서버가 임시 보수 중인 경우)★
</pre>
</body>
</html>