<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
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
	margin-top:30px;
}

.titleArea {
	background: #d9eaf3;
}

.boardList tr {
	border-bottom: solid 1px black;
}

.boardList td:hover {
	cursor: pointer;
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
					<ul class="breadcrumb" style="background-color: #68A4C4;">
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
				<select style="float: left;" id="boardType">
					<option value="board" selected="selected">크루모집</option>
					<option value="crewBoard">크루게시판</option>
					<option value="reply">댓글</option>
					<option value="as">1:1문의사항</option>
				</select>
				<br>
				
			<div class="boardRecord">
				<!-- 크루 모집 게시물 -->
				<table style="width: 800px; border-top: solid 1px black; displya:block;" class="board" id="board" >
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 150px">제목</td>
						<td style="width: 100px">작성자</td>
						<td style="width: 150px">작성일</td>
						<td style="width: 100px">조회수</td>
					</tr>
					
					<c:forEach var="wp" items="${ writePost }">
						<tr onclick="goCrewRecruitmentBoardDetail(${wp.boardNo}, ${wp.userNo}, ${wp.crewNo})">
							<td>${ wp.boardNo }</td>
							<td>${ wp.boardTitle }</td>
							<td>${ wp.userName }</td>
							<td>${ wp.enrollDate }</td>
							<td>${ wp.boardCount }</td>
						</tr>
					</c:forEach>
				</table>
				
				<!-- crewBoard -->
				<table style="width: 800px; border-top: solid 1px black; display:none;" class="crewBoard" id="crewBoard">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 150px">제목</td>
						<td style="width: 100px">작성자</td>
						<td style="width: 150px">작성일</td>
						<td style="width: 100px">조회수</td>
					</tr>
					
					<c:forEach var="wcb" items="${ writeCrewBoard }">
						<tr onclick="goCrewBoardList(${ wcb.boardNo});">
							<td>${ wcb.boardNo }</td>
							<td>${ wcb.boardTitle }</td>
							<td>${ wcb.userName }</td>
							<td>${ wcb.enrollDate }</td>
							<td>${ wcb.boardCount }</td>
						</tr>
					</c:forEach>
				</table>
				
				<!-- 댓글 -->
				<table style="width: 800px; border-top: solid 1px black; display:none;"class="reply" id="reply">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 100px">게시물종류</td>
						<td style="width: 200px">게시물제목</td>
						<td style="width: 250px">댓글내용</td>
						<td style="width: 70px">작성일</td>
					</tr>
					
					<c:forEach var="wc" items="${ writeComent }">
						<tr>
							<td>${ wc.comentNo }</td>
							<td>${ wc.boardType }</td>
							<td>${ wc.boardTitle }</td>
							<td>${ wc.comentContent }</td>
							<td><fmt:formatDate value="${ wc.comentDate }" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
				
				<!-- 1:1문의 사항 -->
				<table style="width: 800px; border-top: solid 1px black; display:none;"class="as" id="as">
					<tr class="titleArea">
						<td style="width: 30px;">번호</td>
						<td style="width: 100px">게시물제목</td>
						<td style="width: 200px">이름</td>
						<td style="width: 250px">작성일</td>
						<td style="width: 70px">상태</td>
					</tr>
					
					<c:forEach var="ab" items="${ asBoard }">
						<tr onclick="asBoardDetail(${ab.boardNo});">
							<td>${ ab.boardNo }</td>
							<td>${ ab.boardTitle }</td>
							<td>${ ab.userName }</td>
							<td>${ ab.enrollDate }</td>
							<c:if test="${ ab.contactStatus == 0 }">
								<td>답변대기</td>
							</c:if>
							<c:if test="${ ab.contactStatus == 1 }">
								<td>답변완료</td>
							</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<br>
		</div>
	</div>
	</div>
	<jsp:include page="../common/footer.jsp"/>
	<script>
	//1:1문의 상세보기
	function asBoardDetail(boardNo){
		location.href="asBoardDetail.ljs?boardNo=" + boardNo;
	}
	//크루게시판 상세보기
	function goCrewBoardList(boardNo){
		location.href="crewBoardDetail.ljs?boardNo=" + boardNo;
	};
	//크루모집 게시판으로 이동
	function goCrewRecruitmentBoardDetail(boardNo, userNo, crewNo){
		location.href="crewRecruitmentDetails.shw2?board_No=" + boardNo + "&user_No=" + userNo + "&crew_No=" + crewNo;
	}
	
	//게시물 종류별로 조회
	$('#boardType').change(function() {
		var state = $('#boardType option:selected').val();
		if(state == 'board') {
			$('.board').show();
			$('.reply').hide();
			$('.crewBoard').hide();
			$('.as').hide();
		} 
		if(state == 'reply'){
			$('.board').hide();
			$('.reply').show();
			$('.crewBoard').hide();
			$('.as').hide();
		}
		if(state == 'crewBoard'){
			$('.board').hide();
			$('.reply').hide();
			$('.crewBoard').show();
			$('.as').hide();
		}
		if(state == 'as'){
			$('.board').hide();
			$('.reply').hide();
			$('.crewBoard').hide();
			$('.as').show();
		}
	});
	</script>
	
</body>
</html>




















