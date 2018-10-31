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
		
		<table>
			<tr style="border:1px solid black;">
				<th style="width:200px; height:60px; font-size:30px; background:gray;">번호</th>
				<th style="width:700px; height:60px; font-size:30px; background:gray;">제목</th>
				<th style="width:200px; height:60px; font-size:30px; background:gray;">날짜</th>
				
			</tr>
			<tr onclick="adminNoticeDetail()">
				<td>1</td>
				<td>안녕하세요</td>
				<td>18.10.31</td>
			</tr>
			<tr>
				<td>2</td>
				<td>안녕하세요</td>
				<td>18.10.31</td>
			</tr>
		</table>
		</div>
	</div>
	
	<script>
		function adminNoticeDetail(){
			
			location.href = "adminNoticeDetail.hh";
		}
	</script>
</body>
</html>