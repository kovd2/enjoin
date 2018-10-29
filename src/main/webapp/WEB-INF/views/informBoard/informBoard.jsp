<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.wrap{
	width:100%;
}
.top{
	width:1100px;
	height:100%;
	margin:0 auto;
	display:block;
	
}

.informArea{
	background:#f5f5f5;
	height:100%;
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

	margin-left:600px;
}

</style>
</head>
<body>


	<jsp:include page="../common/menubar.jsp"/>
	
	
	<div class="wrap">
		<div class="top">
			<div class="informArea">
			
				<div class="boardList">
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/runInfom.png">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">런닝</div>
					<div class="status">모집중</div>
					
					</div>
				</div>	
				<div class="list" onclick="goDetail()">
				<img src="resources/images/informBoard/jjs.jpg">
					<div class="listContent">
					-시작일자:2018.12.22 오후8시<br>
					-접수기간:2018.12.11 ~ 2018.12.21<br>
					-지역:서울<br>
					-강사:없음
					<div></div>
					<div class="category">격투기</div>
					<div class="status">모집중</div>
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
				
				
				</div>
				
				<div class="boardList">
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
				</div>
					<div class="boardList" onclick="goDetail()">
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

			</div>

			</div>
		</div>
	
	</div>
	
	<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

<jsp:include page="../common/footer.jsp"/>


<script>
	function goDetail(){
		
		
		location.href="informDetail.kch2";
		
	}




</script>



</body>
</html>