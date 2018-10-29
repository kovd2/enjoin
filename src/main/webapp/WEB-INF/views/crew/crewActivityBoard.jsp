<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 아이콘  -->
 <script type="text/javascript"
	src="${contextPath}/resources/style/js/slider/mainSlider.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/style/css/slider/mainSlider.css">



<title>Insert title here</title>
<style>
.body {
	width: 100%
}

.header {
	width: 1000px;
	height: 400px;
	background: black;
	margin: 0 auto;
	margin-top: 50px;
}
.blackArea{
	width:1002px;
	background:black;
}
.mainImg {
	width: 1000px;
	height: 400px;
	opacity: 0.5;
}

.middle {
	width: 1000px;
	margin-bottom: 48px;
	margin: 0 auto;
	margin-top: 40px;
	background: gainsboro;
}

.crewBtn {
	float: right;
	background: #2196F3;
	color: white;
	border-radius: 8px;
	margin-top: -33px;
}

.crewEventBox {
	width: 320px;
    height: 377px;
    margin-left: 13px;
    margin-top: 20px;
    display: -webkit-inline-box;
    border: 1px solid gainsboro;
}

.middle2 {
	width: 1010px;
	margin: 0 auto;
	margin-top: 30px;
}

.catagory {
	width: 90px;
	height: 30px;
	background: #2196F3;
	border-radius: 4px;
	display: inline-block;
	position: inherit;
	margin-left: 10px;
	margin-top: 10px;
	z-index: 2;
}

.catagoryName {
	font-size: 18px;
	color: white;
	margin-top: 3px;
	font-weight: bold;
	position: relative;
	top: 4px;
	margin: 0;
	text-align: center;
}

.crewImgBox {
	width: 317px;
	height: 190px;
	position: absolute;
}

.crewImg {
	width: 318px;
	height: 289px;
}

.crewContent {
	font-size: 15px;
	font-weight: bold;
	color: #2196F3;
	margin-left: 3px;
	position: relative;
	top: 11px;
	border-bottom: 1px solid gainsboro;
}

.crewDate {
	margin-left: 30px;
}

.crewMember {
	margin-left: 17px;
}

.crewEventBox:hover {
	border: 1px solid #2196F3;
	-webkit-transform: scale(1.1); /*  크롬 */
	cursor: pointer;
}

.crewName {
	font-weight: bold;
}

img.logo {
	width: 60px;
	margin-left: 234px;
	margin-top: -19px;
	display: block;
}

.crewAdd {
	display: inline-block;
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 600;
	margin-left: 4px;
}

p.crewName {
	margin-left: 3px;
	margin-top: 1px;
	position: relative;
	top: 5px;
}
.1{
	position: relative;
	left: 0;
	top: 0;
	padding-top: 50px;
	height: 100%;
	padding-left: 50px;
}
.ActivityName{
	position: absolute;
    color: white;
    z-index: 1;
    margin-left: -130px;
    margin-top: 170px;
    font-size: 20px;
}

/* 메인위에 글씨 올리기  */
.crewNameLabel {
	font-size: 16px;
    line-height: 19px;
    height: 21px;
    vertical-align: middle;
    color: #00cbff;
    letter-spacing: 0;
    margin: 0 0 5px;
    display: inline-block;
    padding: 0 5px;
    border: 1px solid #00cbff;
    border-radius: 2px;
}

.crewTitle {
	display: block;
    color: white;
    margin-top: 10px;
    font-size: 20px;
    font-weight: bold;
}

.crewCatagory {
	color: #fff;
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}

.address {
	color: #fff;
	font-size: 14px;
	margin-top: 12px;
	margin-left: 5px;
}


.crewMember1 {
	color: #00cbff;
    margin-top: 10px;

}	
	

/*  여기까지 */


/* 이미지슬라이드  */

/* 슬라이드  */
</style>

