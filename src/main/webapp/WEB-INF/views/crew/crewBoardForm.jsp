<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bodyArea {
	width: 80%;
	height: 1000px;
	margin: auto;
}

.fr-box.fr-basic .fr-element {
	height: 300px;
}
</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">크루 게시판</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>

	<div class="bodyArea">
		<div class="col-lg-12">
			<form id="writeForm" method="post" enctype="multipart/form-data" action="insertCrewBoard.ljs">
				<input type="hidden" name="crewId" value="${crewId}">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">게시글 작성</h3>
					</div>
					<div class="box-body">
						<div class="form-group">
							<label for="title">제목</label> <input class="form-control" id="title1" name="title" placeholder="제목을 입력해주세요">
						</div>
						<div class="form-group">
							<label for="content">내용</label>
							<textarea class="form-control" id="content1" name="content" rows="20" placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
						</div>
						<!-- <div class="form-group">
							<label for="writer">작성자</label> <input class="form-control" id="writer" name="writer">
						</div> -->
						<input type="file" class="btn btn-block btn-signup" name="attachment" style="display: inline-block; width:500px;">
					</div>
					<div class="box-footer">
						<button type="button" class="btn btn-primary"><i class="fa fa-list"></i><a href="javascript:history.go(-1)"> 목록</a></button>
						<div class="pull-right">
							<button type="reset" class="btn btn-warning"><i class="fa fa-reply"></i> 초기화</button>
							<button class="btn btn-success" onclick="insertCrewBoard();"><i class="fa fa-save"></i> 저장</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<script>
		function insertCrewBoard(){
			if($('#title').val() == ""){
				alert("제목을 입력해주세요");
				$('#title').focus;
				return;
			}
			if($('#content').val() == ""){
				alert("내용을 입력해주세요");
				return;
			}
			/* if($('#attachment').val() == ""){
				alert("이미지를 첨부해주세요");
				return;
			} */
			if($('#title').val() != "" && $('#content').val() != ""){
				$('#writeForm').submit();
			}
		}
	</script>
</body>
</html>















