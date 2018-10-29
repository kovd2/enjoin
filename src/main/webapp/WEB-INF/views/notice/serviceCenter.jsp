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
<!-- css -->
<style>
.label-faq {
    display: inline-block;
    padding: 3px 7px;
    margin: 2px;
    border: 1px solid #ddd;
    border-radius: 2px;
    background: #fff;
    color: #777;
    font-weight: 400;
    font-size: 13px;
    letter-spacing: -1px;
    text-decoration: none;
}

strong.phType {
    padding: 3px 7px;
    display: inline-block;
    min-width: 90px;
    line-height: 1.8;
    text-align: center;
    margin: 0 5px 0 0;
    border: 1px solid #ddd;
    border-radius: 2px;
    background: #fff;
    color: #777;
    font-weight: 400;
    font-size: 13px;
    letter-spacing: -1px;
    text-decoration: none;
    vertical-align: middle;
}

strong.phType_2 {
    border-color: #E0498E;
    color: #E0498E;
}

strong.phType_3 {
    border-color: #00bff0;
    color: #00bff0;
}

.row {
    margin-right: -15px;
    margin-left: -15px;
}

.faqList li, .searchedHelpList li {
    font-size: 18px;
    font-weight: 200;
    letter-spacing: -0.5px;
    color: #666;
    margin: 10px 0;
}

.helpCenterWrap h3 {
    font-size: 18px;
    color: #00bff0;
    letter-spacing: -1px;
    margin: 0 0 10px;
}

h5 {
    display: block;
    font-size: 0.83em;
    margin-block-start: 1.67em;
    margin-block-end: 1.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: inherit;
}

.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 16px;
    color: inherit;
}

.helpCenterWrap .panel-title {
    font-size: 14px;
    font-weight: 500;
}

.phType_1 .panel-title {
    color: #798E19;
    border-color: #798E19;
}

.phType_2 .panel-title {
    color: #E0498E;
    border-color: #E0498E;
}

.phType_3 .panel-title {
    color: #00bff0;
    border-color: #00bff0;
}

.phType_4 .panel-title {
    color: #9a90d1;
    border-color: #9a90d1;
}

