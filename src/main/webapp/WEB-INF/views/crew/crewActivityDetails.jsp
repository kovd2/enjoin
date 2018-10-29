<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/style/js/slider/slider.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/style/css/slider/slider.css">
<title>Insert title here</title>
<style>
.body1 {
	width: 100%;
	margin-top: 40px;
}

.header {
	width: 1000px;
	height: 400px;
	margin: 0 auto;
	background: black;
}

.crewImgArea {
	position: static;
	background: none;
}

.crewImgBox {
	opacity: 0.3;
	position: absolute;
	width: 1000px;
	height: 400px;
	text-align: center;
}

.info {
	position: relative;
	left: 0;
	top: 0;
	padding-top: 50px;
	height: 100%;
	padding-left: 50px;
}

.crewNameLabel {
	font-size: 16px;
	line-height: 19px;
	height: 21px;
	vertical-align: middle;
	color: #00cbff;
	letter-spacing: 0;
	margin: 0 0 5px;
	display: inline-block;
	padding: 0 5px;
	border: 1px solid #00cbff;
	border-radius: 2px;
}

.crewTitle {
	display: block;
	color: white;
	margin-top: 10px;
	font-size: 30px;
}

.crewCatagory {
	color: #fff;
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}

.address {
	color: #fff;
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}

.crewDate {
	color: #fff;
	font-size: 20px;
}

.crewMember {
	color: #00cbff;
	margin-top: 10px;
}

.middleArea {
	width: 100%;
}

.middle {
	width: 1000px;
    height: 1570px;
    position: relative;
    top: 40px;
    margin: 0 auto;
    display: -webkit-box;
}

.crewContentBox {
	width: 500px;
	border: 1px solid #d0cfcf;
}

.crewImgBox2 {
	width: 500px;
	border: 1px solid #d0cfcf;
}

.crews {
	width: 480px;
	height: 486px; background : #f5f4f4; margin-left : 10px; margin-top :
	27px; border : 1px solid gainsboro;
	overflow-y: scroll;
	background: #f5f4f4;
	margin-left: 10px;
	margin-top: 27px;
	border: 1px solid gainsboro;
}

.crews::-webkit-scrollbar {
	display: none;
}

.hr1 {
	color: #737373;
}

i.fa.fa-twitch {
	margin-top: 3px;
	position: relative;
	top: 20px;
	left: 30px;
	display: -webkit-box;
}

.writerImg {
	width: 70px;
	height: 70px;
	border-radius: 35px;
	margin-left: 10px;
	margin-top: 10px;
}

.crewBoss {
	display: -webkit-inline-box;
	font-size: 18px;
	font-weight: bold;
	position: relative;
	top: 20px;
	left: 4px;
	color: #1159b5;
}

.AttWriter1 {
	margin: 0;
	font-size: 13px;
	font-weight: bold;
	margin-left: 10px;
}

.AttWriter2 {
	margin: 0;
	font-size: 13px;
	font-weight: bold;
	margin-left: 10px;
	color: #f98e2c;
}

.crewWiter {
	margin: 0;
	font-size: 13px;
	font-weight: bold;
	margin-left: 10px;
}

.crewWiter1 {
	margin: 0;
	font-size: 13px;
	color: #0084c2;
	font-weight: bold;
	margin-left: 10px;
}

.crewContentBox {
	width: 500px;
	border: 1px solid #d0cfcf;
}

h2.crewContent {
	color: #1f1f1f;
	font-size: 20px;
}

.Content {
	line-height: 55px;
	font-size: 13px;
	font-weight: bold;
	color: #7b7b7b;
	margin-left: 51px;
}

.crewAtt {
	color: #1f1f1f;
	font-size: 20px;
}

.AttWriter1 {
	margin: 0;
	font-size: 13px;
	font-weight: bold;
	margin-left: 10px;
}

.AttWriter2 {
	margin: 0;
	font-size: 13px;
	font-weight: bold;
	margin-left: 10px;
	color: #f98e2c;
}

.imgArea {
	width: 480px;
    height: 950px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
}
/* 이미지 슬라이드 */
.slider-wrapper {
	width: 430px;
}


.slider-title {
	font-size: 12px !important;
}


/* .container {
	width: 500px;
} */

.crewBoss1 {
	display: -webkit-inline-box;
	font-size: 18px;
	font-weight: bold;
	position: relative;
	top: 20px;
	left: 4px;
	color: #f98e2c;
}
/*여기까지  */
.imgAreas {
    margin-top: 40px;
}	
.imgBox {
	display: -webkit-inline-box;
}

.img1 {
	width: 200px;
	height: 150px;
	background: white;
	margin-left: 27px;
}

