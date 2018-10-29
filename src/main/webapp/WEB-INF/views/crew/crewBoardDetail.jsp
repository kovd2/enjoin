<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<div class="page-header noticeViewHeader">
							<h2>이곳에 제목</h2>
							<div align="right">작성자</div>
						</div>
						<div class="noticeWrap">
							<article class="notice">
								<p dir="ltr"
									style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;">
									<span style="font-size: 10pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; white-space: pre-wrap;">
										여기내용
									</span>
								</p>
							</article>
							<div class="commentWrap" style="width: 740px;">
									<div class="commentArea">
										<textarea rows="4" cols="100">
											댓글입력창
										</textarea>
									</div>
								<form action="<!-- 댓글 등록 쿼리로 이동 -->">
									<div class="commentBtnArea">
										<button type="submit" style="width: 80px;height: 30px; float: right;">등록</button>										
									</div>
								</form>
							</div>
						</div>
							<div class="articleTail">
								<a href="javascript:history.go(-1)" class="btn btn-default"><i
									class="fa fa-arrow-left"></i> 목록으로 돌아가기</a>
							</div>
					</div>
				</div>
			</div>
		</div>
			
</body>
</html>