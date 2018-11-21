<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- css -->
 <link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet"> 


<!-- Theme skin -->
 <link href="resources/style/skins/default.css" rel="stylesheet"> 

<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=7fa72f902dc86dec58aeccf81d80e41a&libraries=services,clusterer,drawing"></script>
 



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
	width:1300px;
	height:800px;
	margin:0 auto;
	display: -webkit-box;
}

.searchArea{
	width:600px;
	height:800px; 
	background:#f5f5f5;
	margin-top:80px;
	overflow:scroll;
	
}
.searchArea::-webkit-scrollbar {display:none;}
.mapArea{
	
	width:750px;
	 height:800px;
	background:#bcdeb0;
	margin-top:80px;
	position:fixed;	
}
.searchWrap{
	margin-top:20px;
	margin-left:110px;
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
	height:38px;
	border:0px;
	background:#00bff0;
	outline:none; 
	float:right;
	color:#ffffff;
}

.listArea{
	width:295px;
	height:240px;
	/* background:black; */
	 margin-top:5px; 
	
	display:inline-flex;

}




.list{

	margin:2 auto;
	width:285px;
	background: #ffffff;
	height:240px;
	margin-left:10px;

}
.imgArea{
	
	width:275px;
	background:black;
	height:130px;
	margin:5px 0px 0px 5px;

}

.imgArea>img{
	width:275px;
	height:130px;
	border-radius:3px;
	

}

.contents{

	width:280px;
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

#loofWrap{
	width:100%;
	/* margin-top:70px; */


}

#previewArea{
	/* width: 300px; */
    /* height: 500px; */
    position: fixed;
    z-index: 10;
	margin-left:250px;
	margin-top:150px;
	

}
#closeBtnArea{
		background:red;
		width:30px;
		height:30px;
			

}
#modalWrap{
	width:100%;
}
.modalMiddle{
	width:340px;
	height:100%;
	margin:0 auto;
	background:gray;
	display:-webkit-box;
	border-radius:3px;
 	box-shadow:3px 3px 3px 3px #999;
}
.modalContent{
	width:320px;
	background:white;
	margin:10px 10px 10px 10px;
	

}
.imgModalArea{
	/* border-radius:3px; */
	width:300px;

}
.imgModalArea>img{
	
	border-radius:3px;
	width:300px;
	height:200px;
	margin:5px 0px 5px 10px;

}
#title{
	/* border:2px solid #00bff0; */
	/* border-radius:3px; */
	text-align:center;
	font-size:25px;
	/* width:300px;
	height:30px; */
	/* margin:10px; */
	color:#00bff0;
	padding-top:10px;

}
#address{
	
	text-align:center;
	font-size:15px;
	margin-top:20px;
}
#address>p{
text-align:center;
	font-size:15px;
	margin-top:20px;

}

#tel{

text-align:center;
	font-size:15px;
	margin-top:6px;



}

#pass{
	text-align:center;
	font-size:20px;
	margin-top:6px;
	height:30px;
	/* margin-left:120px; */
 	border-bottom:1px solid gray;
 	color:#00bff0;
 	display:-webkit-box;
 	margin:10px 30px 0 30px;
 	padding-left:95px;
 	
 	
}
#passImg{
width:40px;
height:20px;
}
#passImg>img{
	width:35px;
	height:26px;

}
#detail{
  border:2px solid #00bff0; 
	 border-radius:3px;
	 margin:20px 30px 30px 30px;
	height:40px;
	font-size:20px;
	text-align:center;
	vertical-align:center;
	padding:5px 10px 10px 10px;
	
}
#detail:hover{

	background:#00bff0;
	cursor:pointer;
}
#closeBtn{

    width: 45px;
    height: 27px;
    border: 1px solid black;
    border-radius: 3px;
    float: right;
    text-align: center;
}
.facility_address{
	height:30px;
}
</style>



<body>

<jsp:include page="../common/menubar.jsp"/>
<hr>




