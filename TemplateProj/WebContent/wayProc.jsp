<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시민의견수렴</title>
</head>

<body>
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>대여 방법</font>

<div id="div1">
<table width="100%" cellpadding=0>
<tr>
<td>
	<table style="width:100%;padding:1% 0;background-color:#f8f8f8;margin-bottom:3%;">
		<tr>
		<td>
			<div style="margin-right:5%;" align="right">
				<img id="member1" src="img/way11.PNG" style="width:60%;border:solid 2px #72ebc8;background-color:white;">
			</div> 
		</td>
		<td>
			<div style="margin-left:5%;" onclick="btnclick(2)">
				<img id="nonmember1" src="img/way20.PNG" style="width:60%;border:solid 2px lightgray;background-color:white;">
			</div>
		</td>
		</tr> 
	</table>
</td>
</tr>
<tr>
<td>
	<table style="width:50%;" align="center">
	<tr>
	<td >
		<!-- prev btn -->
		<a onclick="plusSlides(-1)"><img src="https://www.bikeseoul.com/images/prevBtn.jpg"></a>
	</td>
	<td align="center">
		<!-- slides -->
		<div style="width:50%;margin-top:2%" align="center">
		<% 
		String comment[]={"<b>1. 회원가입</b><br>회원가입완료 후 자동 로그인됩니다.",
						  "<b>2. 이용권구매</b>",
						  "<b>3. 지도에서 대여소 선택</b>",
						  "<b>4. 대여요청</b>",
						  "<b>5. 단말기 홈버튼 선택</b><br>자전거에 부착된 단말기의 홈버튼을 1.5초간 누릅니다.",
						  "<b>6. 단말기 오른쪽잠금장치 분리</b>"
						 };
		for(int i=0; i<comment.length; i++){ %>
			<div class="mySlide">
				<font style="font-weight:bold;"><%=comment[i] %></font><p>
				<img src="https://www.bikeseoul.com/images/guide_01_<%=i+1 %>.jpg" style="width:100%;padding:0 0;">
			</div>
		<%} %>
			</div>
	</td>
	<td >
			<!-- next btn -->
			<a onclick="plusSlides(1)"><img src="https://www.bikeseoul.com/images/nextBtn.jpg"></a>
	</td>
	</tr>		
</table>
</td>
</tr>
	
</table><!-- biggest table -->
</div><!-- first div -->
<!-- ================================================================================================================ -->
<div id="div2" style="display:none;">
<table width="100%" cellpadding=0>
<tr>
<td>
	<table style="width:100%;padding:1% 0;background-color:#f8f8f8;margin-bottom:3%;">
		<tr>
		<td>
			<div style="margin-right:5%;" align="right" onclick="btnclick(1)">
				<img id="member2" src="img/way11.PNG" style="width:60%;border:solid 2px #72ebc8;background-color:white;">
			</div> 
		</td>
		<td>
			<div style="margin-left:5%;">
				<img id="nonmember2" src="img/way20.PNG" style="width:60%;border:solid 2px lightgray;background-color:white;">
			</div>
		</td>
		</tr> 
	</table>
</td>
</tr>
<tr>
<td>
	<table style="width:50%;" align="center">
	<tr>
	<td >
		<!-- prev btn -->
		<a onclick="plusSlides2(-1)"><img src="https://www.bikeseoul.com/images/prevBtn.jpg"></a>
	</td>
	<td align="center">
		<!-- slides -->
		<div style="width:50%;margin-top:2%" align="center">
		<% 
		String num[]={"06_1","01_5","06_3","06_4","06_5"};
		String comment2[]={"<b>1. 비회원 선택</b>",
						  "<b>2. 홈버튼 누르기</b>",
						  "<b>3. 대여번호 입력 선택</b>",
						  "<b>4. 대여번호 8자리 중 앞 4자리 입력</b>",
						  "<b>5. 대여번호 8자리중 뒤 4자리 입력</b>"
						 };
		for(int i=0; i<comment2.length; i++){ %>
			<div class="mySlide2">
				<font style="font-weight:bold;"><%=comment2[i] %></font><p>
				<img src="https://www.bikeseoul.com/images/guide_<%=num[i] %>.jpg" style="width:100%;padding:0 0;">
			</div>
		<%} %>
			</div>
	</td>
	<td >
			<!-- next btn -->
			<a onclick="plusSlides2(1)"><img src="https://www.bikeseoul.com/images/nextBtn.jpg"></a>
	</td>
	</tr>		
</table>
</td>
</tr>
	
</table><!-- biggest table -->
</div><!-- second div -->
	
	


<img src="https://www.bikeseoul.com/images/kr/bg/sub_bg4.png" align="right">

<script>
	//changing btn
	
	function btnclick(divnum){			
		var mint="#72ebc8";
		var gray="lightgray";
		
		document.all.div1.style.display="none";
		document.all.div2.style.display="none";
		
		switch(divnum){
		case 1:			
			document.getElementById("member1").src="img/way11.PNG";
			document.getElementById("nonmember1").src="img/way20.PNG";
			document.getElementById("member1").style.borderColor=mint;
			document.getElementById("nonmember1").style.borderColor=gray;
			
			document.all.div1.style.display="";
			break;
		case 2:
			document.getElementById("member2").src="img/way10.PNG";
			document.getElementById("nonmember2").src="img/way21.PNG";
			document.getElementById("member2").style.borderColor=gray;
			document.getElementById("nonmember2").style.borderColor=mint;
			
			document.all.div2.style.display="";
			break;
		}
		
	}
	
	//slide show
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
		  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
		  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlide");
		  if (n > slides.length) {slideIndex = 1} 
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none"; 
		  }
		  slides[slideIndex-1].style.display = "block"; 
		}
	//============================================================================
	var slideIndex2 = 1;
	showSlides2(slideIndex2);
	
	function plusSlides2(n) {
		  showSlides2(slideIndex2 += n);
	}
	
	function currentSlide(n) {
		  showSlides2(slideIndex2 = n);
	}
	
	function showSlides2(n) {
		  var i;
		  var slides2 = document.getElementsByClassName("mySlide2");
		  if (n > slides2.length) {slideIndex2 = 1} 
		  if (n < 1) {slideIndex2 = slides2.length}
		  for (i = 0; i < slides2.length; i++) {
		      slides2[i].style.display = "none"; 
		  }
		  slides2[slideIndex2-1].style.display = "block"; 
		}
</script>
</body>
</html>