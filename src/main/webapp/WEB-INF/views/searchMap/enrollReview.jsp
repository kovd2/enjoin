<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%		
		String facilityName= request.getParameter("facilityName");
		String fNo=request.getParameter("facilityNo");
		int facilityNo=Integer.parseInt(fNo);
		String facilityEvent=request.getParameter("facilityEvent");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.js"></script>]

<title>Insert title here</title>
<style>
.wrap{
	width:100%;
	
}
.top{
	width:620px;
	height:600px;
	margin:0 auto;
	display: -webkit-box;
	margin-top:50px;
	
}
.reviewArea{
	width:600px;
	height:500px;
	border-radius:3px;
	border:2px solid #eee;
	overflow-y:scroll;
	background:white;
	
	
}
.reviewArea::-webkit-scrollbar {display:none;}


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
	padding-left:60px;
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
	color:#00bff0;
	margin-left:60px;
	
    
    
}
.scoreWrap{
display: -webkit-box;
border-top:1px solid #eee;
margin-left:40px;
margin-right:40px;
padding-top:30px;


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
	font-size:20px;
	font-weight:bold;
	color:gray;
	text-align:center;
	
}


.content{
    height: 200px;
    width:500px;
    font-size: 18px;
    color: #333;
    font-weight: bold;
    margin-left: 40px;
    margin-right: 40px;
    padding-top: 10px;
    border-top: 1px solid #eee;
	overflow:hidden;
	border:5px solid #eee;
	autofocus:autofocus;
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
.closeArea{
	margin-left:220px;
	
}

#col:hover{
	cursor:pointer;
	color:black;
}

#col{
color:#eee;
}

.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
#enRwBtn{
	width:100px;
	heght:80px;
	text-align:center;
	color: #ffdd33;
	border-radius:3px;
	font-weight:bold;
	font-size:20px;
	border: 2px solid #ffdd33;
	margin-left:440px;
}
#enRwBtn:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;

}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}
#starPoint{
	    
	    margin-left:100px;
	    border:0px;
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
					 <%=facilityName%>
					</div>
					<div class="closeArea" onclick="displayNoneCancle()">
					<i class="fa fa-times" id="col" style="font-size:24px"></i>
					</div>
					</div>
					
					
					<div class="count">
					
					</div>
					
					<div class="list">
						<div class="titleWrap">
						<div class="userId">${loginUser.userId}</div>
						<div class="date"></div>
						</div>
						<div class="product"><%=facilityEvent%></div>
						
						
						<input type="hidden" name="facilityNo" id="facilityNo" value="<%=facilityNo%>">
						<input type="hidden" name="userNo" id="userNo" value="${loginUser.userNo}">
						<div class="scoreWrap">
						<div class="starRev">
  						<span class="starR1 on" onclick="enRw(0.5)">별1_왼쪽</span>
  						<span class="starR2" onclick="enRw(1.0)">별1_오른쪽</span>
  						<span class="starR1" onclick="enRw(1.5)">별2_왼쪽</span>
  						<span class="starR2" onclick="enRw(2.0)">별2_오른쪽</span>
  						<span class="starR1" onclick="enRw(2.5)">별3_왼쪽</span>
  						<span class="starR2" onclick="enRw(3.0)">별3_오른쪽</span>
  						<span class="starR1" onclick="enRw(3.5)">별4_왼쪽</span>
  						<span class="starR2" onclick="enRw(4.0)">별4_오른쪽</span>
  						<span class="starR1" onclick="enRw(4.5)">별5_왼쪽</span>
  						<span class="starR2" onclick="enRw(5.0)">별5_오른쪽</span>
						</div>
						<div class="numScore">평점주기
						<input type="text"  name="starPoint"  value="0.5" id="starPoint">
						</div>
						</div>
						<!-- <div class="content"></div> -->
						
						<textArea class="content" id="contentRw"  name="rw_content" autofocus="autofocus" placeholder="내용을 입력해주세요"></textArea>
						
						<button type="button" onclick="reviewInfo()"  id="enRwBtn">리뷰등록</button>
						
					
					</div>
				</div>		
			</div>
		</div>
	</div>

