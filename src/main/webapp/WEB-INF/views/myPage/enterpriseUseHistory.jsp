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
	height:60px;
	margin-left:300px;
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
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp" />
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
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
				<h1>시설 이용 내역</h1>
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
					<div class="searchDate">
						<p>조회기간:
  							<input type="text" id="datepicker1"> ~ <input type="text" id="datepicker2">
						</p>
					</div>
					<div class="memberList">
						<table style="width: 800px; border-top:solid 1px black;">
							<tr class="titleArea">
								<td style="width: 30px;">번호</td>
								<td style="width: 100px">이름</td>
								<td style="width: 150px">구매일</td>
								<td style="width: 150px">사용일</td>
								<td style="width: 100px">사용Pass</td>
								<td style="width: 80px">구분</td>
							</tr>
							
							<%for(int i = 0; i < 10; i++){ %>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>2018-10-25</td>
								<td>2018-10-26</td>
								<td>1 Pass</td>
								<td>사용완료</td>
							</tr>
							<%} %>						
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../common/calendar.jsp"/>
	<script>
		$('#datepicker1').change(function(){
			var date1 = $('#datepicker1').val();
			console.log(date1);
		});
		$('#datepicker2').change(function(){
			var date2 = $('#datepicker2').val();
			console.log(date2);
		});
	</script>
</body>
</html>