<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 상세 페이지</title>
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
		<p style="font-size:100px; text-align:center">1:1 문의 답변</p>
		<hr>
		<table>
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">번호</th>
				<td style="width:700px; height:60px;">${detail.boardNo }</td>
			</tr>
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">카테고리</th>
				<td style="width:700px; height:60px;">${detail.boardType }</td>
			</tr>	
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">제목</th>
				<td style="width:700px; height:60px;">${detail.boardTitle }</td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:400px; font-size:30px; background:gray;">내용</th>
				<td style="width:700px; height:400px">${detail.boardContent }
				</td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:200px; font-size:30px; background:gray;">첨부파일</th>
				<td style="width:700px; height:400px">
				<c:if test="${ empty detail.upload_name }">
					등록된 이미지가 없습니다.
				</c:if>
				<c:if test="${ !empty detail.upload_name }">
					<img style="width:100%;"src="resources/uploadFiles/contact/${ detail.upload_name }">
				</c:if>
				</td>
			</tr>
		</table>
		<br><br><br><br>
			<div class="anRdj">
					<div class="commentArea" >
				<form action="contactComent.hh" id="replyForm" style="display:inline-block;">
					<textarea style="float:left" rows="4" cols="100%" placeholder="답변을 입력해 주세요" name="reply" id="reply"></textarea><button type="button" style="width: 80px;height: 100px; float:left;" onclick="insertComent()">등록</button>
					<div class="commentBtnArea" align="right">
																
					</div>
				</form>
					</div>
			</div>
		</div>
		<br><br><br><br><br>

	
	</div>
	

</body>
</html>