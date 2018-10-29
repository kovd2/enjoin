<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<style>
.wrap{
	width:100%;
}
.top{
	width:1100px;
	height:1000px;
	margin:0 auto;
	
}
.imgArea{
	/* background:gray; */
	width:1100px;
	height:400px;
	background:black;
	display:grid;
	position:relative;
	
}
.imgArea>img{
	width:1100px;
	height:400px;
	opacity:0.2;
	background:black;
}
.contentWrap{
	width:1100px;
	height:500px;
	background:yellow;
	display: -webkit-box;
	
}
.contentLeft{
	width:550px;
	height:500px;
	background:gray;
}
.contentRight{
	width:550px;
	height:500px;
	background:red;
	

}
.title{
    width: 400px;
    border: 1px solid #00bff0;
    position: absolute;
    height: 70px;
    text-align: center;
    margin: 110px 0px 0px 110px;
    font-weight: bold;
    padding-top: 5px;
    font-size: 40px;
    color: #00bff0;
    border-radius: 3px;

}
 .address{

	width:300px;
	position:absolute;
	height:70px;
	text-align:center;
	margin:160px 0px 0px 130px;
	font-weight:bold;
	padding:20px;
	font-size:20px;
	color:white;
	border-radius:3px;
}
 #request{
 
 	width:200px;
 	position:absolute;
 	height:70px;
 	margin:300px 0px 0px 820px;
 	text-align:center;
 	font-weight:bold;
 	padding:20px;
	font-size:20px;
	color:white;
 }
 #success{
 	width:200px;
 	position:absolute;
 	height:70px;
 	margin:300px 0px 0px 600px;
 	text-align:center;
 	font-weight:bold;
 	padding:20px;
	font-size:20px;
	color:white;
 
 }
 .resultContent{
	
	
	width:500px;
	height:150px;
	margin-top:420px;
	left:0;
	position:absolute;
	margin-left:50px;
	
}
.product{
	width:300px;
	color:#00bff0;
	margin-left:60px;
	text-align:center;
}
.product>img{
	width:30px;

}

.resultDate{
	width:500px;
	height:150px;
	margin-top:700px;
	left:0;
	position:absolute;
	margin-left:50px;
	
	
}
.time{
	width:300px;
	margin-left:60px;
	text-align:center;

}
.monToFri{
	color:black;
}
.sat{
	color:#0084c2;
}
.sun{
color:#f77d68;
}
.no{
color:#feab2a;
}
.resultAddress{
	width:500px;
	height:60px;
	margin-top:950px;
	left:0;
	position:absolute;
	margin-left:50px;
}
 .miniAddress{
	width:300px;
	margin-left:60px;
	text-align:center;
	
} 
.resultTel{

	width:500px;
	height:100px;
	margin-top:1000px;
	left:0;
	position:absolute;
	margin-left:50px;
	
}
.tel{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.detailPic{
	width:500px;
	height:320px;
	margin-top:420px;
	margin-left:550px;
	left:0;
	position:absolute;
}
#listwrap1{
	width:150px;
	height:300px;
	position:absolute;	

	
}

#listwrap1>.list{
	
	width:150px;
	height:100px;
	/* border:1px solid black; */
	padding:3px;
}
#listwrap2{
	margin-left:150px;
	width:150px;
	height:300px;
	position:absolute;
	
}
#listwrap2>.list{
	width:150px;
	height:100px;
	/* border:1px solid black; */
	padding:3px;
	
}
#listwrap3{
	margin-left:300px;
	width:150px;
	height:300px;
	position:absolute;
	
}
#listwrap3>.list{
	width:150px;
	height:100px;
	padding:3px;
	/* border:1px solid black; */
	
}
.list>img{
	width:140px;
	border-radius:3px;

}
.list>img:hover{
	
	opacity:0.5;
	cursor:pointer;	
	

}
.reviewWrap{
	
	width:500px;
	height:400px;
	margin-left:550px;
	margin-top:750px;
	position:absolute;
	left:0;
	padding-top:10px;
	border-top:1px solid #eee;
}

.rwArea{
	width:500px;
	height:100px;
	position:absolute;
	
	

}
.totalScore{
	width:500px;
	height:70px;
	position:absolute;
	border-bottom:1px solid #eee;	
	font-size:20px;
	
}
.totalScore>img{

	width:190px;
	height:46px;

}
.score{
	width:100px;
	height:50px;
	position:absolute;
	border-right: 1px solid #eee;
	margin-left:200px;
	padding:10px;
	font-size:30px;
	text-align:center;
	
}
.rwCountNum{
	width:200px;
	height:50px;
	position:absolute;
	margin-left:300px;
	text-align:center;
	font-size:20px;
	padding-top: 10px;

}

.rwList1{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee; 
	margin-top:80px;
	font-size:

}
.rwList1>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList1>.userDate{
	width:300px;
	height:30px;
	
}

.rwList1>.listScore{
	width:150px;
	height:45px;
	
	
}

.listScore>img{
	width:80px;
	height:40px;
	
}
.rwList1>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList2{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:210px;

}

.rwList2>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList2>.userDate{
	width:300px;
	height:30px;
}

.rwList2>.listScore{
	width:150px;
	height:45px;

}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList2>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList3{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:340px;

}

.rwList3>.userInfo{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}
.rwList3>.userDate{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}

