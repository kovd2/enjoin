<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!-- css -->
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet">


<!-- Theme skin -->
<link href="resources/style/skins/default.css" rel="stylesheet">

<style>

header{
	width:100%;
	top:0;
	position:fixed;

}
.wrap{
	width:100%;
}
.middle{
	width:1100px;
	height:100%;
	margin:0 auto;
	display: -webkit-box;
	
		

}
.searchArea{
	width:400px;
	/* height:800px; */
	background:#f5f5f5;
	margin-top:80px;
}
.mapArea{
	
	width:620px;
	 height:800px;
	background:#bcdeb0;
	margin-top:80px;
	position:fixed;	
}
.searchWrap{
	margin-top:20px;
	margin-left:20px;
	height:40px;
	width:360px;
	border:1px solid #00bff0;
	background:#ffffff;
}
#searchBar{
	font-size:13px;
	padding:10px 10px 0px 10px;
	border:0px;
	outline:none;
	float:left;
	width:300px;
	
}
#searchBtn{
	width:50px;
	height:100%;
	border:0px;
	background:#00bff0;
	outline:none; 
	float:right;
	color:#ffffff;
}

.listArea{
	width:350x;
	height:240px;
	/* background:black; */
	 margin-top:5px; 
	
	display:-webkit-inline-box;

}

.list{

	margin:2 auto;
	width:185px;
	background: #ffffff;
	height:240px;
	margin-left:10px;

}
.imgArea{
	
	width:174px;
	background:black;
	height:110px;
	margin:5px 0px 0px 5px;

}

.contents{

	width:180px;
	text-align:center;

}
.contents>h4{
	
	margin-bottom:5px;
}
.category{
	width:70px;
	height:25px;
	border:2px solid #00bff0;
	margin:13px 0px 0px 10px;
	padding-bottom:5px;
}
p{
	margin-bottom:3px;	
}

.list:hover{
	
	background:#00bff0;	
	cursor:pointer;
}

</style>



<body>

<jsp:include page="../common/menubar.jsp"/>
<hr>

<div class="wrap">

	<div class="middle">
		<div class="searchArea">
			<div class="searchWrap">
			
			<input type="text" placeholder="지역/장소/카테고리를 입력하세요(예:강남역 헬스)" id="searchBar">
			<button id="searchBtn">검색</button>
			
			</div>
			<br>
			
			<c:forEach var="item" items="${list}">
			<div class="listArea">
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="${contextPath}/resources/uploadFiles/facility/${item.UPLOAD_NAME}">
				</div>
							<div class="contents">
							<h4>${item.FACILITY_NAME}</h4>
							<p>${item.FACILITY_ADDRESS}</p>
							 <div class="category"><b>${item.FACILITY_EVENT}</b></div>
							</div>
				</div>
				
				
				
				<!-- <div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
							
				</div> -->
				
				
			</div>
			</c:forEach>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
			</div>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
							
				</div>
				
				
			</div>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
			</div>
			
<script>
	
	function goDetail(){
		
		location.href="searchDetail.kch";
		
	}


</script>
			
			
			
			
		</div>
		<div class="mapArea">
			<div id="map" style="width:600px;height:660px;margin-left:10px;margin-top:10px;"></div>
		</div>
	</div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee07b51fccaa63308c2f880996e8bd91&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee07b51fccaa63308c2f880996e8bd91"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.4996847, 127.0349215), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(
				
			'서울 강남구 테헤란로 142',
			'서울 강남구 테헤란로 125',
			'서울 강남구 테헤란로8길 7',
			'서울 강남구 역삼동 823-40 3층',
			
		function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {

	        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new daum.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
		</script>

	</div>














</body>
</html>









