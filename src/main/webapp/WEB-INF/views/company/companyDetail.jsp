<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ENJOIN</title>

<style>

.realUserReview .btnMore {
    display: block;
    margin-top: 5px;
    padding: 10px 0;
    font-size: 13px;
    font-weight: 600;
    text-align: center;
    text-decoration: none;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 2px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

body {
    font: 14px/1.6 'Noto Sans Korean', 'Apple SD Gothic Neo', "맑은 고딕", "Malgun Gothic", Helvetica, Arial, sans-serif;
    font-weight: 400;
    color: #444;
    background: #fff;
}

.resultMiddle{


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
    font-size: 14px;
    opacity: 0.8;
}
.aq{
    font-weight: 400;
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
	width:500px;
	height:300px;
	position:absolute;	
}

#listwrap1>.list{	
	width:245px;
	height:140px;
	/* border:1px solid black; */
	padding:3px;
	display:inline-block;
}
#listwrap1>.list>img{
	width:245px;
	height:140px;
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
	
	width:140px;
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
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<jsp:include page="companyLeft.jsp" />
	</div>

	<div class="resultTop">
		<div class="resultMiddle">
			<div class="resultList">
			
				<div class="imgArea">
					<img src="resources/uploadFiles/facility/${ comImg[0].UPLOAD_NAME }">
				</div>
				
				
				<div class="imgTitle">
					<b>${ com.FACILITY_NAME }</b>
				</div>
				<div class="imgAddress">
					<b>${ com.FACILITY_ADDRESS }</b><br>
				</div>
				<div class="imgTel">
					<b>${ com.FACILITY_MANAGER_PHONE }</b>
				</div>
				<div class="like">
					<i class="glyphicon glyphicon-thumbs-up"></i> 1230
				</div>
				<div class="preview">
					<i class="fa fa-file-image-o"></i> <b>시설미리보기</b>
				</div>
				<div class="enBtn">
					<i class="fa fa-address-card"></i> <b>시설이용하기</b>
				</div>
				<div class="totalCount">
					누적이용수 <b class="aq">222</b>

				</div>

			</div>
			<div class="rowWrap">
				<div class="left">
					<div class="resultContent">
						<b>이용상품</b>
						<div class="product">
							<b>${ com.FACILITY_EVENT }</b> <img src="resources/images/searchMap/health.png">
							<br>
							<hr>
							<b>p.t</b> <img src="resources/images/searchMap/health.png">
							<br>
							<hr>
							<br> 
							<b>- 이용 상품별로 PASS가 차감됩니다.</b><br> <b>- 이용 패스가
								변경되는 경우에는 사전에 알려드립니다.</b>

						</div>
					</div>

					<div class="resultDate">
						<b>이용시간</b>
						<div class="time">

							<p class="monToFri">
								<b>평일</b>${ com.MON_FRI_TIME }
							</p>
							<hr>
							<p class="sat">
								<b>토요일</b>${ com.SAT_TIME }
							</p>
							<hr>
							<p class="sun">
								<b>일요일</b>${ com.SUN_TIME }
							</p>
							<hr>

						</div>
					</div>

					<div class="resultTel">
						<b>전화</b>

						<div class="tel">

							<p>${ com.PHONE }</p>
							<hr>
						</div>
					</div>


					<div class="resultAddress">
						<b>주소</b>
						<div class="address">

							<p>${ com.FACILITY_AREA } ${ com.FACILITY_SECTION } ${ com.FACILITY_ADDRESS }</p>
							<hr>
						</div>
					</div>
				</div>
				
				

				<div class="right">
					<div class="detailPic">

						<b>제휴시설 미리보기</b>
						<div id="listwrap1">
						<c:forEach var="ci" items="${ comImg }" varStatus="status">
							<div class="list">
								<img src="resources/uploadFiles/facility/${ ci.UPLOAD_NAME }">
							</div>
						</c:forEach>
						</div>
					</div>
					
					<div class="reviewWrap">
						<b>회원리뷰</b>
						<div class="rwArea">
							<div class="totalScore">
								<img src="resources/images/searchMap/5score.png">
							</div>
							<div class="rwCountNum">이용회원 28명의 평가</div>
							<div class="score">
								<b>8.0</b>
							</div>

							<div class="rwList1">
								<div class="userInfo">
									<p>
										<b>kch4*** 2018.10월 이용</b>
									</p>
								</div>
								<div class="listScore">
									<img src="resources/images/searchMap/mini.png"> 9.3

								</div>
								<div class="listContent">
									<b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b>
								</div>

							</div>
							<div class="rwList2">
								<div class="userInfo">
									<p>
										<b>kch4*** 2018.10월 이용</b>
									</p>
								</div>
								<div class="listScore">
									<img src="resources/images/searchMap/mini.png"> 9.3

								</div>
								<div class="listContent">
									<b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b>
								</div>

							</div>
							<div class="rwList3">
								<div class="userInfo">
									<p>
										<b>kch4*** 2018.10월 이용</b>
									</p>
								</div>
								<div class="listScore">
									<img src="resources/images/searchMap/mini.png"> 9.3

								</div>
								<div class="listContent">
									<b>유익하고 너무 즐거웠습니다.시설도 너무 맘에 들고 다시 오고싶네요</b>
								</div>
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
	
		<script>
	function goReview(){
		
		location.href="reviewForm.kch";	
		
	}
	
	
	</script>


	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>