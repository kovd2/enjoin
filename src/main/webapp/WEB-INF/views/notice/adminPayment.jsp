<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Paytone+One"
	rel="stylesheet">

<!-- css -->
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">





<title>Insert title here</title>
<style>
.table td, .table th {
	padding: .75rem;
	vertical-align: top;
	font-size: 11px;
	font-weight: bold;
}

.content {
	text-align: center;
}

.Sanctuary {
	text-align: center;
}

.tableTr th {
	font-size: 16px;
	font-weight: bold;
}

.btn-outline-primary {
	color: #007bff;
	background-color: transparent;
	background-image: none;
	border-color: #295b8c;
	height: 37px;
	border-radius: 4px;
	margin-bottom: -10px;
	margin-top: -13px;
}

.btn-outline-primary {
	color: #007bff;
	background-color: transparent;
	background-image: none;
	border-color: #007bff;
	line-height: 0px;
}

.container {
	text-align: center;
}

.titleName {
	font-family: 'Jua', sans-serif;
	color: #295b8c;
}

.container {
	margin-top: 30px;
}

.sideTitle {
	color: gray;
	font-weight: bold;
	font-size: 20px;
}

select.selectBox {
	height: 30px;
    font-size: 11px;
    margin-right: 3px;
}

.btn-primary {
	height: 32px;
	color: #fff;
	background-color: #007bff;
	border-color: #007bff;
	position: relative;
	bottom: 2px;
}

i.fa.fa-search {
	font-size: 22px;
}

.ContentBody td {
	font-size: 13px;
	font-weight: bold;
}

.btn-outline-primary {
	color: #007bff;
	background-color: transparent;
	background-image: none;
	border-color: #007bff;
	width: 50px;
	height: 26px;
}

input.searchBar1 {
	height: 32px;
	width: 209px;
}

.btn-primary {
	color: #fff;
	background-color: #007bff;
	border-color: #007bff;
	width: 50px;
}

.paginBtn1 {
	display: -webkit-inline-box;
}

a.navbar-brand.mr-1 {
	font-family: 'Paytone One', sans-serif;
	font-size: 23px;
	margin-bottom: 20px;
	margin-left: -20px;
}

i.fas.fa-bars {
	margin-left: -6px;
}

button, html input[type=button], input[type=reset], input[type=submit]{
	display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    /* -webkit-user-select: none; */
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    color: #007bff;
    font-weight: bold;
    background: none;
    border: 1px solid;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

button, html input[type=button]:hover{
	background:#007bff;  
    color: white;
    background-color: #007bff;
    background-image: none;
}
</style>
</head>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="container">
		<h2 class="titleName">
			<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
			결제 관리
		</h2>
		<p class="sideTitle">관리자 결제관리 페이지 입니다</p>
		<table class="table table-hover">
			<thead>
				<tr class="tableTr">
					<th>결제번호</th>
					<th>아이디</th>
					<th class="content">결제일</th>
					<th>구매번호</th>
					<th>결제금액</th>
					<th>충전패스</th>
					<th>구분</th>
					<th>환불</th>
				</tr>
			</thead>
			<tbody>
				`
				<c:forEach var="list" items="${map.list}" varStatus="status">
					<tr class="ContentBody">
						<td>${ list.PAY_NO }</td>
						<td>${ list.USER_ID }</td>
						<td>${ list.PAY_DATE }</td>
						<td>${ list.REFUND_NO }</td>
						<td>${ list.PRICE }</td>
						<td>${ list.PASS_PLUS }</td>
					<c:if test="${ list.PAY_TYPE == 0}">
						<td>구매</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 1}">
						<td>환불</td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 0 }">
						<td><input class="refund${list.REFUND_NO}" id="btn btn-outline-primary" type="button" value="환불" onclick="refund('${list.REFUND_NO}')"></td>
					</c:if>
					<c:if test="${ list.PAY_TYPE == 1 }">
						<td><input class="refund${list.REFUND_NO}" type="button" value="환불완료" id="btn btn-outline-primary" ></td>
					</c:if>	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table align="center">
			<tr>
				<td colspan="3">
					<form id="paymentSearchForm" action="adminPayment.hh" method="get">
						<table align="center">
							<tr>
								<td>
									<div class="searchArea1">
										<select class="selectBox" name="searchOption">
											<option value="PROOF_NO">전체</option>
											<option value="USER_ID">아이디</option>
										</select><input value="${keyword}" class="searchBar1" name="keyword">
										<button type="submit" class="btn btn-primary">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<div class="paginBtn1">
			<div class="pagination1">
				<nav>
					<ul class="pagination" style="display: inline-flex;">
						<c:if test="${ map.pi.currentPage <= 1 }">
							<li><a>이전</a></li>
						</c:if>
						<c:if test="${ map.pi.currentPage> 1 }">
							<c:url var="listBack" value="adminPayment.hh">
								<c:param name="currentPage" value="${ map.pi.currentPage - 1 }" />
							</c:url>
							<li><a href="${ listBack }">이전&nbsp; </a></li>
						</c:if>

						<c:forEach var="p" begin="${  map.pi.startPage }" end="${ map.pi.startPage}">
							<c:if test="${ p eq map.pi.currentPage }">
								<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
							</c:if>
							<c:if test="${ p ne map.pi.currentPage }">
								<c:url var="listCheck" value="adminPayment.hh">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<li><a href="${ listCheck }"> ${ p } </a></li>
							</c:if>
						</c:forEach>

						<c:if test="${ map.pi.currentPage >= map.pi.maxPage }">
							<li><a> 다음</a></li>
						</c:if>
						<c:if test="${  map.pi.currentPage < map.pi.maxPage }">
							<c:url var="listEnd" value="adminPayment.hh">
								<c:param name="currentPage" value="${ map.pi.currentPage + 1 }" />
							</c:url>
							<li><a href="${ listEnd }">&nbsp; 다음</a></li>
						</c:if>
					</ul>
				</nav>
				
			</div>
		</div>
	</div>
<script>
	function refund(refundNo){
		$.ajax({
			url:'refundBtn.hh',
			data : {
				refundNo : refundNo
			},
			success : function(data){
				console.log(data);
				$('.refund' + refundNo).attr('value', '환불완료');
				window.location.reload();
			}
		});
	}
	
</script>		


</body>
</html>