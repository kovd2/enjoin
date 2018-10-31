<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.resultTop{
	width:100%;


}
.resultMiddle{

	width:1100px;
	height:100%;
	margin:0 auto;
	/* display:-webkit-box; */
	/* position:relative; */


}
.resultList{
	
	width:1100px;
	height:400px; 
	background:#f5f5f5;
	display:-webkit-box;
}
.imgArea{
	width:1100px;
	height:400px;
	background:black;
	display:-webkit-box;
    position:absolute;              
   
	
}
.imgArea>img{

	width:1100px;
	height:400px;
	background:black;
	opacity:0.3;
	
}



.imgTitle{
	
	position: absolute;
    font-size: -webkit-xxx-large;
    margin: 80px 0px 0px 150px;
    border: 1px solid #00bff0;
    padding: 20px;
    border-radius: 3px;
    color: #00bff0;
    
}
.imgAddress{
	position:absolute;
	color:white;
	margin:200px 0px 0px 160px;
}

.imgTel{

	position:absolute;
	color:white;
	margin:220px 0px 0px 160px;

}

.like{
	position: absolute;
    color: white;
    margin: 250px 0px 0px 160px;
    border: 2px solid white;
    border-radius: 3px;
    width: 60px;
    padding: 3px;
}
.like:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.preview{
	position: absolute;
    color: white;
    margin: 300px 0px 0px 800px;
    border: 2px solid white;
    border-radius:3px;
    width: 130px;
    padding: 10px 0px 10px 20px;
    
}

.preview:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.totalCount{
	width:1050px;
	background:rgba(13,31,53,0.7);
	position:absolute;
	color:white;
	margin: 380px 10px 10px 0px;
	padding-left:160px;
	/* opacity:0.1; */
	
}
.resultContent{
	
	
	width:500px;
	height:150px;
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
	height:260px;
	margin-top:100px;
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
	
	
	
	margin-left:50px;
}
.address{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.resultTel{

	width:500px;
	height:50px;
	
	
	
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
.enBtn{
	
	width:130px;
	height:50px;
	position:absolute;
	color:#00bff0;
	border:2px solid #00bff0;
	border-radius:3px;
	margin-left:800px;
	margin-top:240px;	
	padding:12px;	
	
}
.enBtn:hover{
	background:white;
	border-color:white;
	cursor:pointer;

}

.left{
	width:550px;
	height:800px;
	margin-top:30px;
}

.right{
	width: 550px;
    height: 900px;
    margin-top:30px;

}
.rowWrap{
	display: -webkit-box;
    width: 1100px;
}
.time>hr{
	margin-top:20px;
	margin-bottom:15px;
	border-top: 1px solid #eee;
}
#allReview{
    width: 500px;
    height: 50px;
    position: absolute;
    border: 1px solid #eee;
    margin-top: 20px;
    text-align: center;
    font-size:xx-large;
    box-shadow:3px 3px 3px 3px #999;
	

}
#allReview:hover{
	background:#ddd;
	cursor:pointer;
}


</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	
	
	
	<div class="resultTop">
		<div class="resultMiddle">
			<div class="resultList">
			<div class="imgArea">
			<img src="resources/images/searchMap/mb.jpg">
			</div>
			<div class="imgTitle">
				<b>또치헬스장</b>
			</div>
			<div class="imgAddress">
			 <b>서울 강남구 역삼동 233-2</b><br>
			</div>
			<div class="imgTel">
			<b>02)1234-4565</b>
			</div>
			<div class="like">
			<i class="glyphicon glyphicon-thumbs-up"></i>
			1230
			</div>
			<div class="preview">
				<i class="fa fa-file-image-o"></i>
					<b>시설미리보기</b>
			</div>
			<div class="enBtn">
				<i class="fa fa-address-card"></i>
				<b>시설이용하기</b>
			</div>
			<div class="totalCount">
				누적이용수 <b>222</b>
			
			</div>
				
			</div>
			<div class="rowWrap">
			<div class="left">
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
				
				<p class="monToFri"><b>평일</b>11:20 ~ 02:30</p><hr>
				<p class="sat"><b>토요일</b>12:00 ~ 03:00</p><br><hr>
				<p class="sun"><b>일요일</b> 2:00 ~ 04:00</p><hr>
				
				</div>
				</div>	
				
				<div class="resultTel">
					<b>전화</b>
					
					<div class="tel">
					
					<p>02)1234-2323</p><hr>
					</div>
				</div>
			
				
				<div class="resultAddress">
					<b>주소</b>
					<div class="address">
					
					<p>서울특별시 강남구 역삼동 123-3</p><hr>
					</div>
				</div>
				</div>
				
				<div class="right">
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
							 <div id="allReview" onclick="goReview()">
							<b>리뷰모두보기</b>
						
						</div> 
						</div>
						
						
						
						
					</div>
					
				</div>
			
			
			</div>
			</div>
			</div>
			
		</div>
<jsp:include page="../common/footer.jsp"/>
	<script>
	function goReview(){
		
		location.href="reviewForm.kch";	
		
	}
	
	
	</script>



</body>
</html>