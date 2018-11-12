<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.rightContainer {
	width: 800px;
	height: auto;
	margin-top: 100px;
	display: inline-block;
	border-left: solid 0.5px lightgray;
}

.favoriteCenterList {
	padding-left: 30px;
}

.favoriteCenterList li {
	overflow: hidden;
	position: relative;
}

.favoriteCenterList li .fCempty {
	padding: 20px 0;
	font-size: 13px;
	color: #888;
}

.favoriteCenterList li .favoriteCenter {
	display: block;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
	margin-bottom: 30px;
	overflow: hidden;
}

.favoriteCenterList li .favoriteCenter:hover {
	opacity: 1 !important;
}

.favoriteCenterList li .responsibleImgBox {
	position: relative;
	padding-bottom: 50%;
	border-radius: 3px;
	overflow: hidden;
}

.favoriteCenterList li .responsibleImgBox span {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #ddd;
	background: rgba(240, 240, 240, 0.8);
	color: #fff;
}

.favoriteCenterList li .responsibleImgBox span small {
	display: inline-block;
	padding: 3px 8px;
	background: #888;
	color: #fff;
	font-size: 11px;
	font-weight: 600;
	border-radius: 3px 0 0 0;
}

.favoriteCenterList li .centerThumb {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	min-height: 100%;
	border-radius: 3px;
	padding: 0;
	border: 0 none;
	margin: 0;
}

.favoriteCenterList li a {
	color: #00bff0;
	text-decoration: none;
}

.favoriteCenterList li h4 {
	font-size: 13px;
	margin: 5px 0 2px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.favoriteCenterList li p {
	font-size: 11px;
	color: #888;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.favoriteCenterList li small {
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	color: #00bff0;
}

.favoriteCenterList li small.events span {
	background-color: #e9fbff;
	border-radius: 2px;
	padding: 2px 6px;
	margin: 0 3px 3px 0;
	font-size: 11px;
	letter-spacing: -0.5px;
	color: #00bff0;
	display: inline-block;
}

.favoriteCenterList li button {
	border: 0 none;
	border-radius: 50%;
	width: 32px;
	height: 32px;
	padding: 0;
}

.favoriteCenterList li button {
	position: absolute;
	right: 30px;
	top: 90px;
	box-shadow: 0 3px 5px rgba(0, 0, 0, 0.1);
	transition: 0.1s all;
}

.favoriteCenterList li button img {
	max-width: 70%;
}

.favoriteCenterList li button.on {
	background: #00bff0;
	color: #fff;
}

.favoriteCenterList li button.off {
	background: #eee;
	color: #00bff0;
}

.favoriteCenterList li button:hover {
	opacity: 0.9;
}

.favoriteCenterList .favoriteAlertMsg {
	position: absolute;
	top: 0;
	left: 15px;
	bottom: 30px;
	right: 15px;
	background: #fff;
	background: rgba(0, 0, 0, 0.7);
	color: #fff;
	font-size: 11px;
	letter-spacing: -.5px;
	padding: 30% 20px 0;
	border-radius: 4px;
	text-align: center;
	display: none;
}

.favoriteCenterList .favoriteAlertMsg.on {
	background: #00bff0;
	background: rgba(0, 191, 240, 0.8);
}

.favoriteCenterList .favoriteAlertMsg.off {
	background: #888;
	background: rgba(136, 136, 136, 0.8);
}
.bodyArea{
	margin:auto;
	width:1100px;
}
</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">마이페이지</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp" />
		<input type="hidden" value="a_favorite_center" id="ckPage">
		<div class="rightContainer">
			<b id="a_index" class="current"
				style="font-size: 30px; color: black; text-indent: 30px;"><i
				class="fa fa-heart-o"></i> 가보고 싶은 시설</b> <br>
			<br>
			<div class="favoriteCenterList">
				<ul class="row">
					<c:forEach var="j" items="${ jjim }">
					<li class="col col-sm-6 col-md-4 col-lg-3">
					<a href="/center/detail/fc06008" class="favoriteCenter">

							<div class="responsibleImgBox">
								<img class="centerThumb" src="resources/uploadFiles/facility/${ j.uploadName }">
							</div>
							<h4>${ j.facilityName }</h4>

							<p>${ j.facilityAddress }</p> <small class="events"><span>${ j.facilityEvent }</span></small>

							<!-- 하나의 버튼에.... 상태에 따라 on off 를 붙입니다 -->

					</a>
						<button id="bookmark_action-btn_fc06008"
							class="btn btn-default btn_favorite on"
							onclick="deleteJJIM(${ j.userNo },${ j.facilityNo })">
							<i class="fa fa-heart"></i>
						</button>
						<div class="favoriteAlertMsg"></div></li>
					</c:forEach>

				</ul>

				<nav>
					<ul class="pagination">
						<li class="page-item active"><a class="page-link"
							style="cursor: pointer" onclick="move('favorite_center','1')">1</a>
						</li>
					</ul>
				</nav>


			</div>
		</div>
		</div>
	</div>
	<br><br><br><br><br>
	
	<script>
		function deleteJJIM(userNo, facilityNo){
			var userNo = userNo;
			var facilityNo = facilityNo;

			if (confirm("삭제 하시겠습니까?") == true){    //확인
				location.href="deleteJJIM.ljs?userNo=" + userNo + "&facilityNo=" + facilityNo;
			}else{   //취소
			    return;
			}
		}
	</script>
	
	
	
</body>
</html>