.rwList3>.listScore{
	width:150px;
	height:45px;
	
	/* border:1px solid black; */
}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList3>.listContent{
	width:500px;
	height:30px;
	/* border:1px solid black; */
	color:black;
	
}

.contentArea{
	position:absolute;
	margin-top:0;
	top:100px;

}

#allReview{
    width: 500px;
    height: 50px;
    position: absolute;
    border: 1px solid #eee;
    margin-top: 470px;
    text-align: center;
    font-size:xx-large;
    box-shadow:3px 3px 3px 3px #999;
	

}
#allReview:hover{
	background:#ddd;
	cursor:pointer;
}
.footer{
	margin-top:450px;
	
}
.settingArea {
	z-index: 300;
	position: absolute;
	
	
}
</style>
</head>
<body>

		<jsp:include page="../common/menubar.jsp"/>
		
		<div class="wrap">
			<div class="top">
				<div class="imgArea">
				<img src="resources/images/informBoard/pila.png">
					<div class="title">
					 2번째 필라테스크루
					 
					</div>	
					<div class="address">
					서울특별시 강남구 역삼동 232-2<br>
					
					</div>
					<button type="button" id="success"class="btn btn-success">
					<i class="fa fa-address-card" style="font-size:24px"></i>
					신청하기</button>
					<button type="button" id="request"class="btn btn-warning">
					<i class="fa fa-user-circle-o" style="font-size:24px"></i>크루신청자보기</button>
				</div>
				<div class="contentArea">
				
				<div class="resultContent">
			<b>이용상품</b>
				<div class="product">
				 <b>헬스</b>
				 <img src="resources/images/searchMap/health.png">
				 <br><hr>
				 <b>p.t</b>
				 <img src="resources/images/searchMap/health.png">
				 <br><hr><br>
				 <b>- 이용 상품별로 PASS가 차감됩니다.</b><br>
				<b>- 이용 패스가 변경되는 경우에는 사전에 알려드립니다.</b>
				 
					</div>
			</div>
					
				<div class="resultDate">
				<b>이용시간</b>
				<div class="time">
				
				<p class="monToFri"><b>평일</b>  11:20 ~ 02:30</p><hr>
				<p class="sat"><b>토요일</b>  12:00 ~ 03:00</p><hr>
				<p class="sun"><b>일요일</b> 2:00 ~ 04:00</p><hr>
				<p class="no"><b>없음</b> 2:00 ~ 04:00</p><hr>
				</div>
				</div>	
				
				<div class="resultTel">
					<b>전화</b>
					<div class="tel">
					
					<p>02)1234-2323</p>
					</div>
				</div>
			
				
				<div class="resultAddress">
					<b>주소</b>
					<div class="miniAddress">
					
					<p>서울특별시 강남구 역삼동 123-3</p>
					</div>
				</div>
				
				<div class="detailPic">
				
					<b>제휴시설 미리보기</b>
				<div id="listwrap1">	
					<div class="list"> <img src="resources/images/searchMap/mb.jpg"></div>
					<div class="list"> <img src="resources/images/searchMap/mb5.jpg"></div>
					<div class="list"> <img src="resources/images/searchMap/mb2.png"></div>
				</div>
				
				<div id="listwrap2">	
					<div class="list"> <img src="resources/images/searchMap/mb3.jpeg"></div>
					<div class="list"> <img src="resources/images/searchMap/mb4.jpg"></div>
					<div class="list"><img src="resources/images/searchMap/mb4.jpg"></div>
				</div>
				
				<div id="listwrap3">	
					<div class="list"><img src="resources/images/searchMap/mb4.jpg"></div>
					<div class="list"><img src="resources/images/searchMap/mb4.jpg"></div>
					<div class="list"></div>
				</div>
					
				</div>
				
				
				<div class="reviewWrap">
					<b>회원리뷰</b>
					<div class="rwArea">
						<div class="totalScore">
						<img src="resources/images/searchMap/5score.png">
						</div>
						<div class="rwCountNum">
							이용회원 28명의 평가
						</div>
						<div class="score">
							<b>8.0</b>
						</div>
						
						<div class="rwList1">
							<div class="userInfo">
							<p><b>kch4*** 2018.10월 이용</b></p>
							</div>
							<div class="listScore">
							<img src=resources/images/searchMap/mini.png> 9.3
							
							</div>
							<div class="listContent"><b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b></div>
							
						</div>
						<div class="rwList2">
							<div class="userInfo">
							<p><b>kch4*** 2018.10월 이용</b></p>
							</div>
							<div class="listScore">
							<img src=resources/images/searchMap/mini.png> 9.3
							
							</div>
							<div class="listContent"><b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b></div>
							
						</div>
						<div class="rwList3">
							<div class="userInfo">
							<p><b>kch4*** 2018.10월 이용</b></p>
							</div>
							<div class="listScore">
							<img src=resources/images/searchMap/mini.png> 9.3
							
							</div>
							<div class="listContent"><b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b></div>
							
						</div>
						<div id="allReview" onclick="goReview()">
						<b>리뷰모두보기</b>
						
						</div>
						
						
					</div>
					
					
					
				</div>
				</div>
			</div>
		</div>
	<div id="settingArea" class="settingArea"></div>
	<div id="settingBoardArea" class="w3-modal"onclick="displayCancle();"></div>
	
	<jsp:include page="../common/footer.jsp"/>
		
<script>
	function goReview(){
		
		location.href="reviewForm.kch2";	
		
	}
	
	function displayCancle(){
		
		
	}

</script>




</body>
</html>