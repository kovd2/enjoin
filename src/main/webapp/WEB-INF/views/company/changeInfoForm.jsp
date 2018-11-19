<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ENJOIN</title>

<style>
.realUserReview .btnMore {
    display: block;
    margin-top: 5px;
    padding: 10px 0;
    font-size: 13px;
    font-weight: 600;
    text-align: center;
    text-decoration: none;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 2px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

body {
    font: 14px/1.6 'Noto Sans Korean', 'Apple SD Gothic Neo', "맑은 고딕", "Malgun Gothic", Helvetica, Arial, sans-serif;
    font-weight: 400;
    color: #444;
    background: #fff;
}

.resultMiddle{


	height:100%;
	margin:0 auto;
	/* display:-webkit-box; */
	/* position:relative; */


}
.resultList{
	
	width:1100px;
	height:400px; 
	background:#f5f5f5;
	display:-webkit-box;
}
.imgArea{
	width:1100px;
	height:400px;
	background:black;
	display:-webkit-box;
    position:absolute;              
   
	
}
.imgArea>img{

	width:1100px;
	height:400px;
	background:black;
	opacity:0.3;
	
}



.imgTitle{
	
	position: absolute;
    font-size: -webkit-xxx-large;
    margin: 80px 0px 0px 150px;
    border: 1px solid #00bff0;
    padding: 20px;
    border-radius: 3px;
    color: #00bff0;
    
}
.imgAddress{
	position:absolute;
	color:white;
	margin:200px 0px 0px 160px;
}

.imgTel{

	position:absolute;
	color:white;
	margin:220px 0px 0px 160px;

}

.like{
	position: absolute;
    color: white;
    margin: 250px 0px 0px 160px;
    border: 2px solid white;
    border-radius: 3px;
    width: 60px;
    padding: 3px;
}
.like:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.preview{
	position: absolute;
    color: white;
    margin: 300px 0px 0px 800px;
    border: 2px solid white;
    border-radius:3px;
    width: 130px;
    padding: 10px 0px 10px 20px;
    
}

.preview:hover{
	background:#00bff0;
	cursor:pointer;
	border-color:#00bff0;
}
.totalCount{
	width:1050px;
	background:rgba(13,31,53,0.7);
	position:absolute;
	color:white;
	margin: 380px 10px 10px 0px;
	padding-left:160px;
    font-size: 14px;
    opacity: 0.8;
}
.aq{
    font-weight: 400;
}	

.resultContent{
	
	
	width:500px;
	height:150px;
	margin-left:50px;
	
}
.product{
	width:300px;
	color:#00bff0;
	margin-left:60px;
	text-align:center;
}
.product>img{
	width:30px;

}

.resultDate{
	width:500px;
	height:260px;
	margin-top:100px;
	margin-left:50px;
	
	
}
.time{
	width:300px;
	margin-left:60px;
	text-align:center;

}
.monToFri{
	color:black;
}
.sat{
	color:#0084c2;
}
.sun{
color:#f77d68;
}
.no{
color:#feab2a;
}
.resultAddress{
	width:500px;
	height:60px;
	
	
	
	margin-left:50px;
}
.address{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.resultTel{

	width:500px;
	height:50px;
	
	
	
	margin-left:50px;
	
}
.tel{
	width:300px;
	margin-left:60px;
	text-align:center;
	
}
.detailPic{
	width:500px;
	height:320px;
}
#listwrap1{
	width:500px;
	height:300px;
	position:absolute;	
}

#listwrap1>.list{	
	width:245px;
	height:140px;
	/* border:1px solid black; */
	padding:3px;
	display:inline-block;
}
#listwrap1>.list>img{
	width:245px;
	height:140px;
}
#listwrap2{
	margin-left:150px;
	width:150px;
	height:300px;
	position:absolute;
	
}
#listwrap2>.list{
	width:150px;
	height:100px;
	/* border:1px solid black; */
	padding:3px;
	
}
#listwrap3{
	margin-left:300px;
	width:150px;
	height:300px;
	position:absolute;
	
}
#listwrap3>.list{
	width:150px;
	height:100px;
	padding:3px;
	/* border:1px solid black; */
	
}
.list>img{
	width:140px;
	border-radius:3px;

}
.list>img:hover{
	
	opacity:0.5;
	cursor:pointer;	
	

}
.reviewWrap{
	
	width:500px;
	height:400px;
	padding-top:10px;
	border-top:1px solid #eee;
}

.rwArea{
	width:500px;
	height:100px;
	position:absolute;
	
	

}
.totalScore{
	width:500px;
	height:70px;
	position:absolute;
	border-bottom:1px solid #eee;	
	font-size:20px;
	
}
.totalScore>img{

	width:190px;
	height:46px;

}
.score{
	width:100px;
	height:50px;
	position:absolute;
	border-right: 1px solid #eee;
	margin-left:200px;
	padding:10px;
	font-size:30px;
	text-align:center;
	
}
.rwCountNum{
	width:200px;
	height:50px;
	position:absolute;
	margin-left:300px;
	text-align:center;
	font-size:20px;
	padding-top: 10px;

}

