<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>
<style>
.body{
	width:100%;
	margin-top: 40px;		
}
.header{
	width: 1000px;
    height: 400px;
    margin: 0 auto;
    background: black;
}
.crewImgArea{
	position: static;
    background: none;
}
.crewImgBox{
 	opacity: 0.3;
	position: absolute;
    width: 1000px;
    height: 400px;
    text-align: center;
}
.info{
	position: relative;
    left: 0;
    top: 0;
    padding-top: 50px;
    height: 100%;
    padding-left: 50px;
}
.crewNameLabel{
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
.crewTitle{
	display: block;
    color: white;
    margin-top: 10px;
    font-size: 30px;
}
.crewCatagory{
	color: #fff;
    font-size: 14px;
    margin-top: 12px;
    margin-left: 5px;
}
.address{
	color: #fff;
    font-size: 14px;
    margin-top: 12px;
    margin-left: 5px;
}
.crewDate{
	color:#fff;
	font-size: 20px;
}
.crewMember{
	color: #00cbff;
    margin-top: 10px;
}
.middleArea{
	width:100%;
	
}
.middle{
	width: 1000px;
    height: 1226px;
    position: relative;
    top: 40px;
    margin: 0 auto;
    display: -webkit-box;
}
.crewContentBox{
	width:500px;
	border:1px solid #d0cfcf;
}
.crewImgBox2{
	width:500px;
	border:1px solid #d0cfcf; 
}
.crewImg1{
	width: 99%;
    height: 380px;
    margin-top: 27px;
    margin-left: 3px;
    border: 1px solid gray;
}
.crewAtt{
	color:#1f1f1f;
	font-size: 20px;
}
.crewContent{
	color:#1f1f1f;
	font-size: 20px;
}
.Content{
	line-height: 55px;
    font-size: 13px;
    font-weight: bold;
    color: #7b7b7b;
    margin-left: 51px;
    
}
.crews {
   	width: 480px;
    height: 380px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
    overflow-y: scroll;
}
.crews::-webkit-scrollbar {display:none;}
.hr1{
	color:#737373;
}
i.fa.fa-twitch{
	margin-top: 3px;
    position: relative;
    top: 20px;
    left: 30px;
    display: -webkit-box;
}
.writerImg{
	width: 70px;
    height: 70px;
    border-radius: 35px;
    margin-left: 10px;
    margin-top: 10px;
}
.crewBoss{
    display: -webkit-inline-box;
    font-size: 18px;
    font-weight: bold;
    position: relative;
    top: 20px;
    left: 4px;
    color: #1159b5;
}
.AttWriter1{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-left: 10px;
}
.AttWriter2{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-left: 10px;
    color:#f98e2c;
}
.crewWiter{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-left: 10px;
}
.crewWiter1{
	margin: 0;
    font-size: 13px;
    color:#0084c2;
    font-weight: bold;
    margin-left: 10px;
}
.crewCommentBox{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-top: 40px;
    color: #0084c2;
    margin-left: 10px;
}
p.crewComentBox1{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
p.crewComentBox2{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
.commentBox{
	width: 480px;
    height: 530px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
    overflow-y: scroll;
}
.commentBox::-webkit-scrollbar {display:none;}
.UserImg{
	width: 70px;
    height: 70px;
    border-radius: 35px;
    margin-left: 10px;
    margin-top: 10px;
}
.MemberCommont{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
}
.userId{
	position: relative;
    top: 9px;
    color: #12181f;
    font-weight: bold;
    display: -webkit-inline-box;
}
.Comment1{
	height: 110px;
    margin-left: 15px;
}
.Comment::-webkit-scrollbar {display:none;}
.area1{
	width: 360px;
    height: 50px;
    border: 1px solid gray;
    background: white;
    border-radius: 10px;
    overflow: scroll;
}
.area1::-webkit-scrollbar {display:none;}
.crewOk {
	color: gray;
    font-weight: bold;
}
.editBtn{
    margin-left: 5px;
    font-weight: bold;
}
.deleteBtn{
	margin-left:5px;
	font-weight: bold;
}
.commentWriter {
    margin-left: 10px;
    width: 407px;
}
.Comment{
    font-size: 12px;
    color: #525354;
    font-weight: bold;
}
.spansBtn{
	display: inline-block;
    float: right;
    margin-right: 10px;
    margin-top: 9px;
}
.commentWriterBtn{
	color: white;
    background: #0084c2;
    border-radius: 8px;
    border: 1px solid gray;
    margin-left: -1px;
}
.crewPickMember{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    margin-top: 59px;
    color: #0084c2;
    margin-left: 10px;
}
.crewPickMember1{
	margin: 0;
    font-size: 13px;
    font-weight: bold;
    color: #f98e2c;
    margin-left: 10px;
}
.crewPickBox1{
	width: 480px;
    height: 560px;
    background: #f5f4f4;
    margin-left: 10px;
    margin-top: 27px;
    border: 1px solid gainsboro;
    overflow-y: scroll;
}
.crewPickBox1::-webkit-scrollbar {display:none;}
.crewPickBox2{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
}
.crewMemberTitle{
	position: relative;
    top: 9px;
    color: #f98e2c;
    font-weight: bold;
    display: -webkit-inline-box;
    margin-left: 15px;
}
.crewPickArea{
	width: 400px;
}
.crewPick{
	font-size: 25px;
    margin-top: 2px;
    margin-left: 14px;
    font-weight: bold;
    color: #1159b5;
}
.logo{
	width: 66px;
    margin-left: 197px;
    margin-top: 10px;
}
.footerAlt .logoLine {
    border-bottom: 1px solid #eee;
    padding-bottom: 10px;
    padding-top: 10px;
    left: -200px;
}
.crewJoin{
	font-size: 16px;
    line-height: 19px;
    height: 33px;
    vertical-align: middle;
    color: #ffffff;
    letter-spacing: 0;
    margin: 0 0 5px;
    display: inline-block;
    padding: 0 5px;
    border: 1px solid #d1d8da;
    border-radius: 5px;
    background: #00cbff;
    margin-top: 30px;
    width: 120px;
}
input.check1 {
    position: relative;
    top: 2px;
    left: 3px;
}
/* 대댓글 css  */
.MemberCommont1{
	display: inline-flex;
    width: 480px;
    height: 88px;
    border-bottom: 1px solid #d8d2d2;
    background: #efecec;
}
.UserImg1{
	width: 60px;
    height: 60px;
    border-radius: 30px;
    margin-top: 22px;
    position: relative;
    left: -22px;
}
i.fa.fa-tag {
    color: #443d39;
    margin-top: 6px;
    position: relative;
    left: 5px;
}
i.fa.fa-level-down {
	font-size: 20px;
    position: relative;
    left: 16px;
}
i.fa.fa-comments{
	color: #7faeea;
    margin-top: 6px;
    position: relative;
    left: 4px;
    top: 9px;
}
.userId1{
	position: relative;
    top: 9px;
    color: #12181f;
    font-weight: bold;
    display: -webkit-inline-box;
}
.ComentP{
	font-size: 2px;
    position: relative;
    top: 0px;
    left: -1px;
    font-weight: bold;
    color: #4e4d4d;
}
.Comment2{
	height: 110px;
    margin-left: -8px;
}

</style>
</head>
<script>
	function goInCrew(userNo){
		
		
			
	}
	  /*   function goCrewComent(){
		$.ajax({
			url  : "crewComent.shw2",
			type : "post",
			data : $("#coment3").serialize(),
			success:function(data){
				console.log(data);
			},
			
		});
		
		return false;
	}    */
</script>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	<c:forEach var="i" items="${list}" varStatus="status">
	<c:set var="user" value="${userPhoto}"/>

	<div class="body">
		<div class="header">
			<div class="crewImgArea">
			<c:forEach var="i1" items="${list1}" varStatus="status1">
				<c:if test="${status1.index eq 0}">
				<%-- <img class="crewImgBox" src="${ contextPath }/resources/images/crew/shutterstock_269242565.jpg"> --%>
				<img class="crewImgBox" src="${ contextPath }/resources/uploadFiles/crew/crewRecruitment/${i1.upload_Name}">
				</c:if>
				</c:forEach>
				<div class="info">
					<h3>
					<smail class="crewNameLabel">ENJOIN크루모집</smail>
					<span class="crewTitle">${i.board_Title}</span>
					<p class="crewCatagory">${i.category_Name }</p>
					<p class="address">${i.crew_Area}</p>
					<span class="crewDate">모집날짜 ${i.recruit_Start } ~ ${i.recruit_Start }</span>
					<p class="crewMember">현재 인원 0명  총 인원 ${i.recruit_Max}명</p>
					<button class="crewJoin"><a href="crewInCrew.shw2?user_No=${loginUser.userNo}&crew_No=${i.crew_No}&board_No=${i.board_No}">크루신청</a></button>
					</h3>
				</div>
			</div>
		

		</c:forEach>	
		</div>
			<div class="middleArea">
				<div class="middle">
					<div class="crewContentBox">
						<h2 class="crewContent">크루 모집 내용</h2>
						<hr class="hr1">
						<p class="crewWiter">- 크루에 대한 설명글 입니다.</p>
						<p class="crewWiter1">- 크루에 참여해보세요!</p>
						<div class="crews">
						<img class="writerImg" src="${ contextPath }/resources/uploadFiles/myPage/profil/${user.upload_Name}">
						<c:forEach var="i" items="${list}" varStatus="status">
						<p class="crewBoss">
						${i.user_Name}님</p>
						<hr>
						<i class="fa fa-twitch" style="font-size:36px" class="btn1"></i>
						<div class="crews2">
						<p class="Content">안녕하세요 ${i.user_Name }입니다.<br>
						${i.board_Content} 
						</p>
						 </c:forEach>
						 </div>
						 </div>
						 <div class="crewcomment">
						 	<p class="crewCommentBox">-회원님들의 댓글을 작성할수 있는곳입니다.</p>
						 	<p class="crewComentBox1">-회원님이 댓글을 작성하면 크루신청이 이루어지며</p>
						 	<p class="crewComentBox2">-크루장님이 확인후 크루에 들어갈수 있습니다!</p>
						 	
						 	<div class="commentBox">
								<!-- 여기부터 반복문  -->
								<c:forEach var="c" items="${list3}" varStatus="status">
								<c:choose>
									<c:when test="${c.parent_Coment_No == 0 }">			
						 		<div class="MemberCommont" id="MemberCommont">
						 			<img class="UserImg" src="${ contextPath }/resources/uploadFiles/myPage/profil/${c.upload_Name}">
						 			<div class="Comment1">
						 			<p class="userId">${ c.user_Name }</p>
						 				<div class="spansBtn">
						 				
						 				<span  class="crewOk">
						 					<i class="fa fa-user-circle">
						 					</i>
						 					답글<input class="check1" type="checkbox" name="check" value="check" onclick="check(${c.coment_No})">
						 				</span>
						 		
						 				<span style="color:gray" class="deleteBtn">
						 					<i class="fa fa-trash">
						 					</i>
						 					삭제
						 				</span>
						 				</div>
									<div class="area1">					 			
						 			<p class="Comment">${c.coment_Content }
						 			</p>
						 			</div>
						 			</div>
						 		</div>
						 		<!-- 여기까지  -->
						 		</c:when>
						 		<c:when test="${c.parent_Coment_No != 0 }">
						 		<div class="MemberCommont1">
						 			<i class="fa fa-comments" style="font-size:22px"></i>
						 			<span class="ComentP">답글</span>
						 			<img class="UserImg1" src="${ contextPath }/resources/uploadFiles/myPage/profil/${c.upload_Name}">
						 			<div class="Comment2">
						 			<p class="userId1">${ c.user_Name }</p>
						 				<div class="spansBtn">
						 			
						 				
						 				<span style="color:gray" class="deleteBtn">
						 					<i class="fa fa-trash">
						 					</i>
						 					삭제
						 				</span>
						 				</div>
									<div class="area1">					 			
						 			<p class="Comment">${c.coment_Content }
						 			</p>
						 			</div>
						 			</div>
						 		</div>
						 		
						 		
						 	
						 		</c:when>
						 		</c:choose>
						 		
						 		</c:forEach>
						 		
						 		
						 	</div>
						 	<div class="commentWriterBox">
						 		<form class="comment" id="coment3" action="crewComent.shw2#MemberCommont" method="post">
						 			<table>
						 				<tr>
						 					<td colspan="2">
						 						<script>
						 						 function check(coment_No){
						 							var check = $("input:checkbox[class=check1]:checked").val();
						 							$inputHidden = $('<input type="hidden" name="checked11">').attr('value',check);
						 							$('.comment').append($inputHidden);
						 							
						 							
						 							$inputHidden1 = $('<input type="hidden" name="coment_No">').attr('value',coment_No);
						 							$('.comment').append($inputHidden1);
						 							
						 							
						 							
						 						 }
						 						</script>
						 						<c:forEach var="i" items="${list}" varStatus="status">
						 						<input type="hidden" value="${i.board_No}" name="board_No">
						 						<input type="hidden" value="abc" name="capy">
						 						<input type="hidden" value="${i.crew_No }" name="crew_Id">
						 						<input type="text" class="commentWriter" name="coment_Content" placeholder="크루신청 댓글을 작성해주세요!" ">
						 						<button type="submit" class="commentWriterBtn">작성하기</button>
						 						</c:forEach>
						 					</td>
						 				</tr>
						 			</table>
						 		</form>	
						 	</div>
						 </div>
					</div>
					<div class="crewImgBox2">
						<h2 class="crewAtt">크루활동장소</h2>
						<hr>
						<p class="AttWriter1">-  같이 운동할려고 계획하는 곳에대해서 올려주세요!</p>
						<p class="AttWriter2">-  상황에따라서 변경될수 있습니다.</p>
					<c:forEach var="i1" items="${list1}" varStatus="status1">
					<c:if test="${status1.index eq 1}">
						<img class="crewImg1" src="${ contextPath }/resources/uploadFiles/crew/crewRecruitment/${i1.upload_Name}">
					</c:if>
					</c:forEach>	
						<div class="CrewPicksBox">
							<p class="crewPickMember">-김창희의 런닝크루 크루원</p>
							<p class="crewPickMember1">-김창희의 런닝크루 크루에 선정된 회원님을 확인할수있습니다.</p>
							<div class="crewPickBox1">
								<c:forEach var="i" items="${list4}" varStatus="status">							
								<div class="crewPickBox2">
								<img class="UserImg" src="${ contextPath }/resources/uploadFiles/myPage/profil/${i.upload_Name}">
								<div class="crewPickArea">
								<p class="crewMemberTitle"><i class="fa fa-user-circle" style="font-size:24px"></i>선정된 크루원</p>
									<p class="crewPick"><i class="fa fa-child" style="font-size:36px"></i>${i.user_Name}</p>
								</div>
								</div>
								
								</c:forEach>
								
								
							</div>
						</div>
					</div>
					
				</div>
			
			<div class="footer1">
				<jsp:include page="../common/footer.jsp"/>
			</div>
	
	
</body>
</html>