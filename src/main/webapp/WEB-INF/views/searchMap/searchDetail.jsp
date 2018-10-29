<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.modalWrap{
	width:100%;
}
.modalMiddle{
	width:340px;
	height:100%;
	margin:0 auto;
	background:gray;
	display:-webkit-box;
	border-radius:3px;
 	box-shadow:3px 3px 3px 3px #999;
}
.modalContent{
	width:320px;
	background:white;
	margin:10px 10px 10px 10px;
	

}
.imgArea{
	/* border-radius:3px; */
	width:300px;

}
.imgArea>img{
	
	border-radius:3px;
	width:300px;
	margin:5px 0px 5px 10px;

}
#title{
	/* border:2px solid #00bff0; */
	/* border-radius:3px; */
	text-align:center;
	font-size:25px;
	/* width:300px;
	height:30px; */
	/* margin:10px; */
	color:#00bff0;
	padding-top:30px;

}
#address{
	
	text-align:center;
	font-size:15px;
	margin-top:20px;

}
#tel{

text-align:center;
	font-size:15px;
	margin-top:6px;



}

#pass{
	text-align:center;
	font-size:20px;
	margin-top:6px;
	height:30px;
	/* margin-left:120px; */
 	border-bottom:1px solid gray;
 	color:#00bff0;
 	display:-webkit-box;
 	margin:10px 30px 0 30px;
 	padding-left:95px;
 	
 	
}
#passImg{
width:40px;
height:20px;
}
#passImg>img{
	width:35px;
	height:26px;

}
#detail{
  border:2px solid #00bff0; 
	 border-radius:3px;
	 margin:20px 30px 30px 30px;
	height:40px;
	font-size:20px;
	text-align:center;
	vertical-align:center;
	padding:5px 10px 10px 10px;
	
}
#detail:hover{

	background:#00bff0;
	cursor:pointer;
}

</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
<hr>


	<div class="modalWrap">
		
		<div class="modalMiddle">
		
		
			<div class="modalContent">
			
				 <div class="imgArea">
				 		<img src="resources/images/searchMap/mb.jpg">
				 		
		
				 </div>
				 <div class="contentArea">
				 	<div id="title">
				 			<b>또치헬스장</b>
				 	</div>
				 	
				 	<div id="address">	
				 	 <p>서울특별시 강남구 역삼동 232-2</p>
				 	</div>
				 	
				 	<div id="tel">
				 	02)1234-5454
				 	</div>
				 	
				 	<div id="pass">
				 	<b>2pass</b>
				 	<div id="passImg">
				 
				 		<img src="resources/images/searchMap/running.png">
				 	</div>
				 	</div>
				 	
				 	<div id="detail" onclick="detailResult()">
				 	
				 		<b>자세히보기</b>
				 	
				 	</div>
				 	
				 	
				 	
				 	
				 </div>
				 
				 
				
			
			</div>
			
		
		</div>
		
	</div>
<script>

	function detailResult(){
		
		location.href="detailResult.kch"
		
	}



</script>








</body>
</html>