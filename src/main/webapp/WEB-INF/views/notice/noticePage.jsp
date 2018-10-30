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
	<jsp:include page="../common/menubar.jsp"/>
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
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
            공지사항
            <small>이벤트와 새로운 알림을 확인하세요!</small>
          </h2>
        </div>
        
        <div class="noticeWrap">
         <c:forEach var="b" items="${ list }">
         	
         
        <div class="list-group">
            <a class="list-group-item" href="noticeDetail.hh">
              <span class="label label-info">${b.boardType }</span><h4 class="list-group-ietm-heading">${ b.boardTitle }</h4>
              <span class="date">${ b.enrollDate }</span>
            </a>
          </div>
		</c:forEach>
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
        </div><!-- /.noticeWrap -->



      </div> <!-- /.content -->
    </div><!-- /.row -->
  </div><!-- /container -->


</div>

		<!-- javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="resources/style/js/jquery.js"></script>
		<script src="resources/style/js/jquery.easing.1.3.js"></script>
		<script src="resources/style/js/bootstrap.min.js"></script>
		<script src="resources/style/js/jquery.fancybox.pack.js"></script>
		<script src="resources/style/js/jquery.fancybox-media.js"></script>
		<script src="resources/style/js/google-code-prettify/prettify.js"></script>
		<script src="resources/style/js/portfolio/jquery.quicksand.js"></script>
		<script src="resources/style/js/portfolio/setting.js"></script>
		<script src="resources/style/js/jquery.flexslider.js"></script>
		<script src="resources/style/js/animate.js"></script>
		<script src="resources/style/js/custom.js"></script>
</body>
</html>