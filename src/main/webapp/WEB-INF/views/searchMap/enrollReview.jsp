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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	padding-left:50px;
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
	color:#00bff0;
    
    
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
#enBtn:hover{
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
						
						<form action="insertEnroll.kch" id="insertRw">
						<input type="hidden" name="facilityNo" value="<%=facilityNo%>">
						<div class="scoreWrap">
						<div class="starRev">
  						<span class="starR1 on" onclick="enRw(0.5)">별1_왼쪽</span>
  						<span class="starR2" onclick="enRw(1)">별1_오른쪽</span>
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
						<input type="text" form="insertRw" name="scorePoint" value="0.5" id="starPoint">
						</div>
						</div>
						<!-- <div class="content"></div> -->
						
						<textArea class="content" name="rw_content" autofocus placeholder="내용을 입력해주세요"> 
						
													
						
						</textArea>
						
						<button type="submit" id="enRwBtn">리뷰등록</button>
						</form>
					
					</div>
					
					
								
				
				</div>	
				
			</div>
		
		</div>

	
	</div>

<script>
function enRw(e){
	alert(e);
	$("#starPoint").val(e);
}
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});


</script>





</body>
</html>