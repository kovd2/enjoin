<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.wrap{
	width:100%;
}
.top{
	width:1100px;
	height:1500px;
	margin:0 auto;
	display:block;
	
}

.informArea{
	background:#f5f5f5;
	/* height:1500px; */
	display: -webkit-box;
	background:#f5f5f5;

}

.boardList{
	width:1100px;
	height:340px;
	background:#f5f5f5;
	margin:auto;	
	/* margin-top:10px */
	display:-webkit-inline-box;
}

.list{
	width:340px;
	height:310px;
	background:white; 
	margin-left:19px;
	margin-top:20px;
	
}
.list>img{
	width:320px;
	height:150px;
	margin-left:10px;
	margin-top:10px;

	
}
.listContent{
	margin-top:10px;
	margin-left:10px;
	text-align:left;
	font-size:15px;
	font-weight:bold;

}
.status{
	border: 2px solid #00bff0;
    border-radius: 3px;
    text-align: center;
    font-size: 20px;
    margin-left: 220px;
    margin-top:5px;
    width: 100px;
    padding: 5px;
    color:#f77d68;
}
.list:hover{

	border:1px solid #00bff0;
	cursor:pointer;

}
.category{
	border: 2px solid #00bff0;
	border-radius:3px;
	position:absolute;
	margin-top:5px;
	font-size: 20px;
	width: 100px;
	padding: 5px;
	text-align: center;
    font-size: 20px;
    color:#0084c2;
	
	
}
.end{


}

nav{

	
}

.imgArea{

	width: 1100px;
    height: 400px;
    background: black;
    position: absolute;
    display: -webkit-box;
}
.imgArea>img{
	width:1100px;
	height:400px;
	background:black;
	opacity:0.4;
}
.pageing{

	margin-left:399px;

}
.realImg{
	    width: 1100px;
    height: 400px;
    background: yellow;
    position: relative;
}
	

.realTitle{
     width: 1100px;
    height: 100px;
    
    position: absolute;
    left: 0;
    margin-top:100px;
  
}

.title{
	font-size:60px;
	color:#00bff0;
	text-align:center;
	font-weight:bold;	

}
.btnArea{

	width:1100px;
	height:100px;
	 position: absolute;
	 margin-top:200px;
	display: -webkit-box;
}
.searchBtn{
	width:200px;
	height:100px;
	
	
	


}


#enroll {
	width: 150px;
	height: 50px;
	font-weight: bold;
	font-size: 20px;
}

#list {
	width: 150px;
	height: 50px;
	font-weight: bold;
	font-size: 20px;
}
#btn {
	position: absolute;
	width: 1100px;
	height: 50px;
	text-align: center;
	
}
#notice{
	width: 170px;
	height: 50px;
	font-weight: bold;
	font-size: 20px;


}




</style>
</head>
<body>

	<c:if test="${ !empty loginUser }">
	<jsp:include page="../common/menubar.jsp"/>
	
	
			<div class="wrap">
			<div class="top">
	
			<div class="realImg">
			<div class="imgArea">
			<img src="resources/images/informBoard/fitness.jpg">
			</div>
			<div class="realTitle"> 
				<div class="title">
					enjoin이 제안하는 크루공고
				</div>
			</div>
			<div class="btnArea">
			<div id="btn">
					<button type="button" class="btn btn-success" id="enroll">
						<i class="fa fa-handshake-o"></i>멤버쉽신청
					</button>
					<button type="button" class="btn btn-warning" id="list">
						<i class="fa fa-laptop"></i>제휴시설보기
					</button>
					
					<button type="button" class="btn btn-primary" id="notice" onclick="noticeGo()">
					<i class="fa fa-address-card-o"></i>
					공고글작성하기</button>
				</div>
			
			</div>
			</div>

			
		<!-- resultMap은 컬럼명 resultType은 브이오 -->
		<c:forEach var="item" items="${list} }">
		
			<div class="informArea">
			
				<div class="boardList">
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/runInfom.png">
					<div class="listContent">
					-시작일자:${NOTICE_START}<br>
					-접수기간:${NOTICE_REQUEST } ~ ${NOTICE_END}<br>
					-지역:${CREW_AREA}<br>
					-차감패스:${ PASS_COUNT }패스
					<div></div>
					<div class="category">${CATEGORY_NO}</div>
					<div class="status">모집중</div>
					
					</div>
				</div>	
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/jjs.jpg">
					<div class="listContent">
					-시작일자:${NOTICE_START}<br>
					-접수기간:${NOTICE_REQUEST } ~ ${NOTICE_END}<br>
					-지역:${CREW_AREA}<br>
					-차감패스:${ PASS_COUNT }패스
					<div></div>
					<div class="category">${CATEGORY_NO}</div>
					<div class="status">모집중</div>
					</div>
				</div>	
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/pila.png">
					<div class="listContent">
					-시작일자:${NOTICE_START}<br>
					-접수기간:${NOTICE_REQUEST} ~ ${NOTICE_END}<br>
					-지역:${CREW_AREA}<br>
					-차감패스:${ PASS_COUNT }패스
					<div></div>
					<div class="category">${CATEGORY_NO}</div>
					<div class="status">종료</div>
					</div>
				</div>
				
				
				</div>
				
			<!-- 	<div class="boardList">
				<div class="list">
				
				<img src="resources/images/informBoard/runInfom.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div class="category">필라테스</div>
					<div class="status">종료</div>
					</div>
				</div>	
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/pila.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">필라테스</div>
					<div class="status">종료</div>
					</div>
				</div>
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/pila.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">필라테스</div>
					<div class="status">종료</div>
					</div>
				</div>
				</div> -->
					<!-- <div class="boardList" onclick="goDetail()">
				<div class="list">
				<img src="resources/images/informBoard/runInfom.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div class="category">필라테스</div>
					<div class="status">종료</div></div>
					</div>
				
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/pila.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">필라테스</div>
					<div class="status">종료</div>
					</div>
				</div>
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/pila.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">필라테스</div>
					<div class="status">종료</div>
					</div>
				</div>

			</div> -->

			</div>
		</c:forEach>
	<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="/selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a>
			</c:if>

			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="red" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="selectList.bo">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>



			<c:if test="${ pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage}">
				<c:url var="blistEnd" value="selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				&nbsp;
				<a href="${ blistEnd }">[다음]</a>
			</c:if>

		</div>
			
		</div>
		</div>
		
	</c:if>
	<c:if test="${ empty loginUser }">
		<c:set var="message" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../common/errorPage.jsp"/>
	</c:if>
		
		

<jsp:include page="../common/footer.jsp"/>


<script>
	function goDetail(){
		
		
		location.href="informDetail.kch2";
		
	}




</script>
<script>

	function noticeGo(){
		
		location.href="drawForm.kch2";
		
		
	}

</script>
</body>
</html>