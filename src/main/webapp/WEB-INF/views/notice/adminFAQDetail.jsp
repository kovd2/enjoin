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
}

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="wrappp">	
		<div class="boardAdmin" align="center">
		<p style="font-size: 30px; color: #03a9f4; font-weight: bold; margin-top: 10px; margin-right: 50px;">FAQ</p>
		
		<hr>
		
	<form id="updateFAQForm" action="adminFAQUpdate.hh" method="post">
		<input type="hidden" value="${faqDetail.boardNo }" id="boardNo" name="boardNo">
		<table class="table table-bordered">
			<tr>
				<th style="width:300px; height:60px; font-size:30px; background:#0099CC;">카테고리</th>
				<td style="width:800px; height:60px;">
				<select class="form-control" name="category" id="category" style="height: 100%;">
					<option value="센터이용/오류">센터이용/오류</option>
					<option value="결제/환불">결제/환불</option>
					<option value="패스">패스</option>
					<option value="회원정보">회원정보</option>
					<option value="기타">기타</option>
				</select>
				</td>
			</tr>	
			<tr>
				<th style="display:inline-block; width:100%; height:60px; font-size:30px; background:#0099CC;">제목</th>
				<td style="width:800px; height:60px;"><input type="text" id="boardTitle" name="boardTitle" style="width:100%; height:60px;" value="${faqDetail.boardTitle }"></td>
			</tr>
			<tr>
				<th style="vertical-align:middle; width:300px; height:400px; font-size:30px; background:#0099CC;">내용</th>
				<td style="width:800px; height:400px">
					<textarea id="boardContent" name="boardContent" style="width:100%; height:100%;">${faqDetail.boardContent }</textarea>
				</td>
			</tr>
		</table>
	</form>
		<br>
		
		<form action="adminFAQDelete.hh" method="post">
			<input type="button" class="btn btn-info" value="수정" style="width: 80px; height: 40px; font-size: x-large;" onclick="adminFAQUpdate()">
			<input type="hidden" value="${faqDetail.boardNo }" id="boardNo" name="boardNo">
			&nbsp;&nbsp;&nbsp;
			<button type="submit" class="btn btn-danger" style="width: 80px; height: 40px; font-size: x-large;">삭제</button>
		</form>
		
		</div>
		<br><br><br><br><br>
	</div>
	
	<script>
		function adminFAQUpdate(){
			$("#updateFAQForm").submit();
		
		}

		
	</script>
	
</body>
</html>