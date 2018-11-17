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
	background: #f5f4f3;
	align: center;
}
table {
    border-collapse: collapse;
    width: 1000px;
}

.boardAdmin table tr {
	text-align: center;
    height: 37px;
    border: 1px solid black;
}

.boardAdmin table tr:hover{
	background:gainsboro;
}

th {
	border-left:1px solid;
}

td {
	border-left:1px solid;
}


</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">
		<div class="boardAdmin" align="center">
			<p style="font-size: 50px; text-align: center; font-weight:bold; color:#525456">Admin FAQ</p>

			<hr>
			<p style="text-align:right; margin-right:190px"><input type="button" value="FAQ 등록" onclick="adminFAQInsert()" style="width:90px; height:30px; color: #636060;"></p>
			<table>
				<tr style="border: 1px solid black;">
					<th style="width: 70px; height: 60px; font-size: 30px; background: skyblue; color:#525456; font-weight:bold;" >번호</th>
					<th style="width: 180px; height: 60px; font-size: 30px; background: skyblue; color:#525456" >카테고리</th>
					<th style="width: 500px; height: 60px; font-size: 30px; background: skyblue; color:#525456">제목</th>
					<th style="width: 100px; height: 60px; font-size: 30px; background: skyblue; color:#525456">날짜</th>
				</tr>
				<c:forEach var="f" items="${ list }">
					<tr onclick="selectOneBoard(${ f.boardNo })">
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
		
		function selectOneBoard(boardNo){
			location.href="adminFAQDetail.hh?boardNo=" + boardNo;
		}
		
	</script>
</body>
</html>