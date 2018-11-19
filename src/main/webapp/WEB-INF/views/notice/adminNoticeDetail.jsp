<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.wrappp {
	width: 100%;
	align: center;
}

.boardAdmin table tr {
	text-align: center;
	border: 1px solid black;
}


th {
	border-left:1px solid;
}

td {
	border-left:1px solid;
}

table td, table th {
	padding:0px !important;
}


</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">	
		<div class="boardAdmin" align="center">
		<p style="font-size: 30px; color: #03a9f4; font-weight: bold; margin-top: 10px; margin-right: 50px;">공지사항</p>
		
		<hr>
		
	<form id="updateBoardForm" action="adminNoticeUpdate.hh" method="post">
		<input type="hidden" value="${detail.boardNo }" id="boardNo" name="boardNo">
		<table class="table table-bordered" style="vertical-align: middle;">	
			<tr>
				<th style="width:300px; height:60px; font-size:30px; background:#0099CC; padding">제목</th>
				<td style="width:800px; height:60px;"><input type="text" id="boardTitle" name="boardTitle" style="width:100%; height:60px;" value="${detail.boardTitle }"></td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:400px; font-size:30px; background:#0099CC;">내용</th>
				<td style="width:800px; height:400px">
					<textarea id="boardContent" name="boardContent" style="width:100%; height:100%;">${detail.boardContent }</textarea>
				</td>
			</tr>
			<tr>
			<th style="vertical-align:middle; width:300px; height:260px; font-size:30px; background:#0099CC;">첨부파일</th>
			<td  style="width:310px; height:260px;"><div id="contentImgArea1" style="width:310px; height:260px;">
			<img style="width:100%; height:100%" id=contentImg1 src="resources/uploadFiles/admin/${ detail.upload_name }">
			</div></td>
	
			</tr>
		</table>
		<div id="fileArea">
		<input type="file" id="photo" name="photo" value="파일선택" onchange="loadImg(this,1)">
				</div>
	</form>
		<br>
		
		<form action="adminNoticeDelete.hh" method="post">
			<input type="button" class="btn btn-info" value="수정" style="width: 80px; height: 40px; font-size: x-large;" onclick="adminNoticeUpdate()">
			<input type="hidden" value="${detail.boardNo }" id="boardNo" name="boardNo">
			&nbsp;&nbsp;&nbsp;
			<button type="submit" class="btn btn-danger" style="width: 80px; height: 40px; font-size: x-large;">삭제</button>
		</form>
		
		</div>
		<br><br><br><br><br>
	</div>
	
	<script>
		function adminNoticeUpdate(){
			$("#updateBoardForm").submit();
		
		}
		
		$(function(){
			$("#fileArea").hide();
				$("#contentImgArea1").click(function(){
					$("#photo").click();
				})

			});
		
			function loadImg(value, num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
						switch(num){
							case 1 : $("#contentImg1").attr("src", e.target.result); break;

						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			};	
	
		
	</script>
	
</body>
</html>