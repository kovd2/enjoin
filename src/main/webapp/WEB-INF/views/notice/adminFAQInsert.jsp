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
	width:100%;
	align:center;
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
		<p style="font-size:100px; text-align:center">FAQ</p>
		
		<hr>
	<form id="insertFAQForm" action="adminFAQInsertBtn.hh" method="post" encType="multipart/form-data">		
		<table>
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">카테고리</th>
				<td style="width:800px; height:60px;">
				<select class="form-control" name="category" id="category">
					<option value="센터이용/오류">센터이용/오류</option>
					<option value="결제/환불">결제/환불</option>
					<option value="패스">패스</option>
					<option value="회원정보">회원정보</option>
					<option value="기타">기타</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">제목</th>
				<td style="width:800px; height:60px;"><input type="text" id="boardTitle" name="boardTitle" style="width:800px; height:60px;"></td>
			</tr>
			<tr>
				<th style="display:inline-block; width:300px; height:400px; font-size:30px; background:gray;">내용</th>
				<td style="width:800px; height:400px">
					<textarea id="boardContent" name="boardContent" style="width:100%; height:100%;"></textarea>
				</td>
			</tr>
		
		</table>
	</form>
		<br>
		<input type="button" value="등록하기" onclick="adminFAQInsertBtn()">
		</div>
		<br><br><br><br><br>
	</div>
<script>
		function adminFAQInsertBtn(){
			$("#insertFAQForm").submit();
		
		}
	
</script>
</body>
</html>