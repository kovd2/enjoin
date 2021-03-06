<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.wrap {
	width: 100%;
}

.top {
	width: 1100px;
	height: 500px;
	margin: 0 auto;
	position: relative;
}

.imgArea {
	background: black;
	width: 1100px;
	height: 500px;
	position: absolute;
	left: 0;
}

img {
	width: 1100px;
	height: 500px;
	opacity: 0.4;
}

.mainTitle {
	margin-top: 50px;
	position: absolute;
}

.titleArea {
	width: 1100px;
	height: 100px;
	position: absolute;
	left: 0;
}

.title {
	width: 1100px;
	height: 90px;
	text-align: center;
	font-size: 60px;
	font-weight: bold;
	color: #ccc;
	margin-top: 50px;
}

.dateArea {
	width: 1100px;
	height: 100px;
	position: absolute;
	left: 0;
}

.date {
	width: 1100px;
	height: 90px;
	text-align: center;
	font-size: 70px;
	font-weight: bold;
	color: #ccc;
	margin-top: 140px;
}

.gymArea {
	width: 1100px;
	height: 100px;
	position: absolute;
	left: 0;
}

.gym {
	width: 1100px;
	height: 50px;
	text-align: center;
	font-size: 50px;
	font-weight: bold;
	color: #ccc;
	margin-top: 230px;
}

#btn {
	position: absolute;
	width: 1100px;
	height: 50px;
	text-align: center;
	margin-top: 350px;
}

#enroll {
	width: 150px;
	height: 50px;
	font-weight: bold;
	font-size: 20px;
}

#list {
	width: 150px;
	height: 50px;
	font-weight: bold;
	font-size: 20px;
}

.main {
	width: 1100px;
	height: 500px;
}

.rowContent {
	width: 1100px;
	display: -webkit-box;
	height: 800px;
}

.left {
	width: 550px;
	height: 800px;
}

.right {
	width: 550px;
	height: 800px;
}

.explanArea {
	width: 550px;
	height: 250px;
	font-size: 24px;
	margin-top: 30px;
	overflow:scroll;
	border-bottom:1px solid #eee;
}
.explanArea::-webkit-scrollbar {display:none;}

.explan {
	font-size: 20px;
	margin-top: 20px;
	line-height: initial;

	
}

.miniDate {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.mDate {
	font-size: 20px;
	margin-top: 20px;
}

.miniDate {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.mDate {
	font-size: 20px;
	margin-top: 20px;
}

.mainContent {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 30px;
}

.mContent {
	font-size: 20px;
	margin-top: 20px;
}

.certiArea {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.certi {
	margin-top: 20px;
	font-size: 20px;
}

.diaryArea {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.diary {
	font-size: 20px;
	margin-top: 20px;
}

.comentArea {
	width: 550px;
	height: 30px;
	font-size: 24px;
	display: -webkit-box;
}

.comentTop {
	margin-left: 20px;
	margin-top: 20px;
	display: -webkit-box;
}

.coWrap {
	 margin-left: 20px;
    margin-top: 35px;
    height: 600px;
    overflow-y: scroll;
}
.coWrap::-webkit-scrollbar {display:none;}

.coImg {
	width: 60px;
	height: 60px;
}

.coImg>img {
	width: 60px;
	height: 60px;
	/*  object-fit: cover; */
	/* object-position: top; */
	border-radius: 50%;
}

.coName {
	width: 400px;
	height: 60px;
	border-bottom: 1px solid #eee;
	font-size: 20px;
	color: #ccc;
	font-weight: bold;
	padding: 20px;
	font-weight: bold;
}

.coCount {
	width: 100px;
	height: 60px;
	color: #333333;
	font-size: 20px;
	font-weight: bold;
}

#myco {
	width: 400px;
	height: 30px;
	color: #333333;
	font-size: 20px;
	font-weight: bold;
	border: 0px;
}

#en {
	display: none;
	width: 100px;
	height: 30px;
	background: #00bff0;
	border-radius: 3px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
	border: 1px solid #00bff0;
	margin-top: 20px;
	margin-left: 280px;
}

#en:hover {
	background: white;
}

.userInfo {
	width: 200px;
	height: 30px;
	display: -webkit-box;
	margin-left: 20px;
}

.userid {
	width: 100px;
	height: 30px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
	border-right: 1px solid #eee;
}

.userdate {
	width: 100px;
	height: 30px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
}

.imgList {
	width: 60px;
	height: 60px;
}

.list1 {
	margin-left: 20px;
	margin-top: 30px;
}

.imgList>img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
}

