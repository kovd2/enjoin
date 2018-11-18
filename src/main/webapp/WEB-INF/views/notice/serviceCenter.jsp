<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
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

</head>
<body>
	<div id="wrapper">
	<jsp:include page="../common/menubar.jsp"/>
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb" style="background-color: #68A4C4;">
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
										<form id="searchForm" action="search.hh" method="post">
											<div class="input-group input-group-lg">
											  <input type="text" class="form-control" value="${keyword}" placeholder="어떤 도움이 필요하세요?" name="keyword">
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
															센터이용/오류
														</h5>
													</div>
													<div class="panel-body">
														<a href="search.hh?keyword=이용" class="label-faq">센터이용</a>
														<a href="search.hh?keyword=이용" class="label-faq">인증오류</a>
														<a href="search.hh?keyword=이용" class="label-faq">센터입장</a>
														<a href="search.hh?keyword=이용" class="label-faq">PASS변경</a>
														<a href="search.hh?keyword=이용" class="label-faq">원플레이스멤버십</a>
														<a href="search.hh?keyword=이용" class="label-faq">제휴문의</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_2">
													<div class="panel-heading">
														<h5 class="panel-title">
															결제/환불
														</h5>
													</div>
													<div class="panel-body">
														<a href="search.hh?keyword=결제" class="label-faq">결제</a>
														<a href="search.hh?keyword=환불" class="label-faq">환불</a>
														<a href="search.hh?keyword=결제" class="label-faq">결제방법변경</a>
														<a href="search.hh?keyword=할인" class="label-faq">할인코드</a>
														<a href="search.hh?keyword=현금" class="label-faq">현금영수증</a>
														<a href="search.hh?keyword=결제"" class="label-faq">상품권</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_3">
													<div class="panel-heading">
														<h5 class="panel-title">
															멤버십
														</h5>
													</div>
													<div class="panel-body">
														<a href="search.hh?keyword=멤버십" class="label-faq">해지</a>
														<a href="search.hh?keyword=멤버십" class="label-faq">변경</a>
														<a href="search.hh?keyword=멤버십" class="label-faq">일시정지</a>
														<a href="search.hh?keyword=멤버십" class="label-faq">멤버십이용</a> 
														<a href="search.hh?keyword=멤버십" class="label-faq">재이용</a> 
														<a href="search.hh?keyword=카드" class="label-faq">카드발급</a> 
														<a href="search.hh?keyword=가입" class="label-faq">재가입</a> 
														<a href="search.hh?keyword=멤버십" class="label-faq">멤버십연장</a>
														<a href="search.hh?keyword=멤버십" class="label-faq">추가이용</a>
														<a href="search.hh?keyword=멤버십" class="label-faq">친구초대</a>
													</div>
												</div>
												<!-- /.panel -->
											</div>
											<!-- /.col -->
											<div class="col-sm-6 col-md-6 col-lg-3">
												<div class="panel panel-default phType_4">
													<div class="panel-heading">
														<h5 class="panel-title">
															회원정보
														</h5>
													</div>
													<div class="panel-body">
														<a href="search.hh?keyword=회원" class="label-faq">가족회원</a> <a
															href="search.hh?keyword=회원" class="label-faq">제휴임직원회원</a>
														<a href="search.hh?keyword=이메일" class="label-faq">이메일인증</a>
														<a href="search.hh?keyword=비밀번호" class="label-faq">비밀번호찾기</a>
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
											<li><strong class="phType phType_2" style="color:#798E19; border-color:#798E19;">센터이용/오류</strong>
											<a href="search.hh?keyword=센터이용에 문제가 생겼어요."> 센터이용에 문제가 생겼어요. </a></li>	
											<li><strong class="phType phType_2">결제/환불</strong>
											<a href="search.hh?keyword=결제내역은 어떻게 확인하나요?"> 결제내역은 어떻게 확인하나요? </a></li>	
											<li><strong class="phType phType_2" style="color:#798E19; border-color:#798E19;">센터이용/오류</strong>
											<a href="search.hh?keyword=멤버십 상품과 관계없이 제휴 센터 모두 이용가능하나요?"> 멤버십 상품과 관계없이 제휴 센터 모두 이용가능하나요?</a></li>	
											<li><strong class="phType phType_2" style="color:#9a90d1; border-color:#9a90d1;">회원정보</strong>
											<a href="search.hh?keyword=아이디 분실 시 어떻게 확인해야 하나요?"> 아이디 분실 시 어떻게 확인해야 하나요? </a></li>	
											<li><strong class="phType phType_2" style="color:#9a90d1; border-color:#9a90d1;">회원정보</strong>
											<a href="search.hh?keyword=회원탈퇴는 어떻게 하나요?"> 회원탈퇴는 어떻게 하나요? </a></li>											
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
												<strong><a href="memberLogin.me" style="color:black; font-size:15px;" >[로그인하기]</a></strong></span>
											</p>
											<c:if test="${ empty sessionScope.loginUser }">
											<a class="btn btn-default" name="chatPopUp" id="chatPopUp" href="memberLogin.me"><i class="fa fa-comments-o"></i> 로그인</a>
											</c:if>
											<%-- <c:if test="${ !empty sessionScope.loginUser }">
											<a class="btn btn-default" name="chatPopUp" id="chatPopUp" onclick="chatPopUp()"><i class="fa fa-comments-o"></i> 모두의 채팅</a>
											</c:if> --%>
										</div>
										<div class="innerBox col-xs-6 col-sm-12">
											<h3>1:1 문의</h3>
											<p class="help-block">
												<span>게시판에 문의사항을 남겨주시면 정확하게 답변해 드립니다.</span>
											</p>
											<a href="contactDetail.hh" class="btn btn-default btnQuestion">1:1 문의 남기기 </a>
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
	<jsp:include page="../common/footer.jsp" />
<script>
	function chatPopUp(){
		var url = "chatPopUp.hh";    //팝업창 페이지 URL
 	    var popupX = (window.screen.width / 2) - (600 / 2);
		var popupY= (window.screen.height /2) - (500 / 2);

	    var popupOption= "width="+popupX+", height="+popupY;    //팝업창 옵션(optoin)
		window.open(url, '', 'toolbar=no, status=no, height=500, width=300, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	};

</script>
</body>
</html>