</head>
<body>

	<jsp:include page="../common/menubar.jsp" />
	

	<div class="body">
		<div class="header">
			<%-- <img src="${ contextPath }/resources/images/crew/GettyImages-924368190.jpg" class="mainImg"> --%>
			<!-- 여기부터  -->

		<div class="container1">
			<div class="1">
			 <h3 class="ActivityName">
			 	<smail class="crewNameLabel">ENJOIN 크루활동 게시판</smail>
						<span class="crewTitle">ENJOIN의 크루 활동 게시판입니다<br> 크루의 활동내역을 알리고 홍보해 주세요.<br>최우수 크루에게는 상품 증정이 이루어 집니다!</span>
						<p class="crewMember1">크루의 소중한 경험을 공유하세요!</p>
			 </h3>
    <div class="slider">
        <ul>
            <li><div class="blackArea"><img src="${ contextPath }/resources/images/crew/GettyImages-924368190.jpg" class="mainImg"></div></li>
            <li><div class="blackArea"><img src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_214417258.jpg" class="mainImg"></div></li>
            <li><div class="blackArea"><img src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_221614854.jpg" class="mainImg"></div></li>
            <li><div class="blackArea"><img src="${ contextPath }/resources/images/crew/KakaoTalk_20181028_221606060.jpg" class="mainImg"></div></li>
            <li><div class="blackArea"><img src="${ contextPath }/resources/images/crew/friendship-2366955_960_720.jpg" class="mainImg"></div></li>
        </ul>
        <ol>
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ol>
        <div class="control">
            <i class="fa fa-angle-left fa-5x" style="display:none"></i>
            <i class="fa fa-angle-right fa-5x" style="display:none"></i>
        </div>
    </div>
    </div>
</div>


			<!-- 여기까지  -->
		</div>
	<div class="middle">
		<button class="crewBtn">활동내역작성</button>
	</div>
	<div class="middle2">
		<hr>



		<div class="crewEventBox">
			<a href="crewActivityDetails.test">
				<div class="crewImgBox">
					<div class="catagory">
						<p class="catagoryName">필라테스</p>
						<img src="${ contextPath }/resources/images/crew/logo.png"
							class="logo">
					</div>
					<img
						src="${ contextPath }/resources/images/crew/test/536d81c07984b66dbdf623032ee4dd5b.jpg"
						class="crewImg">
					<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
					<p class="crewName">김창희의 헬스크루</p>
					<label class="crewAdd"><i class="fa fa-compass"
						style="font-size: 17px; color: #2196f3"></i>지역:강남 <label class="crewDate"><i class="fa fa-clock-o"
							style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label class="crewMember"><i class="fa fa-user"
							style="font-size: 17px; color: #2196f3"></i>인원:7명</label></label>
				</div>
			</a>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>

		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/KakaoTalk_20180817_154814344.gif"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/536d81c07984b66dbdf623032ee4dd5b.jpg"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/20180111_hazzys_acc-e1515632554131.jpg"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/1dbd795fe4d541afe414dd9e5eb015ca.gif"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/65446473_1_1504278084_w640.jpg"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>


		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/65446473_1_1504278084_w640.jpg"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>

		<div class="crewEventBox">
			<div class="crewImgBox">
				<div class="catagory">
					<p class="catagoryName">필라테스</p>
					<img src="${ contextPath }/resources/images/crew/logo.png"
						class="logo">
				</div>
				<img
					src="${ contextPath }/resources/images/crew/test/KakaoTalk_20180817_154814344.gif"
					class="crewImg">
				<p class="crewContent">즐거운 운동이에요! 한번 같이 해봐요</p>
				<p class="crewName">김창희의 헬스크루</p>
				<label class="crewAdd"><i class="fa fa-compass"
					style="font-size: 17px; color: #2196f3"></i>지역:강남 <label
					class="crewDate"><i class="fa fa-clock-o"
						style="font-size: 17px; color: #2196f3"></i>일시:2018-10-25</label> <label
					class="crewMember"><i class="fa fa-user"
						style="font-size: 17px; color: #2196f3"></i>인원:7명</label> </label>
			</div>
		</div>









	</div>
	<jsp:include page="../common/footer.jsp" />
	</div>
</div>
</body>
</html>