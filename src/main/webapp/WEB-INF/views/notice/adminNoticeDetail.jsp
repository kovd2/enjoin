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
		</table>
	</form>
		<br>
		
		<form action="adminNoticeDelete.hh" method="post">
			<input type="button" value="수정" style="width: 80px; height: 40px; font-size: x-large;" onclick="adminNoticeUpdate()">
			<input type="hidden" value="${detail.boardNo }" id="boardNo" name="boardNo">
			<button type="submit" style="width: 80px; height: 40px; font-size: x-large;">삭제</button>
		</form>
		
		</div>
		<br><br><br><br><br>
	</div>
	
	<script>
		function adminNoticeUpdate(){
			$("#updateBoardForm").submit();
		
		}

		
	</script>
	
</body>
</html>