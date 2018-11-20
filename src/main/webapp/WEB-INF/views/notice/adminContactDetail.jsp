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
	vertical-align:middle;
}


</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">	
		<div class="boardAdmin" align="center">
		<p style="font-size: 30px; color: #03a9f4; font-weight: bold; margin-top: 10px; margin-right: 50px;">1:1 문의 답변</p>
		<hr>
		<table class="table table-bordered">
			<tr>
				<th style="width:300px; height:60px; font-size:30px; background:#0099CC;">번호</th>
				<td style="width:100%; height:60px; vertical-align:middle;">${detail.boardNo }</td>
			</tr>
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:#0099CC;">제목</th>
				<td style="width:700px; height:60px; vertical-align:middle;">${detail.boardTitle }</td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:400px; font-size:30px; background:#0099CC;">내용</th>
				<td style="width:700px; height:400px; vertical-align:middle;">${detail.boardContent }
				</td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:200px; font-size:30px; background:#0099CC;">첨부파일</th>
				<td style="width:700px; height:400px; vertical-align:middle;">
				<c:if test="${ empty detail.upload_name }">
					<p >등록된 이미지가 없습니다.</p>
				</c:if>
				<c:if test="${ !empty detail.upload_name }">
					<img style="width:100%;"src="resources/uploadFiles/contact/${ detail.upload_name }">
				</c:if>
				</td>
			</tr>
		</table>
		<br><br><br><br>
			<div class="anRdj">
					<div class="commentArea">
				<c:if test="${ detail.contactStatus == 0 }">
				<form action="contactComent.hh" id="contactReplyForm" style="display:inline-block;">
					<input type="hidden" name="boardNo" id="boardNo" value="${ detail.boardNo }">
					<textarea style="float:left; width:930px; height:200px;" rows="4" cols="100%" placeholder="답변을 입력해 주세요!" name="comentContent" id="comentContent"></textarea>
					<button type="submit" class="btn btn-info" style="width:80px; height: 200px; float:left;">등록</button>
				</form>
				</c:if>
				<c:if test="${ detail.contactStatus == 1 }">
					<form id="contactReplyForm" style="display:inline-block;">
					<input type="hidden" name="boardNo" id="boardNo" value="${ detail.boardNo }">
					<textarea style="float:left; width:930px; height:200px;" rows="4" cols="100%" name="comentContent" id="comentContent">${ detail2.comentContent }</textarea>
					</form>
				</c:if>
					</div>
			</div>
		</div>
		<br><br><br><br><br>
	</div>

</body>
</html>