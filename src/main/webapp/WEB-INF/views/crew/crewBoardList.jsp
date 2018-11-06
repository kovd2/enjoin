<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크루 게시판</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

</head>
<body>
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">크루 게시판</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- 여기까지가 menubar -->
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="content col-md-12">
					<div class="page-header">
						<h2>
							크루 게시판 <small>(${ crewName })</small>
						</h2>
					</div>
					<div class="noticeWrap">
						<!-- 반복문  사용 -->
						<div class="list-group" style="cursor:pointer;">
						<c:forEach var="b" items="${ list }">
							<a class="list-group-item" onclick="detailBoard(${b.boardNo })"> 
								<span class="label label-info">게시물</span>						
								<h4 class="list-group-ietm-heading">${b.boardTitle }</h4> 						
								<span class="date">${b.enrollDate }</span>									
							</a> 
						</c:forEach>
						</div>
							<button onclick="goCrewBoardForm(${crewId})" style="float:right;">작성하기</button>
						<!-- 페이징 처리 -->
						<nav>
							<ul class="pagination">
								<c:if test="${ pi.currentPage <= 1 }">
									<li><a>이전</a></li>
								</c:if>
								<c:if test="${ pi.currentPage > 1 }">
									<c:url var="listBack" value="goCrewBoardList.ljs">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
										<c:param name="crewId" value="${ crewId }" />
									</c:url>
									<li><a href="${ listBack }">이전</a></li>
								</c:if>

								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<li class="active"><a>${ p }</a></li>
									</c:if>
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="listCheck" value="goCrewBoardList.ljs">
											<c:param name="currentPage" value="${ p }" />
											<c:param name="crewId" value="${ crewId }" />
										</c:url>
										<li><a href="${ listCheck }">${ p }</a></li>
									</c:if>
								</c:forEach>

								<c:if test="${ pi.currentPage >= pi.maxPage }">
									<li><a>다음</a></li>
								</c:if>
								<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="listEnd" value="goCrewBoardList.ljs">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
										<c:param name="crewId" value="${ crewId }" />
									</c:url>
									<li><a href="${ listEnd }">다음</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
					<!-- /.noticeWrap -->
				</div>
				<!-- /.content -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /container -->


	</div>
	<script>
		function detailBoard(boardNo){
			location.href="crewBoardDetail.ljs?boardNo=" + boardNo;
		}
		
		function goCrewBoardForm(crewId){
			location.href="goCrewBoardForm.ljs?crewId=" + crewId;
		}
	</script>
</body>
</html>