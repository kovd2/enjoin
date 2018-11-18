<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   	
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
    color: #12181f;
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
/* 대댓글 css  */
.MemberCommont1{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
    background: #efecec;
}
.UserImg1{
	width: 60px;
    height: 60px;
    border-radius: 30px;
    margin-top: 22px;
    position: relative;
    left: -22px;
}
i.fa.fa-tag {
    color: #443d39;
    margin-top: 6px;
    position: relative;
    left: 5px;
}
i.fa.fa-level-down {
	font-size: 20px;
    position: relative;
    left: 16px;
}
i.fa.fa-comments{
	color: #7faeea;
    margin-top: 6px;
    position: relative;
    left: 4px;
    top: 9px;
}
.userId1{
	position: relative;
    top: 9px;
    color: #12181f;
    font-weight: bold;
    display: -webkit-inline-box;
}
.ComentP{
	font-size: 2px;
    position: relative;
    top: 0px;
    left: -1px;
    font-weight: bold;
    color: #4e4d4d;
}
.Comment2{
	height: 110px;
    margin-left: -8px;
}

</style>
</head>
<script>
	function goActivityComent(){
		$.ajax({
			url  : "crewComent1.shw2",
			type : "post",
			data : $("#coment3").serialize(),
			success:function(data){
				
				$(".commentBox").empty();
				
				for(var key in data){
						if(data[key].parent_Coment_No == 0){
						
						$div0=$("<div class='MemberCommont'id='MemberCommont'>");
					
						$div0.append("<img class='UserImg'src=${contextPath}/resources/uploadFiles/myPage/profil/"+data[key].upload_Name+">");
						
						$div1=$("<div class='Comment1'>");
						$div0.append($div1);
						
						$p1=$("<p class='userId'>");
						$div1.append($p1);
						
						$p1.append(data[key].user_Name);
						
						$div2=$("<div class='spansBtn'>");
						$div1.append($div2);
						
												
						$span1=$("<span class='crewOk'>");
						$div2.append($span1);
						$i1=$("<i class='fa fa-user-circle'>");
						
						$span1.append($i1);
						$span1.append('답글');
						
						$input1 = $("<input class='check1' type='checkbox' name='check' value='check' onclick='check(" + data[key].coment_No + ")'>");
						$span1.append($input1);
						
						$span2=$("<span class='deleteBtn'>");
						$div2.append($span2);
						
						$i2 = $("<i clss='fa fa-trash'>");
						$span2.append($i2);
						$span2.append('삭제');
						
						$div3=$("<div class='area1'>");
						$div1.append($div3);
						
						$p2=$("<p class='Comment'>");
						$div3.append($p2);
						
						$p2.append(data[key].coment_Content);
						
						
						$('.commentBox').append($div0);
						$(".check1").attr("name","uncheck");
						
						
						
						
						
					}else if(data[key].parent_Coment_No != 0){
						$('#test').remove();
							
							$('#test1').remove();
						$div0=$("<div class='MemberCommont1'>");
						$i1=$("<i class='fa fa-comments'>");
						$div0.append($i1);
						
						$span0=$("<span class='ComentP'>");
						$div0.append($span0);
						$span0.append('답글');
						$div0.append("<img class='UserImg1'src=${contextPath}/resources/uploadFiles/myPage/profil/"+data[key].upload_Name+">");
						
						$div1=$("<div class='Comment2'>");
						$div0.append($div1);
						
						$p0=$("<p class='userId1'>");
						$div1.append($p0);
						$p0.append(data[key].user_Name);
						
						$div2=$("<div class='spansBtn'>");
						$div1.append($div2);
						
						$span1=$("<span class='deleteBtn'>");
						$div2.append($span1);
						
						$i2=$("<i class='fa fa-trash'>");
						
						$span1.append($i2);
						$i2.append('삭제');
						
						$div3=$("<div class='area1'>");
						$div1.append($div3);
						
						$p1=$("<p class='Comment'>");
						$div3.append($p1);
						$p1.append(data[key].coment_Content);
						
						$('.commentBox').append($div0);
						$(".check1").attr("name","uncheck");
					
						
						
						
					}
					
					
					
					
				}
				
				
			},
			
		});
		
		return false;
	}  


