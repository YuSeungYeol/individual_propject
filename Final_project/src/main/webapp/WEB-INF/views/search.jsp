<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>흡연장 검색</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_KAKAO_API_KEY"></script>
</head>
<body>
    <h1>근처 흡연장 검색</h1>
    <form method="get" action="/search">
        <label for="latitude">위도:</label>
        <input type="text" id="latitude" name="latitude" required>
        <label for="longitude">경도:</label>
        <input type="text" id="longitude" name="longitude" required>
        <button type="submit">검색</button>
    </form>

    <div id="map" style="width:100%;height:350px;"></div>
    <script>
        var mapContainer = document.getElementById('map'),
            mapOption = {
                center: new kakao.maps.LatLng(37.5665, 126.9780), // 기본 중심 좌표
                level: 3 // 지도 확대 수준
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 흡연장 데이터
        var smokingAreas = /*[[${smokingAreas}]]*/ '{}';
        smokingAreas = JSON.parse(smokingAreas).response.body.items;

        smokingAreas.forEach(function(area) {
            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(area.latitude, area.longitude)
            });

            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="padding:5px;">' + area.name + '</div>'
            });

            kakao.maps.event.addListener(marker, 'mouseover', function() {
                infowindow.open(map, marker);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });
        });
    </script>
</body>
</html>
