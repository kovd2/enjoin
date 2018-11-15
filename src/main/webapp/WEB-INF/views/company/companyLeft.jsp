<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업페이지</title>

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
.leftContainer .companyWrap{
	position: relative;
	margin-top:30px;
}
.companyMenu{
	background:white;
}
.companyWrap li{
	line-height:300%;
	border-radius: 50px;
}
.company li:hover{
	cursor:pointer;
	background:#f5f5f5;
	
}
.company a{
	text-decoration:none;
}


 .fontColBlack{ color:black; }

</style>
</head>
<body>
	<div class="leftContainer">
	
			<div class="profil">
				<div class="profil_img">
					<img id="profil_img" src="resources/images/company/thumbnail.png">
				</div>
				<div class="profil_info">
					<h6><c:out value="${ sessionScope.loginUser.userName }님"/><br><small>(<c:out value="${ sessionScope.loginUser.userId }"/>)</small></h6>
					<div class="userPicComment upcOK">
						
						 <p>
							<a class="btn btn-default btn-xs btn-editProfile" href="changeInfo.gs?userId=${ loginUser.userId }">회원정보 수정</a>
						</p>
					</div>
				</div>
				<div class="companyWrap">
					<div class="companyMenu">
						<ul>
							<li><b><a href="companyInsertForm.gs" id="a_index" class="fontColBlack current"><i class="fa fa-clone"></i>  제휴시설등록</a></b></li>
							<li><b><a href="companylist.gs?userId=${ sessionScope.loginUser.userId}" id="myBoard" class="fontColBlack current"><i class="fa fa-thumb-tack"></i>  내가 등록한 시설</a></b></li>
							<li><b><a href="useHistory.gs?userId=${ sessionScope.loginUser.userId }" id="a_favorite_center" class="fontColBlack current"><i class="fa fa-heart-o"></i>  시설이용내역</a></b></li>
							<li><b><a href="enterConfirm.gs" id="history" class="fontColBlack current"><i class="fa fa-bar-chart"></i>  입장확인</a></b></li>
							
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
		
		/* function gocompany(userId){
			var userId = userId;
			
			location.href="companylist.gs?userId="+userId;
		} */
		</script>
</body>
</html>