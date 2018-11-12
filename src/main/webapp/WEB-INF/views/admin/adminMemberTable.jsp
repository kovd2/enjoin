<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
}
.fromArea::-webkit-scrollbar {display:none;}

.fromArea1 {
	width: 740px;
    height: 638px;
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
    margin-left: 10px;
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
	font-size: 16px;
	margin-right: 20px;
	font-weight: bold;
	margin-left: 12px;
}

.m2 {
	font-size: 16px;
	margin-right: 24px;
	font-weight: bold;
	margin-left: -11px;
}

.m3 {
	font-size: 16px;
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
    font-size: 14px;
}



.MemberAreas {
	width: 540px;
	height: 20px;
	margin-left: 0px;
	display: -webkit-box;
}

.memberNum {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	text-align: center;
}

.userId {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-right: 19px;
}

.userName {
	margin: 0;
    line-height: 20px;
    font-size: 9px;
    margin-left: -22px;
}

.phone {
	margin: 0;
    line-height: 11px;
    font-size: 11px;
    margin-left: -5px;
}

.email {
	margin: 0;
	line-height: 20px;
	font-size: 8px;
}

.memberName {
	margin: 0;
	line-height: 20px;
	font-size: 12px;
	margin-left: -17px;
}

.mArea {
	width: 57px;
}

.mArea2 {
	width: 95px;
}

.mArea3 {
	width: 68px;
}

.mArea4 {
	width: 72px;
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


/* 기업검색  */

.m4A2{
	font-size: 16px;
    margin-right: 7px;
    font-weight: bold;
}
.m5A2{
	font-size: 16px;
    margin-right: 25px;
    font-weight: bold;
    margin-left: 0px;
}
.m6A2{
	font-size: 16px;
    margin-left: 19px;
    font-weight: bold;
}
.m3A2{
	font-size: 16px;
    font-weight: bold;
    margin-left: 65px;
}
.memberAdd{
	margin: 0;
    line-height: 20px;
    font-size: 2px;
    margin-left: 16px;
    float: left;
}
.mArea6A2{
	width: 99px;
    height: 38px;
    margin-left: -15px;
}
.mArea7A2{
	width: 126px;

}
.email1{
	margin: 0;
    line-height: 20px;
    font-size: 8px;
    float: left;
    margin-left: 10px;
}
.mArea5A2{
	width: 140px;
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
	width: 540px;
    height: 47px;
    margin-left: 0px;
    display: -webkit-box;
}

</style>
</head>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	
			<div class="Area">
					<div class="memberArea">
						<div class="fromArea">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain">일반 회원 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">번호</span> <span
									class="m2">회원아이디</span> <span class="m4">이름</span> <span
									class="m5">연락처</span> <span class="m6">이메일 </span> <span
									class="m3">가입날짜</span>
									
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<c:forEach var="m" items="${map.list}" varStatus="status">
									<div class="MemberAreas">
										<div class="mArea">
											<span class="memberNum">${m.userNo}</span>
										</div>
										<div class="mArea2">
											<span class="userId">${m.userId }</span>
										</div>
										<div class="mArea3">
											<span class="userName">${m.userName }</span>
										</div>
										<div class="mArea4">
											<span class="phone">${m.phone }</span>
										</div>
										<div class="mArea5">
											<span class="email">${m.email }</span>
										</div>
										<div class="mArea6">
											<span class="memberName">${m.enrollDate}</span>
										</div>
									</div>
									<hr>
									</c:forEach>
								</td>
							</tr>
							<!-- 여기까지  -->
							<tr>
								<td colspan="3">
									<div class="searchArea1">
										<select class="selectBox">
											<option>번호</option>
											<option>회원아이디</option>
											<option>이름</option>
											<option>연락처</option>
											<option>이메일</option>
											<option>가입날짜</option>
										</select> <input type="text" class="searchBar1">
										<button class="searchBtn">검색</button>
									</div>
								</td>
							</tr>
									<div class="paginBtn1">
										<div class="pagination1">
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

								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
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

								<c:if test="${ pi.currentPage >= pi.maxPage }">
									<li><a>다음</a></li>
								</c:if>
								<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="listEnd" value="crewRecruitmentBoard.shw2">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
					
									</c:url>
									<li><a href="${ listEnd }">다음</a></li>
								</c:if>
							</ul>
										</div>
									</div>
							</tabel>
						</div>
					</div>
					<!-- 기업회원검색  -->
					<div class="formArea2">
						<div class="fromArea1">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain">기업 회원 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">상호명</span> <span
									class="m2">아이디</span> <span class="m4A2">전화번호</span> <span
									class="m5A2">등록번호</span> <span class="m6A2">이메일 </span> <span
									class="m3A2">주소</span>
									 <span class="m7">결제이메일 </span>
									  <span class="m8">가입날짜 </span>
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<c:forEach var="m1" items="${map.list1}" varStatus="status">
									<div class="MemberAreas1">
										<div class="mArea">
											<span class="memberNum">${m1.copName}</span>
										</div>
										<div class="mArea2">
											<span class="userId">${m1.userId}</span>
										</div>
										<div class="mArea3">
											<span class="userName">${m1.managerPhone}</span>
										</div>
										<div class="mArea4">
											<span class="phone">${m1.copNo }</span>
										</div>
										<div class="mArea5A2">
											<span class="email1">${m1.managerEmail }</span>
										</div>
										<div class="mArea6A2">
											<span class="memberAdd">${m1.copAddress }</span>
										</div>
										<div class="mArea7A2">
											<span class="memberAdd">${m1.copEmail }</span>
										</div>
										<div class="mArea8">
											<span class="memberDate">${m1.enrollDate }</span>
										</div>
									</div>
									<hr>
									</c:forEach>
								</td>
							</tr>
							<!-- 여기까지  --> 
							
							
							<tr>
								<td colspan="3">
									<div class="searchArea1">
										<select class="selectBox">
											<option>상호명</option>
											<option>아이디</option>
											<option>전화번호</option>
											<option>등록번호</option>
											<option>이메일</option>
											<option>주소</option>
											<option>결제이메일</option>
											<option>가입날짜</option>
										</select> <input type="text" class="searchBar1">
										<button class="searchBtn">검색</button>
									</div>
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

								<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
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

								<c:if test="${ pi.currentPage >= pi.maxPage }">
									<li><a>다음</a></li>
								</c:if>
								<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="listEnd" value="crewRecruitmentBoard.shw2">
										<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
					
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