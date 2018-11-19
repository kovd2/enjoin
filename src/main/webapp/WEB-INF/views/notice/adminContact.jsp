<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.wrappp {
	width: 100%;
	align: center;
}

.boardAdmin table tr {
	text-align: center;
	border: 1px solid black;
}

.boardAdmin table tr:hover{
	background:#99FFFF;
}

th {
	border-left:1px solid;
}

td {
	border-left:1px solid;
}

table {
	width: 70%;
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">
		<div class="boardAdmin" align="center">
			<p style="font-size: 30px; color: #03a9f4; font-weight: bold; margin-top: 10px; margin-right: 50px;">1:1 문의</p>

			<hr>
			
			<table class="table table-bordered">
				<tr style="border: 1px solid black;">
					<th
						style="width: 70px; height: 60px; font-size: 20px; background: #0099CC;">번호</th>
					<th
						style="width: 500px; height: 60px; font-size: 20px; background: #0099CC;">제목</th>
					<th
						style="width: 100px; height: 60px; font-size: 20px; background: #0099CC;">날짜</th>
					<th
						style="width: 100px; height: 60px; font-size: 20px; background: #0099CC;">구분</th>
					
					
				</tr>
				<c:forEach var="b" items="${ list }">
					<tr onclick="selectOneBoard(${ b.boardNo })">
						<td>${ b.boardNo }</td>
						<td>${ b.boardTitle }</td>
						<td>${ b.enrollDate }</td>
						<td>
						<c:if test="${ b.contactStatus == 0 }">
							대기
						</c:if>
						<c:if test="${ b.contactStatus == 1 }">
							답변완료
						</c:if></td>
					</tr>
				</c:forEach>
			</table>
			<br>
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
						<li><a href="${ listEnd }">&nbsp;다음</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>
		
	<script>
		
		function selectOneBoard(boardNo){
			location.href="adminContactDetail.hh?boardNo=" + boardNo;
		}
		
	</script>
</body>
</html>