.rwList1{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee; 
	margin-top:80px;
	font-size:

}
.rwList1>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList1>.userDate{
	width:300px;
	height:30px;
	
}

.rwList1>.listScore{
	width:150px;
	height:45px;
	
	
}

.listScore>img{
	width:80px;
	height:40px;
	
}
.rwList1>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList2{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:210px;

}

.rwList2>.userInfo{
	width:300px;
	height:30px;
	
}
.rwList2>.userDate{
	width:300px;
	height:30px;
}

.rwList2>.listScore{
	width:150px;
	height:45px;

}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList2>.listContent{
	width:500px;
	height:30px;
	color:black;
	
}

.rwList3{
	width:500px;
	height:120px;
	position:absolute;
	border-bottom:1px solid #eee;
	margin-top:340px;

}

.rwList3>.userInfo{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}
.rwList3>.userDate{
	width:300px;
	height:30px;
	/* border:1px solid black; */
}

.rwList3>.listScore{
	width:150px;
	height:45px;
	
	/* border:1px solid black; */
}

.listScore>img{
	width:80px;
	height:40px;
}
.rwList3>.listContent{
	width:500px;
	height:30px;
	/* border:1px solid black; */
	color:black;
	
}
.enBtn{
	
	width:140px;
	height:50px;
	position:absolute;
	color:#00bff0;
	border:2px solid #00bff0;
	border-radius:3px;
	margin-left:800px;
	margin-top:240px;	
	padding:12px;	
	
}
.enBtn:hover{
	background:white;
	border-color:white;
	cursor:pointer;

}

.left{
	width:550px;
	height:800px;
	margin-top:30px;
}

.right{
	width: 550px;
    height: 900px;
    margin-top:30px;

}
.rowWrap{
	display: -webkit-box;
    width: 1100px;
}
.time>hr{
	margin-top:20px;
	margin-bottom:15px;
	border-top: 1px solid #eee;
}
#allReview{
    width: 500px;
    height: 50px;
    position: absolute;
    border: 1px solid #eee;
    margin-top: 20px;
    text-align: center;
    font-size:xx-large;
    box-shadow:3px 3px 3px 3px #999;
	

}
#allReview:hover{
	background:#ddd;
	cursor:pointer;
}

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
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<jsp:include page="companyLeft.jsp" />
	</div>
	
	<div class="bodyArea">
		
	<div class="rightContainer">
		<b id="a_index" class="current" style="font-size:30px; color:black; text-indent:30px;"><i class="fa fa-clone"></i>  내 정보 수정</b>
		<form class="memberForm" action="saveInfo.gs" enctype="multipart/form-data" method="post" name="modify_form" id="modify_form">

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
						 <div class="form-group">
                		  <label for="managerName" class="">담당자이름</label>
              			    <input type="text" class="form-control" id="managerName" value="${loginUser.managerName}" name="managerName" >
          			     </div>
          			     <div class="form-group">
                		  <label for="managerPhone" class="">담당자번호</label>
              			    <input type="text" class="form-control" id="managerPhone" value="${loginUser.managerPhone}" name="managerPhone" >
          			     </div>
          			     <div class="form-group">
                		  <label for="managerEmail" class="">담당자이메일</label>
              			    <input type="text" class="form-control" id="managerEmail" value="${loginUser.managerEmail}" name="managerEmail" >
          			     </div>
          			     <div class="form-group">
                		  <label for="copEmail" class="">세금계산서용 이메일</label>
              			    <input type="text" class="form-control" id="copEmail" value="${loginUser.copEmail}" name="copEmail" >
          			     </div>
					</div><!-- /.col -->
            </div><!-- /.row -->
			
          </form>
           <div class="form-group submitLine forMobileAppFloat" style="margin-left:50px;">
              <button id="saveBtn" class="btn btn-lg btn-primary btn_mobileAppFloat" style="background:#00bff0;" onclick="saveBtn()"><i class="fa fa-check"></i> 저장하기</button>
              <a href="javascript:history.go(-1)" class="btn btn-link"><i class="fa fa-close"></i> 취소</a>
              <span class="withdraw">
                <%-- <button type="button" class="btn btn-sm btn-link" id="deleteMember" onclick="deleteMember('${loginUser.userId}')">탈퇴</button> --%>
              </span>
            </div>
	</div>
	</div>
	<br><br><br><br><br><br>
	<script>
	function saveBtn(){
		$("#modify_form").submit();
	}
	
	//회원탈퇴 스트립트
		function deleteMember(userId){
			var userId = userId;
			var password = String(prompt('비밀번호를 입력해주세요')); 
			
			$.ajax({
				url:"deleteMember.gs",
				type:"post",
				data:{password:password},
				success:function(data){
					
				} 				
			})
			
		}
	</script>
	
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>