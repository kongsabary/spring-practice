<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코로나 맵</title>
</head>
<body>
	<div id="map" style="width:100%;height:140vh;"></div>

	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96c805e7accb9206c4df4f27c415764e&libraries=clusterer"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(35.546506, 129.255841), // 지도의 중심좌표
		        level: 12, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		/* 
		// 마커 클러스터러를 생성합니다 
	    var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
	        minLevel: 10 // 클러스터 할 최소 지도 레벨 
	    });  
		*/
		
		var data = [
			[37.551815, 126.990449, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">서울<br/>2.5단계</div>'],
			[35.546506, 129.255841, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">울산<br/>2단계</div>'],
			[35.160408, 129.042915, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">부산<br/>2.5단계</div>'],
			[35.156224, 126.831048, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">광주<br/>2단계</div>'],
			[36.559888, 127.255983, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">세종<br/>2단계</div>'],
			[37.010320, 128.814374, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">경북<br/>2단계</div>'],
			[35.760441, 127.165097, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">전북<br/>2단계</div>'],
			[34.921003, 126.728182, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">전남<br/>2단계</div>'],
			[37.830814, 128.131882, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">강원<br/>2단계</div>'],
			[35.829495, 128.565499, '<div style="padding:5px;font-size: 14px;width: 77px;height: 50px;left: 314px;top: 105px;text-align: center;">대구<br/>2단계</div>']
		];
		
// 		var markers = [];
		for (var i = 0; i < data.length; i++) {
			// 지도에 마커를 생성하고 표시한다
			var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng(data[i][0], data[i][1]), // 마커의 좌표
			    map: map // 마커를 표시할 지도 객체
			});

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
			    content : data[i][2]
			});
			  
			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker); 
// 			markers.push(marker);
// 		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
// 		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}
		
		/* 
		// 클러스터러에 마커들을 추가합니다 
		clusterer.addMarkers(markers); 
		
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
        */
     
	</script>
</body>
</html>