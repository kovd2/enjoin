<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bodyArea {
	width:100%;
	height:auto;
}

.bodyContainer {
	width:100%;
	height:100px;
}

.searchArea {
	width:500px;
	height:80px;
	margin-left:400px;
}

.searchArea input {
	width:400px;
	margin-top:35px;
	margin-left:10px;
}

.searchArea button {
	width:75px;
	height:30px;
}

.memberListArea {
	width:100%;
	height:500px;
}

.leftArea {
	width:20%;
	height:450px;
	float:left;
}
.leftMenu{
	width:40%;
	height:100%;
	margin:auto;
}
.leftMenu li:hover{
	cursor:pointer;
}
.rightArea{
    width:80%;
    height:450px;
	float:left;
}
.titleArea{
	background:#f5f5f5;
}
.memberList tr{
	border-bottom:solid 1px black;
}
.memberList tr:hover{
	background:#f5f5f5;
}
.memberList td {
	text-align:center;
}
.searchBtn{
	width:100px;
	height:45px;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp" />
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb" style="background-color: #68A4C4;">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">기업페이지</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="bodyArea">
		<div class="bodyContainer">
			<div class="searchArea">
				<input type="text" style="width:400px;">
				<button class="searchBtn">검색</button>
			</div>
			<div class="memberListArea">
				<div class="leftArea">
					<div class="leftMenu">
						<ul>
							<li onclick="location.href='Enterprise.ljs'">입장 확인</li>
							<li onclick="location.href='enterpriseUseHistory.ljs'">시설 이용 내역</li>
						</ul>
					</div>
				</div>
				<div class="rightArea">
					<div class="memberList">
						<table style="width: 800px; border-top:solid 1px black;">
							<tr class="titleArea">
								<td style="width: 30px;">번호</td>
								<td style="width: 100px">이름</td>
								<td style="width: 150px">연락처</td>
								<td style="width: 150px">인증번호</td>							
								<td style="width: 80px">구분</td>
							</tr>
							
							<%for(int i = 0; i < 10; i++){ %>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>010-0000-0000</td>
								<td>123123</td>								
								<td><button>사용하기</button></td>
							</tr>
							<%} %>						
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>