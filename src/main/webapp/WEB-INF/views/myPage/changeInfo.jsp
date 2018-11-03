<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript" src="http://t1.daumcdn.net/postcode/api/core/180928/1538455030985/180928.js"></script>
<style>
.rightContainer {
	width: 800px;
	height: auto;
	margin-top: 100px;
	display: inline-block;
	border-left: solid 0.5px lightgray;
	float:left;
}
.memberForm{
	margin-left:50px;
}
.withdraw{
	float:right;
}
.bodyArea{
	margin:auto;
	width:1100px;
	height:auto;
}
.profilPhoto{
	width:150px;
	height:150px;
	border:solid 0.5px lightgray;
}
.SHInsertImg_plusImg{
	width:150px;
	height:150px;
}
.drawThumbnailImg{
	width:150px;
	height:150px;
	display:none;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">마이페이지</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	<!-- 	<form>
			<input type="text" name=""
		</form> -->
		
		<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp"/>
	<div class="rightContainer">
		<b id="a_index" class="current" style="font-size:30px; color:black; text-indent:30px;"><i class="fa fa-clone"></i>  내 정보 수정</b>
		<form class="memberForm" action="saveInfo.ljs" enctype="multipart/form-data" method="post" name="modify_form" id="modify_form">

            <!-- <input type="hidden" name="img_temp" id="img_temp">
            <input type="hidden" name="r" value="">
            <input style="visibility: hidden; width: 0;height: 0;"> -->


            <div class="row">
              <div class="col-md-6">
               <div class="form-group">
                  <label for="userName" class="">아이디</label>
                  <input type="text" class="form-control" id="userId" value="${loginUser.userId}" name="userId" readonly>
               </div>
               <div class="form-group">
                  <label for="userName" class="">이름</label>
                  <input type="text" class="form-control" id="userName" placeholder="이름" value="${loginUser.userName}" name="userName">
                </div>
                <div class="form-group">
                  <label for="password" class="">비밀번호</label>
                  <input type="password" class="form-control" id="password" placeholder="비밀번호" name="userPwd">
                </div>
                <div class="form-group">
                  <label for="password2" class="">비밀번호 다시 입력</label>
                  <input type="password" class="form-control" id="passwordCheck" placeholder="비밀번호를 한번 더 입력">
                </div>
                <div class="form-group" id="user_email_div">
                  <label for="email" class="">이메일</label>
                  <input type="email" class="form-control" id="email" placeholder="이메일" value="${ loginUser.email }" name="email">
                  <span class="help-block" id="email"></span>
                </div>

                <div class="form-group">
                  <label class="">휴대폰 번호</label>
                  <div class="input-group">
                    <input type="tel" class="form-control" placeholder="휴대폰 번호를 입력하세요" value="${ loginUser.phone }" name="phone" id="phoneValue">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button" id="phone" onclick="changePhone();"><span class="text-info">새 번호 입력하기</span></button>
                    </span>
                  </div>
                  <p class="help-block">
                   	 전화번호를 변경하시려면 <strong class="text-info">새 번호 입력하기</strong> 를 누르세요.
                  </p>
                </div>
              </div><!--/.col -->


					<div class="col-md-6">
						<div class="form-group userPicUploadBox">
								<label style="font-size:25px;"><b>프로필 사진</b></label>			
							<div class="inputMemberInfo">	
								<label>
									<img class="SHInsertImg_plusImg" id="SHInsertImg_plusImg" src="resources/images/myPage/user.png" />
									<img class="drawThumbnailImg" id="drawThumbnailImg" /> 
									<input type="file" onchange="previewFile()" class="SGThumbnailImg" id="SGThumbnailImg" name="photo" />
								</label>
							</div>
							<!-- <div class="profilImg">
                 		<label class="">프로필 사진</label>
                 		<div class="profilPhoto"><img src="resources/images/myPage/user.png" style="width:150px; height:150px;"></div>
                 		<input type="file" name="photo">
                  	</div> -->
							<span class="text-danger">미리보기로 업로드된 사진을 확인하신 후, 하단의 저장하기
								버튼을 꼭 눌러주세요.</span> <span>정면, 상반신 사진 / 가로 400px*세로400px 이상의 사진을
								등록해주세요.</span> <span>프로필 사진은 제휴시설 이용시 본인 확인 용도로 사용됩니다.</span> <span>사진으로
								본인 확인이 어려울 경우, 제휴시설 입장이 제한 될 수 있습니다.</span>
						</div>
					</div><!-- /.col -->
            </div><!-- /.row -->
			
          </form>
           <div class="form-group submitLine forMobileAppFloat" style="margin-left:50px;">
              <button id="saveBtn" class="btn btn-lg btn-primary btn_mobileAppFloat" style="background:#00bff0;" onclick="saveBtn()"><i class="fa fa-check"></i> 저장하기</button>
              <a href="javascript:history.go(-1)" class="btn btn-link"><i class="fa fa-close"></i> 취소</a>
              <span class="withdraw">
                <button type="button" class="btn btn-sm btn-link" data-toggle="modal" data-target="#myModal">탈퇴</button>
              </span>
            </div>
	</div>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin: 95px auto;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">회원 탈퇴 신청</h4>
      </div>
      <div class="modal-body" style="height:200px;">
			<div class="alert alert-warning">
          <p>탈퇴하면 회원 정보가 삭제되고, 되돌릴 수 없습니다. 잔여 패스가 있더라도 사용할 수 없으니 유의하세요. 즉시 탈퇴를 원하시는 경우 탈퇴 버튼을 눌러주세요</p>
          <p>정말 탈퇴하실 건가요? (마지막 질문입니다)</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" style="background:#68A4C4;" onclick="deleteMember.ljs(${loginUser.userId})">탈퇴</button>
      </div>
    </div>
  </div>
</div>
	</div>
	<br><br><br><br><br><br>

	<script>
//	 모달
		$('#myModal').click('shown.bs.modal', function () {
		  $('#myInput').focus()
		});
		
		var regName = /^[가-힝]{2,}$/;
		var regPwd = /^(?=.*[a-zA-Z]+)(?=.*[0-9]+).{6,12}$/;
		var regPhone = /^[0-9]+$/;
		
 		//회원정보 수정 스크립트(비밀번호 확인)
		function saveBtn(){
			if($('#userName').val()==""){
			    console.log("이름을 입력해 주세요");
				alert("이름을 입력 해 주세요");
			    $('#userName').focus();
			    return;
		   }
			if($('#password').val() == ""){
				console.log("비밀번호를 입력해 주세요");
			    alert("비밀번호를 입력 해 주세요");
			    $('#password').focus();
			    return;
		   }
			if($('#passwordCheck').val() == ""){
				console.log("비밀번호확인을 입력해 주세요");
			    alert("비밀번호확인을 입력 해 주세요");
			    $('#password').focus();
			    return;
		   }
			if(!regName.test($('#userName').val())){				   
				 alert('올바른 이름을 입력해 주세요.');
				 $('#userName').focus();
				 return;
		   }
			if(!regPwd.test($('#password').val())){
				   alert('영문+숫자  조합으로 6-12자를 입력해 주세요.');
				   $('#userPwd').focus();
				   return;
		   }
		   
		   if($('#password').val() != $('#passwordCheck').val()){
			    alert("입력하신 비밀번호를 확인 해 주세요");
			    $('#passwordCheck').focus();
			    return;
		   }
		   if($('#password').val() != $('#passwordCheck').val()){
			   alert("비밀번호를 다시 한번 확인 해 주세요");
			   return;
		   }	
		   if($('#password').val() == $('#passwordCheck').val()){
			   
		   		$("#modify_form").submit();
		   		
		   }
		}
		
 		//프로필  사진 변경 스크립트
 		function previewFile() {
      		var preview = document.getElementById('drawThumbnailImg');
      		var file = document.getElementById('SGThumbnailImg').files[0];
      		var reader = new FileReader();
      
      	reader.addEventListener("load", function() {
         //$('.inputMemberInfo h4').remove();
         $('.SHInsertImg_plusImg').remove();
         
         $('.drawThumbnailImg').css('display', 'block');
         preview.src = reader.result;
      }, false);
   
      if(file) {
         reader.readAsDataURL(file);
      }
   }
 		//회원탈퇴 스트립트
 		function deleteMember(userId){
 			location.href="deleteMember?userId=" + userId;
 		}

	
</script>

</body>
</html>