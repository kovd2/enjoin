<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
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
						<form id="contactInsertForm" action="contactInsert.hh" method="post" encType="multipart/form-data">
							<fieldset>
								<h4 class="mid">
									<i></i> 문의하기
								</h4>
								<!-- 이부분부터 로그인 한 회원의 정보 가져올 거임 -->
								<div class="form-horizontal">
									<div class="form-group">
										<label for="notLoginQA_name" class="col-sm-2 control-label">이름
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="userName"
												id="userName" placeholder="이름을 입력하세요." value="${ loginUser.getUserName() }" readonly>
										</div>
									</div>
									
									<div class="form-group category">
										<label for="notLoginQA_category"
											class="col-sm-2 control-label">문의 분류 <em>*</em></label>
										<div class="col-sm-10">
											<select class="form-control" name="category" id="category">
												<option>분류를 선택하세요.</option>
												<option value="센터이용/오류">센터이용/오류</option>
												<option value="결제/환불">결제/환불</option>
												<option value="패스">패스</option>
												<option value="회원정보">회원정보</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</div>
									<!-- /.category -->
									<div class="form-group">
										<label for="notLoginQA_title" class="col-sm-2 control-label">제목
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<input type="text" name="boardTitle" id="boardTitle" class="form-control" placeholder="제목을 입력하세요.">
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_content" class="col-sm-2 control-label">내용
											<em>*</em>
										</label>
										<div class="col-sm-10">
											<textarea rows="5" name="boardContent" class="form-control" id="boardContent" placeholder="내용을 입력해 주세요."></textarea>
										</div>
									</div>
									<div class="form-group">
										<label for="notLoginQA_inputFile"
											class="col-sm-2 control-label">첨부 파일</label>
										<div class="col-sm-10">
											<p class="help-block">
												오류 화면을 첨부해 주세요. <br> 정확한 문제 해결에 도움이 됩니다. <em>(JPG, PNG 10Mbyte 미만 )</em>
											</p>
											<input type="file" id="photo" name="photo">
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