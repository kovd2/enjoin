<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bodyArea{
	width:80%;
	height:500px;
	margin:auto;
}
.fr-box.fr-basic .fr-element{
	height:300px;
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
							<li class="active">크루 게시판</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<div align="center"><h1>게시물 작성</h1></div>
	<div class="bodyArea">
		<jsp:include page="../common/boardForm.jsp"/>
	</div>
	<br><br><br><br><br><br><br><br><br>
	
</body>


</html>