</script>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<c:set var="ac" value="${ac}"/>
	<c:set var="ac1" value="${ac1}"/>
	<div class="body">
		<div class="header">
			<div class="crewImgArea">
				<%-- <img class="crewImgBox" src="${ contextPath }/resources/images/crew/shutterstock_269242565.jpg"> --%>
				
				<c:forEach var="i1" items="${map.list1}" varStatus="status1">
						<c:if test="${status1.index eq 0}">
				<img class="crewImgBox"
					src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}">
						</c:if>
				</c:forEach>		
						<c:forEach var="i" items="${map.list}" varStatus="status1">
						<c:if test="${status1.index eq 0}">
				<div class="info">
					<h3>
						<smail class="crewNameLabel">ENJOIN 크루활동</smail>
						<span class="crewTitle">${i.board_Title }</span>
						<p class="crewCatagory">${i.category_Name }</p>
						<p class="address">${i.crew_Area }</p>
						<span class="crewDate">활동일시 ${i.start_Date }</span>
						<p class="crewMember">활동인원 ${i.crew_Count }명</p>
					</h3>
				</div>
					</c:if>
					</c:forEach>
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
							src="${ contextPath }/resources/uploadFiles/myPage/profil/${ac.upload_Name}">
						<p class="crewBoss">${ac.user_Name }</p>
						<hr>
						<i class="fa fa-twitch" style="font-size: 36px" class="btn1"></i>
						<c:forEach var="i" items="${map.list}" varStatus="status1">
						<c:if test="${status1.index eq 0}">
						<div class="crews2">
							<p class="Content">
								안녕하세요 ${ac1.crew_Name} 크루장 입니다.<br> ${i.board_Content }
							</p>
						</div>
						</c:if>
						</c:forEach>
					</div>
					<div class="crewcomment">
						<p class="crewCommentBox">-회원님들의 댓글을 작성할수 있는곳입니다.</p>
						<p class="crewComentBox1">-크루에 대해서 자유롭게 소통하세요!</p>

						<div class="commentBox">
							<!-- 여기부터 반복문  -->
							<c:forEach var="c" items="${map.list3}" varStatus="status">
							<c:choose>
									<c:when test="${c.parent_Coment_No == 0 }">			
							<div class="MemberCommont" id="MemberComment">
								<img class="UserImg"
									src="${ contextPath }/resources/uploadFiles/myPage/profil/${c.upload_Name}">
								<div class="Comment1">
									<p class="userId">${ c.user_Name }</p>
									<div class="spansBtn">
										
										<span  class="crewOk">
						 					<i class="fa fa-user-circle">
						 					</i>
						 					답글<input class="check1" type="checkbox" name="check" value="check" onclick="check(${c.coment_No})">
						 				</span>
										
										
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">${c.coment_Content }
										</p>
									</div>
								</div>
							</div>
							<!-- 여기까지  -->
							</c:when>
							<c:when test="${c.parent_Coment_No != 0 }">
							<!-- 여기부터 반복문  -->
							<div class="MemberCommont1">
								<i class="fa fa-comments" style="font-size:22px"></i>
								<span class="ComentP">답글</span>
								<img class="UserImg1"
									src="${ contextPath }/resources/uploadFiles/myPage/profil/${c.upload_Name}">
								<div class="Comment2">
									<p class="userId1">${ c.user_Name }</p>
									<div class="spansBtn">
										</span> <span style="color: gray" class="deleteBtn"> <i
											class="fa fa-trash"> </i> 삭제
										</span>
									</div>
									<div class="area1">
										<p class="Comment">${c.coment_Content }
										</p>
									</div>
								</div>
							</div>
							
							</c:when>
							</c:choose>
			
							</c:forEach>
							
							
							
							
						</div>
							<div class="commentWriterBox" id="comentBox1">
						 		<form class="comment" id="coment3">
						 			<table>
						 				<tr>
						 					<td colspan="2">
						 						<script>
						 						 function check(coment_No){
							 							var check = $("input:checkbox[class=check1]:checked").val();
							 							
							 							if(check=="check"){
							 							$inputHidden = $('<input type="hidden" name="checked11" id="test">').attr('value',check);
							 							$('.comment').append($inputHidden);
							 							
							 							
							 							$inputHidden1 = $('<input type="hidden" name="coment_No" id="test1">').attr('value',coment_No);
							 							$('.comment').append($inputHidden1);
							 								
							 							}else{
								 							$('#test').remove();
								 							
								 							$('#test1').remove();
							 							}
							 							
							 						 }
						 						</script>
						 						<c:forEach var="i" items="${map.list}" varStatus="status">
						 						<input type="hidden" value="${i.board_No}" name="board_No">
						 						<input type="hidden" value="abc" name="capy">
						 						<input type="hidden" value="${i.crew_No }" name="crew_Id" id="crew_No">
						 						<input type="text" class="commentWriter" name="coment_Content" placeholder="크루신청 댓글을 작성해주세요!" ">
						 						<button type="button" class="commentWriterBtn" onclick="goActivityComent()">작성하기</button>
						 						</c:forEach>
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
						<p class="AttWriter1">- ${ac1.crew_Name } 크루의 이미지</p>
						<p class="AttWriter2">- 크루님들의 생생한 경험을 전달해주세요!</p>
						<div class="imgArea">
							<img class="writerImg"
								src="${ contextPath }/resources/uploadFiles/crew/crewRecruitment/${ac1.upload_Name}">
							<p class="crewBoss1">${ac1.crew_Name }</p>
							<hr>
							<section id="slider">
								<ul class="slider-wrapper">
									<c:forEach var="i1" items="${map.list1}" varStatus="status1">
									<c:if test="${status1.index eq 0}">
									<li class="current-slide"><img
										src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">${ac1.crew_Name} 크루활동 첫번째 사진입니다.</h2>
											<p>${ac1.crew_Name}</p>
										</div></li>
									</c:if>
									</c:forEach>
									<c:forEach var="i1" items="${map.list1}" varStatus="status1">
									<c:if test="${status1.index eq 1}">	
									<li><img
										src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">${ac1.crew_Name} 크루활동 두번째 사진입니다.</h2>
											<p>${ac1.crew_Name}</p>
										</div></li>
									</c:if>
									</c:forEach>
									<c:forEach var="i1" items="${map.list1}" varStatus="status1">
									<c:if test="${status1.index eq 2}">		
									<li><img
										src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">${ac1.crew_Name} 크루활동 세번째 사진입니다.</h2>
											<p>${ac1.crew_Name}</p>
										</div></li>
									</c:if>
									</c:forEach>
									<c:forEach var="i1" items="${map.list1}" varStatus="status1">
									<c:if test="${status1.index eq 3}">		
									<li><img
										src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
										title="" alt="">
										<div class="caption">
											<h2 class="slider-title">${ac1.crew_Name} 크루활동 네번째 사진입니다.</h2>
											<p>${ac1.crew_Name}</p>
										</div></li>
									</c:if>
									</c:forEach>	
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
											<c:forEach var="i1" items="${map.list1}" varStatus="status1">
											<c:if test="${status1.index eq 0}">	
											<div class="img1">
												<img
													src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
													class="crewImg1">
											</div>
											</c:if>
											</c:forEach>
											<c:forEach var="i1" items="${map.list1}" varStatus="status1">
											<c:if test="${status1.index eq 1}">
											<div class="img2">
												<img
													src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
													class="crewImg2">
											</div>
											</c:if>
											</c:forEach>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="imgBox1">
											<c:forEach var="i1" items="${map.list1}" varStatus="status1">
											<c:if test="${status1.index eq 2}">
											<div class="img3">
												<img
													src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
													class="crewImg3">
											</div>
											</c:if>
											</c:forEach>
											<c:forEach var="i1" items="${map.list1}" varStatus="status1">
											<c:if test="${status1.index eq 3}">
											<div class="img4">
												<img
													src="${ contextPath }/resources/uploadFiles/crew/crewActivity/${i1.upload_Name}"
													class="crewImg4">
											</div>
											</c:if>
											</c:forEach>
										</td>
									</tr>
								</table>
							</div>
							
						</div>
							<div class="crewMembersWriterBox">
								<p class="AttWriter3">- 크루의 해당되는 회원을 확인 할수 있습니다.</p>
								<p class="AttWriter4">- ${ac1.crew_Name } 크루의 크루원</p>
							
							</div>
							<div class="crewMembers">
								<!--크루장  -->
								<div class="MemberCommont">
									<img class="writerImg"
										src="${ contextPath }/resources/uploadFiles/myPage/profil/${ac.upload_Name}">
										<div class="crewMember5">
										<p class="crewBoss3"><i class="fa fa-star"></i>크루장</p>
										<p class="crewBossName"><i class="fa fa-user-circle"></i>${ac.user_Name }</p>
										</div>
								</div>
								<!-- 여기까지  -->
								<!--크루원  -->
								<c:forEach var="i2" items="${map.list2}" varStatus="status1">
								<c:if test ="${ac.upload_Name != i2.upload_Name }">
								<div class="MemberCommont">
									<img class="writerImg"
										src="${ contextPath }/resources/uploadFiles/myPage/profil/${i2.upload_Name}">
										<div class="crewMember5">
										<p class="crewMembers3"><!-- <i class="fa fa-diamond" style="margin-left:-4px"></i> --><i class="fa fa-users" style="margin-left:-4px"></i>크루원</p>
										<p class="crewMemberNames"><i class="fa fa-user-circle"></i>${i2.user_Name }</p>
										</div>
								</div>
								</c:if>
								</c:forEach>
								<!-- 여기까지  -->
							</div>
					</div>
			</div>
					<jsp:include page="../common/footer.jsp"/>
		</div>
</body>
</html>