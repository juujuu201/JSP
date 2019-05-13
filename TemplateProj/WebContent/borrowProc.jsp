<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Daum 지도 시작하기</title>
	<style>
		option{
			padding:20px 0px;
			background-color:white;
			color:darkgray;
		}
		option:hover{
			padding:20px 0px;
			background-color:white;
			font-weight:bold;
			color:darkgray;
		}
	</style>
</head>
<body>
<center>
	<form>
		<select style="background:url('img/icon_local.png') no-repeat center left;background-size:8%;width:22%;padding:1% 1%;border:solid 1px black;border-top:solid 2px #72ebc8;position:absolute;left:6.5%;top:13.6%">
			<option>&nbsp;&nbsp;지역구</option>
			<option>&nbsp;&nbsp;대여소명</option>
			<option>&nbsp;&nbsp;대여소번호</option>
		</select>
		<input placeholder="원하는 지역이 어디신가요?" type="text" size=100 style="margin-left:22%;vertical-align:middle;width:62%;padding:1% 2% 1% 1%;background:url('img/icon_search.png') no-repeat center right;background-size:3%;border:solid 1px black;border-top:solid 2px #72ebc8;">
	</form>
	</span>
	<div id="map" style="vertical-align:middle;width:1000px;height:600px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7661d7c477b44db64320b40b4cef7813"></script>
	<script>
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new daum.maps.LatLng(37.5653161, 126.9745883), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
	var imageSrc = 'img/icon_b2.png', // 마커이미지의 주소입니다    
    imageSize = new daum.maps.Size(14, 19), // 마커이미지의 크기입니다
    imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
    
 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption); // 마커가 표시될 위치입니다

    
	var geoimageSrc = 'https://www.bikeseoul.com/images/icon_position.png', // 마커이미지의 주소입니다    
	geoimageSize = new daum.maps.Size(84, 89), // 마커이미지의 크기입니다
	geoimageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
    
 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var geomarkerImage = new daum.maps.MarkerImage(geoimageSrc, geoimageSize, geoimageOption); // 마커가 표시될 위치입니다

	
    if (navigator.geolocation) {
        
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function(position) {
            
            var geolat = position.coords.latitude, // 위도
                geolon = position.coords.longitude; // 경도
            
            var geolocPosition = new daum.maps.LatLng(geolat, geolon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                
            
            // 마커와 인포윈도우를 표시합니다
            displayMarker(geolocPosition);
                
          });
        
    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
        
        var geolocPosition = new daum.maps.LatLng(37.466324, 126.9307193);    
            
        displayMarker(geolocPosition);
    }
    
	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
	    {
	        content: '<div>401. 상암월드컵파크 10단지 앞</div>', 
	        latlng: new daum.maps.LatLng(37.586189, 126.881615)
	    },
	    {
	        content: '<div>402. 상암월드컵파크 9단지 앞</div>', 
	        latlng: new daum.maps.LatLng(37.582855, 126.879822)
	    },
	    {
	        content: '<div>403. 부엉이공원 앞</div>', 
	        latlng: new daum.maps.LatLng(37.585590, 126.884727)
	    },
	    {
	        content: '<div>404. 우리금융상암센터 교차로</div>', 
	        latlng: new daum.maps.LatLng(37.583481, 126.886696)
	    },
	    {
	        content: '<div>406. 상암월드컵파크 7단지 앞</div>', 
	        latlng: new daum.maps.LatLng(37.581314, 126.880585)
	    },
	    {
	        content: '<div>405. DMC빌 앞</div>', 
	        latlng: new daum.maps.LatLng(37.582657, 126.885788)
	    },
	    {
	        content: '<div>407. 마포구 육아종합지원센터</div>', 
	        latlng: new daum.maps.LatLng(37.580631, 126.883675)
	    },
	    {
	        content: '<div>408. LG CNS앞</div>', 
	        latlng: new daum.maps.LatLng(37.580811, 126.886650)
	    },
	    {
	        content: '<div>409. 누리꿈스퀘어 옆앞</div>', 
	        latlng: new daum.maps.LatLng(37.579399, 126.889160)
	    },
	    {
	        content: '<div>410. 상암중학교 옆</div>', 
	        latlng: new daum.maps.LatLng(37.577496, 126.887772)
	    },
	    {
	        content: '<div>411. DMC홍보관</div>', 
	        latlng: new daum.maps.LatLng(37.577995, 126.891472)
	    },
	    {
	        content: '<div>412. DMC산학협력연구센터 앞</div>', 
	        latlng: new daum.maps.LatLng(37.575802, 126.890739)
	    },
	    {
	        content: '<div>414. 상암동주민센터 옆</div>', 
	        latlng: new daum.maps.LatLng(37.578220, 126.894470)
	    },
	    {
	        content: '<div>416. 상암월드컵파크1단지 교차로</div>', 
	        latlng: new daum.maps.LatLng(37.578220, 126.894447)
	    },
	    {
	        content: '<div>417. DMC역 9번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.577469, 126.897362)
	    },
	    {
	        content: '<div>413. 상암월드컵파크 3단지 후문</div>', 
	        latlng: new daum.maps.LatLng(37.571476, 126.889687)
	    },
	    {
	        content: '<div>418. 월드컵경기장역 3번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.570721, 126.898979)
	    },
	    {
	        content: '<div>419. 홈플러스 앞</div>', 
	        latlng: new daum.maps.LatLng(37.568420, 126.899429)
	    },
	    {
	        content: '<div>420. 서울시 공공자전거 운영센터 옆</div>', 
	        latlng: new daum.maps.LatLng(37.566246, 126.896179)
	    },
	    {
	        content: '<div>421. 마포구청 앞</div>', 
	        latlng: new daum.maps.LatLng(37.565903, 126.901184)
	    },
	    {
	        content: '<div>500. 어린이대공원역 3번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.547070, 127.074272)
	    },
	    {
	        content: '<div>501. 광진구의회 앞</div>', 
	        latlng: new daum.maps.LatLng(37.537304, 127.070457)
	    },
	    {
	        content: '<div>502. 뚝섬유원지역 1번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.531860, 127.067192)
	    },
	    {
	        content: '<div>503. 더샵스타시티 C동 앞</div>', 
	        latlng: new daum.maps.LatLng(37.536434, 127.073410)
	    },
	    {
	        content: '<div>504. 신자초교입구교차로</div>', 
	        latlng: new daum.maps.LatLng(37.533020, 127.075836)
	    },
	    {
	        content: '<div>505. 자양사거리 광진아크로텔 앞</div>', 
	        latlng: new daum.maps.LatLng(37.536877, 127.082802)
	    },
	    {
	        content: '<div>506. 금호 어울림 아파트 앞</div>', 
	        latlng: new daum.maps.LatLng(37.549110, 127.057739)
	    },
	    {
	        content: '<div>507. 성수아이에스비즈타워 앞</div>', 
	        latlng: new daum.maps.LatLng(37.548203, 127.057114)
	    },
	    {
	        content: '<div>508. 성수아카데미타워 앞</div>', 
	        latlng: new daum.maps.LatLng(37.545166, 127.057510)
	    },
	    {
	        content: '<div>509. 이마트 버스정류소 옆</div>', 
	        latlng: new daum.maps.LatLng(37.539654, 127.052589)
	    },
	    {
	        content: '<div>510. 서울숲 남문 버스정류소 옆</div>', 
	        latlng: new daum.maps.LatLng(37.541222, 127.043800)
	    },
	    {
	        content: '<div>511. 서울숲역 4번 출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.544582, 127.044609)
	    },
	    {
	        content: '<div>512. 뚝섬역 1번 출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.548561, 127.045006)
	    },
	    {
	        content: '<div>513. 뚝섬역 5번 출구 정류소 옆</div>', 
	        latlng: new daum.maps.LatLng(37.546307, 127.049805)
	    },
	    {
	        content: '<div>514. 성수사거리 버스정류장 앞</div>', 
	        latlng: new daum.maps.LatLng(37.542580, 127.063309)
	    },
	    {
	        content: '<div>515. 광양중학교 앞</div>', 
	        latlng: new daum.maps.LatLng(37.530235, 127.086830)
	    },
	    {
	        content: '<div>516. 광진메디칼 앞</div>', 
	        latlng: new daum.maps.LatLng(37.548405, 127.069366)
	    },
	    {
	        content: '<div>101. 합정동 주민센터</div>', 
	        latlng: new daum.maps.LatLng(37.549561, 126.905754)
	    },
	    {
	        content: '<div>102. 망원역1번출구앞</div>', 
	        latlng: new daum.maps.LatLng(37.556293, 126.910141)
	    },
	    {
	        content: '<div>103. 망원역2번출구앞</div>', 
	        latlng: new daum.maps.LatLng(37.554951, 126.910835)
	    },
	    {
	        content: '<div>104. 합정역 1번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.550629, 126.914986)
	    },
	    {
	        content: '<div>105. 합정역 5번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.549683, 126.914589)
	    },
	    {
	        content: '<div>106. 합정역 7번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.548645, 126.912827)
	    },
	    {
	        content: '<div>107. 신한은행 서교동금융센터점 앞</div>', 
	        latlng: new daum.maps.LatLng(37.557510, 126.918503)
	    },
	    {
	        content: '<div>108. 서교동 사거리</div>', 
	        latlng: new daum.maps.LatLng(37.552746, 126.918617)
	    },
	    {
	        content: '<div>109. 제일빌딩 앞</div>', 
	        latlng: new daum.maps.LatLng(37.547691, 126.919983)
	    },
	    {
	        content: '<div>111. 상수역 2번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.547871, 126.923531)
	    },
	    {
	        content: '<div>112. 극동방송국 앞</div>', 
	        latlng: new daum.maps.LatLng(37.549202, 126.923203)
	    },
	    {
	        content: '<div>113. 홍대입구역 2번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.557499, 126.923805)
	    },
	    {
	        content: '<div>114. 홍대입구역 8번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.557060, 126.924423)
	    },
	    {
	        content: '<div>115. 사루비아 빌딩 앞</div>', 
	        latlng: new daum.maps.LatLng(37.558933, 126.927116)
	    },
	    {
	        content: '<div>116. 일진아이윌아파트 옆</div>', 
	        latlng: new daum.maps.LatLng(37.564541, 126.927071)
	    },
	    {
	        content: '<div>117. 창전데이케어센터</div>', 
	        latlng: new daum.maps.LatLng(37.549137, 126.930405)
	    },
	    {
	        content: '<div>118. 광흥창역 2번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.547733, 126.931763)
	    },
	    {
	        content: '<div>119. 서강나루 공원</div>', 
	        latlng: new daum.maps.LatLng(null, null)
	    },
	    {
	        content: '<div>120. 신수동 사거리</div>', 
	        latlng: new daum.maps.LatLng(37.545242, 126.934113)
	    },
	    {
	        content: '<div>121. 마포소방서 앞</div>', 
	        latlng: new daum.maps.LatLng(37.549767, 126.933174)
	    },
	    {
	        content: '<div>122. 신성기사식당 앞</div>', 
	        latlng: new daum.maps.LatLng(37.547249, 126.939293)
	    },
	    {
	        content: '<div>124. 서강대 정문 건너편</div>', 
	        latlng: new daum.maps.LatLng(37.551140, 126.936989)
	    },
	    {
	        content: '<div>125. 서강대 남문 옆</div>', 
	        latlng: new daum.maps.LatLng(37.549484, 126.938950)
	    },
	    {
	        content: '<div>126. 서강대 후문 옆</div>', 
	        latlng: new daum.maps.LatLng(37.550411, 126.943848)
	    },
	    {
	        content: '<div>127. 현대벤처빌 앞</div>', 
	        latlng: new daum.maps.LatLng(37.553520, 126.936951)
	    },
	    {
	        content: '<div>128. 신촌역(2호선) 1번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.555496, 126.936340)
	    },
	    {
	        content: '<div>129. 신촌역(2호선) 6번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.555054, 126.937569)
	    },
	    {
	        content: '<div>130. 신촌역(2호선) 7번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.554859, 126.936157)
	    },
	    {
	        content: '<div>131. 신촌1지점 공용주차장</div>', 
	        latlng: new daum.maps.LatLng(37.555367, 126.934715)
	    },
	    {
	        content: '<div>132. 창천문화공원</div>', 
	        latlng: new daum.maps.LatLng(37.556789, 126.935883)
	    },
	    {
	        content: '<div>133. 창서초등학교 뒤</div>', 
	        latlng: new daum.maps.LatLng(37.557980, 126.933319)
	    },
	    {
	        content: '<div>134. 연세로 명물길</div>', 
	        latlng: new daum.maps.LatLng(37.557892, 126.938080)
	    },
	    {
	        content: '<div>135. 명물길 원형무대 앞</div>', 
	        latlng: new daum.maps.LatLng(37.559101, 126.939178)
	    },
	    {
	        content: '<div>136. 대흥동 주민센터</div>', 
	        latlng: new daum.maps.LatLng(37.555691, 126.942451)
	    },
	    {
	        content: '<div>137. NH농협 신촌지점 앞</div>', 
	        latlng: new daum.maps.LatLng(37.556812, 126.943184)
	    },
	    {
	        content: '<div>138. 신촌동 제1공영주차장 앞</div>', 
	        latlng: new daum.maps.LatLng(37.559177, 126.934525)
	    },
	    {
	        content: '<div>139. 연세대 정문 건너편</div>', 
	        latlng: new daum.maps.LatLng(37.559795, 126.934479)
	    },
	    {
	        content: '<div>140. 이화여대 후문</div>', 
	        latlng: new daum.maps.LatLng(37.559872, 126.940094)
	    },
	    {
	        content: '<div>141. 연대 대운동장 옆</div>', 
	        latlng: new daum.maps.LatLng(37.562382, 126.932648)
	    },
	    {
	        content: '<div>200. 국회의원회관</div>', 
	        latlng: new daum.maps.LatLng(37.528728, 126.914925)
	    },
	    {
	        content: '<div>201. 진미파라곤 앞</div>', 
	        latlng: new daum.maps.LatLng(37.531239, 126.921333)
	    },
	    {
	        content: '<div>202. 국민일보 앞</div>', 
	        latlng: new daum.maps.LatLng(37.528816, 126.924530)
	    },
	    {
	        content: '<div>203. 국회의사당역 5번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.528164, 126.917023)
	    },
	    {
	        content: '<div>204. 국회의사당역 3번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.528057, 126.918701)
	    },
	    {
	        content: '<div>205. 산업은행 앞</div>', 
	        latlng: new daum.maps.LatLng(37.526264, 126.920509)
	    },
	    {
	        content: '<div>206. KBS 앞</div>', 
	        latlng: new daum.maps.LatLng(37.524666, 126.918022)
	    },
	    {
	        content: '<div>207. 여의나루역 1번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.526989, 126.932098)
	    },
	    {
	        content: '<div>209. 유진투자증권 빌딩 앞</div>', 
	        latlng: new daum.maps.LatLng(37.524612, 126.927834)
	    },
	    {
	        content: '<div>210. 신한금융투자후문 앞</div>', 
	        latlng: new daum.maps.LatLng(37.525093, 126.924187)
	    },
	    {
	        content: '<div>211. 여의도역 4번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.522228, 126.924637)
	    },
	    {
	        content: '<div>212. 여의도역 1번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.521362, 126.923462)
	    },
	    {
	        content: '<div>213. KT 앞</div>', 
	        latlng: new daum.maps.LatLng(37.521908, 126.918953)
	    },
	    {
	        content: '<div>214. 금융감독원 앞</div>', 
	        latlng: new daum.maps.LatLng(37.523022, 126.920837)
	    },
	    {
	        content: '<div>215. 여의도고교 앞</div>', 
	        latlng: new daum.maps.LatLng(37.524837, 126.934906)
	    },
	    {
	        content: '<div>216. 삼부아파트1동 앞</div>', 
	        latlng: new daum.maps.LatLng(37.523491, 126.932899)
	    },
	    {
	        content: '<div>217. NH농협은행 앞</div>', 
	        latlng: new daum.maps.LatLng(37.522079, 126.930367)
	    },
	    {
	        content: '<div>218. 증권거래소 앞</div>', 
	        latlng: new daum.maps.LatLng(37.523277, 126.929237)
	    },
	    {
	        content: '<div>219. 롯데캐슬엠파이어 옆</div>', 
	        latlng: new daum.maps.LatLng(37.520096, 126.926163)
	    },
	    {
	        content: '<div>220. 미성아파트 A동 앞</div>', 
	        latlng: new daum.maps.LatLng(37.519363, 126.926048)
	    },
	    {
	        content: '<div>221. 여의도초교 앞</div>', 
	        latlng: new daum.maps.LatLng(37.522675, 126.937790)
	    },
	    {
	        content: '<div>222. 시범아파트버스정류장 옆</div>', 
	        latlng: new daum.maps.LatLng(37.520271, 126.938881)
	    },
	    {
	        content: '<div>223. 진주아파트상가 앞</div>', 
	        latlng: new daum.maps.LatLng(37.519314, 126.933167)
	    },
	    {
	        content: '<div>224. 롯데캐슬 앞</div>', 
	        latlng: new daum.maps.LatLng(37.520088, 126.932365)
	    },
	    {
	        content: '<div>225. 앙카라공원 앞</div>', 
	        latlng: new daum.maps.LatLng(37.517368, 126.929253)
	    },
	    {
	        content: '<div>226. 샛강역 1번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.517765, 126.928413)
	    },
	    {
	        content: '<div>300. 정동사거리</div>', 
	        latlng: new daum.maps.LatLng(37.568050, 126.969231)
	    },
	    {
	        content: '<div>301. 경복궁역 7번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.575794, 126.971451)
	    },
	    {
	        content: '<div>302. 경복궁역 4번출구 뒤</div>', 
	        latlng: new daum.maps.LatLng(37.575947, 126.974060)
	    },
	    {
	        content: '<div>304. 광화문역 2번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.572487, 126.977501)
	    },
	    {
	        content: '<div>305. 종로구청 옆</div>', 
	        latlng: new daum.maps.LatLng(37.572582, 126.978355)
	    },
	    {
	        content: '<div>306. 광화문역 7번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.570808, 126.976433)
	    },
	    {
	        content: '<div>307. 서울역사박물관 앞</div>', 
	        latlng: new daum.maps.LatLng(37.570000, 126.971100)
	    },
	    {
	        content: '<div>308. 광화문 S타워 앞</div>', 
	        latlng: new daum.maps.LatLng(37.569969, 126.973938)
	    },
	    {
	        content: '<div>309. 광화문역 6번출구 옆</div>', 
	        latlng: new daum.maps.LatLng(37.569889, 126.976456)
	    },
	    {
	        content: '<div>310. 청계광장 옆</div>', 
	        latlng: new daum.maps.LatLng(37.568878, 126.977470)
	    },
	    {
	        content: '<div>311. 서울광장 옆</div>', 
	        latlng: new daum.maps.LatLng(37.566612, 126.977470)
	    },
	    {
	        content: '<div>312. 시청역 1번출구 뒤</div>', 
	        latlng: new daum.maps.LatLng(37.564674, 126.976738)
	    },
	    {
	        content: '<div>313. 서울역 광장 파출소 옆</div>', 
	        latlng: new daum.maps.LatLng(37.556961, 126.971771)
	    },
	    {
	        content: '<div>314. 국립현대미술관</div>', 
	        latlng: new daum.maps.LatLng(37.579910, 126.980301)
	    },
	    {
	        content: '<div>315. 신한은행 안국역지점 옆</div>', 
	        latlng: new daum.maps.LatLng(37.575916, 126.983246)
	    },
	    {
	        content: '<div>316. 종각역 1번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.570396, 126.981789)
	    },
	    {
	        content: '<div>318. 광교사거리 남측</div>', 
	        latlng: new daum.maps.LatLng(37.568527, 126.982552)
	    },
	    {
	        content: '<div>320. 을지로입구역 4번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.566223, 126.983589)
	    },
	    {
	        content: '<div>321. 한국외환은행 본점 앞</div>', 
	        latlng: new daum.maps.LatLng(37.565464, 126.984138)
	    },
	    {
	        content: '<div>322. 명동성당 앞</div>', 
	        latlng: new daum.maps.LatLng(37.564377, 126.986732)
	    },
	    {
	        content: '<div>323. 서울 중앙우체국 앞</div>', 
	        latlng: new daum.maps.LatLng(37.561794, 126.981583)
	    },
	    {
	        content: '<div>324. 신세계백화점 본점 앞</div>', 
	        latlng: new daum.maps.LatLng(37.561176, 126.980942)
	    },
	    {
	        content: '<div>326. 안국역 5번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.576241, 126.986160)
	    },
	    {
	        content: '<div>327. 낙원상가 옆</div>', 
	        latlng: new daum.maps.LatLng(37.573650, 126.987320)
	    },
	    {
	        content: '<div>328. 탑골공원 앞</div>', 
	        latlng: new daum.maps.LatLng(37.570396, 126.98819)
	    },
	    {
	        content: '<div>329. 청계2가 사거리 옆</div>', 
	        latlng: new daum.maps.LatLng(37.568329, 126.987991)
	    },
	    {
	        content: '<div>330. 청계천 한빛광장</div>', 
	        latlng: new daum.maps.LatLng(null, null)
	    },
	    {
	        content: '<div>331. 을지로2가 사거리 북측</div>', 
	        latlng: new daum.maps.LatLng(37.566322, 126.987030)
	    },
	    {
	        content: '<div>332. 을지로2가 사거리 남측</div>', 
	        latlng: new daum.maps.LatLng(37.565990, 126.987793)
	    },
	    {
	        content: '<div>333. 창덕궁 매표소 앞</div>', 
	        latlng: new daum.maps.LatLng(37.577606, 126.993401)
	    },
	    {
	        content: '<div>334. 종로3가역 2번출구 뒤</div>', 
	        latlng: new daum.maps.LatLng(37.570599, 126.991791)
	    },
	    {
	        content: '<div>335. 종로3가역 15번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.570198, 126.991257)
	    },
	    {
	        content: '<div>336. 티마크 호텔 앞</div>', 
	        latlng: new daum.maps.LatLng(37.562618, 126.992836)
	    },
	    {
	        content: '<div>337. 창경궁 입구</div>', 
	        latlng: new daum.maps.LatLng(37.578979, 126.996475)
	    },
	    {
	        content: '<div>338. 세운스퀘어 앞</div>', 
	        latlng: new daum.maps.LatLng(37.571331, 126.997528)
	    },
	    {
	        content: '<div>339. 종로4가 사거리</div>', 
	        latlng: new daum.maps.LatLng(37.571068, 126.998192)
	    },
	    {
	        content: '<div>340. 혜화동 로터리</div>', 
	        latlng: new daum.maps.LatLng(37.585629, 127.000679)
	    },
	    {
	        content: '<div>341. 혜화역 3번출구 뒤</div>', 
	        latlng: new daum.maps.LatLng(37.582050, 127.001740)
	    },
	    {
	        content: '<div>342. 대학로 마로니에공원</div>', 
	        latlng: new daum.maps.LatLng(null, null)
	    },
	    {
	        content: '<div>343. 예일빌딩(율곡로) 앞</div>', 
	        latlng: new daum.maps.LatLng(37.575432, 127.004982)
	    },
	    {
	        content: '<div>344. 성균관대 E하우스 앞</div>', 
	        latlng: new daum.maps.LatLng(37.574036, 127.006721)
	    },
	    {
	        content: '<div>345. 서울보증보험본사 앞</div>', 
	        latlng: new daum.maps.LatLng(37.573307, 127.000710)
	    },
	    {
	        content: '<div>346. 남평화시장</div>', 
	        latlng: new daum.maps.LatLng(37.568825, 127.010048)
	    },
	    {
	        content: '<div>347. 동대문역사문화공원역 9번출구 앞</div>', 
	        latlng: new daum.maps.LatLng(37.565331, 127.007843)
	    },
	    {
	        content: '<div>400. 상암한화오벨리스크 1차 앞</div>', 
	        latlng: new daum.maps.LatLng(37.587524, 126.883003)
	    }
	    
	];
	

	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng,// 마커의 위치
	        image:markerImage
	    });

	    // 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new daum.maps.InfoWindow({
	        content: positions[i].content // 인포윈도우에 표시할 내용
	    });

	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}

	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}

	function displayMarker(geolocPosition) {

	    // 마커를 생성합니다
	    var geomarker = new daum.maps.Marker({  
	        map: map, 
	        position: geolocPosition,
	        image:geomarkerImage
	    }); 
	    geomarker.setMap(map);
	    
	    // 지도 중심좌표를 접속위치로 변경합니다
	    map.setCenter(geolocPosition);      
	}    
	
		</script>
</center>
</body>
</html>