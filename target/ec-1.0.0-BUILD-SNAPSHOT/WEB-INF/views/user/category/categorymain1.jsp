<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.region{
	z-index: 1;
	position: absolute;
	top:20px;
	right: 0px;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05169d60664947410852341b56c43f34&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:100%;height:970px;"></div>
<p>
 <!-- 지도타입 컨트롤 div 입니다 -->
    <div class="region">
        <button onclick="setSeoul()">서울</button>
        <button onclick="setDaejeon()">대전</button>
        <button onclick="setBusan()">부산</button>
    </div>
</p>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5666805, 126.9784147), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };
    
//지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

//대전으로 화면 이동
function setDaejeon() {            
    // 이동할 위도 경도 위치를 생성합니다 
    map.setCenter(new kakao.maps.LatLng(36.321655, 127.378953));
}
//서울로 화면 이동
function setSeoul() {            
    // 이동할 위도 경도 위치를 생성합니다 
    map.setCenter(new kakao.maps.LatLng(37.5666805, 126.9784147));
}
//부산으로 화면 이동
function setBusan() {            
    // 이동할 위도 경도 위치를 생성합니다 
    map.setCenter(new kakao.maps.LatLng(35.1795543, 129.0756416));
} 
// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
for(i= 0; i<${seller.length}; i++){
	var addr= ${seller.seller_addr[i]};
	var titles = ${seller.Seller_name[i]};
geocoder.addressSearch(addr[i], function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
            title: titles
        });
    } 
});
};
</script>
</html>