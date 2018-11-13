<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>

<style>
	.Area {
	width: 100%;
	display: -webkit-inline-box;
}

.mainWriter {
	font-size: 18px;
	font-weight: 400;
	color: #03a9f4;
}

.fromArea {
	width: 540px;
    height: 638px;
    border-radius: 20px;
    border: 1px solid black;
    background: white;
    overflow-y: overlay;
    margin-left: 60px;
}
.fromArea::-webkit-scrollbar {display:none;}

.fromArea1 {
	width: 1152px;
    height: 768px;
    border-radius: 20px;
    border: 1px solid black;
    background: white;
    overflow-y: overlay;
}
.fromArea1::-webkit-scrollbar {display:none;}

.formArea2 {
	width: 540px;
    height: 638px;
    border-radius: 20px;
    background: white;
    margin-left: 80px;
    margin-top: 50px;
}

.memberArea {
	width: 540px;
    height: 20px;
    margin-left: 40px;
    margin-top: 50px;
    display: -webkit-box;
}

.MemberSearchMain {
	font-size: 30px;
	color: #03a9f4;
	font-weight: bold;
}

.userMember1 {
	font-size: 14px;
}

.m1 {
	font-size: 20px;
    margin-right: 20px;
    font-weight: bold;
    margin-left: 12px;
}

.m2 {
	font-size: 20px;
    margin-right: 24px;
    font-weight: bold;
    margin-left: 19px;
}

.m3 {
	font-size: 20px;
	font-weight: bold;
	margin-left: 53px;
}

.m4 {
	font-size: 16px;
	margin-right: 30px;
	font-weight: bold;
}

.m5 {
	font-size: 16px;
	margin-right: 40px;
	font-weight: bold;
}

.m6 {
	font-size: 16px;
	margin-left: 40px;
	font-weight: bold;
}

.m7 {
	font-size: 16px;
    font-weight: bold;
    margin-left: 56px;
}
span.m8 {
   	margin-left: 42px;
    font-weight: bold;
    font-size: 20px;
}



.MemberAreas {
	width: 540px;
	height: 20px;
	margin-left: 0px;
	display: -webkit-box;
}

.memberNum {
	margin: 0;
    line-height: 35px;
    font-size: 17px;
    font-weight: bold;
    text-align: center;
    margin-right: 21px;
    color: #676565;
}

.userId {
	margin: 0;
    line-height: 35px;
    margin-right: 54px;
    font-size: 12px;
    font-weight: bold;
    color: #676565;
}

.userName {
	margin: 0;
    line-height: 34px;
    font-size: 17px;
    margin-left: -88px;
    font-weight: bold;
    color: #676565;
}

.phone {
	margin: 0;
    font-size: 17px;
    margin-left: -117px;
    line-height: 35px;
    font-weight: bold;
    margin-right: 10px;
    color: #676565;
}

.email {
	margin: 0;
	line-height: 20px;
	font-size: 20px;
}

.memberName {
	margin: 0;
	line-height: 20px;
	font-size: 20px;
	margin-left: -17px;
}

.mArea {
	width: 154px;
    
}

.mArea2 {
	width: 118px;
    margin-left: -2px;
    
}

.mArea3 {
	width: 276px;
    
}

.mArea4 {
	width: 219px;
    
}

.mArea5 {
	width: 173px;
}

.mArea6 {
	width: 79px;
}

.selectBox {
	width: 106px;
    height: 30px;
    margin-top: 10px;
    margin-left: 20px;
}

.searchBar1 {
	width: 220px;
    height: 32px;
    position: relative;
    top: 1px;
}

.searchBtn {
	width: 60px;
    height: 30px;
    margin-right: 30px;
}

/* 페이징 버튼  */
.pagination1 {
	display: inline-block !important;
}

.pagination1 a {
	color: black !important;
	float: left !important;
	padding: 8px 16px !important;
	text-decoration: none !important;
	transition: background-color .3s !important;
}

.paginBtn1 {
	text-align: center !important;
	margin-top: 10px !important;
}

.writerBtn {
	float: right !important;
	border-radius: 6px !important;
	color: white !important;
	background: #54d4f5 !important;
}
.pagBtn6:hover{
	background:red;
}

hr {
	margin-top: 15px !important;
	border-top: 1px solid #a29e9e !important;
	
}

.pagBtn1:hover:not (.active ) {
	background-color: #54d4f5 ;
}
.pagBtn1:hover{
	background:#54d4f5;
}
.pagBtn2:hover{
	background:#54d4f5;
}
.pagBtn3:hover{
	background:#54d4f5;
}
.pagBtn4:hover{
	background:#54d4f5;
}
.pagBtn5:hover{
	background:#54d4f5;
}
.pagBtn6:hover{
	background:#54d4f5;
}
.pagBtn7:hover{
	background:#54d4f5;
}
/* 여기까지  */
.selectBox1 {
    width: 106px;
    height: 30px;
    margin-top: 10px;
    margin-left: 60px;
}

/* 기업검색  */

