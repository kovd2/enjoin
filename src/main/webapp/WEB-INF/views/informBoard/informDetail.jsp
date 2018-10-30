<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

.wrap{
	width:100%;

}
.top{
	width:1100px;
	height:500px;
	margin:0 auto;
	position:relative;
}


.imgArea{
	background:black;
	width:1100px;
	height:500px;
	position:absolute;
	left:0;

}
img{
	width:1100px;
	height:500px;
	opacity:0.4;

}
.mainTitle{
	margin-top:50px;  
	position:absolute;

}
.titleArea{
	
	width:1100px;
	height:100px;
	position:absolute;
	left:0;
}
.title{
	width:1100px;
	height:90px;
	text-align:center;
	font-size:90px;
	font-weight:bold;
	color:#ccc;
	margin-top:50px;
}


.dateArea{
	
	width:1100px;
	height:100px;
	position:absolute;
	left:0;
}
.date{
	width:1100px;
	height:90px;
	text-align:center;
	font-size:90px;
	font-weight:bold;
	color:#ccc;
	margin-top:140px;
}

.gymArea{
	
	width:1100px;
	height:100px;
	position:absolute;
	left:0;
}
.gym{
	width:1100px;
	height:50px;
	text-align:center;
	font-size:50px;
	font-weight:bold;
	color:#ccc;
	margin-top:230px;
}
#btn{
	position:absolute;
	width:1100px;
	height:50px;
	text-align:center;
	margin-top:350px;

}
#enroll{
	
	width:150px;
	height:50px;
	font-weight:bold;
	font-size:20px;
}
#list{

	width:150px;
	height:50px;
	font-weight:bold;
	font-size:20px;

}

.main{
	width:1100px;
	height:500px;

}

.rowContent{
	width:1100px;
	display: -webkit-box;
	height:800px;

}
.left{
	width:550px;
	height:800px;
	
}
.right{
	width:550px;
	height:800px;	
	
	

}
.explanArea{
	width:550px;
	height:250px;
	font-size:24px;
	margin-top:20px;
}

.explan{
	font-size:20px;
	margin-top:20px;

}
.miniDate{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;
}

.mDate{
	font-size:20px;
	margin-top:20px;

}

.miniDate{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;
}

.mDate{
	font-size:20px;
	margin-top:20px;

}

.mainContent{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;
}

.mContent{
	font-size:20px;
	margin-top:20px;
}
.certiArea{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;
}
.certi{
margin-top:20px;
font-size:20px;

}

.diaryArea{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;
}
.diary{
font-size:20px;
margin-top:20px;
}



.comentArea{
	width:550px;
	height:50px;
	font-size:24px;
	margin-top:20px;

}
.coment{
font-size:20px;
margin-top:20px;
}



</style>
</head>
<body>


		<jsp:include page="../common/menubar.jsp"/>
		
		
		<div class="wrap">
			<div class="top">
			
			<div class="main">
			<div class="imgArea">
			<img src="resources/images/informBoard/cross.jpg">
			</div>
			
			
			<div class="mainTitle">
			
			<div class="titleArea">
			<div class="title">첫번째 크로스핏 크루</div>
			</div>
			
			<div class="dateArea">
			<div class="date">2018.09.18</div>
			</div>
			
			
			<div class="gymArea">
			<div class="gym">서울특별시 중구 동호로 8가길 41 오후 8시</div>
			</div>
			</div>
			
			<div id="btn">
			<button type="button" class="btn btn-success" id="enroll"><i class="fa fa-handshake-o"></i>크루신청하기</button>
			<button type="button" class="btn btn-warning" id="list"><i class="fa fa-laptop"></i>신청현황</button>
			</div>
			</div>
			
			
			<div class="rowContent">
			
			<div class="left">
				<div class="explanArea">
				<b>크로스핏?</b>
					<div class="explan">
		미국의 그레그 글래스먼(Greg Glassman)이 만든 운동방법론과 피트니스 클럽 브랜드 
		그레그 글래스먼(Greg Glassman)은 크로스핏 헌장(Crossfit Foundation)을 통해 크로스핏에 대해 다음과 같이 정의를 내렸다.<br>
		크로스핏은 어느 한 분야에 특화된 피트니스 프로그램이 아니다. 10가지 영역의 육체능력을 골고루 극대화하려는 시도이다.<br>
 		이 열가지 능력에는 심폐지구력, 최대근력, 유연성, 협응력, 민첩성, 균형감각, 정확성, 파워, 스태미너, 속도가 들어간다.<br>
		덧붙여 이 10가지를 능력을 배양하기 위한 방법으로 "지속적이고 다양한 고강도 기능성운동"을 주문하고 있다.<br>
							
					</div><hr>
				
				</div><br><br>
				
			<div class="miniDate">
				<i class="fa fa-calendar" style="font-size:24px"><b>신청기간</b> </i>
				<div class="mDate">
					2018.09.02 ~ 2018.09.17
				</div><hr>
			
			</div><br><br>
			<div class="mainContent">
			<i class="fa fa-map" style="font-size:24px">주요내용</i>
			
			<div class="mContent">
			혼자 하기 어렵고 버거운 운동들 새로운 사람들과 저희 Enjoin이 함께 합니다.
		
				</div>
				
			</div><br><br><hr>
			
			<div class="certiArea">
			<i class="fa fa-smile-o" style="font-size:24px"><b>지원자격</b></i>
			<div class="certi">
			20세이상
			
			</div><hr>
			</div><br><br>
			
			<div class="diaryArea">
			<i class="fa fa-volume-off" style="font-size:24px">일정</i>
			<div class="diary">
			1시간 반 동안 진행
				
			</div>
			</div><br><hr>
			
			
				
				
			</div>
			<div class="right">
				<div class="comentArea">
					<i class="fa fa-music" style="font-size:24px">댓글</i>
					<div class="conment">
					
					
					</div>
				
				</div>
				
				
			
			
			
			
			</div>
			
			
			</div>
			
			
			
			
			
			
			</div>	
		</div>
		
		






</body>
</html>