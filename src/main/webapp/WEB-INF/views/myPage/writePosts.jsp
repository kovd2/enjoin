<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.bodyArea {
	margin: auto;
	width: 1100px;
	height: auto;
}

.rightContainer {
	width: 800px;
	height: 500px;
	margin-top: 100px;
	display: inline-block;
	border-left: solid 0.5px lightgray;
	float: left;
}

.boardList {
	margin-left: 30px;
	text-align: center;
}

.titleArea {
	background: #f5f5f5;
}

.boardList tr {
	border-bottom: solid 1px black;
}

.boardList tr:hover {
	cursor: pointer;
	background: #f5f5f5;
}

.boardList td {
	text-align: center;
}
</style>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">마이페이지</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp" />
		<input type="hidden" value="myBoard" id="ckPage">
		<div class="rightContainer">
			<b id="myBoard" class="current" style="font-size: 30px; color: black; text-indent: 30px;"><i class="fa fa-thumb-tack"></i> 내가 쓴 게시물</b>
			<div class="boardList">
				<select style="float: left;">
					<option value="board">게시물</option>
					<option value="comment">댓글</option>
					<option value="question">문의</option>
				</select>
				
				<!-- 게시물 -->			
				<table style="width: 800px; border-top: solid 1px black;">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 150px">제목</td>
						<td style="width: 100px">작성자</td>
						<td style="width: 150px">작성일</td>
						<td style="width: 100px">조회수</td>
					</tr>

					<%
						for (int i = 0; i < 10; i++) {
					%>
					<tr>
						<td>1</td>
						<td>운동 하고 싶어요~</td>
						<td>홍길동</td>
						<td>2018-10-26</td>
						<td>1</td>						
					</tr>
					<%
						}
					%>
				</table>
				
				<!-- 댓글 -->			
				<table style="width: 800px; border-top: solid 1px black;">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 150px">댓글 내용</td>
						<td style="width: 100px">작성자</td>
						<td style="width: 150px">작성일</td>						
					</tr>

					<%
						for (int i = 0; i < 10; i++) {
					%>
					<tr>
						<td>1</td>
						<td>같이해요</td>
						<td>홍길동</td>
						<td>2018-10-26</td>									
					</tr>
					<%
						}
					%>
				</table>
				
				<!-- 문의사항 -->		
				<table style="width: 800px; border-top: solid 1px black;">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 150px">제목</td>
						<td style="width: 100px">작성자</td>
						<td style="width: 150px">작성일</td>
						<td style="width: 100px">조회수</td>
					</tr>

					<%
						for (int i = 0; i < 10; i++) {
					%>
					<tr>
						<td>1</td>
						<td>수정해주세요</td>
						<td>홍길동</td>
						<td>2018-10-26</td>
						<td>1</td>						
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<br>
			<div>
				페이징 처리
			</div>
		</div>
	</div>
</body>
</html>