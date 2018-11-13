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
    margin-left: 60px;
}
.fromArea::-webkit-scrollbar {display:none;}

.fromArea1 {
	width: 520px;
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
    font-size: 8px;
}

.userName {
	margin: 0;
    line-height: 20px;
    font-size: 9px;
    margin-left: -12px;
}

.phone {
	margin: 0;
    line-height: 11px;
    font-size: 11px;
    margin-left: 14px;
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
	width: 85px;
}

.mArea2 {
	width: 93px;
    margin-left: -2px;
}

.mArea3 {
	width: 56px;
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
	font-size: 16px;
    margin-right: 17px;
    font-weight: bold;
    margin-left: 16px;
}
.m5A2{
	font-size: 16px;
    margin-right: 25px;
    font-weight: bold;
    margin-left: 16px;
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
    margin-top: 1px;
    float: left;
}
.mArea6A2{
	width: 39px;
    height: 38px;
    margin-left: 27px;
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
	width: 90px;
    margin-left: 29px;
    margin-top: 3px;
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
	width: 520px;
    height: 47px;
    margin-left: 0px;
    display: -webkit-box;
}

</style>

</head>
<script>
	function StatusCrew(crew_Id,crew_Name){
		var crew_Id = crew_Id;
		var crew_Name = crew_Name;
		
		if(confirm(crew_Name + " 크루를 블랙처리 시키겠습니까?") == true){
			location.href="statusBlackCrew.shw?crew_Id=" + crew_Id; 
			alert("처리 완료!");
		}else{
			return;
		}
	}
	function StatusCrewY(crew_Id,crew_Name){
		var crew_Id = crew_Id;
		var crew_Name = crew_Name;
		
		if(confirm(crew_Name + " 크루를  복구 시키겠습니까?") == true){
			location.href="StatusCrew.shw?crew_Id=" + crew_Id;
			alert("처리완료!");
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
									<h2 class="MemberSearchMain"> 크루 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">카테고리</span> <span
									class="m2">크루명</span> <span class="m4A2">인원</span> <span
									class="m5A2">크루장</span> <span class="m6A2">생성일</span> 
									  <span class="m8">크루상태 </span>
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<c:forEach var="m" items="${map.list}" varStatus="status">
									<div class="MemberAreas1" onclick="StatusCrew(${m.crew_Id},'${m.crew_Name}')">
										<div class="mArea">
											<span class="memberNum">${m.category_Name }</span>
										</div>
										<div class="mArea2">
											<span class="userId">${m.crew_Name}</span>
										</div>
										<div class="mArea3">
											<span class="userName">${m.crew_Max }</span>
										</div>
										<div class="mArea4">
											<span class="phone">${m.user_Id}</span>
										</div>
										<div class="mArea5A2">
											<span class="email1">${m.start_Date }</span>
										</div>
										<div class="mArea6A2">
											<span class="memberAdd">${m.crew_Status}</span>
										</div>
									</div>
									<hr>
									</c:forEach>
									
								</td>
							</tr>
							<!-- 여기까지  --> 
							
							
									<tr>
										<td colspan="3">
											<form action="companyMemberSearchList.shw" method="get">
												<table align="center">
													<tr>
														<td>
															<div class="searchArea1">
																<select class="selectBox" name="option">
																	<option>상호명</option>
																	<option>아이디</option>
																	<option>등록번호</option>
																	<option>이메일</option>
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
			<!-- 기업회원검색  -->
					<div class="formArea2">
						<div class="fromArea1">
							<tabel align="center">
							<tr class="searchbar">
								<td>
									<h2 class="MemberSearchMain"> 블랙크루 검색</h2>
									<hr>
								</td>
							</tr>
							<tr>
								<td class="MemberTitleArea"><span class="m1">카테고리</span> <span
									class="m2">크루명</span> <span class="m4A2">인원</span> <span
									class="m5A2">신청일</span> <span class="m6A2">생성일</span> 
									  <span class="m8">크루상태 </span>
									
									<hr></td>
							</tr>
							<!--여기부터  -->
							<tr>
								<td colspan="6">
									<c:forEach var="m1" items="${map.list1}" varStatus="status">
									<div class="MemberAreas1" onclick="StatusCrewY(${m1.crew_Id},'${m1.crew_Name}')">
										<div class="mArea">
											<span class="memberNum">${m1.category_Name}</span>
										</div>
										<div class="mArea2">
											<span class="userId">${m1.crew_Name }</span>
										</div>
										<div class="mArea3">
											<span class="userName">${m1.crew_Max }</span>
										</div>
										<div class="mArea4">
											<span class="phone">${m1.user_Id }</span>
										</div>
										<div class="mArea5A2">
											<span class="email1">${m1.start_Date}</span>
										</div>
										<div class="mArea6A2">
											<span class="memberAdd">${m1.crew_Status}</span>
										</div>
									</div>
									<hr>
									</c:forEach>
								</td>
							</tr>
							<!-- 여기까지  --> 
							
							
									<tr>
										<td colspan="3">
											<form action="companyMemberSearchList.shw" method="get">
												<table align="center">
													<tr>
														<td>
															<div class="searchArea1">
																<select class="selectBox" name="option">
																	<option>상호명</option>
																	<option>아이디</option>
																	<option>등록번호</option>
																	<option>이메일</option>
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
										<c:if test="${ pi1.currentPage <= 1 }">
											<li><a>이전</a></li>
										</c:if>
										<c:if test="${ pi1.currentPage > 1 }">
											<c:url var="listBack" value="crewRecruitmentBoard.shw2">
												<c:param name="currentPage" value="${ pi1.currentPage - 1 }" />
											
											</c:url>
											<li><a href="${ listBack }">이전</a></li>
										</c:if>
		
										<c:forEach var="p" begin="${ pi1.startPage }" end="${ pi1.endPage }">
											<c:if test="${ p eq pi1.currentPage }">
												<li class="active"><a>${ p }</a></li>
											</c:if>
											<c:if test="${ p ne pi1.currentPage }">
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