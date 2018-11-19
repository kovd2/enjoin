<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<style>
.boardContentArea{
	margin-left:200px;
}
.commentArea{
	margin-left:200px;
}
.commentContent td{
	text-align:center;
}
.commentWrap{
	width:740px;
	margin:auto;
}
.commentBtnArea{
	width:740px;
}
.articleTail{
	margin-left:190px;
}
.comentDate{
	float:right;
}
</style>
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
							<li class="active">1:1 문의 내역</li>
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
						<div class="page-header noticeViewHeader">
								<h2>${ asDetail.boardTitle }</h2>			
							<div align="right"></div>
						</div>
						<div class="noticeWrap">
							<div class="boardContentArea">
								<c:if test="${asDetail.attachment[0].upload_Name ne null }">
									<img src="resources/uploadFiles/contact/${asDetail.attachment[0].upload_Name }" style="width:200px;">
									<span style="font-size: 10pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; white-space: pre-wrap;">
										${asDetail.boardContent }
									</span>
								</c:if>
							</div>						
							<div class="commentWrap" style="width: 740px;">
							<c:forEach var="r" items="${ asDetail.comentList }">
								<div class="commentContent" style="display:inline-block; width: 740px;">
									<c:if test="${ r.comentContent ne null }">
									<div style="border-bottom:1px solid gray;">
										<div><b style="font-size:20px;">관리자</b>님의 답변입니다.</div><br>
										<div><p class="Reply">${ r.comentContent }</p></div>
										<p class="comentDate"><fmt:formatDate value="${ r.comentDate }" pattern="yyyy-MM-dd a HH:mm" /></p>																			
									</div>		
									</c:if>						
								</div>
							</c:forEach>	
							</div>
						</div>
							<div class="articleTail">
								<a href="javascript:history.go(-1)" class="btn btn-default">
								<i class="fa fa-arrow-left"></i> 목록으로 돌아가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>	
			
			
</body>
</html>



