.img2 {
	width: 200px;
	height: 150px;
	background: white;
	margin-left: 26px;
}

.imgBox1 {
	display: -webkit-inline-box;
}

.img3 {
	width: 200px;
	height: 150px;
	background: white;
	margin-left: 27px;
	margin-top: 20px;
}

.img4 {
	width: 200px;
	height: 150px;
	background: white;
	margin-left: 25px;
	margin-top: 20px;
}

.crewImg1 {
	width: 100%;
	height: 100%;
	opacity: 0.7;
}

.crewImg2 {
	width: 100%;
	height: 100%;
	opacity: 0.7;
}

.crewImg3 {
	width: 100%;
	height: 100%;
	opacity: 0.7;
}

.crewImg4 {
	width: 100%;
	height: 100%;
	opacity: 0.7;
}

.crewImg1:hover {
	opacity: 1.0;
	-webkit-transform: scale(1.2); /*  크롬 */
	cursor: pointer;
	border:1px solid #d8d2d2;
}

.crewImg2:hover {
	opacity: 1.0;
	-webkit-transform: scale(1.2); /*  크롬 */
	cursor: pointer;
	border:1px solid #d8d2d2;
}

.crewImg3:hover {
	opacity: 1.0;
	-webkit-transform: scale(1.2); /*  크롬 */
	cursor: pointer;
	border:1px solid #d8d2d2;
}

.crewImg4:hover {
	opacity: 1.0;
	-webkit-transform: scale(1.2); /*  크롬 */
	cursor: pointer;
	border:1px solid #d8d2d2;
}
/* 댓글  */

