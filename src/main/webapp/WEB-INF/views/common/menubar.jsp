<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<title> </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!-- css -->
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
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<c:if test="${ empty sessionScope.loginUser }">
		<form action="login.me" method="post">
			<div id="wrapper">
				<!-- start header -->
				<header>
					<div class="navbar navbar-default navbar-static-top">
						<div class="container">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand"  href="goMain.me"><span>E</span>njoin</a>
							</div>
							<div class="navbar-collapse collapse ">
								<ul class="nav navbar-nav">
									<li><a href="searchListFacility.kch">주변제휴시설 찾기</a></li>
									<li class="dropdown "><a href="#" class="dropdown-toggle "
										data-toggle="dropdown" data-hover="dropdown" data-delay="0"
										data-close-others="false">게시판 <b class=" icon-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="notice.hh">공지사항</a></li>
											<li><a href="crewRecruitmentBoard.shw2">크루모집</a></li>

											<li><a href="informBoard.kch2">크루공고</a></li>
											<li><a href="crewActivityBoard.shw2">크루활동</a></li>

											<li><a href="crewApplication.test">크루신청</a></li>
											<li><a href="crewAffiliate.test">크루제휴</a></li>
											<li><a href="crewActivity.test">크루활동</a></li>
											<li><a href="crewRecruitment.test">크루모집폼</a></li>
											<li><a href="adminSideBar.hh">관리자메인페이지</a></li>
										</ul></li>
									<li><a href="serviceCenter.hh">고객센터</a></li>
									<li><a href="memberLogin.me">로그인</a></li>
									<li><a href="preInsertView.me">회원가입</a></li>
									<li><a href="passPurchase.hh">멤버십 신청</a></li>									
								</ul>
							</div>
						</div>
					</div>

				</header>
			</div>
		</form>
	</c:if>
		
	<c:if test="${ sessionScope.loginUser.userType eq '1' }">
	<div id="wrapper">
				<!-- start header -->
				<header>
					<div class="navbar navbar-default navbar-static-top">
						<div class="container">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="index.jsp"><span>E</span>njoin</a>
							</div>
							<div class="navbar-collapse collapse ">
								<ul class="nav navbar-nav">
									<li><a href="searchListFacility.kch">주변제휴시설 찾기</a></li>
									<li class="dropdown "><a href="#" class="dropdown-toggle "
										data-toggle="dropdown" data-hover="dropdown" data-delay="0"
										data-close-others="false">게시판 <b class=" icon-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="notice.hh">공지사항</a></li>
											<li><a href="crewRecruitmentBoard.shw2">크루모집</a></li>
											<li><a href="informBoard.kch2">크루공고</a></li>
											<li><a href="crewActivityBoard.shw2">크루활동</a></li>
											<li><a href="crewApplication.test">크루신청</a></li>
											<li><a href="crewAffiliate.test">크루제휴</a></li>
											<li><a href="crewActivity.test">크루활동</a></li>
											<li><a href="crewRecruitment.test">크루모집</a></li>
											<li><a href="adminSideBar.hh">관리자메인페이지</a></li>
										</ul></li>
									<li><a href="serviceCenter.hh">고객센터</a></li>
									<li><a href="logout.me">로그아웃</a></li>
									<li><a href="passPurchase.hh">멤버십 신청</a></li>
									<li><a onclick="goProfil(${loginUser.userNo});" style="cursor:pointer;">프로필</a></li>
									<c:if test="${ !empty sessionScope.loginUser }">
										<li>
											<a class="btn btn-default" name="chatPopUp" id="chatPopUp" onclick="chatPopUp()"><i class="fa fa-comments-o"></i> 모두의 채팅</a>
										</li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</header>
			</div>
	</c:if>
	
	<c:if test="${ sessionScope.loginUser.userType eq '2' }">
	<div id="wrapper">
				<!-- start header -->
				<header>
					<div class="navbar navbar-default navbar-static-top">
						<div class="container">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="index.jsp"><span>E</span>njoin</a>
							</div>
							<div class="navbar-collapse collapse ">
								<ul class="nav navbar-nav">
									<li><a href="companyInsertForm.gs">제휴시설 관리</a></li>
									<li><a href="searchListFacility.kch">주변제휴시설 찾기</a></li>
									<li class="dropdown "><a href="#" class="dropdown-toggle "
										data-toggle="dropdown" data-hover="dropdown" data-delay="0"
										data-close-others="false">게시판 <b class=" icon-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="notice.hh">공지사항</a></li>
											<li><a href="crewRecruitmentBoard.shw2">크루모집</a></li>
											<li><a href="informBoard.kch2">크루공고</a></li>
											<li><a href="crewActivityBoard.shw2">크루활동</a></li>
											<li><a href="crewApplication.test">크루신청</a></li>
											<li><a href="crewAffiliate.test">크루제휴</a></li>
											<li><a href="crewActivity.test">크루활동</a></li>
											<li><a href="crewRecruitment.test">크루모집</a></li>
											<li><a href="adminSideBar.hh">관리자메인페이지</a></li>
										</ul></li>
									<li><a href="serviceCenter.hh">고객센터</a></li>
									<li><a href="logout.me">로그아웃</a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</header>
			</div>
	</c:if>
	
	<c:if test="${ sessionScope.loginUser.userType eq '3' }">
	<div id="wrapper">
				<!-- start header -->
				<header>
					<div class="navbar navbar-default navbar-static-top">
						<div class="container">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="index.jsp"><span>E</span>njoin</a>
							</div>
							<div class="navbar-collapse collapse ">
								<ul class="nav navbar-nav">
									<li><a href="adminChart.shw">관리자 페이지</a></li>
									<li><a href="searchListFacility.kch">주변제휴시설 찾기</a></li>
									<li class="dropdown "><a href="#" class="dropdown-toggle "
										data-toggle="dropdown" data-hover="dropdown" data-delay="0"
										data-close-others="false">게시판 <b class=" icon-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="notice.hh">공지사항</a></li>
											<li><a href="crewRecruitmentBoard.shw2">크루모집</a></li>
											<li><a href="informBoard.kch2">크루공고</a></li>
											<li><a href="crewActivityBoard.shw2">크루활동</a></li>
											<li><a href="crewApplication.test">크루신청</a></li>
											<li><a href="crewAffiliate.test">크루제휴</a></li>
											<li><a href="crewActivity.test">크루활동</a></li>
											<li><a href="crewRecruitment.test">크루모집</a></li>
											<li><a href="adminChart.shw">관리자메인페이지</a></li>
										</ul></li>
									<li><a href="serviceCenter.hh">고객센터</a></li>
									<li><a href="logout.me">로그아웃</a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</header>
			</div>
	</c:if>
	
	<script>
		function goProfil(userNo){
			location.href="profil.ljs?userNo=" + userNo;
		}
		
		function chatPopUp(){
			var url = "chatPopUp.hh";    //팝업창 페이지 URL
	 	    var popupX = (window.screen.width / 2) - (600 / 2);
			var popupY= (window.screen.height /2) - (500 / 2);

		    var popupOption= "width="+popupX+", height="+popupY;    //팝업창 옵션(optoin)
			window.open(url, '', 'toolbar=no, status=no, height=500, width=300, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		};

	</script>
	
	
	<!-- end header -->

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