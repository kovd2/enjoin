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
		<p style="font-size:100px; text-align:center">공지사항</p>
		
		<hr>
	<form>		
		<table>
			<tr>
				<th style="display:inline-block; width:300px; height:60px; font-size:30px; background:gray;">제목</th>
				<td style="width:800px; height:60px;"><input type="text" name="adminNoticeTitle" style="width:800px; height:60px;"></td>
			</tr>
			<tr>
				<th style="display:inline-block; width:300px; height:400px; font-size:30px; background:gray;">내용</th>
				<td style="width:800px; height:400px">
					<textarea style="width:100%; height:100%;">sadasdopjaspodjoasjdpoasjdpoasjdopajsdpojasdpoasjd</textarea>
					

				</td>
			</tr>
		</table>
	</form>
		<br>
		<button>등록하기</button>
		</div>
	</div>
</body>
</html>