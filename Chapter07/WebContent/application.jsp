<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
초기화 파라미터 목록 : <br>
<%
	Enumeration en1=application.getInitParameterNames();
	while(en1.hasMoreElements()){
		String initKey=(String)en1.nextElement();
		String initValue=application.getInitParameter(initKey);
		out.println(initKey+" : "+initValue+"<br>");
	}//while
%>

<br>

서버 정보 : <%=application.getServerInfo() %><br>
서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %><br><!-- 변환해줄 때의 컴파일러 버전 -->
서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %><br>

<hr>

<%
	String key=request.getParameter("key");
	String value=request.getParameter("value");
	
	if(key!=null&&value!=null){
		application.setAttribute(key,value);
	}
%>

<%
	//http://localhost:8088/Chapter07/application.jsp?key=id&value=hong
	
	if(key!=null&&value!=null){
		out.println(application.getAttribute("id"));
	}
	else{
		out.println("application 기본 객체의 속성 설정을 안함");
	}
%>

<br>

<%
	String name1=(String)application.getAttribute("id");
	out.println(name1);
%>

<br>
<hr>

<b>application 기본 객체의 속성 보기</b><br>
<%
	Enumeration en=application.getAttributeNames();
	while(en.hasMoreElements()){
		String key1=(String)en.nextElement();
		Object value1=application.getAttribute(key1);
		out.println(key1+" : "+value1+"<br>");
	}//while
%>

<br>
<hr>
<pre>

	*웹 어플리케이션은 네 개의 영역(Scope)을 가진다
	- PAGE 영역 : 하나의 jsp 페이지를 처리할 때 사용되는 영역(pageContext)
	- REQUEST 영역 : 하나의 HTTP 요청을 처리할 때 사용되는 영역(request)
	- SESSION 영역 : 하나의 웹 브라우저와 관련된 영역
	- APPLICATION 영역 : 하나의 웹 어플리케이션(dynamic web project) 관련된 영역(application)
	
	*기본 객체별로 속성의 활용
	- pageContext : PAGE 영역을 담당. 하나의 jsp 페이지 내에서 공유될 값을 저장
					주로 커스텀 태그에서 새로운 변수를 추가할 때 사용
	- request : REQUEST 영역을 담당. 한번의 요청을 처리하는 데 사용되는 모든 jsp페이지에서 공유될 값을 저장한다
				주로 하나의 요청을 처리하는 데 사용되는 jsp 페이지 사이에서 정보를 전달하기 위해서 사용된다
	- session : SESSION 영역을 담당. 한 사용자(웹브라우저)와 관련된 정보를 jsp 페이지들이 공유하기 위해서 사용된다
				사용자의 로그인 정보와 같은 것들을 저장한다
	- application : APPLICATION 영역을 담당. 모든 사용자와 관련해서 공유할 정보를 저장한다
					임시 디렉터리 경로와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다
</pre> 
</body>
</html>