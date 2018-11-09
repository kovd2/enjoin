<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--아이콘  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 아이콘  -->
 <script type="text/javascript"
	src="${contextPath}/resources/style/js/slider/mainSlider.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/style/css/slider/mainSlider.css">
<title>Insert title here</title>
<style>

.header {
	width: 1000px;
	height: 400px;
	background: black;
	margin: 0 auto;
	margin-top: 50px;
}

.imgBox {
	width: 1000px;
	height: 300px;
}

.mainImg {
	width: 100%;
	height: 100%;
}

.catagoryBox {
	width: 1000px;
    height: 60px;
    margin-top: 110px;
    margin-left: -24px;
}

.catagoryUl li {
	display: inline-grid;
	text-align: center;
	border: 1px solid gainsboro;
	font-size: 9px;
}

.catagoryUl li:hover {
	border: 1px solid #00bff0;
	cursor: pointer;
}

.crewWriter {
	display: -webkit-inline-box;
	float: right;
	margin-right: -30px;
	color: #6f8e96;
	font-size: 24px;
}

.middle {
	width: 1000px;
	margin-top: 30px;
}

.boardHr1 {
	border-top: 1px solid #000 !important;
}

.boardMenu th {
	font-size: 17px;
}

.boardMenu {
	font-size: 15px;
}

.boardNum {
	width: 60px;
}

.boardImg {
	width: 170px;
}

.boardCatagory {
	width: 100px;
}

.boardTitle {
	width: 350px;
}

.WriterDate {
	width: 100px;
}

.address {
	width: 140px;
}

.Member {
	width: 80px;
}

.MaxMember {
	width: 80px;
}

.boardCoumt {
	width: 60px;
}

.boardHr2 {
	border: 0 !important;
	border-top: 1px solid #eee !important;
}
/*글 작성  */
.boardBox {
	width: 1000px;
	display: -webkit-box;
}

.boardBox p {
	font-size: 16px;
	line-height: 90px;
}

.crewMainImg {
	width: 130px;
	height: 100px;
}

.boardNum1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
	text-align: center;
}

.boardCatagory1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
}

.boardTitle1 {
	line-height: 90px;
	font-weight: bold;
	color: #484646;
}

.address1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
}

.Member1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
	text-align: center;
}

.MaxMember1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
	text-align: center;
}

.WriterDate1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
	text-align: center;
}

.boardCoumt1 {
	line-height: 90px;
	font-weight: bold;
	color: #6b6b6b;
	text-align: center;
}

.box {
	width: 100%;
	display: -webkit-box;
}

.numBox2 {
	width: 60px;
}

.ImgBox2 {
	width: 130px;
}

.catagoryBox2 {
	width: 80px;
	margin-left: 10px;
}

.crewBox2 {
	width: 303px;
	margin-left: 7px;
}

.addBox2 {
	width: 123px;
}

.memberBox2 {
	width: 71px;
}

.maxBox2 {
	width: 71px;
}

.writerBox2 {
	width: 89px;
}

.countBox2 {
	width: 54px;
}

.ImgWrtier3 {
	text-align: center;
	margin: 0;
}

.boardMenu:hover {
	cursor: pointer;
}

.searchBox {
	width: 1000px;
	height: 230px;
}

.searchBar {
	width: 310px;
	height: 30px;
	margin-top: 58px;
	margin-left: 130px;
}

.searchBtn {
	width: 48px;
	height: 31px;
	background: #54d4f5;
	color: white;
	border-radius: 7px
}


/* 페이징 버튼  */
.pagination1 {
	display: inline-block !important;
}

.pagination1 a {
	color: black !important;
	float: left !important;
	padding: 8px 16px !important;
	text-decoration: none !important;
	transition: background-color .3s !important;
}

.paginBtn1 {
	text-align: center !important;
	margin-top: 10px !important;
}

.writerBtn {
	float: right !important;
	border-radius: 6px !important;
	color: white !important;
	background: #54d4f5 !important;
}
.pagBtn6:hover{
	background:red;
}

hr {
	margin-top: 15px !important;
	border-top: 1px solid #a29e9e !important;
	
}

