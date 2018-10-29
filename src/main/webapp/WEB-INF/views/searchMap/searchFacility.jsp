<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!-- css -->
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style/css/fancybox/jquery.fancybox.css"
	rel="stylesheet">
<link href="resources/style/css/jcarousel.css" rel="stylesheet">
<link href="resources/style/css/flexslider.css" rel="stylesheet">
<link href="resources/style/css/style.css" rel="stylesheet">


<!-- Theme skin -->
<link href="resources/style/skins/default.css" rel="stylesheet">

<style>

.wrap{
	width:100%;
}
.middle{
	width:1100px;
	height:100%;
	margin:0 auto;
	display: -webkit-box;
	
		

}
.searchArea{
	width:400px;
	/* height:800px; */
	background:#f5f5f5;
}
.mapArea{
	
	width:620px;
	/* height:800px; */
	background:#bcdeb0;
}
.searchWrap{
	margin-top:20px;
	margin-left:20px;
	height:40px;
	width:360px;
	border:2px solid #00bff0;
	background:#ffffff;
}
#searchBar{
	font-size:13px;
	padding:10px 10px 0px 10px;
	border:0px;
	outline:none;
	float:left;
	width:300px;
	
}
#searchBtn{
	width:50px;
	height:100%;
	border:0px;
	background:#00bff0;
	outline:none; 
	float:right;
	color:#ffffff;
}

.listArea{
	width:350x;
	height:240px;
	/* background:black; */
	 margin-top:5px; 
	
	display:-webkit-inline-box;

}

.list{

	margin:2 auto;
	width:185px;
	background: #ffffff;
	height:240px;
	margin-left:10px;

}
.imgArea{
	
	width:174px;
	background:black;
	height:110px;
	margin:5px 0px 0px 5px;

}

.contents{

	width:180px;
	text-align:center;

}
.contents>h4{
	
	margin-bottom:5px;
}
.category{
	width:70px;
	height:25px;
	border:2px solid #00bff0;
	margin:13px 0px 0px 10px;
	padding-bottom:5px;
}
p{
	margin-bottom:3px;	
}

.list:hover{
	
	background:#00bff0;	
	cursor:pointer;
}

</style>



<body>

<jsp:include page="../common/menubar.jsp"/>
<hr>

<div class="wrap">

	<div class="middle">
		<div class="searchArea">
			<div class="searchWrap">
			
			<input type="text" placeholder="지역/장소/카테고리를 입력하세요(예:강남역 헬스)" id="searchBar">
			<button id="searchBtn">검색</button>
			
			</div>
			<br>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
							
				</div>
				
				
			</div>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
			</div>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
							
				</div>
				
				
			</div>
			
			<div class="listArea">
			
				<div class="list" onclick="goDetail()">
				<div class="imgArea">
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
				<div class="list" onclick="goDetail()">
				<div class="imgArea">			
							<img src="">
				</div>
							<div class="contents">
							<h4>또치의 헬스</h4>
							<p>서울특별시 강남구 역삼동 kh파워헬스</p>
							 <div class="category"><b>피트니스</b></div>
							</div>
				</div>
				
				
			</div>
			
<script>
	
	function goDetail(){
		
		location.href="searchDetail.kch";
		
	}



</script>
			
			
			
			
			
		</div>
		<div class="mapArea"></div>
	</div>


</div>














</body>
</html>









