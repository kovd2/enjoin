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
	width:620px;
	height:600px;
	margin:0 auto;
	display: -webkit-box;
	
}
.reviewArea{
	width:600px;
	height:100%;
	border-radius:3px;
	border:2px solid #eee;
	overflow-y:scroll;
	
	
}

.review{
	width:600px;
	height:300px;
	margin-top:10px;
	background:white;
	
	
}

.title{

    width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
	color:black;
	padding-left:40px;
    
    
}
.count{
	 width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
    color:gray;
    padding-left:40px;
   
}
.list{

    width: 600px;
    height: 300px;
   

}
.userId{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
    width: 70px;
    height: 30px;
    color:gray;
    
}
.date{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	width: 150px;
    height: 30px;
    color:gray;
}
.titleWrap{
    display: -webkit-box;


}
.product{
    width: 300px;
    height: 20px;
    font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	color:#00bff0;
    
    
}
.scoreWrap{
display: -webkit-box;
border-top:1px solid #eee;
margin-left:40px;
margin-right:40px;


}
.starScore{
    width: 200px;
    height: 40px;
	margin-top:10px;
	border-right:1px solid #eee;	

}
.starScore>img{
	width:197px;
	height:40px;
	
	
}
.numScore{
  	width: 200px;
    height: 60px;
	margin-top:10px;
	font-size:40px;
	font-weight:bold;
	color:gray;
	text-align:center;
	
}


.content{
    height: 100px;
    font-size: 20px;
    color: #333;
    font-weight: bold;
    margin-left: 40px;
    margin-right: 40px;
    padding-top: 30px;
    border-top: 1px solid #eee;
	overflow:hidden;
	border-bottom:5px solid #eee;
}
.end{
	text-align: center;
    font-size: 15px;
    color: #999;
    padding-top: 10px;
	padding-bottom:15px;

}

.listTop{
	display: -webkit-box;
	

}
.close{
	margin-left:220px;
	
}

#col:hover{
	cursor:pointer;
	color:black;
}

#col{
color:#eee;
}
</style>


</head>
<body>
	
	<div class="wrap">
	
		<div class="top">
			<div class="reviewArea">
				<div class="review">
					
					<div class="listTop">
					<div class="title">
					또치헬스장
					</div>
					<div class="close">
					<i class="fa fa-times" id="col" style="font-size:24px"></i>
					</div>
					</div>
					
					
					<div class="count">
					회원리뷰 8개
					</div>
					
					<div class="list">
						<div class="titleWrap">
						<div class="userId">kch43**</div>
						<div class="date">2018.09이용</div>
						</div>
						<div class="product">헬스</div>
						
						<div class="scoreWrap">
						<div class="starScore">
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="numScore">9.3</div>
						</div>
						<div class="content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
					<div class="list">
						<div class="titleWrap">
						<div class="userId">kch43**</div>
						<div class="date">2018.09이용</div>
						</div>
						<div class="product">헬스</div>
						
						<div class="scoreWrap">
						<div class="starScore">
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="numScore">9.3</div>
						</div>
						<div class="content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
					<div class="list">
						<div class="titleWrap">
						<div class="userId">kch43**</div>
						<div class="date">2018.09이용</div>
						</div>
						<div class="product">헬스</div>
						
						<div class="scoreWrap">
						<div class="starScore">
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="numScore">9.3</div>
						</div>
						<div class="content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
					<div class="end">
					<i class="fa fa-comments-o"></i>
					모든리뷰를 불러왔습니다.
					</div>
					
					
				
				
				
				</div>	
				
			</div>
		
		</div>

	
	</div>

	






</body>
</html>