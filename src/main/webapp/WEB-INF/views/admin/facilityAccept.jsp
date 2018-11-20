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
</style>
</head>
<script>
	function statusFacility(FACILITY_NO,FACILITY_NAME){
		var FACILITY_NO = FACILITY_NO;
		var FACILITY_NAME = FACILITY_NAME;
		
		if(confirm(FACILITY_NAME + "를 제휴등록 하시겠습니까?") == true){
			location.href="statusFacility.shw?FACILITY_NO=" + FACILITY_NO;
			alert("등록완료!");
		}else{
			return;
		}
		
		
	}

</script>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="container">
		<h2 class="titleName">
			<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
			제휴 승인 관리 게시판
		</h2>
		<p class="sideTitle">제휴 승인 관리 페이지 입니다</p>
		<table class="table table-hover">
			<thead>
				<tr class="tableTr">
					<th>제휴번호</th>
					<th>신청일</th>
					<th class="content">업체</th>
					<th>업체주소</th>
					<th>종목</th>
					<th>담당자</th>
					<th>업체번호</th>
					<th class="Sanctuary">등록</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m" items="${map.list}" varStatus="status">
					<tr class="ContentBody">
						<td>${m.FACILITY_COPNO}</td>
						<td>${m.FACILITY_REQUESTDATE}</td>
						<td>${m.FACILITY_NAME}</td>
						<td>${m.FACILITY_ADDRESS}</td>
						<td>${m.FACILITY_EVENT}</td>
						<td>${m.FACILITY_MANAGER_NAME }</td>
						<td>${m.FACILITY_MANAGER_PHONE }</td>
						<td><button class="btn btn-outline-primary"
								onclick="statusFacility(${m.FACILITY_NO},'${m.FACILITY_NAME}')">등록</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table align="center">
			<tr>
				<td colspan="3">
					<form action="facilityNoneSearchList.shw" method="get">
						<table align="center">
							<tr>
								<td>
									<div class="searchArea1">
										<select class="selectBox" name="option">
											<option>업체</option>
										</select> <input type="text" class="searchBar1" name="searchList">
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
						<c:if test="${ pi.currentPage <= 1 }">
							<li><a>이전</a></li>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="listBack" value="facilityAccept.shw">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
							</c:url>
							<li><a href="${ listBack }">이전&nbsp; </a></li>
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="listCheck" value="facilityAccept.shw">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<li><a href="${ listCheck }"> ${ p } </a></li>
							</c:if>
						</c:forEach>

						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li><a> 다음</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="listEnd" value="facilityAccept.shw">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li><a href="${ listEnd }">&nbsp; 다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>


</body>
</html>