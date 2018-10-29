<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.leftContainer{
	width:300px;
	height:600px;
	float:left;
	margin-top:100px;
}
.leftContainer li{
	list-style:none;
}
.leftContainer .profil{
	margin:auto;
	width:150px;
	height:150px;
}
.leftContainer .profil #profil_img{
	margin:auto;
	width:150px;
	height:150px;
	border-radius: 50%;
}
.leftContainer .profil .profil_info{
	text-align:center;
	margin:0px; 
	padding:0px;
}
.leftContainer .myPageMenuWrap{
	position: relative;
	margin-top:30px;
}
.mypageMenu{
	background:white;
}
.mypageMenuWrap li{
	line-height:300%;
	border-radius: 50px;
}
.mypageMenuWrap li:hover{
	cursor:pointer;
	background:#f5f5f5;
	
}
.mypageMenu a{
	text-decoration:none;
}


 .fontColBlack{ color:black; }

</style>
</head>
<body>
	<div class="leftContainer">
	
			<div class="profil">
				<div class="profil_img">
					<img id="profil_img" src="resources/images/myPage/image.png">
				</div>
				<div class="profil_info">
					<h6>UserName 님<br><small>(UserId)</small></h6>
					<div class="userPicComment upcOK">
						<p class="text-anc">와~ 멋진 사진이네요!</p>
						<p>
							<a class="btn btn-default btn-xs btn-editProfile" href="changeInfo.ljs(${ loginUser.userId })">회원정보 수정</a>
						</p>
					</div>
				</div>
				<div class="mypageMenuWrap">
					<div class="mypageMenu">
						<ul>
							<li><b><a href="profil.ljs" id="a_index" class="fontColBlack current"><i class="fa fa-clone"></i>  내멤버십</a></b></li>
							<li><b><a href="wantPlace.ljs" id="a_favorite_center" class="fontColBlack current"><i class="fa fa-heart-o"></i>  가보고 싶은 시설</a></b></li>
							<li><b><a href="history.ljs" id="history" class="fontColBlack current"><i class="fa fa-bar-chart"></i>  이용기록</a></b></li>
							<li><b><a href="crewManager.ljs" id="a_invite" class="fontColBlack current"><i class="fa fa-child"></i>  크루관리</a></b></li>
							<li><b><a href="writePosts.ljs" id="myBoard" class="fontColBlack current"><i class="fa fa-thumb-tack"></i>  내가 쓴 게시물</a></b></li>
							<li><b><a href="Enterprise.ljs" id="enterprise" class="fontColBlack current"><img src="resources/images/myPage/enterprise.png" style="width:10px; height:14.4px;">  기업관리</a></b></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		
		<script>
		$(function(){
			var ckPage = $("#ckPage").val();
			
			if(ckPage == "a_index"){
				$("#a_index").css("color","#00bff0");
			}else if(ckPage == "a_favorite_center"){
				$("#a_favorite_center").css("color","#00bff0");
			}else if(ckPage == "history"){
				$("#history").css("color","#00bff0");
			}else if(ckPage == "a_invite"){
				$("#a_invite").css("color","#00bff0");
			}else if(ckPage == "myBoard"){
				$("#myBoard").css("color","#00bff0");
			}
		});
		</script>
</body>
</html>