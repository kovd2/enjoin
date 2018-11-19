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
	height: 500px;
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

.rightArea {
	width: 80%;
	height: 450px;
	float: left;
}

.titleArea {
	background: #d9eaf3;
}

.memberList tr {
	border-bottom: solid 1px black;
}

.memberList td {
	text-align: center;
}
.paymentHistory{
	display:none;
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
			<b id="a_index" class="current" style="font-size: 30px; color: black; text-indent: 30px;"><i class="fa fa-bar-chart"></i> 이용기록</b>
			<div class="row" style="margin-left: 30px;">
				<div class="searchDate">
					<br>
					<jsp:include page="../common/calendar.jsp" />
					일자: <input type="text" id="datepicker1"> ~ <input type="text" id="datepicker2">
				</div>
				<br>
				<div class="memberList">
				<select style="float: left;" id="boardType">
					<option value="useFacility" selected="selected">시설이용내역</option>
					<option value="paymentHistory">결제내역</option>
				</select>
					<!-- 시설이용내역 -->
					<table class="useHistoryTable" style="width: 800px; border-top: solid 1px black;">
						<tr class="titleArea">
							<td style="width:30px;">번호</td>
							<td style="width:150px;">시설이름</td>
							<td style="width:150px;">사용일</td>
							<td style="width:100px;">사용Pass</td>
							<td style="width:80px;">구분</td>
							<td style="width:100px;"></td>
						</tr>
					</table>
					
					<!-- 결제내역 -->
					<table class="paymentHistory" style="width: 800px; border-top: solid 1px black;">
						<tr class="titleArea">
							<td style="width: 30px;">번호</td>
							<td style="width: 150px">결제일</td>
							<td style="width: 100px">가격</td>
							<td style="width: 150px">카드승인번호</td>
							<td style="width: 150px">환불대상구매번호</td>
							<td style="width: 150px">패스수량</td>
							<td style="width: 100px">구분</td> 
						</tr>
					</table>
					
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"/>
	<script>
	$(document).ready(function(){
		
	$('#boardType').change(function() {
		var state = $('#boardType option:selected').val();
		console.log(state);
		if(state == 'useFacility') {
			$('.useHistoryTable').show();
			$('.paymentHistory').hide();
			
			$('#datepicker2').change(function(){
				var date1 = $('#datepicker1').val();
				var date2 = $('#datepicker2').val();
				var userNo = ${loginUser.userNo};
				
				$.ajax({
					url:"useHistory.ljs",
					type:"post",
					data:{date1:date1,
						  date2:date2,
						  userNo:userNo},
					success:function(data){
						for(var key in data){
							$useHistoryTr = $('<tr>');
							$useHistoryTd1 = $('<td>').append(data[key].ROWNUM);
							$useHistoryTd2 = $('<td>').append(data[key].FACILITY_NAME);
							$useHistoryTd3 = $('<td>').append(data[key].PP_DATE);
							$useHistoryTd4 = $('<td>').append(data[key].PP_COUNT);
							$useHistoryTd5 = $('<td>').append("사용완료");
							$button1 = $('<button onclick="goReview('+data[key].FACILITY_NO+')">');
							$button1.append("리뷰등록");
							$useHistoryTd6 = $('<td>').append($button1);
							$useHistoryTr.append($useHistoryTd1);
							$useHistoryTr.append($useHistoryTd2);
							$useHistoryTr.append($useHistoryTd3);
							$useHistoryTr.append($useHistoryTd4);
							$useHistoryTr.append($useHistoryTd5);
							$useHistoryTr.append($useHistoryTd6);
														
							$('.useHistoryTable').append($useHistoryTr);
						}
					},
					error:function(){
						console.log("에러");
					}
				})
			});
		} 
		
		if(state == 'paymentHistory'){
			$('.useHistoryTable').hide();
			$('.paymentHistory').show();
			
			$('#datepicker2').change(function(){
				var date1 = $('#datepicker1').val();
				var date2 = $('#datepicker2').val();
				var userNo = ${loginUser.userNo};
				
				$.ajax({
					url:"paymentHistory.ljs",
					type:"post",
					data:{date1:date1,
						  date2:date2,
						  userNo:userNo},
					success:function(data){		
						$('.payment').empty();
						for(var key in data){
							$paymentHistoryTr = $('<tr class="payment">');							
							$paymentHistoryTd1 = $('<td>').append(data[key].ROWNUM);
							$paymentHistoryTd2 = $('<td>').append(data[key].PAY_DATE);
							$paymentHistoryTd3 = $('<td>').append(data[key].PRICE);
							$paymentHistoryTd4 = $('<td>').append(data[key].PROOF_NO);
							$paymentHistoryTd5 = $('<td>').append(data[key].REFUND_NO);
							$paymentHistoryTd6 = $('<td>').append(data[key].PASS_PLUS);
							
						if(data[key].PAY_TYPE == 0){
							$paymentHistoryTd7 = $('<td>').append("구매");
						}else{
							$paymentHistoryTd7 = $('<td>').append("환불");
						}
							$paymentHistoryTr.append($paymentHistoryTd1);
							$paymentHistoryTr.append($paymentHistoryTd2);
							$paymentHistoryTr.append($paymentHistoryTd3);
							$paymentHistoryTr.append($paymentHistoryTd4);
							$paymentHistoryTr.append($paymentHistoryTd5);
							$paymentHistoryTr.append($paymentHistoryTd6);
							$paymentHistoryTr.append($paymentHistoryTd7);
							
							$('.paymentHistory').append($paymentHistoryTr);
							
						}
					},
					error:function(){
						console.log("에러");
					}
				})
			});
		}
	});
	})
	</script>
	<script>
	function goReview(facilityNo){
		
		location.href="detailResult.kch?facilityNo=" + facilityNo;
	}
	</script>
</body>
</html>