.pagBtn1:hover:not (.active ) {
	background-color: #54d4f5 ;
}
.pagBtn1:hover{
	background:#54d4f5;
}
.pagBtn2:hover{
	background:#54d4f5;
}
.pagBtn3:hover{
	background:#54d4f5;
}
.pagBtn4:hover{
	background:#54d4f5;
}
.pagBtn5:hover{
	background:#54d4f5;
}
.pagBtn6:hover{
	background:#54d4f5;
}
.pagBtn7:hover{
	background:#54d4f5;
}
/* 여기까지  */

/* 메인위에 글씨 올리기  */
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
    font-size: 20px;
    font-weight: bold;
}

.crewCatagory {
	color: #fff;
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}

.address {
	
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}



.crewMember1 {
	color: #00cbff;
    margin-top: 10px;
}	

.ActivityName{
	position: absolute;
    color: white;
    z-index: 1;
    margin-left: -130px;
    margin-top: 170px;
    font-size: 20px;
}
.mainImg {
	width: 1000px;
	height: 400px;
	opacity: 0.5;
}
.1{
	position: relative;
	left: 0;
	top: 0;
	padding-top: 50px;
	height: 100%;
	padding-left: 50px;
}
.blackArea{
	width:1002px;
	background:black;
}
.footerBox{

}
input.searchBar {
   margin-left: 269px;
}
.categoryBtn label{
	font-size: 10px;
    color: #777777;
}
select.searchSelect {
    position: relative;
    left: 269px;
    width: 70px;
    height: 30px;
}
	

/*  여기까지 */


</style>
</head>
<script>
	function goCrew(){	
		location.href = "crewRecruitment.shw2";
	}
	function goCategory(categoryName){
		var categoryName = $(categoryName).find('label').text();
		
	
		
		location.href="crewCategorySelectBoard.shw2?categoryName=" + categoryName;
		
	}
