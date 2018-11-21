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
    font-size: 33px;
    margin-left: 34px;
}

.container {
	margin-top: 30px;
}

.sideTitle {
    color: gray;
    font-weight: bold;
    font-size: 20px;
    margin-left: 20px;
}

select.selectBox {
	height: 30px;
	font-size: 11px;
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
.titles{
	width:850px;
}
input.btn.btn-success{
	float: right;
    width: 90px;
}
.pagination1{
	margin-left: 120px;
	margin-top:30px;
}
button, html input[type=button], input[type=reset], input[type=submit]{
	float: right;
    width: 90px;
}
</style>
</head>
<script>
	function crewRecruitmentDetails(board_No,user_No,crew_No){
		var board_No = board_No;
		var user_No = user_No;
		var crew_No = crew_No;
		
		
		location.href = "crewRecruitmentDetails.shw2?board_No="+ board_No + "&user_No=" + user_No + "&crew_No=" + crew_No;
	}
	function StatusBoard(board_No,board_Title){
		var board_No = board_No;
		var board_Title = board_Title;
		
		if(confirm(board_Title + "를 삭제시키겠습니까?") == true){
			location.href="adminCrewRecruitmentStatus.shw?board_No=" + board_No;
			alert("삭제완료!");
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
			문의 게시판
		</h2>
		<p class="sideTitle">1:1 문의 게시판 관리자 페이지 입니다</p>
		<table class="table table-hover">
			<thead>
				<tr class="tableTr">
					<th>번호</th>
					<th>카테고리</th>
					<th class="content">제목</th>
					<th>날짜</th>
					<th>구분</th>
				</tr>
			</thead>
			<tbody>	`
				<c:forEach var="b" items="${list}" varStatus="status">
					<tr class="ContentBody" onclick="selectOneBoard(${ b.boardNo })">
						<td>${ b.boardNo }</td>
						<td>${ b.boardType }</td>
						<td class="titles">${ b.boardTitle }</td>
						<td>${ f.enrollDate }</td>
						<td>
						<c:if test="${ b.contactStatus == 0 }">
							대기
						</c:if>
						<c:if test="${ b.contactStatus == 1 }">
							답변완료
						</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="paginBtn1">
			<div class="pagination1" style=" margin-left: 20px;
    margin-top: 30px;">
				<nav>
					<ul class="pagination" style="display: inline-flex;">
						<c:if test="${ pi.currentPage <= 1 }">
							<li><a>이전</a></li>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="listBack" value="adminContact.hh">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
							</c:url>
							<li><a href="${ listBack }">이전&nbsp; </a></li>
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="listCheck" value="adminContact.hh">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<li><a href="${ listCheck }"> ${ p } </a></li>
							</c:if>
						</c:forEach>

						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li><a> 다음</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="listEnd" value="adminContact.hh">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li><a href="${ listEnd }">&nbsp; 다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<script>
		
		function selectOneBoard(boardNo){
			location.href="adminContactDetail.hh?boardNo=" + boardNo;
		}
		
	</script>


</body>
</html>