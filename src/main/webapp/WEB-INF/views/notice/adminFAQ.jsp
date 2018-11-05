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
	background:yellow;
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">
		<div class="boardAdmin" align="center">
			<p style="font-size: 100px; text-align: center">FAQ</p>

			<hr>
			<p style="text-align:right; margin-right:190px"><input type="button" value="FAQ 등록" onclick="adminFAQInsert()" style="width:150px; height:50px;"></p>
			<table>
				<tr style="border: 1px solid black;">
					<th style="width: 100px; height: 60px; font-size: 30px; background: gray;">번호</th>
					<th style="width: 250px; height: 60px; font-size: 30px; background: gray;">카테고리</th>
					<th style="width: 500px; height: 60px; font-size: 30px; background: gray;">제목</th>
					<th style="width: 200px; height: 60px; font-size: 30px; background: gray;">날짜</th>
				</tr>
				<c:forEach var="f" items="${ list }">
					<tr onclick="selectOneBoard(${ b.boardNo })">
						<td>${ f.boardNo }</td>
						<td>${ f.faqCategory }</td>
						<td>${ f.boardTitle }</td>
						<td>${ f.enrollDate }</td>
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
						<c:url var="listBack" value="adminFAQ.hh">
							<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
						</c:url>
						<li><a href="${ listBack }">이전&nbsp; </a></li>
					</c:if>

					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<li class="active"><a>&nbsp;${ p }&nbsp;</a></li>
						</c:if>
						<c:if test="${ p ne pi.currentPage }">
							<c:url var="listCheck" value="adminFAQ.hh">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<li><a href="${ listCheck }"> ${ p } </a></li>
						</c:if>
					</c:forEach>

					<c:if test="${ pi.currentPage >= pi.maxPage }">
						<li><a> 다음</a></li>
					</c:if>
					<c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="listEnd" value="adminFAQ.hh">
							<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
						</c:url>
						<li><a href="${ listEnd }">&nbsp; 다음</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>
		
	<script>
		function adminFAQInsert(){
			
			location.href = "adminFAQInsert.hh";
		}
		
		function adminFAQDetail(){
			
			location.href = "adminFAQDetail.hh";
		}
		
		function selectOneBoard(boardNo){
			location.href="adminNoticeDetail.hh?boardNo=" + boardNo;
		}
		
	</script>
</body>
</html>