<div class="wrap">

	<div class="middle">
	
	
	
		<div class="searchArea">
			<div class="searchWrap">
			<form action="searchListFacility.kch" method="post" autocomplete="off">
			<input type="text" placeholder="지역/장소/카테고리를 입력하세요(예:강남역 헬스)" name="search" id="searchBar">
			<button id="searchBtn">검색</button>
			</form>
			</div>
			<br>
				<div id="loofWrap">
					<c:forEach var="item" items="${result}" varStatus="status">
						<div class="listArea">

							<div class="list" onclick="goDetail(${item.FACILITY_NO})">
								<div class="imgArea">
									<img src="${contextPath}/resources/uploadFiles/facility/${item.UPLOAD_NAME}">
								</div>
								<div class="contents">
									<h4>${item.FACILITY_NAME}</h4>
										<p class="facility_address">${item.TOTAL_ADDRESS}</p>
								<div class="category">
									<b>${item.FACILITY_EVENT}</b>
								</div>
								</div>
							</div>


						</div>
					</c:forEach>
				</div>
			</div>
		
		
		<div class="mapArea">
		<!-- 지도 -->
			<div id="map" style="width:730px;height:780px;margin-left:10px;margin-top:10px;"></div>
			
			
		</div>
			<!-- 모달영역 -->
			
			<div id="previewArea">
			 <jsp:include page="../searchMap/searchDetail.jsp"/> 
	
			</div> 
			<!-- 모달 -->	
		
		
	</div>
</div>


<script>
  $(document).ready(function(){  
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.4996847, 127.0349215), // 지도의 중심좌표 
	        level:5 // 지도의 확대 레벨
	        
	    };  
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	//주소값담을배열
	var addr=new Array();
	
	
	<c:forEach items="${result}" var="item">
	addr.push({name:"${item.FACILITY_NAME}",
				address:"${item.TOTAL_ADDRESS}",
				no:"${item.FACILITY_NO}"});
			
	</c:forEach>

	       
	for(var i=0; i<addr.length; i++){
            /* marker.setMap(null);  */
			 (function (i) { 
				console.log('들어오냐?');
		geocoder.addressSearch(addr[i].address,function(result,status){

			
			console.log('지오안쪽네임'+addr[i].name);
			//정상적으로 검색이 완료되었다!
			  if(status===daum.maps.services.Status.OK){
				
				 var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				 
                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new daum.maps.Marker({
                    map:map,
                    position:coords
    			 });
                
                 var iwContent='<div style="padding:5px;text-align:center;text-weight:bold;">'+addr[i].name+'</div>'

                var infowindow = new daum.maps.InfoWindow({
                	
                    content:iwContent
                });
                        
                daum.maps.event.addListener(map, 'dragend', function() {             
                    
                    // 지도 영역정보를 얻어옵니다 
                    var bounds = map.getBounds();
                    var pos = marker.getPosition();
                   	if(bounds.contain(pos)){
                   		
                   		$('#loofWrap').empty();
						console.log('if안에 뭐니꽈~~:'+addr[i].address);
						searchFacility(addr[i].address,addr[i].no);
						
                   	}else{
                   		
						noSearch();
						console.log('들어와?');
                   		
                   	}
                     
                });
         
               //마커의 중간값으로 위치가 변함
               map.setCenter(coords);    
               
            	
               
              daum.maps.event.addListener(marker, 'click', function () {
            	  
                    // 마커에 클릭 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                    goDetail(addr[i].no);
                    infowindow.open(map, marker);
                    
                  });
                 

			}
		})
		
	})(i); 
	}
 }); 
		
</script>
<script>

	function searchFacility(address,no){
		
		//$('#loofWrap').empty();   

		$.ajax({
			
			url:"searchFacility.kch",
			type:"post",
			data:{address:address,
						no:no},
			success:function(data){
				console.log(data);				  
		 /* $('#loofWrap').empty(); */    
				for(var key in data){
					
					$div0=$("<div class='listArea'>");
					$div1=$("<div class='list' onclick='goDetail("+data[key].FACILITY_NO+")'>");
					$div0.append($div1);
					$div2=$("<div class='imgArea'>");
					$div2.append("<img src=${contextPath}/resources/uploadFiles/facility/"+data[key].UPLOAD_NAME+">");
					$div1.append($div2); 
					$div3=$("<div class='contents'>");
					$div1.append($div3);
					$h4=$("<h4>");
					$h4.append(data[key].FACILITY_NAME);
					$div3.append($h4);
					$p=$("<p class='facility_address'>");
					$p.append(data[key].TOTAL_ADDRESS);
					$div3.append($p);
					$div4=$("<div class='category'>");
					$b1=$("<b>");
					$b1.append(data[key].FACILITY_EVENT);
					$div4.append($b1);
					$div3.append($div4);
					$('#loofWrap').append($div0);
					
					
				} 
		
			}
			
			
		});

	};



</script>
<script>
	function noSearch(){
		$('#loofWrap').empty();
	};
</script>


	
	

</body>
</html>