</script>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="body">
		<div class="header">
			<div class="imgBox">
				<%-- <img src="${ contextPath }/resources/images/crew/shutterstock_269242565.jpg" class="mainImg"> --%>

				<!-- 여기부터  -->

				<div class="container1">
					<div class="1">
						<h3 class="ActivityName">
							<smail class="crewNameLabel">ENJOIN 크루모집 게시판</smail>
							<span class="crewTitle">ENJOIN의 크루모집 게시판입니다<br>
								크루를 만들어 함께 운동에 참여해보세요!<br>크루의 소중한 경험을 공유하세요!
							</span>
							<p class="crewMember1">크루 모집 작성 글을 작성 해주세요!</p>
						</h3>
						<div class="slider">
							<ul>
								<li><div class="blackArea">
										<img
											src="${ contextPath }/resources/images/crew/GettyImages-924368190.jpg"
											class="mainImg">
									</div></li>
								<li><div class="blackArea">
										<img
											src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_214417258.jpg"
											class="mainImg">
									</div></li>
								<li><div class="blackArea">
										<img
											src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_221614854.jpg"
											class="mainImg">
									</div></li>
								<li><div class="blackArea">
										<img
											src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_221606060.jpg"
											class="mainImg">
									</div></li>
								<li><div class="blackArea">
										<img
											src="${ contextPath }/resources/images/crew/friendship-2366955_960_720.jpg"
											class="mainImg">
									</div></li>
							</ul>
							<ol>
								<li class="active"></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ol>
							<div class="control">
								<i class="fa fa-angle-left fa-5x" style="display: none"></i> <i
									class="fa fa-angle-right fa-5x" style="display: none"></i>
							</div>
						</div>
					</div>
				</div>

				<!-- 여기까지  -->

			</div>
			<div class="catagoryBox">
				<ul class="catagoryUl">
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/0.catagory.png"
						class="catagoryImg"><label>런닝</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/2.catagory.png"
						class="catagoryImg"><label>수영</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/3.catagory.png"
						class="catagoryImg"><label>필라테스</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/4.catagory.png"
						class="catagoryImg"><label>격투기</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/5.catagory.png"
						class="catagoryImg"><label>댄스</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/6.catagory.png"
						class="catagoryImg"><label>요가</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/1.catagory.png"
						class="catagoryImg"><label>헬스</label></li>	
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/7.catagory.png"
						class="catagoryImg"><label>크로스핏</label></li>
					<li class="categoryBtn" onclick="goCategory(this)"><img
						src="${ contextPath }/resources/images/crew/catagory/8.catagory.png"
						class="catagoryImg"><label>기타</label></li>	
				</ul>
			</div>
			<div class="middle">
				<hr class="boardHr1">
				<table>
					<tr class="boardMenu" colspan="8">
						<th class="boardNum">글번호</th>
						<th class="boardImg"><p class="ImgWrtier3">사진</p></th>
						<th class="boardCatagory">카테고리</th>
						<th class="boardTitle">글제목</th>
						<th class="address">지역</th>
						<th class="Member">현재인원</th>
						<th class="MaxMember">모집인원</th>
						<th class="WriterDate">작성날짜</th>
						<th class="boardCoumt">조회수</th>
					</tr>
				</table>
				<hr class="boardHr2">
				<c:forEach var="c" items="${ list }">
				<div>
					<a href="crewRecruitmentDetails.shw2?board_No=${c.board_No}&user_No=${c.user_No}&crew_No=${c.crew_No}"
						style="text-decoration: none;">
						<table>
							<tr class="boardMenu">
								<td class="box" colspan="9">

									<div class="numBox2">
										<p class="boardNum1">${c.board_No}</p>
									</div>
									<div class="ImgBox2">
										<img
											src="${ contextPath }/resources/uploadFiles/crew/crewRecruitment/${c.upload_Name}"
											class="crewMainImg">
									</div>
									<div class="catagoryBox2">
										<p class="boardCatagory1">${c.category_Name }</p>
									</div>
									<div class="crewBox2">
										<p class="boardTitle1">${ c.board_Title }</p>
									</div>
									<div class="addBox2">
										<p class="address1">${ c.crew_Area }</p>
									</div>
									<div class="memberBox2">
										<p class="Member1">0명</p>
									</div>
									<div class="maxBox2">
										<p class="MaxMember1">${c.recruit_Max}명</p>
									</div>
									<div class="writerBox2">
										<p class="WriterDate1">${c.enroll_Date}</p>
									</div>
									<div class="countBox2">
										<p class="boardCoumt1">${c.board_Count }</p>
									</div>
								</td>
							</tr>
						</table>
					</a>
				</div>
			<hr>
		</c:forEach>

			

				<div class="searchBox">
					<c:if test="${ !empty sessionScope.loginUser }">
					<div class="writerBtnBox">
						<button class="writerBtn" onclick="goCrew()">크루모집작성</button>
					</div>
					</c:if>
					<form action="crewSearchList.sh2" method="get">
						<table >
							<tr>
								<td colspan="2">
								<select class="searchSelect" name="option">
									<option>제목</option>	
									<option>지역</option>
								</select>
								<input type="search" class="searchBar" name="searchTitle">
								
									<button type="submit" class="searchBtn">
										<i class="fa fa-search" style="font-size: 20px"></i>
									</button>
								<td>
							<tr>
						</table>
					</form>
					<div class="paginBtn1">
						<div class="pagination1">
							<!-- 페이징 처리 -->
						<nav>
							<ul class="pagination">
								<c:if test="${ pi.currentPage <= 1 }">
									<li><a>이전</a></li>
								</c:if>
								<c:if test="${ pi.currentPage > 1 }">
									<c:url var="listBack" value="crewRecruitmentBoard.shw2">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
									
									</c:url>
									<li><a href="${ listBack }">이전</a></li>
								</c:if>

								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<li class="active"><a>${ p }</a></li>
									</c:if>
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="listCheck" value="crewRecruitmentBoard.shw2">
											<c:param name="currentPage" value="${ p }" />
										</c:url>
										<li><a href="${ listCheck }">${ p }</a></li>
									</c:if>
								</c:forEach>

								<c:if test="${ pi.currentPage >= pi.maxPage }">
									<li><a>다음</a></li>
								</c:if>
								<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="listEnd" value="crewRecruitmentBoard.shw2">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
					
									</c:url>
									<li><a href="${ listEnd }">다음</a></li>
								</c:if>
							</ul>
						</nav>
						</div>
					</div>
				</div>
			</div>
		<div class="footerBox">
			<jsp:include page="../common/footer.jsp" />
		</div>
		</div>
	</div>
</body>
</html>