.userWrap {
	display: -webkit-box;
	/*  margin-left:30px; */
}

#comentContent {
	    font-size: 15px;
    font-weight: bold;
    text-align: center;
    margin-left: 60px;
    border-bottom: 1px solid #eee;
    margin-right: 50px;
    padding: 0px 20px 20px 20px;
}
.attendList{
	text-align:left;
}
</style>
</head>
<body>

<c:if test="${ !empty loginUser }">
	<jsp:include page="../common/menubar.jsp" />


	<div class="wrap">
		<div class="top">

			<div class="main">
				<div class="imgArea">
					<img src="${contextPath}/resources/uploadFiles/informBoard/${list2.UPLOAD_NAME}">
				</div>


				<div class="mainTitle">

					<div class="titleArea">
						<div class="title">${list.BOARD_TITLE}</div>
					</div>

					<div class="dateArea">
						<div class="date"><fmt:formatDate value="${list.NOTICE_START}" pattern="yyyy.MM.dd" />
						<br>
						
					
						</div>
					</div>


					<div class="gymArea">
						<div class="gym">${list.CREW_AREA} <fmt:formatDate value="${list.NOTICE_START}" type="time"/></div>
					</div>
				</div>

				<div id="btn">
					<button type="button" class="btn btn-success" id="enroll">
						<i class="fa fa-handshake-o"></i>공고신청하기 <!-- 클릭할때 패스차감후 이용코드 띄우기 -->
					</button>
					<button type="button" class="btn btn-warning" id="list" onmouseover="OnOfferListShow()" onmouseout="OnOfferListHide()">
						<i class="fa fa-laptop"></i>신청현황 
					</button>
					<div class="attendList" id="attendList" style="position: absolute; background:rgba(162, 162, 162, 0.73); display: none; width:550px; height:100px; margin-left: 550px;">
						<h4 style="color:white; font-size:20px;">신청 접수자 : </h4>
					</div>
				</div>
			</div>


			<div class="rowContent">

				<div class="left">
					<div class="explanArea">
					<c:choose>
					<c:when test="${list.CATEGORY_NO==0}">
					<b>enjoin런닝?</b>
					<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==1}">
					<b>enjoin수영?</b>
					<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==2}">
						<b>enjoin필라테스?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==3}">
						<b>enjoin격투기?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin은 여러곳의 제휴업체와 해 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					
					<c:when test="${list.CATEGORY_NO==4}">
						<b>enjoin댄스?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==5}">
						<b>enjoin요가?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==6}">
						<b>enjoin헬스?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==7}">
						<b>enjoin크로스핏?</b>
						<div class="explan">
							
						
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>

						</div>
					</c:when>
					<c:when test="${list.CATEGORY_NO==8}">
						<b>enjoin기타?</b>
						<div class="explan">
							Enjoin에서 제안하는 크루공고는 혼자서 하는 운동들을 크루를 결성하여 외롭고 힘들지 않게 운동을 즐길수
							있게 하는 취지입니다. enjoin의 ${list.CATEGORY_NO}은 여러곳의 제휴업체와 제휴업체의 강사들과 함께 여러분의 참여로
							나아갈 것입니다. 혼자서 운동을 어떻게 시작해야할지 모르시는분 그리고 함께 해보고 싶은분들은 지금 신청하세요!!
							미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 그레그 글래스먼(Greg
							Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를
							내렸다.<br> 크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을
							골고루 극대화하려는 시도이다.<br> 이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성,
							균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br> 덧붙여 이 10가지를 능력을 배양하기 위한
							방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>
						</div>
					</c:when>
					</c:choose>
						
						
				
					</div>
					
					<br>

					<div class="miniDate">
						<i class="fa fa-calendar" style="font-size: 24px"><b>신청기간</b>
						</i>
						<div class="mDate"><fmt:formatDate value="${list.NOTICE_START}" pattern="yyyy.MM.dd" /> ~ 
						<fmt:formatDate value="${list.NOTICE_START}" pattern="yyyy.MM.dd" />
						</div>
						<hr>

					</div>
					<br>
					<br>
					<div class="mainContent">
						<i class="fa fa-map" style="font-size: 24px">주요내용</i>
						<div class="mContent">${list.BOARD_CONTENT}</div>
					</div>
					<br>
					<br>
					<hr>

					<div class="certiArea">
						<i class="fa fa-smile-o" style="font-size: 24px"><b>차감패스</b></i>
						<div class="certi">${list.PASS_COUNT}pass</div>
						<hr>
					</div>
					<br>
					<br>

					<div class="diaryArea">
						<i class="fa fa-volume-off" style="font-size: 24px">일정</i>
						<div class="diary">${list.NOTICE_DAILY}</div>
					</div>
					<br>
					<hr>
				</div>
				
				
				
			<jsp:include page="../informBoard/informComent.jsp" />
		
			</div>

	<jsp:include page="../common/footer.jsp"/>

		</div>
	</div>
	</c:if>



	<script>
		function goEn() {
			
			var con = document.getElementById('en');
			
			if(con.style.display=='none'){
				
				con.style.display='block';
			}else{
				con.style.display='none';
			}

		};
		
		//공고 신청시 패스 차감
		$('#enroll').click(function(){
			
			console.log("들어옴");
			var userNo = ${ loginUser.userNo };
			var deductPass = ${ list.PASS_COUNT };
			var crewArea = '${ list.CREW_AREA }';
			if(confirm("공고를 신청하시겠습니까?") == true){
				
			$.ajax({
				url:"checkPass.ljs",
				type:"get",
				data:{
					userNo:userNo
				},
				success:function(data){
					console.log(data);
					if(data <= 0){
						if(confirm("보유하고 있는 패스가 없습니다. 충전하러 가시겠습니까?") == true){
							location.href="passPurchase.hh";
						}else{
							return;
						}
					}else if(data > deductPass){
						console.log(data);
						$.ajax({
							url:"applyInformBoard.kch2", //패스감소
							type:"POST",
							data:{
								userNo:userNo,
								deductPass:deductPass,
								crewArea:crewArea
							},
							success:function(data){							
								if(data == ""){
									alert("이미 신청하셨습니다. 다시 한번 확인해 주세요.");
								}else{
								popupOpen(data);
								location.reload();
								}
							},		
							error:function(){
								console.log("에러");
							}
						});
					}
				},
				error:function(){
					console.log("에러");
				}
			});
		}
		})		
		
		function popupOpen(data){
		var ppCount = "";
		var useCode = "";
		var facilityName = "";
		var passCount = "";
		for(var key in data){
			ppCount = data[key].FACILITY_PASS;
			useCode = data[key].USE_CODE;
			facilityName = data[key].FACILITY_NAME;
			passCount = data[key].PASS_COUNT;
		}
		
		var url = "popUp.kch2?ppCount=" + ppCount + "&useCode=" + useCode + "&facilityName=" + facilityName + "&passCount=" + passCount;    //팝업창 페이지 URL
 	    var popupX = (window.screen.width / 2) - (600 / 2);
		var popupY= (window.screen.height /2) - (800 / 2);

	    var popupOption= "width="+popupX+", height="+popupY;    //팝업창 옵션(optoin)
	    
		window.open(url, '자식창', 'status=no, height=641, width=530, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	};
	
	$(function(){
		var userNo = ${ loginUser.userNo };			
		var crewArea = '${ list.CREW_AREA }';
		
		//들어오자마자 실행
		attendList(userNo, crewArea);
		function attendList(userNo, crewArea){
			
			$.ajax({
				url:"selectInformAttendList.kch2",
				type:"post",
				data:{
					userNo:userNo,
					crewArea:crewArea
				},
				success:function(data){
					for(var key in data){
						$attendList = $('<b>').append("신청 접수자 : ")
						$attendList = $('<b>').append(data[key].USER_ID + ", ");
						
						$attendList.css({
							'font-size': '25px',
							'color':'white'
						});
						
						$('.attendList').append($attendList);
						
					}
					console.log("성공");
				},
				error:function(){
					console.log("신청자X");
				}
			});
		};
	})	
		function OnOfferListShow()
		{
			document.getElementById("attendList").style.display="";	
		}
		function OnOfferListHide() {
			document.getElementById("attendList").style.display="none";	
		}
	</script>

	
	
	



</body>
</html>