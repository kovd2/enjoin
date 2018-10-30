<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							크루 게시판 <small>(크루 이름)</small>
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
							<button onclick="location.href='goCrewBoardForm.ljs'" style="float:right;">작성하기</button>

						<nav>
							<ul class="pagination">
								<li class="active"><a href="/notice/thread/1">1</a></li>
								<li><a href="/notice/thread/2">2</a></li>
								<li><a href="/notice/thread/3">3</a></li>
								<li><a href="/notice/thread/4">4</a></li>
								<li><a href="/notice/thread/5">5</a></li>
								<li><a href="/notice/thread/6" aria-label="Next"><span aria-hidden="true">다음</span></a></li>
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
	</script>
</body>
</html>