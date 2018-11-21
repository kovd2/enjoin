<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<style>
.en_wrap{

	width:100%;
	margin-top:40px;
}
.en_top{
	width:620px;
	height:700px;
	margin:0 auto;
	
	display: -webkit-box;
	
}
.en_reviewArea{
	width:600px;
	height:100%;
	border-radius:3px;
	border:2px solid #eee;
	overflow-y:scroll;
	
	
}
.en_reviewArea::-webkit-scrollbar {display:none;}


.en_review{
	width:600px;
	height:300px;
	margin-top:40px;
	background:white;
	
	
}

.en_title{

    width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
	color:black;
	padding-left:40px;
    
    
}
.en_count{
	 width: 300px;
    height: 30px;
    text-align:left;
    font-size:20px;
    font-weight:bold;
    color:gray;
    padding-left:40px;
   
}
.en_list{

    width: 600px;
    height: 300px;
   

}
.en_userId{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
    width: 70px;
    height: 30px;
    color:gray;
    
}
.en_date{
	font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	width: 150px;
    height: 30px;
    color:gray;
}
.en_titleWrap{
    display: -webkit-box;


}
.en_event{
    width: 300px;
    height: 20px;
    font-size:15px;
	font-weight:bold;
	text-align:left;
	padding-left:40px;
	color:#00bff0;
    
    
}
.en_scoreWrap{
display: -webkit-box;
border-top:1px solid #eee;
margin-left:40px;
margin-right:40px;


}
.en_starScore{
    width: 200px;
    height: 40px;
	margin-top:10px;
	border-right:1px solid #eee;	

}
.en_starScore>img{
	width:197px;
	height:40px;
	
	
}
.en_numScore{
  	width: 200px;
    height: 60px;
	margin-top:10px;
	font-size:40px;
	font-weight:bold;
	color:gray;
	text-align:center;
	
}


.en_content{
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
.en_end{
	text-align: center;
    font-size: 15px;
    color: #999;
    padding-top: 10px;
	padding-bottom:15px;

}

.en_listTop{
	display: -webkit-box;
	

}
.en_close{
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
	
	<div class="en_wrap">
	
		  <div class="en_top">
			<div class="en_reviewArea">
				<div class="en_review">
					
					<div class="en_listTop">
					<div class="en_title"></div>
					
					</div>
					<div class="en_count">
					
					</div>
					
					<div class="en_list">
						<div class="en_titleWrap">
						<div class="en_userId">kch43**</div>
						<div class="en_date">2018.09이용</div>
						</div>
						<div class="en_event">헬스</div>
						
						<div class="en_scoreWrap">
						<div class="en_starScore">
						
						
						
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="en_numScore">9.3</div>
						</div>
						<div class="en_content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
						<div class="en_list">
						<div class="en_titleWrap">
						<div class="en_userId">kch43**</div>
						<div class="en_date">2018.09이용</div>
						</div>
						<div class="en_event">헬스</div>
						
						<div class="en_scoreWrap">
						<div class="en_starScore">
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="en_numScore">9.3</div>
						</div>
						<div class="en_content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
						<div class="en_list">
						<div class="en_titleWrap">
						<div class="en_userId">kch43**</div>
						<div class="en_date">2018.09이용</div>
						</div>
						<div class="en_event">헬스</div>
						
						<div class="en_scoreWrap">
						<div class="en_starScore">
						<img src="resources/images/searchMap/mini.png">
						</div>
						<div class="en_numScore">9.3</div>
						</div>
						<div class="en_content">친절하고 실력도 좋으신데 시설이나 위생상태는 안좋아요 이점 참고하세요!</div>
					
					</div>
					
					<div class="en_end">
					<i class="fa fa-comments-o"></i>
					모든리뷰를 불러왔습니다.
					</div>
					
					
				
				
				
				</div>	
				
			</div>
		
		</div>

	
	</div>

	<script>
	function hidePopup() {
		document.getElementById('settingBoardArea').style.display='none';
		document.getElementById('settingArea').style.display='none';
	}
	
	function searchReview(facilityNo,userNo,starPoint,contentRw){
		
		$.ajax({
			
			url:"reviewForm.kch",
			type:"post",
			data:{
				facilityNo:facilityNo,
				userNo:userNo,
				starPoint:starPoint,
				contentRw:contentRw
			},
			success:function(data){
				console.log(data);
				
				hidePopup();
			
				
				$('en_reviewArea').empty(); 
				
				console.log(data);
				$div1=$('<div class="en_wrap">');
				$div2=$('<div class="en_top">');
				$div3=$('<div class="en_reviewArea">')
				$div4=$('<div class="en_review">')
				$div1.append($div2);
				$div2.append($div3);
				$div3.append($div4);
				$div5=$('<div class="en_listTop">');
				$div6=$('<div class="en_title">');
				$div6.append(data.FACILITY_NAME+' '+data.RW_DATE);
				$div4.append($div5);
				$div5.append($div6);
				$div7=$('<div class="en_close">7'); 
				$i=$('<i class="fa fa-times" id="col" style="font-size:24px">');
				$div7.append($i);
				$div5.append($div7);
				$div8=$('<div class="en_count">');
				$div8.append('회원리뷰'+data.TOTAL+'개');
				$div4.append($div8);
				$div9.append('<div class="en_list">');
				$div4.append($div9);
				$div10=$('<div class="en_titleWrap">');
				$div9.append($div10);
				$div11=$('<div class="en_userId">');
				$div11.append(data.USER_ID);
				$div10.append($div11);
				$div12=$('<div class="en_date">');
				$div12.append(data.RW_DATE);
				$div10.append($div12);
				$div13=$('<div class="en_event">')
				$div13.append(data.FACILITY_EVENT);
				$div9.append($div13)
				$div14=$('<div class="en_scoreWrap">');
				$div9.append($div14);
				$div15=$('<div class="en_starScore">');
				$div14.append($div15);
				$div15.append(<img src="resources/images/searchMap/mini.png">)
				$div16.append('<div class="en_numScore">');
				$div16.append(data.SCORE);
				$div14.append($div16);
				$div17=$('<div class="en_content">');
				$div17.append(data.RW_CONTENT);
				$div9.append($div17);
				$('.en_top').append($div1);

			}

		})

	}
	
	
	
	</script>
 





</body>
</html>