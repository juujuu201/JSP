<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:forward page="templateTest.jsp" >							
	<jsp:param name="CONTENTPAGE" value="content.jsp" />				
 </jsp:forward>


<!-- 
main.jsp 실행시키면  무조건 template.jsp로 이동
template.jsp로 이동해도 url은 바뀌지 않음
CONTENTPAGE라는 키에 content.jsp라는 string 타입 value를 넣어 전달해줌
CONTENTPAGE에 실제 찍고자 하는 화면 파일 전달
-->