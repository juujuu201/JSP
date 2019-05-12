<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시민의견수렴</title>
<style>
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #f8f8f8;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
  padding:4px;
}
	.active{
	background-color:#FFC423;
}
</style>
</head>

<body>
<font style="font-size:2em;font-weight:bold;margin-left:15%;margin-bottom:7%;"><p>반납 및 재대여 방법</font><p>
<font style="color:red;margin-left:15%">재대여는 반드시 반납 후 가능합니다.</font>
<hr style="border:solid 1px #72ebc8;width:70%" align="center">

<div id="div1">
<table width="100%" cellpadding=0>
<tr>
<td>
	<table style="width:100%;padding:1% 0;margin-bottom:3%;">
		<tr>
		<td>
			<div style="margin-right:5%;" align="right">
				<img id="return1" src="img/return11.PNG" style="width:60%;border:solid 1px #72ebc8;background-color:white;">
			</div> 
		</td>
		<td>
			<div style="margin-left:5%;" onclick="btnclick(2)">
				<img id="connect1" src="img/return20.PNG" style="width:60%;border:solid 1px lightgray;background-color:white;">
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
	<td colspan=3 align="center">
	<!-- dots -->
			<div>
				<%
					for(int i=1; i<=4; i++){
				%>
					<span class="dot" onclick="currentSlide(1)"><font style="color:white;"><%=i %></font></span>
				 <%
					}
				 %>
			</div>
	</td>
	</tr>
	<tr>
	<td >
		<!-- prev btn -->
		<a onclick="plusSlides(-1)"><img src="https://www.bikeseoul.com/images/prevBtn.jpg"></a>
	</td>
	<td align="center">
		<!-- slides -->
		<div style="width:50%;margin-top:2%" align="center">
		<% 
		String comment[]={"<b>반납할 대여소에 방문합니다</b>",
						  "<b>빈 거치대에 자전거를 거치합니다.</b>",
						  "<b>자전거 잠금</b><br>거치대의 잠금 장치를 자전거 단말기 우측에 연결하여<br>자전거를 잠급니다.",
						  "<b>반납 완료</b><br>자전거 단말기에서 “반납 완료”안내가 나오면<br>반납이 완료된 것 입니다.<br>(반납 완료는 SMS로도 발송됩니다.)"
						  };
		for(int i=0; i<comment.length; i++){ %>
			<div class="mySlide">
				<font style="font-weight:bold;"><%=comment[i] %></font><p>
				<img src="img/ing_guide2a_<%=i+1%>.jpg" style="width:100%;padding:0 0;">
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
	<table style="width:100%;padding:1% 0;margin-bottom:3%;">
		<tr>
		<td>
			<div style="margin-right:5%;" align="right" onclick="btnclick(1)">
				<img id="return2" src="img/way11.PNG" style="width:60%;border:solid 2px #72ebc8;background-color:white;">
			</div> 
		</td>
		<td>
			<div style="margin-left:5%;">
				<img id="connect2" src="img/way20.PNG" style="width:60%;border:solid 2px lightgray;background-color:white;">
			</div>
		</td>
		</tr> 
	</table>
</td>
</tr>
<tr>
<td align="center">
	<iframe width="300" height="300" src="https://www.youtube.com/embed/LC6_i8LTUfw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
			document.getElementById("return1").src="img/return11.PNG";
			document.getElementById("connect1").src="img/return20.PNG";
			document.getElementById("return1").style.borderColor=mint;
			document.getElementById("connect1").style.borderColor=gray;
			
			document.all.div1.style.display="";
			break;
		case 2:
			document.getElementById("return2").src="img/return10.PNG";
			document.getElementById("connect2").src="img/return21.PNG";
			document.getElementById("return2").style.borderColor=gray;
			document.getElementById("connect2").style.borderColor=mint;
			
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
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1} 
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none"; 
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block"; 
		  dots[slideIndex-1].className += " active";
 
		}
	
</script>
</body>
</html>