<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

li {
	list-style: none;
}

.bodyArea {
	margin: auto;
	width: 1100px;
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
						<li class="active">마이페이지</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp" />
		<input type="hidden" value="history" id="ckPage">
		<div class="rightContainer">
			<b id="a_index" class="current" style="font-size: 30px; color: black; text-indent: 30px;"><i class="fa fa-bar-chart"></i> 이용내역</b>
			<div class="row" style="margin-left: 30px;">
				<div class="searchDate">         
                  	<jsp:include page="../common/calendar.jsp"/>				
                  	 일자: <input type="text" id="datepicker1"> ~ <input type="text" id="datepicker2">
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