.crewCommentBox{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-top: 40px;
    color: #0084c2;
    margin-left: 10px;
}
p.crewComentBox1{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
p.crewComentBox2{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
.commentBox{
	width: 480px;
    height: 794px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
    overflow-y: scroll;
}
.commentBox::-webkit-scrollbar {display:none;}
.UserImg{
	width: 70px;
    height: 70px;
    border-radius: 35px;
    margin-left: 10px;
    margin-top: 10px;
}
.MemberCommont{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
}
.userId{
	position: relative;
    top: 9px;
    color: #1159b5;
    font-weight: bold;
    display: -webkit-inline-box;
}
.Comment1{
	height: 110px;
    margin-left: 15px;
}
.Comment::-webkit-scrollbar {display:none;}
.area1{
	width: 360px;
    height: 50px;
    border: 1px solid gray;
    background: white;
    border-radius: 10px;
    overflow: scroll;
}
.area1::-webkit-scrollbar {display:none;}
.crewOk {
	color: #1159b5;
    font-weight: bold;
}
.editBtn{
    margin-left: 5px;
    font-weight: bold;
}
.deleteBtn{
	margin-left:5px;
	font-weight: bold;
}
.commentWriter {
    margin-left: 10px;
    width: 408px;
}
.Comment{
    font-size: 12px;
    color: #525354;
    font-weight: bold;
}
.spansBtn{
	display: inline-block;
    float: right;
    margin-right: 10px;
    margin-top: 9px;
}
.commentWriterBtn{
	color: white;
    background: #0084c2;
    border-radius: 8px;
    border: 1px solid gray;
    width: 70px;
}
.crewPickMember{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-top: 59px;
    color: #0084c2;
    margin-left: 10px;
}
.crewPickMember1{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
.crewPickBox1{
	width: 480px;
    height: 560px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
    overflow-y: scroll;
}
.crewPickBox1::-webkit-scrollbar {display:none;}
.crewPickBox2{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
}
.crewMemberTitle{
	position: relative;
    top: 9px;
    color: #f98e2c;
    font-weight: bold;
    display: -webkit-inline-box;
    margin-left: 15px;
}
.crewPickArea{
	width: 400px;
}
.crewPick{
	font-size: 25px;
    margin-top: 10px;
    margin-left: 14px;
    font-weight: bold;
    color: #1159b5;
}
.logo{
	width: 66px;
    margin-left: 197px;
    margin-top: 10px;
}
.footerAlt .logoLine {
    border-bottom: 1px solid #eee;
    padding-bottom: 10px;
    padding-top: 10px;
    left: -200px;
}
.slider-wrapper li:hover .caption{
	border:1px solid black;
	cursor:pointer;
} 
/*  크루원보여주는 창  */
.crewMembers{
	width: 481px;
    height: 378px;
    border: 1px solid gainsboro;
    margin-top: 5px;
    margin-left: 10px;
    background: #f5f4f4;
    overflow-y: scroll;
}
.crewMembers::-webkit-scrollbar {display:none;}
.AttWriter3{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-left: 10px;
    margin-top: 15px;
}
.AttWriter4{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-left: 10px;
    color: #f98e2c;
}
.crewBoss3 {
    color: #f98e2c;
    font-weight: bold;
    font-size: 25px;
    margin-left: 19px;
    margin-top: 10px;
}
.crewBossName {
    margin-top: -13px;
    margin-left: 18px;
    font-size: 25px;
    color: #676767;
    font-weight: bold;
}
/* 크루원  */
.crewMembers3{
    color: #0084c2;
    font-weight: bold;
    font-size: 25px;
    margin-left: 21px;
    margin-top: 10px;
}
.crewMemberNames{
	margin-top: -13px;
    margin-left: 18px;
    font-size: 25px;
    color: #676767;
    font-weight: bold;
}
.i.fa.fa-diamond{
	font-size: 25px;
    margin-right: -4px;
    position: relative;
    right: 5px;
}

</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="body">
		<div class="header">
			<div class="crewImgArea">
				<%-- <img class="crewImgBox" src="${ contextPath }/resources/images/crew/shutterstock_269242565.jpg"> --%>
				<img class="crewImgBox"
					src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif">
				<div class="info">
					<h3>
						<smail class="crewNameLabel">ENJOIN 크루활동</smail>
						<span class="crewTitle">김창희의 런닝크루 한강을 달리다.</span>
						<p class="crewCatagory">런닝</p>
						<p class="address">서울 강남구 한강</p>
						<span class="crewDate">활동일시 2018-10-26 ~ 2018-11-26</span>
						<p class="crewMember">활동인원 7명</p>
					</h3>
				</div>
			</div>
		</div>
		<div class="middleArea">
			<div class="middle">
				<div class="crewContentBox">
					<h2 class="crewContent">크루활동 내용</h2>
					<hr class="hr1">
					<p class="crewWiter">- 크루 활동에대한 설명글 입니다.</p>
					<p class="crewWiter1">- 크루님들의 생생한 경험을 전달해주세요!</p>
					<div class="crews">
						<img class="writerImg"
							src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif">
						<p class="crewBoss">김창희님</p>
						<hr>
						<i class="fa fa-twitch" style="font-size: 36px" class="btn1"></i>
						<div class="crews2">
							<p class="Content">
								안녕하세요 김창희런닝크루 크루장 입니다.<br> 이번에는 크루들끼리 뼈빠지게 한강을 달렸습니다! 정말
								힘들었어요 왜하는지도 모르겠고요 그냥 주저리 해봤네요 여러분들은 한강을 달리시나요? 집에서 쉬는게 최고입니다
								여러분들! 한강은 자전거를 타는거지 달리려고 있는곳이 아니에요 그럼이만! 아 한강은 뭐다? 치킨먹는곳!
							</p>
						</div>
					</div>
					<div class="crewcomment">
						<p class="crewCommentBox">-회원님들의 댓글을 작성할수 있는곳입니다.</p>
						<p class="crewComentBox1">-크루에 대해서 자유롭게 소통하세요!</p>

						<div class="commentBox">
							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/KakaoTalk_20180817_154814344.gif">
								<div class="Comment1">
									<p class="userId">파스구찌또치님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">나는 사나이다. 조장이라구 이춘복 참치는 안간다.나는 회를 싫어한다고
										</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/10.jpg">
								<div class="Comment1">
									<p class="userId">또치님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">저는 또치 입니다.</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/1521087687340.gif">
								<div class="Comment1">
									<p class="userId">할리스지옥님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">할리스커피맛있쪙</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif">
								<div class="Comment1">
									<p class="userId">7그램짱짱님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">이곳은 너무 창렬합니다. 모두들 알고 있졍?? 뭐 다 그런거
											아니겠습니까</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/20180111_hazzys_acc-e1515632554131.jpg">
								<div class="Comment1">
									<p class="userId">할께너무많아님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">할꺼는 너무많고 졸립고 피곤하고 또 피곤합니다.^^</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/235E8E33597B3F3529.jpg">
								<div class="Comment1">
									<p class="userId">인생그것은무엇인가님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">인생그것은 한순간이다 알아둬</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/441771_92228_4732.jpg">
								<div class="Comment1">
									<p class="userId">설빙님</p>
									<div class="spansBtn">
										<span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">설빙맛없쪄여</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->

							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/536d81c07984b66dbdf623032ee4dd5b.jpg">
								<div class="Comment1">
									<p class="userId">감성발라더님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">이시대의 최고 댄스곡은 뭐다? 뭐다!</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->
							
							<!-- 여기부터 반복문  -->
							<div class="MemberCommont">
								<img class="UserImg"
									src="${ contextPath }/resources/images/crew/test/536d81c07984b66dbdf623032ee4dd5b.jpg">
								<div class="Comment1">
									<p class="userId">감성발라더님</p>
									<div class="spansBtn">
										 <span style="color: gray" class="editBtn"> <i
											class="fa fa-edit"> </i> 수정
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">이시대의 최고 댄스곡은 뭐다? 뭐다!</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->
							
							
							
						</div>
							<div class="commentWriterBox">
						 		<form>
						 			<table>
						 				<tr>
						 					<td colspan="2">
						 						<input type="text" class="commentWriter" placeholder="크루신청 댓글을 작성해주세요!">
						 						<button class="commentWriterBtn">작성하기</button>
						 					</td>
						 				</tr>
						 			</table>
						 		</form>
						 	</div>
					</div>
				</div>
					<div class="crewImgBox2">
						<h2 class="crewAtt">크루활동이미지</h2>
						<hr>
						<p class="AttWriter1">- 김창희 런닝크루의 이미지</p>
						<p class="AttWriter2">- 크루님들의 생생한 경험을 전달해주세요!</p>
						<div class="imgArea">
							<img class="writerImg"
								src="${ contextPath }/resources/images/crew/test/65446473_1_1504278084_w640.jpg">
							<p class="crewBoss1">김창희의 런닝크루</p>
							<hr>
							<section id="slider">
								<ul class="slider-wrapper">
									<li class="current-slide"><img
										src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">크루활동 첫번째 사진입니다.</h2>
											<p>김창희의 런닝크루</p>
										</div></li>
									<li><img
										src="${ contextPath }/resources/images/crew/test/KakaoTalk_20180817_154814344.gif"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">크루활동 두번째 사진입니다.</h2>
											<p>김창희의 런닝크루</p>
										</div></li>
									<li><img
										src="${ contextPath }/resources/images/crew/test/20180111_hazzys_acc-e1515632554131.jpg"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">크루활동 세번째 사진입니다.</h2>
											<p>김창희의 런닝크루</p>
										</div></li>
									<li><img
										src="${ contextPath }/resources/images/crew/test/235E8E33597B3F3529.jpg"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">크루활동 네번째 사진입니다.</h2>
											<p>김창희의 런닝크루</p>
										</div></li>
								</ul>
								<!-- Sombras -->
								<div class="slider-shadow"></div>
								<!-- Controles de Navegacion -->
								<ul id="control-buttons" class="control-buttons"></ul>
							</section>
							<div class="imgAreas">
								<table>
									<tr>
										<td colspan="2" class="imgBox">
											<div class="img1">
												<img
													src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif"
													class="crewImg1">
											</div>
											<div class="img2">
												<img
													src="${ contextPath }/resources/images/crew/test/KakaoTalk_20180817_154814344.gif"
													class="crewImg2">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="imgBox1">
											<div class="img3">
												<img
													src="${ contextPath }/resources/images/crew/test/20180111_hazzys_acc-e1515632554131.jpg"
													class="crewImg3">
											</div>
											<div class="img4">
												<img
													src="${ contextPath }/resources/images/crew/test/235E8E33597B3F3529.jpg"
													class="crewImg4">
											</div>
										</td>
									</tr>
								</table>
							</div>
							
						</div>
							<div class="crewMembersWriterBox">
								<p class="AttWriter3">- 크루의 해당되는 회원을 확인 할수 있습니다.</p>
								<p class="AttWriter4">- 김창희 런닝크루의 크루원</p>
							
							</div>
							<div class="crewMembers">
								<!--크루장  -->
								<div class="MemberCommont">
									<img class="writerImg"
										src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif">
										<div class="crewMember5">
										<p class="crewBoss3"><i class="fa fa-star"></i>크루장</p>
										<p class="crewBossName"><i class="fa fa-user-circle"></i>김창희</p>
										</div>
								</div>
								<!-- 여기까지  -->
								<!--크루원  -->
								<div class="MemberCommont">
									<img class="writerImg"
										src="${ contextPath }/resources/images/crew/test/65446473_1_1504278084_w640.jpg">
										<div class="crewMember5">
										<p class="crewMembers3"><!-- <i class="fa fa-diamond" style="margin-left:-4px"></i> --><i class="fa fa-users" style="margin-left:-4px"></i>크루원</p>
										<p class="crewMemberNames"><i class="fa fa-user-circle"></i>할리스지옥</p>
										</div>
								</div>
								<!-- 여기까지  -->
							</div>
					</div>
			</div>
					<jsp:include page="../common/footer.jsp"/>
		</div>
</body>
</html>