<script>

	function enRw(e){
		$("#starPoint").val(e);
	}
	
	$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});

</script>

<script>

	function hidePopup() {
		document.getElementById('settingBoardArea').style.display='none';
		document.getElementById('settingArea').style.display='none';
	}

	function sendInfo( contentRw ) {
		
		// hide our popup
		hidePopup();
		$('en_listTop').empty();
		 
		 
		var  facilityNo = $('#facilityNo').val();
		var userNo 		= $('#userNo').val();
		var starPoint	= $('#starPoint').val();
		
		//searchReview(facilityNo,userNo,starPoint,contentRw);
		
		$.ajax({
			
			url:"reviewForm.kch",
			type:"post",
			data:{
				facilityNo:facilityNo,
				userNo:userNo,
				starPoint:starPoint,
				contentRw:contentRw
			},
			success:function(data) {
				
				console.log(data);
				
				
				
				
					
				$('.en_count').text(data.FACILITY_NAME);
				 $('en_count').text('회원리뷰'+data.TOTAL+'개');
					
				
				$div9=$('<div class="en_list">');
				$div10=$('<div class="en_titleWrap">');
				$div9.append($div10);
				
				$div11=$('<div class="en_userId">');
				$div11.append(data.USER_ID);
				$div10.append($div11);
				$div12=$('<div class="en_date">');
				$div12.append(  moment( data.RW_DATE ).format("YYYY.MM") + '이용' );
				$div10.append($div12);
				$div13=$('<div class="en_event">')
				$div13.append(data.FACILITY_EVENT);
				$div9.append($div13)
				$div14=$('<div class="en_scoreWrap">');
				$div9.append($div14);
				$div15=$('<div class="en_starScore">');
				$div14.append($div15);
				if(data.SCORE==5){
				$div15.append('<img src="resources/images/searchMap/5star.png">');
				}else if(data.SCORE==4.5){
				$div15.append('<img src="resources/images/searchMap/4.5star.png">');	
				}else if(data.SCORE==4){
					$div15.append('<img src="resources/images/searchMap/4star.png">');	
				}else if(data.SCORE==3.5){
					$div15.append('<img src="resources/images/searchMap/3.5star.png">');
				}else if(data.SCORE==3){
					$div15.append('<img src="resources/images/searchMap/3star.png">');
				}else if(data.SCORE==2.5){
					$div15.append('<img src="resources/images/searchMap/2.5star.png">');
				}else if(data.SCORE==2){
					$div15.append('<img src="resources/images/searchMap/2star.png">');
				}else if(data.SCORE==1.5){
					$div15.append('<img src="resources/images/searchMap/1.5star.png">');
				}else if(data.SCORE==1){
					$div15.append('<img src="resources/images/searchMap/1star.png">');
				}else if(data.SCORE==0.5){
					$div15.append('<img src="resources/images/searchMap/0.5star.png">');
				}
				$div16=$('<div class="en_numScore">');
				$div16.append(data.SCORE);
				$div14.append($div16);
				$div17=$('<div class="en_content">');
				$div17.append(data.RW_CONTENT);
				$div9.append($div17);
				
				$('.en_review').prepend($div9);
				$('.en_review').prepend($('.en_count'));
				$('.en_review').prepend($('.en_listTop')); 
				
				
			},
			error : function(){
				
			}
		})
	};
	
	function reviewInfo(){
		var contentRw 	= $('#contentRw').val();
		
		console.log(  moment( 1542737529000 ).format("YYYY.MM") + '이용' );
		
		if( contentRw.trim() !== '' )
			sendInfo( contentRw );
	}

</script>





</body>
</html>