.helpCenterWrap .innerBox {
    margin: 0 0 30px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css"><link rel="stylesheet" href="/css/lightgallery.css">
    <link rel="stylesheet" href="/css/radios-to-slider.css">
    <link rel="stylesheet" href="/css/daterangepicker.css">
    <link rel="stylesheet" href="/css/jquery.bxslider.css">
    <link rel="stylesheet" href="/css/sweetalert2.css">
    <link rel="stylesheet" href="/css/style.css?v=180808">
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet">

<!-- Theme skin -->
<link href="resources/style/skins/default.css" rel="stylesheet">
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
							<li class="active">고객센터</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<!-- 여기까지가 menubar -->

		<div class="wrap">

			<div class="container">
				<div class="row">
					<div class="content col-md-12">
						<div class="page-header">
							<h2>
								고객센터 <small>도움이 필요하신가요?</small>
							</h2>
						</div>

						<div class="helpCenterWrap">
							<div class="row">
								<div class="col-md-9">
									<div class="searchFormBox">
										<form action="/help/search">
											<div class="input-group input-group-lg">
											  <input type="text" class="form-control"	placeholder="어떤 도움이 필요하세요?" name="keyword">
												<span class="input-group-btn">
													<button class="btn btn-primary" type="submit">
														<i class="fa fa-search"></i>
													</button>
												</span>
											</div>
										</form>
										<p class="help-block">
											<b>멤버십 환불</b>, <b>센터이용</b> 등 도움이 필요한 내용을 검색어로 검색하거나 아래 태그를 선택하세요.
										</p>
									</div>
									<div class="helpTagsBoxWrap">
										<div class="row">
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_1">
													<div class="panel-heading">
														<h5 class="panel-title">
															<a href="/help/search?category=1">센터이용/오류</a>
														</h5>
													</div>
													<div class="panel-body">
														<a href="FAQ.hh" class="label-faq">센터이용</a>
														<a href="FAQ.hh" class="label-faq">인증오류</a>
														<a href="FAQ.hh" class="label-faq">센터입장</a>
														<a href="FAQ.hh" class="label-faq">PASS변경</a>
														<a href="FAQ.hh" class="label-faq">원플레이스멤버십</a>
														<a href="FAQ.hh" class="label-faq">제휴문의</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_2">
													<div class="panel-heading">
														<h5 class="panel-title">
															<a href="/help/search?category=2">결제/환불</a>
														</h5>
													</div>
													<div class="panel-body">
														<a href="/help/search?tag=4" class="label-faq">결제</a>
														<a href="/help/search?tag=5" class="label-faq">환불</a>
														<a href="/help/search?tag=32" class="label-faq">결제방법변경</a>
														<a href="/help/search?tag=37" class="label-faq">할인코드</a>
														<a href="/help/search?tag=6" class="label-faq">현금영수증</a>
														<a href="/help/search?tag=97" class="label-faq">상품권</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_3">
													<div class="panel-heading">
														<h5 class="panel-title">
															<a href="/help/search?category=3">멤버십</a>
														</h5>
													</div>
													<div class="panel-body">
														<a href="/help/search?tag=65" class="label-faq">해지</a>
														<a href="/help/search?tag=64" class="label-faq">변경</a>
														<a href="/help/search?tag=10" class="label-faq">일시정지</a>
														<a href="/help/search?tag=12" class="label-faq">멤버십이용</a> 
														<a href="/help/search?tag=66" class="label-faq">재이용</a> 
														<a href="/help/search?tag=13" class="label-faq">카드발급</a> 
														<a href="/help/search?tag=53" class="label-faq">재가입</a> 
														<a href="/help/search?tag=8" class="label-faq">멤버십연장</a>
														<a href="/help/search?tag=75" class="label-faq">추가이용</a>
														<a href="/help/search?tag=99" class="label-faq">친구초대</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_4">
													<div class="panel-heading">
														<h5 class="panel-title">
															<a href="/help/search?category=4">회원정보</a>
														</h5>
													</div>
													<div class="panel-body">
														<a href="/help/search?tag=19" class="label-faq">가족회원</a> <a
															href="/help/search?tag=52" class="label-faq">제휴임직원회원</a>
														<a href="/help/search?tag=15" class="label-faq">이메일인증</a>
														<a href="/help/search?tag=105" class="label-faq">비밀번호찾기</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->

										</div>
									</div>
									<!-- /.helpTagsBoxWrap -->

									<div class="faqList">
										<h2>FAQ
										<small>
										<span class="label label-info">TOP 5</span>
										</small>
										</h2>
										<ul style="list-style: none; margin:0px;"  >
											<li><strong class="phType phType_2">카테고리</strong>
											<a href="/help/contents/36"> 여기에 베스트질문들 </a></li>	
											<li><strong class="phType phType_2">카테고리</strong>
											<a href="/help/contents/36"> 여기에 베스트질문들2 </a></li>	
											<li><strong class="phType phType_2">카테고리</strong>
											<a href="/help/contents/36"> 여기에 베스트질문들3</a></li>	
											<li><strong class="phType phType_2">카테고리</strong>
											<a href="/help/contents/36"> 여기에 베스트질문들4 </a></li>	
											<li><strong class="phType phType_2">카테고리</strong>
											<a href="/help/contents/36"> 여기에 베스트질문들5 </a></li>											
										</ul>
									</div>
								</div>
								<!-- /.col -->
								<aside class="col-md-3">
									<div class="row">
										<div class="innerBox col-xs-6 col-sm-12">
											<h3>실시간 채팅 상담</h3>
											<p class="help-block">
												<span><strong style="font-size:17px">운영시간</strong><strong><br> 평일 09:30~17:30 <br> 점심시간 11:30~13:00<br></strong></span>
												<span>이외의 시간은</span>
												<span>1:1 문의를 이용해주세요.</span>
											</p>
											<p class="help-block">
												<span>로그인 후 이용하시면 자세한 상담을 받을 수 있습니다.<br>
												<strong><a href="#" style="color:black; font-size:15px;">로그인하기</a></strong></span>
											</p>
											<a href="#" class="btn btn-default"><i class="fa fa-comments-o" style=""></i> 실시간 채팅상담</a>
										</div>
										<div class="innerBox col-xs-6 col-sm-12">
											<h3>1:1 문의</h3>
											<p class="help-block">
												<span>게시판에 문의사항을 남겨주시면 정확하게 답변해 드립니다.</span>
											</p>
											<a href="contact.hh" class="btn btn-default btnQuestion">1:1 문의 남기기 </a>
										</div>
									</div>
									<div class="row">
										<div class="innerBox col-xs-6 col-sm-12">
											<h3>공지사항</h3>
											<p class="help-block">공지사항을 확인하세요!</p>
											<a href="notice.hh" class="btn btn-default"> 공지사항 보기 </a>
										</div>
									</div>
									<!-- /.row -->
								</aside>
								<!-- /aside.col -->
							</div>
						</div>
						<!-- /.helpCenterWrap -->
					</div>
					<!-- /.content -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /container -->
		</div>
</body>
</html>