.m4A2{
	font-size: 20px;
    margin-right: 17px;
    font-weight: bold;
    margin-left: 6px;
    position: relative;
    left: 72px;
}
.m5A2{
	font-size: 20px;
    margin-right: 25px;
    font-weight: bold;
    margin-left: 216px;
}
.m6A2{
	font-size: 20px;
    margin-left: 109px;
    font-weight: bold;
}
.m3A2{
	font-size: 20px;
    font-weight: bold;
    margin-left: 55px;
}
.memberAdd{
	margin: 0;
    line-height: 35px;
    font-size: 14px;
    margin-top: -1px;
    margin-left: 2px;
    float: left;
    font-weight: bold;
    color: #676565;
}
.mArea6A2{
	width: 124px;
    
}
.mArea7A2{
	width: 92px;
    

}
.email1{
	margin: 0;
    line-height: 35px;
    font-size: 17px;
    float: left;
    margin-left: 6px;
    font-weight: bold;
    color: #676565;
   
}
.mArea5A2{
	width: 106px;
    
}
.mArea8{
	width: 75px;
    margin-left: 18px;
    
}
.memberDate{
	margin: 0;
    line-height: 20px;
    font-size: 2px;
    margin-left: 12px;
}
.MemberAreas1{
	width: 1152px;
    height: 21px;
    margin-left: 0px;
    display: -webkit-box;

}
.ContentBtnBox{
	width: 63px;
    margin-top: 2px;
}
button.Contentbtn {
    width: 60px;
    height: 30px;
    margin-top: -12px;
    font-size: 12px;
    border-radius: 8px;
    background: #03a9f4;
    color: white;
}

</style>
</head>
<script>
	function crewRecruitmentDetails(board_No,user_No,crew_No){
		var board_No = board_No;
		var user_No = user_No;
		var crew_No = crew_No;
		
		
		location.href = "crewRecruitmentDetails.shw2?board_No="+ board_No + "&user_No=" + user_No + "&crew_No=" + crew_No;
	}
	function StatusBoard(board_No,board_Title){
		var board_No = board_No;
		var board_Title = board_Title;
		
		if(confirm(board_Title + "를 삭제시키겠습니까?") == true){
			location.href="adminCrewRecruitmentStatus.shw?board_No=" + board_No;
			alert("삭제완료!");
		}else{
			return;
		}
		
		
	}
	
	

</script>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="Area">
					<!-- 기업회원검색  -->
					<div class="formArea2">
						<div class="fromArea1">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain"> 크루모집게시판</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea">
									
									<span class="m1">게시물번호</span> <span
									class="m2">카테고리</span> <span class="m4A2">제목</span> <span
									class="m5A2">활동구역</span> <span class="m6A2">조회수</span> 
									  <span class="m8">작성자 </span>
									   <span class="m3A2">작성일시</span>
									<hr class="22">
									
								</td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<c:forEach var="m" items="${map.list}" varStatus="status">
									<div class="MemberAreas1" onclick="StatusBoard(${m.board_No},'${m.board_Title}')">
										<div class="mArea">
											<span class="memberNum">${m.board_No}</span>
										</div>
										<div class="mArea2">
											<span class="userId">${m.category_Name }</span>
										</div>
										<div class="mArea3">
											<span class="userName">${m.board_Title}</span>
										</div>
										<div class="mArea4">
											<span class="phone">${m.crew_Area}</span>
										</div>
										<div class="mArea5A2">
											<span class="email1">${m.board_Count }</span>
										</div>
										<div class="mArea6A2">
											<span class="memberAdd">${m.user_Id }</span>
										</div>
										<div class="mArea7A2">
											<span class="memberAdd">${m.enroll_Date }</span>
										</div>
										<div class="ContentBtnBox">
										<button class="Contentbtn" onclick="crewRecruitmentDetails(${m.board_No },${m.user_No},${m.crew_No})">
											본문
										</button>
										</div>
									</div>
									<hr>
									</c:forEach>
									
								</td>
							</tr>
							<!-- 여기까지  --> 
							
							
									<tr>
										<td colspan="3">
											<form action="adminCrcSearchList.shw" method="get">
												<table align="center">
													<tr>
														<td>
															<div class="searchArea1">
																<select class="selectBox" name="option">
																	<option>제목</option>
																	<option>작성자</option>
																</select> <input type="text" class="searchBar1" name="searchList">
																<button type="submit" class="searchBtn">검색</button>
															</div>
														</td>
													</tr>
												</table>	
											</form>		
										</td>
									</tr>
											<div class="paginBtn1">
												<div class="pagination1">
													<nav>
									<ul class="pagination">
										<c:if test="${ pi.currentPage <= 1 }">
											<li><a>이전</a></li>
										</c:if>
										<c:if test="${ pi.currentPage > 1 }">
											<c:url var="listBack" value="crewRecruitmentBoard.shw2">
												<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
											
											</c:url>
											<li><a href="${ listBack }">이전</a></li>
										</c:if>
		
										<c:forEach var="p" begin="${ pi1.startPage }" end="${ pi.endPage }">
											<c:if test="${ p eq pi.currentPage }">
												<li class="active"><a>${ p }</a></li>
											</c:if>
											<c:if test="${ p ne pi.currentPage }">
												<c:url var="listCheck" value="crewRecruitmentBoard.shw2">
													<c:param name="currentPage" value="${ p }" />
												</c:url>
												<li><a href="${ listCheck }">${ p }</a></li>
											</c:if>
										</c:forEach>
		
										<c:if test="${ pi1.currentPage >= pi1.maxPage }">
											<li><a>다음</a></li>
										</c:if>
										<c:if test="${ pi1.currentPage < pi1.maxPage }">
											<c:url var="listEnd" value="crewRecruitmentBoard.shw2">
												<c:param name="currentPage" value="${ pi1.currentPage + 1 }" />
							
											</c:url>
											<li><a href="${ listEnd }">다음</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
					</tabel>
				</div>
			</div>
		</div>
	
</body>
</html>