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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet">

<!-- Theme skin -->
<link href="resources/style/skins/default.css" rel="stylesheet">
</head>
<style>
.container {

    margin-right: auto;
    margin-left: auto;
}

.qaFormWrap .content {
  max-width: 680px;
  margin: 0 auto;
}

h1, h2, h3, h4, h5, h6 {
    font-family: 'Open Sans', Arial, sans-serif;
    font-weight: 700;
    line-height: 1.1em;
    color: #333;
    margin-bottom: 20px;
}

</style>
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
	</div>
		<!-- 여기까지가 menubar -->


		<!-- 회원만 문의 가능 -->
		<div class="wrap">

			<div class="container qaFormWrap">

				<div class="content">

					<div class="qaFormAside">

						<h2>1:1 문의</h2>
						<hr>
					</div>
					<br>
					<!-- /.qaFormAside -->

					<div class="qaForm qaFormCol">
						<form name="form_qa" id="form_qa" enctype="multipart/form-data"
							method="post">
							<input type="hidden" name="jobtype" value="insert" id="jobtype">

							<fieldset>
								<h4 class="mid">
									<i></i> 문의하기
								</h4>
								<!-- 이부분부터 로그인 한 회원의 정보 가져올 거임 -->
								<div class="form-horizontal">
									<div class="form-group">
										<label for="notLoginQA_email" class="col-sm-2 control-label">이메일
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" name="email"
												id="notLoginAq_email" placeholder="답변 받을 Email 주소를 입력하세요."
												required="">
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_name" class="col-sm-2 control-label">이름
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="guest_name"
												id="notLoginAq_name" placeholder="이름을 입력하세요." required="">
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_name" class="col-sm-2 control-label">연락처
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="tel" class="form-control" name="phone"
												id="notLoginAq_name"
												placeholder="연락 받으실 휴대전화 또는 유선전화 번호를 입력해 주세요." required="">
										</div>
									</div>
									<!-- 이부분까지 로그인 한 회원의 정보 가져올 거임 -->
									
									<div class="form-group category">
										<label for="notLoginQA_category"
											class="col-sm-2 control-label">문의 분류 <em>*</em></label>
										<div class="col-sm-10">
											<select class="form-control" name="category"
												id="notLoginQA_category">
												<option value="" disabled="" selected="" hidden="">분류를
													선택하세요.</option>
												<optgroup label="아래 분류 중 하나를 선택해 주세요.">
													<option value="1">가입/로그인/회원정보</option>
													<option value="2">제휴시설 이용문의</option>
													<option value="3">입장하기 문의</option>
													<option value="4">멤버십 이용</option>
													<option value="5">결제/환불</option>
													<option value="6">기타</option>
												</optgroup>
											</select>
										</div>
									</div>
									<!-- /.category -->
									<div class="form-group">
										<label for="notLoginQA_title" class="col-sm-2 control-label">제목
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="text" name="title" id="notLoginQA_title"
												class="form-control" placeholder="제목을 입력하세요." required="">
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_content" class="col-sm-2 control-label">내용
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<textarea rows="5" name="cont" class="form-control" id="notLoginQA_content" placeholder="운영체제와 브라우저를 함께 적어주시면 정확한 문제 해결에 도움이 됩니다." required=""></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_inputFile"
											class="col-sm-2 control-label">첨부 파일</label>
										<div class="col-sm-10">
											<p class="help-block">
												오류 화면을 첨부해 주세요. <br> 정확한 문제 해결에 도움이 됩니다. <em>(JPG, PNG 10Mbyte 미만 )</em>
											</p>
											<input type="file" id="inputFile" name="inputFile">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-10 col-sm-offset-2 submitLine">
											<button type="submit" class="btn btn-default" style="width:100%; font-size:x-large;" >문의하기</button>
										</div>
									</div>
								</div>
								<!-- /.form-horizontal -->
							</fieldset>
						</form>

					</div>
					<!-- /.qaForm -->

				</div>
				<!-- /.content -->
				
			</div>
			<!-- /container -->

		</div>

</body>
</html>