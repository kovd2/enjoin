<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="register register1">

	<div class="subWrap">

		<header class="subHeader">
			<h1>
				<a href="goMain.me"><img
					src="resources/images/member/enjoin_logo_final.png" alt="Enjoin"></a>
			</h1>
		</header>
		<br> <br> <br> <br> <br>

		<div class="container">
			<div class="memberWrap">
				<div class="row">

					<div
						class="col-lg-offset-3 col-lg-6 col-md-offset-1 col-md-10 col-sm-offset-0 col-sm-12 memberBox loginBox">
						<h2>
							<span><b>회원님의 잃어버린 아이디는</b></span> <span><small>걱정마세요!
									입니다.</small></span>
						</h2>

						<form class="memberForm" action="searchId.me" method="post" id="searchId">
							<div class="form-group">
								<label>이름</label>
								<div class="floatlabel-wrapper" style="position: relative">
									<label for="user_name" class="label-floatlabel  "
										style="position: absolute; top: 0px; left: 0px; display: none; opacity: 0; font-size: 11px; font-weight: 600; color: rgb(153, 153, 153); transition: all 0.1s ease-in-out 0s;">가입하신
										분의 이름을 입력하세요</label><input name="userName" id="user_name" value="${userName}"
										type="text" class="form-control"
										placeholder="가입하신 분의 이름을 입력하세요"
										style="padding-top: 0px; transition: all 0.1s ease-in-out 0s;">
								</div>
							</div>
							<div class="form-group">
								<label>이메일</label>
								<div class="floatlabel-wrapper" style="position: relative">
									<label for="user_email" class="label-floatlabel  "
										style="position: absolute; top: 0px; left: 0px; display: none; opacity: 0; font-size: 11px; font-weight: 600; color: rgb(153, 153, 153); transition: all 0.1s ease-in-out 0s;">이메일
										주소를 입력하세요</label><input name="email" id="user_email" value="${email}"
										type="email" class="form-control" placeholder="이메일 주소를 입력하세요"
										style="padding-top: 0px; transition: all 0.1s ease-in-out 0s;">
								</div>
							</div>
							<div class="form-group submitLine">
								<button  class="btn btn-signup" onclick="searchId()" id="searchId">
									<i class="fa fa-search"></i> 아이디를 찾아주세요!
								</button>
							</div>
						</form>

					</div>
					<!-- /.memberBox -->
				</div>
				<!-- /.row -->
				<div class="mb_footDeco">
					<img class="tlx_symbol" src="/images/tlx_pass_symbol_alt.svg"
						alt="">
				</div>
			</div>
			<!-- /.memberWrap -->
			<br> <br> <br> <br> <br> <br>

		</div>
		<!-- /container -->
		
		
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>