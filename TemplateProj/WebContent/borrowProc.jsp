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
		<select style="background:url('img/icon_local.png') no-repeat center left;background-size:8%;width:16.7%;padding:1% 1%;border:solid 1px black;border-top:solid 2px #72ebc8;margin-top:-100px;margin-right:-0.1%">
			<option>&nbsp;&nbsp;지역구</option>
			<option>&nbsp;&nbsp;대여소명</option>
			<option>&nbsp;&nbsp;대여소번호</option>
		</select>
		<input type="text" size=100 style="vertical-align:middle;width:45.8%;padding:1% 2% 1% 1%;placeholder:'원하는 지역이 어디신가요?';background:url('img/icon_search.png') no-repeat center right;background-size:3%;border:solid 1px black;border-top:solid 2px #72ebc8;">
	</form>
	</span>
	<div id="map" style="vertical-align:middle;width:1000px;height:600px;margin-bottom:30%;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3286e4b01e84befc9b9243810d972df7"></script>
	<script>
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new daum.maps.LatLng(37.5653161, 126.9745883), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
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
	    }
	];

	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng // 마커의 위치
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

		</script>
</center>
</body>
</html>