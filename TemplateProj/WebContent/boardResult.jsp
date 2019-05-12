<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String str = request.getParameter("result");
	
		if(str.equals("okay")){
			%>
			<script>
			alert("저장되었습니다 :)");
			</script>
			<%
		}
		else{%>
			<script>
			alert("저장에 실패하였습니다 :(");
			</script>
		<%}
	%>
	
	<meta http-equiv='refresh' content='0;url=opinion.jsp'>