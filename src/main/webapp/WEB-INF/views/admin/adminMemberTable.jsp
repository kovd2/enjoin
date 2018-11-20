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
	function goStatus(userNo,userId){
		var userNo = userNo;
		var userId = userId;
		
		if(confirm(userId + "를 블랙처리 하시겠습니까?") == true){
			location.href="statusMember.shw?userNo=" + userNo;
			alert("블랙 처리 완료!");
		}else{
			return;
		}
	}
	function copStatusMember(userNo,userId){
		var userNo = userNo;
		var userId = userId;
		
		if(confirm(userId + "를 블랙처리 하시겠습니까?") == true){
			location.href="copStatusMember.shw?userNo=" + userNo;
			alert("블랙처리완료!");
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
			회원관리
		</h2>
		<p class="sideTitle">관리자 회원관리 페이지 입니다</p>
		<table class="table table-hover">
			<thead>
				<tr class="tableTr">
					<th>번호</th>
					<th>아이디</th>
					<th class="content">이름</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>가입날짜</th>
					<th class="Sanctuary">재제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m" items="${map.list}" varStatus="status">
					<tr class="ContentBody">
						<td>${m.userNo}</td>
						<td>${m.userId }</td>
						<td>${m.userName }</td>
						<td>${m.phone }</td>
						<td>${m.email }</td>
						<td>${m.enrollDate}</td>
						<td><button class="btn btn-outline-primary"
								onclick="goStatus(${m.userNo},'${m.userId}')">재제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table align="center">
			<tr>
				<td colspan="3">
					<form action="memberSearchList.shw" method="get">
						<table align="center">
							<tr>
								<td>
									<div class="searchArea1">
										<select class="selectBox" name="option">
											<option>회원아이디</option>
											<option>이름</option>
											<option>연락처</option>
											<option>이메일</option>
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
							<c:url var="listBack" value="adminMember.shw">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
							</c:url>
							<li><a href="${ listBack }">이전&nbsp; </a></li>
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="listCheck" value="adminMember.shw">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<li><a href="${ listCheck }"> ${ p } </a></li>
							</c:if>
						</c:forEach>

						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li><a> 다음</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="listEnd" value="adminMember.shw">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li><a href="${ listEnd }">&nbsp; 다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<div class="container">
		<h2 class="titleName">
			<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
			기업회원관리
		</h2>
		<p class="sideTitle">관리자 회원관리 페이지 입니다</p>
		<table class="table table-hover">
			<thead>
				<tr class="tableTr">
					<th>상호명</th>
					<th>아이디</th>
					<th class="content">연락처</th>
					<th>등록번호</th>
					<th>이메일</th>
					<th>주소</th>
					<th>결제이메일</th>
					<th>가입날짜</th>
					<th class="Sanctuary">재제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m1" items="${map.list1}" varStatus="status">
					<tr class="ContentBody">
						<td>${m1.copName}</td>
						<td>${m1.userId}</td>
						<td>${m1.managerPhone}</td>
						<td>${m1.copNo }</td>
						<td>${m1.managerEmail }</td>
						<td>${m1.copAddress }</td>
						<td>${m1.copEmail }</td>
						<td>${m1.enrollDate }</td>
						<td><button class="btn btn-outline-primary"
								onclick="copStatusMember(${m1.userNo},'${m1.userId}')">재제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table align="center">
			<tr>
				<td colspan="3">
					<form action="companyMemberSearchList.shw" method="get">
						<table align="center">
							<tr>
								<td>
									<div class="searchArea1">
										<select class="selectBox" name="option">
											<option>상호명</option>
											<option>아이디</option>
											<option>등록번호</option>
											<option>이메일</option>
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
						<c:if test="${ pi1.currentPage <= 1 }">
							<li><a>이전</a></li>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="listBack" value="adminMember.shw">
								<c:param name="currentPage" value="${ pi1.currentPage - 1 }" />
							</c:url>
							<li><a href="${ listBack }">이전&nbsp; </a></li>
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi1.endPage }">
							<c:if test="${ p eq pi1.currentPage }">
								<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
							</c:if>
							<c:if test="${ p ne pi1.currentPage }">
								<c:url var="listCheck" value="adminMember.shw">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<li><a href="${ listCheck }"> ${ p } </a></li>
							</c:if>
						</c:forEach>

						<c:if test="${ pi1.currentPage >= pi1.maxPage }">
							<li><a> 다음</a></li>
						</c:if>
						<c:if test="${ pi1.currentPage < pi1.maxPage }">
							<c:url var="listEnd" value="adminMember.shw">
								<c:param name="currentPage" value="${ pi1.currentPage + 1 }" />
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