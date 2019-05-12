<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시민의견수렴</title>

</head>

<body>
<font style="font-size:1em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>이용약관 및 방침</font>

<div id="div1">
<table cellpadding=0 cellspacing=0 style="margin-left:15%;width:70%;border-top:solid 1.2px #72ebc8">
<tr>
<td align="center" style="width:33%;padding:1% 0;border-left:solid 1.2px #72ebc8;border-right:solid 1.2px #72ebc8;">
	<b>이용약관</b>
</td>
<td align="center" style="background-color:#efefef;width:33%;padding:1% 0;color:gray;border-bottom:solid 1.2px #72ebc8;">
	<a onclick="btnClick(2)"><b>개인정보처리방침</b></a>
</td>
<td align="center" style="width:33%;padding:1% 0;background-color:#efefef;color:gray;border-bottom:solid 1.2px #72ebc8;" >
	<a onclick="btnClick(3)"><b>의무와 책임</b></a>
</td>
</tr>
<tr>
<td colspan=3 style="font-size:0.8em;">
<%
	BufferedReader reader = null;
	try{
		String FilePath = application.getRealPath("/WEB-INF/term/term1.txt");
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>
</td>
</tr>
	
</table><!-- biggest table -->
</div><!-- first div -->
<!-- ================================================================================================================ -->
<div id="div2" style="display:none;">
<table cellpadding=0 cellspacing=0 style="margin-left:15%;width:70%;border-top:solid 1.2px #72ebc8">
<tr>
<td align="center" style="background-color:#efefef;width:33%;padding:1% 0;color:gray;border-bottom:solid 1.2px #72ebc8;" >
	<a onclick="btnClick(1)"><b>이용약관</b></a>
</td>
<td align="center" style="width:33%;padding:1% 0;border-left:solid 1.2px #72ebc8;border-right:solid 1.2px #72ebc8;">
	<b>개인정보처리방침</b>
</td>
<td align="center" style="width:33%;padding:1% 0;background-color:#efefef;color:gray;border-bottom:solid 1.2px #72ebc8;" >
	<a onclick="btnClick(3)"><b>의무와 책임</b></a>
</td>
</tr>
<tr>
<td colspan=3 style="font-size:0.8em;">
<%
	try{
		String FilePath = application.getRealPath("/WEB-INF/term/term2.txt");
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>
		<p>
		<table style="border-bottom:solid 1.2px #efefef;text-align:center;border-top:solid 1.2px black;">
			<tr style="background-color:#f8f8f8">
				<td>순번</td>
				<td>개인정보파일의 명칭</td>
				<td>운영 근거</td>
				<td>보유기간</td>
			</tr>
			<tr>
				<td>1</td>
				<td>서울자전거 따릉이 회원정보</td>
				<td>정보주체 동의</td>
				<td>회원 탈퇴시까지(2년마다 재동의가 요구됨)</td>
			</tr>
			<tr>
				<td>2</td>
				<td>서울자전거 따릉이 환불정보</td>
				<td>정보주체 동의</td>
				<td>환불처리후 즉시폐기</td>
			</tr>
		</table>
		<%
	try{
		String FilePath = application.getRealPath("/WEB-INF/term/term2_1.txt");
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>

	<p>
	<table style="border-bottom:solid 1.2px #efefef;text-align:center;border-top:solid 1.2px black;">
			<tr style="background-color:#f8f8f8">
				<td>순번</td>
				<td>개인정보파일의 명칭</td>
				<td>위탁명</td>
				<td>위탁업무내용</td>
				<td>위탁업체명</td>
			</tr>
			<tr>
				<td>1</td>
				<td>서울자전거 따릉이 회원정보</td>
				<td>공공자전거대여시스템 유지보수</td>
				<td>홈페이지,앱 프로그램 개선</td>
				<td>(주) 위트콤</td>
			</tr>
		</table>
			<%
	try{
		String FilePath = application.getRealPath("/WEB-INF/term/term2_2.txt");
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>

	<p>
	<table style="border-bottom:solid 1.2px #efefef;text-align:center;border-top:solid 1.2px black;">
			<tr style="background-color:#f8f8f8">
				<td>순번</td>
				<td>개인정보파일의 명칭</td>
				<td>개인정보파일에 기록되는 개인정보의 항목</td>
			</tr>
			<tr>
				<td>1</td>
				<td>서울자전거 따릉이 회원정보</td>
				<td>아이디,휴대번호,비밀번호,전자메일주소 (필수)<br>메일수신정보, 후불교통카드정보, 대여카드정보, 체중,성별,생년월일 (선택)</td>
			</tr>
			<tr>
				<td>2</td>
				<td>서울자전거 따릉이 회원정보</td>
				<td>환불계좌은행명,환불계좌번호,환불사유 (필수)</td>
			</tr>
		</table>
		
				<%
	try{
		String FilePath = application.getRealPath("/WEB-INF/term/term2_3.txt");
		reader = new BufferedReader(new FileReader(FilePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}//while
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		reader.close();
	}
	
%>
</td>
</tr>
	
</table><!-- biggest table -->
</div><!-- first div -->
<!-- ================================================================================================================ -->
<div id="div3" style="display:none;">
<table cellpadding=0 cellspacing=0 style="margin-left:15%;width:70%;border-top:solid 1.2px #72ebc8">
<tr>
<td align="center" style="background-color:#efefef;width:33%;padding:1% 0;color:gray;border-bottom:solid 1.2px #72ebc8;">
	<a onclick="btnClick(1)"><b>이용약관</b></a>
</td>
<td align="center" style="background-color:#efefef;width:33%;padding:1% 0;color:gray;border-bottom:solid 1.2px #72ebc8;">
	<a onclick="btnClick(2)"><b>개인정보처리방침</b></a>
</td>
<td align="center" style="width:33%;padding:1% 0;border-left:solid 1.2px #72ebc8;border-right:solid 1.2px #72ebc8;" >
	<b>의무와 책임</b>
</td>
</tr>
<tr>
<td colspan=3 style="font-size:0.8em;">
	<table>
		<tr style="border-bottom:solid 1px #72ebc8;">
			<td>
			
			<b>대여시간 준수</b><br>
			모든 시민들께 서울자전거 이용의 균등한 기회를 드리기 위해 기본 대여 시간이 정해져 있습니다.<br>
			기본대여 시간이 초과되면 추가요금이 발생하오니 기본 대여 시간 내에 자전거를 반납해주세요.<br>
			기본 대여시간 이내에 반납 후 다시 대여할 경우 추가 요금은 발생하지 않습니다.<p>
			
			</td>
		</tr>
		<tr style="border-bottom:solid 1px #72ebc8;">
			<td>
			
			<b>서울자전거 사용 시 주의사항</b><br>
			서울자전거는 일반 생활용 자전거로써 경주, 산악등반, 자전거 묘기 등의 특수목적에 사용할 수 없습니다.<br>
			대여소가 아닌 곳에서 정차 및 주차 시 반드시 자전거에 부착된 시건 장치를 이용하여 도난에 주의해야 합니다.<br>
			짐받이 바구니에는 과다한 중량을 싣지 말아야 합니다.<br>
			자전거는 항상 정비 상태를 점검하고 있으나, 안전을 위해 운행 전 브레이크 동작 여부 등을 확인해 주시기 바랍니다.<p>
			
			</td>
		</tr>
		<tr style="border-bottom:solid 1px #72ebc8;">
			<td>
			
			<b>분실 및 손실 위약금</b><br>
			서울자전거 시설물의 고의적 훼손 또는 서울자전거 분실 및 절도 시에는 관련 규정에 따라 정한 요금을 부과합니다.<br>
			자전거 이용 중 위법, 부당한 행위로 발생한 손실 및 비용은 대여자가 부담해야 합니다.<p>
			
			</td>
		</tr>
		<tr style="border-bottom:solid 1px #72ebc8;">
			<td>
			
			<b>부당한 인권 침해 행위</b><br>
			서울자전거의 관계자(관리원, 상담원 등)에게 무리한 요구 및 인격무시, 폭언/욕설, 성희롱에 대해 다양한 법 적용을 받을 수 있습니다.<br>
			【정보통신망이용촉진및정보보호등】 에 의거 공포/불안 유발죄 등 적용.<br>
			【성폭력범죄의처벌등에관한특례법】에 의거한 ‘통신매체이용음란죄’등 적용.<p>
			
			</td>
		</tr>
	</table>
</td>
</tr>
	
</table><!-- biggest table -->
</div><!-- first div -->


<script>
	//changing btn
	
	function btnClick(divnum){	
		document.all.div1.style.display="none";
		document.all.div2.style.display="none";
		document.all.div3.style.display="none";
		
		switch(divnum){
		case 1:			
			document.all.div1.style.display="";
			break;
		case 2:
			document.all.div2.style.display="";
			break;
		case 3:
			document.all.div3.style.display="";
			break;
		}
	}
</script>
</body>
</html>
