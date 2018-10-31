<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
							<li class="active">공지사항</li>
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
							공지사항 <small>이벤트와 새로운 알림을 확인하세요!</small>
						</h2>
					</div>

					<div class="noticeWrap">

						<div class="list-group">
							<c:forEach var="b" items="${ list }">
								<a class="list-group-item"
									onclick="selectOneBoard(${ b.boardNo })"> <span	class="label label-info">${b.boardType }</span>
								<h4 class="list-group-ietm-heading">${ b.boardTitle }</h4> <span class="date">${ b.enrollDate }</span>
								</a>
							</c:forEach>
						</div>

						<nav>
							<ul class="pagination">
								<c:if test="${ pi.currentPage <= 1 }">
									<li><a>이전</a></li>
								</c:if>
								<c:if test="${ pi.currentPage > 1 }">
									<c:url var="listBack" value="notice.hh">
										<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
									</c:url>
									<li><a href="${ listBack }">이전</a></li>
								</c:if>

								<c:forEach var="p" begin="${ pi.startPage }"
									end="${ pi.endPage }">
									<c:if test="${ p eq pi.currentPage }">
										<li class="active"><a>${ p }</a></li>
									</c:if>
									<c:if test="${ p ne pi.currentPage }">
										<c:url var="listCheck" value="notice.hh">
											<c:param name="currentPage" value="${ p }" />
										</c:url>
										<li><a href="${ listCheck }">${ p }</a></li>
									</c:if>
								</c:forEach>

								<c:if test="${ pi.currentPage >= pi.maxPage }">
									<li><a>다음</a></li>
								</c:if>
								<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="listEnd" value="notice.hh">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
									</c:url>
									<li><a href="${ listEnd }">다음</a></li>
								</c:if>
							</ul>
						</nav>

					</div>
					<!-- /.noticeWrap -->
					<script>
		function selectOneBoard(boardNo){
			location.href="noticeDetail.hh?boardNo=" + boardNo;
		}
		
	</script>


				</div>
				<!-- /.content -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /container -->


	</div>

</body>
</html>