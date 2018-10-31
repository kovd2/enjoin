<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="pageing">
	
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

</div>
			
		</div>
		</div>
		
		

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