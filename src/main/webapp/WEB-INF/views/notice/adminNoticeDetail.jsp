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
	width:100%;align:center;
}
.boardAdmin table tr {
	text-align:center;
	border:1px solid black;
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">	
		<div class="boardAdmin" align="center">
		<p style="font-size:100px; text-align:center">공지사항</p>
		
		<hr>
		
	<form id="updateBoardForm" action="adminNoticeUpdate.hh" method="post">
		<input type="hidden" value="${detail.boardNo }" id="boardNo" name="boardNo">
		<table>	
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">제목</th>
				<td style="width:800px; height:60px;"><input type="text" id="boardTitle" name="boardTitle" style="width:800px; height:60px;" value="${detail.boardTitle }"></td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:400px; font-size:30px; background:gray;">내용</th>
				<td style="width:800px; height:400px">
					<textarea id="boardContent" name="boardContent" style="width:100%; height:100%;">${detail.boardContent }</textarea>
				</td>
			</tr>
			<tr>
			<th style="vertical-align:middle; width:300px; height:260px; font-size:30px; background:gray;">첨부파일</th>
			<td  style="width:310px; height:260px;"><div id="contentImgArea1" style="width:310px; height:260px;">
			<img id=contentImg1 src="resources/uploadFiles/admin/${ detail.upload_name }">
			</div></td>
	
			</tr>
		</table>
		<div id="fileArea">
		<input type="file" id="photo" name="photo" value="파일선택" onchange="loadImg(this,1)">
				</div>
	</form>
		<br>
		
		<form action="adminNoticeDelete.hh" method="post">
			<input type="button" value="수정" style="width: 80px; height: 40px; font-size: x-large;" onclick="adminNoticeUpdate()">
			<input type="hidden" value="${detail.boardNo }" id="boardNo" name="boardNo">
			&nbsp;&nbsp;&nbsp;
			<button type="submit" style="width: 80px; height: 40px; font-size: x-large;">삭제</button>
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