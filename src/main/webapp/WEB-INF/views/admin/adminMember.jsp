<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/style/js/admin/adminPage.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/style/css/admin/adminPage.css">
<title>Insert title here</title>
<style>
.content {
	-webkit-flex: 1;
	flex: 1;
	padding: 30px;
	background: #eee;
	box-shadow: 0 0 5px rgba(0, 0, 0, 1);
	transform: translate3d(0, 0, 0);
	transition: all .3s;
}

.content.content-is-open {
	margin-left: 220px;
}

.side-panel-toggle {
	cursor: pointer;
	font-size: 42px;
}

/* Demo Navigation */
.title {
	font-size: 16px;
	line-height: 50px;
	text-align: center;
	text-transform: uppercase;
	letter-spacing: 7px;
	color: #eee;
	border-bottom: 1px solid #222;
	background: #2a2a2a;
}

.nav li a {
	position: relative;
	display: block;
	padding: 15px 15px 15px 50px;
	font-size: 12px;
	color: #eee;
	border-bottom: 1px solid #222;
}

.nav li a:before {
	font: 14px fontawesome;
	position: absolute;
	top: 14px;
	left: 20px;
}

.nav li:nth-child(1) a:before {
	content: '\f00a';
}

.nav li:nth-child(2) a:before {
	content: '\f012';
}

.nav li:nth-child(3) a:before {
	content: '\f0e8';
}

.nav li:nth-child(4) a:before {
	content: '\f0c3';
}

.nav li:nth-child(5) a:before {
	content: '\f022';
}

.nav li:nth-child(6) a:before {
	content: '\f115';
}

.nav li:nth-child(7) a:before {
	content: '\f085';
}

.nav li:nth-child(8) a:before {
	content: '\f023';
	left: 23px;
}

.nav li a:hover {
	background: #444;
}

.nav li a.active {
    box-shadow: inset 5px 0 0 #03a9f4, inset 6px 0 0 #222;
    background: #444;
}
/* Demo Description */
h1 {
	margin: 25px 0 15px;
    font-size: 28px;
    font-weight: 400;
    color: #03a9f4;
    font-weight:bold;
}

h2 {
	font-size: 18px;
	font-weight: 400;
	color: #999;
}

.Area {
	width: 100%;
	display: -webkit-inline-box;
}

.mainWriter {
	font-size: 18px;
	font-weight: 400;
	color: #03a9f4;
}

.fromArea {
	width: 540px;
    height: 638px;
    border-radius: 20px;
    border: 1px solid black;
    background: white;
   	overflow-y: overlay;
}
.fromArea::-webkit-scrollbar {display:none;}

.fromArea1 {
	width: 717px;
    height: 638px;
    border-radius: 20px;
    border: 1px solid black;
    background: white;
    overflow-y: overlay;
}
.fromArea1::-webkit-scrollbar {display:none;}

.formArea2 {
	width: 540px;
    height: 638px;
    border-radius: 20px;
    background: white;
    margin-left: 10px;
}

.memberArea {
	width: 540px;
	height: 20px;
	margin-left: 0px;
	display: -webkit-box;
}

.MemberSearchMain {
	font-size: 30px;
	color: #03a9f4;
	font-weight: bold;
}

.userMember1 {
	font-size: 14px;
}

.m1 {
	font-size: 16px;
	margin-right: 20px;
	font-weight: bold;
	margin-left: 12px;
}

.m2 {
	font-size: 16px;
	margin-right: 24px;
	font-weight: bold;
	margin-left: -11px;
}

.m3 {
	font-size: 16px;
	font-weight: bold;
	margin-left: 53px;
}

.m4 {
	font-size: 16px;
	margin-right: 30px;
	font-weight: bold;
}

.m5 {
	font-size: 16px;
	margin-right: 40px;
	font-weight: bold;
}

.m6 {
	font-size: 16px;
	margin-left: 40px;
	font-weight: bold;
}

.m7 {
	font-size: 16px;
    font-weight: bold;
    margin-left: 54px;
}
.m8{
	font-weight: bold;
    font-size: 16px;
    margin-left: 24px;
}

.MemberAreas {
	width: 540px;
	height: 20px;
	margin-left: 0px;
	display: -webkit-box;
}

.memberNum {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	text-align: center;
}

.userId {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-right: 19px;
}

.userName {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-left: -9px;
}

.phone {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-left: -5px;
}

.email {
	margin: 0;
	line-height: 20px;
	font-size: 8px;
}

.memberName {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-left: -17px;
}

.mArea {
	width: 57px;
}

.mArea2 {
	width: 95px;
}

.mArea3 {
	width: 68px;
}

.mArea4 {
	width: 72px;
}

.mArea5 {
	width: 173px;
}

.mArea6 {
	width: 79px;
}

.selectBox {
	width: 90px;
	height: 30px;
	margin-top: 10px;
}

.searchBar1 {
	width: 220px;
	height: 24px;
	position: relative;
	top: -1px;
}

