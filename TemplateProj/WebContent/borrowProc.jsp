<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대여소 조회</title>
<script>

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nnoG8FxJ8CcMFYcE_isUIH-GUFvu4jA&callback=initMap" async defer></script>
</head>
<body>
	<center>
	<div id="map" style="width:1000px;height:1000px"></div>
	</center>
</body>
</html>