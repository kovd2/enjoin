<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
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
	  box-shadow: 0 0 5px rgba(0,0,0,1);
	  transform: translate3d(0,0,0);
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
	
	.nav li:nth-child(1) a:before { content: '\f00a'; }
	.nav li:nth-child(2) a:before { content: '\f012'; }
	.nav li:nth-child(3) a:before { content: '\f0e8'; }
	.nav li:nth-child(4) a:before { content: '\f0c3'; }
	.nav li:nth-child(5) a:before { content: '\f022'; }
	.nav li:nth-child(6) a:before { content: '\f115'; }
	.nav li:nth-child(7) a:before { content: '\f085'; }
	.nav li:nth-child(8) a:before { content: '\f023'; left: 23px; }
	
	.nav li a:hover {
	  background: #444;
	}
	
	.nav li a.active {
	  box-shadow: inset 5px 0 0 #5b5, inset 6px 0 0 #222;
	  background: #444;
	}
	
	/* Demo Description */
	
	h1 {
	  margin: 25px 0 15px;
	  font-size: 28px;
	  font-weight: 400;
	}
	
	h2 {
	  font-size: 18px;
	  font-weight: 400;
	  color: #999;
	}
	.Area{
		width:100%;
	}
	.mainWriter{
		font-size: 18px;
    	font-weight: 400;
    	color: #03a9f4;
		
	}
	.fromArea{
		width: 550px;
    	height: 500px;
    	border-radius: 20px;
    	border: 1px solid black;
    	background: white;
    	position: static;
	}
	.formArea2{
		width: 550px;
    	height: 500px;
    	border-radius: 20px;
    	border: 1px solid black;
    	margin-left: 120px;
    	background: white;
    	position: static;
	}
	.memberArea{   
		width: 100%;
    	height: 510px;
		display: -webkit-box;
		
	}
	.MemberSearchMain{
		font-size: 30px;
    	color: #03a9f4;
    	font-weight: bold;
    	
	}
	.userMember1{
		font-size:14px;
	}
	.m1{
		font-size: 16px;
    	margin-right: 20px;
    	font-weight: bold;
	}
	.m2{
		font-size: 16px;
   	 	margin-right: 60px;
   	 	font-weight: bold;
	}
	.m3{
		font-size:16px;
		font-weight: bold;	
	}
	.m4{
		font-size: 16px;
    	margin-right: 30px;
    	font-weight: bold;
	}
	.m5{
		font-size:16px;	
		margin-right:40px;
		font-weight: bold;
	}
	.m6{
		font-size: 16px;
    	margin-right: 50px;
    	font-weight: bold;
			
	}
	.m7{
		font-size:16px;	
	}
	.MemberAreas{
		width: 550px;
    	height: 20px;
    	background: red;
    	margin-left: 0px;
    	display: -webkit-box;
	}
	.area1{
		width: 42px;
    	height: 20px;
    	background: blue;
	}
	.area2{
		width: 146px;
    	height: 20px;
    	background: green;
	}


</style>
</head>
<body>
		<!-- 여기부터  -->
	
<div class="wrapper">
  <div class="sidebar">
    <div class="title">ENJOIN ADMIN</div>
    <ul class="nav">
      <li>
        <a class='active'>회원정보관리</a>
      </li>
      <li>
        <a href="adminPay.test">결제관리</a>
      </li>
      <li>
        <a >크루관리</a>
      </li>
      <li>
        <a>게시판관리</a>
      </li>
      <li>
        <a>문의관리</a>
      </li>
      <li>
        <a>제휴시설관리</a>
      </li>
      <li>
        <a>공고작성</a>
      </li>
      <li>
        <a>로그아웃</a>
      </li>
    </ul>
  </div> 
  <div class="content content-is-open">
    <span class='side-panel-toggle'>
      <i class="fa fa-bars"></i>
    </span>
    <h1>회원관리</h1>
    <h2 class="mainWriter">ENJOIN 관리자 회원 관리 입니다.</h2>
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
      				<td class="MemberTitleArea">
      					<span class="m1">번호</span>
      					<span class="m2">회원아이디</span>
      					<span class="m4">이름</span>
      					<span class="m5">연락처</span>
      					<span class="m6">이메일	</span>
      					<span class="m3">가입날짜</span>
      					<hr>
      				</td>
      				<td>
      					<div class="MemberAreas">
      						<div class="area1"></div>
      						<div class="area2"></div>
      						<div class="area3"></div>
      						<div class="area4"></div>
      						<div class="area5"></div>
      						<div class="area6"></div>
      				<!-- 	<span class="memberNum">1</span>
      					<span class="userId">shinhunwoo</span>
      					<span class="userName">아무거나염</span>
      					<span class="phone">010-1111-1111</span>
      					<span class="email">shinhunwoo@naver.com</span>
      					<span class="memberName">2018-10-18</span> -->
      					</div>
      				</td>
      			</tr>
      		</tabel>
      	</div>
      	<div class="formArea2">
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