.searchBtn {
	width: 60px;
	height: 30px;
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


/* 기업검색  */

.m4A2{
	font-size: 16px;
    margin-right: 7px;
    font-weight: bold;
}
.m5A2{
	font-size: 16px;
    margin-right: 25px;
    font-weight: bold;
    margin-left: 0px;
}
.m6A2{
	font-size: 16px;
    margin-left: 19px;
    font-weight: bold;
}
.m3A2{
	font-size: 16px;
    font-weight: bold;
    margin-left: 65px;
}
.memberAdd{
	margin: 0;
    line-height: 20px;
    font-size: 2px;
    margin-left: 5px;
    float: left;
}
.mArea6A2{
	width: 99px;
    height: 38px;
    margin-left: -15px;
}
.mArea7A2{
	width: 126px;

}
.email1{
	margin: 0;
    line-height: 20px;
    font-size: 8px;
    float: left;
}
.mArea5A2{
	width: 140px;
}
.mArea8{
	width: 75px;
    
}
.memberDate{
	margin: 0;
    line-height: 20px;
    font-size: 2px;
    margin-left: 0px;
}
.MemberAreas1{
	width: 540px;
    height: 20px;
    margin-left: 0px;
    display: -webkit-box;
}
</style>
</head>
<body>
	<!-- 여기부터  -->
</script>
	<div class="wrapper">
		<div class="sidebar">
			<div class="title">ENJOIN ADMIN</div>
			<ul class="nav">
				<li><a class='active'>회원정보관리</a></li>
				<li><a href="adminPay.test">결제관리</a></li>
				<li><a>크루관리</a></li>
				<li><a>게시판관리</a></li>
				<li><a>문의관리</a></li>
				<li><a>제휴시설관리</a></li>
				<li><a>공고작성</a></li>
				<li><a>로그아웃</a></li>
			</ul>
		</div>
		<div class="content content-is-open">
			<span class='side-panel-toggle'> <i class="fa fa-bars"></i>
			</span>
			<h1>ENJOIN 회원 조회 페이지 입니다.</h1>
			<!-- <h2 class="mainWriter">ENJOIN 관리자 회원 관리 입니다.</h2> -->
			<div class="well well-sm">
				<div class="Area">
					<div class="memberArea">
						<div class="fromArea">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain">일반 회원 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">번호</span> <span
									class="m2">회원아이디</span> <span class="m4">이름</span> <span
									class="m5">연락처</span> <span class="m6">이메일 </span> <span
									class="m3">가입날짜</span>
									
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<div class="MemberAreas">
										<div class="mArea">
											<span class="memberNum">1000</span>
										</div>
										<div class="mArea2">
											<span class="userId">shinhunwoo</span>
										</div>
										<div class="mArea3">
											<span class="userName">아무거나염</span>
										</div>
										<div class="mArea4">
											<span class="phone">010-1111-1111</span>
										</div>
										<div class="mArea5">
											<span class="email">shinhunwoo@naver.com</span>
										</div>
										<div class="mArea6">
											<span class="memberName">2018-10-18</span>
										</div>
									</div>
									<hr>
								</td>
							</tr>
							<!-- 여기까지  -->
							<tr>
								<td colspan="3">
									<div class="searchArea1">
										<select class="selectBox">
											<option>번호</option>
											<option>회원아이디</option>
											<option>이름</option>
											<option>연락처</option>
											<option>이메일</option>
											<option>가입날짜</option>
										</select> <input type="text" class="searchBar1">
										<button class="searchBtn">검색</button>
									</div>
								</td>
							</tr>
									<div class="paginBtn1">
										<div class="pagination1">
											<a class="pagBtn1" href="#">&laquo;</a> <a class="pagBtn2"
												href="#">1</a> <a class="pagBtn3" href="#">2</a> <a
												class="pagBtn4" href="#">3</a> <a class="pagBtn5" href="#">4</a>
											<a class="pagBtn6" href="#">5</a> <a class="pagBtn7" href="#">&raquo;</a>
										</div>
									</div>
							</tabel>
						</div>
					</div>
					<!-- 기업회원검색  -->
					<div class="formArea2">
						<div class="fromArea1">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain">기업 회원 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">상호명</span> <span
									class="m2">아이디</span> <span class="m4A2">전화번호</span> <span
									class="m5A2">등록번호</span> <span class="m6A2">이메일 </span> <span
									class="m3A2">주소</span>
									 <span class="m7">결제이메일 </span>
									  <span class="m8">가입날짜 </span>
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<div class="MemberAreas1">
										<div class="mArea">
											<span class="memberNum">kh</span>
										</div>
										<div class="mArea2">
											<span class="userId">shinhunwoo</span>
										</div>
										<div class="mArea3">
											<span class="userName">010-1111-111</span>
										</div>
										<div class="mArea4">
											<span class="phone">11111-1111111</span>
										</div>
										<div class="mArea5A2">
											<span class="email1">shinhunwoo@naver.com</span>
										</div>
										<div class="mArea6A2">
											<span class="memberAdd">경기도 고양시 일산서구 주엽동 3번출구</span>
										</div>
										<div class="mArea7A2">
											<span class="memberAdd">shinhunwoo@naver.com</span>
										</div>
										<div class="mArea8">
											<span class="memberDate">2018-10-18</span>
										</div>
									</div>
									<hr>
								</td>
							</tr>
							<!-- 여기까지  --> 
							
							
							<tr>
								<td colspan="3">
									<div class="searchArea1">
										<select class="selectBox">
											<option>상호명</option>
											<option>아이디</option>
											<option>전화번호</option>
											<option>등록번호</option>
											<option>이메일</option>
											<option>주소</option>
											<option>결제이메일</option>
											<option>가입날짜</option>
										</select> <input type="text" class="searchBar1">
										<button class="searchBtn">검색</button>
									</div>
								</td>
							</tr>
									<div class="paginBtn1">
										<div class="pagination1">
											<a class="pagBtn1" href="#">&laquo;</a> <a class="pagBtn2"
												href="#">1</a> <a class="pagBtn3" href="#">2</a> <a
												class="pagBtn4" href="#">3</a> <a class="pagBtn5" href="#">4</a>
											<a class="pagBtn6" href="#">5</a> <a class="pagBtn7" href="#">&raquo;</a>
										</div>
									</div>
							</tabel>
						</div>
					
					
					
					
					</div>
				</div>
			</div>
		</div>
		<hr>
	</div>
	</div>

	<!-- 여기까지  -->


</body>
</html>