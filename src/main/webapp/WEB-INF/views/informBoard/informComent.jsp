<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.js"></script>]
<title>Insert title here</title>
<style>
.right {
	width: 550px;
	height: 800px;
}

.explanArea {
	width: 550px;
	height: 250px;
	font-size: 24px;
	margin-top: 30px;
	overflow:scroll;
	border-bottom:1px solid #eee;
}
.explanArea ::-webkit-scrollbar {display:none;}

.explan {
	font-size: 20px;
	margin-top: 20px;
	line-height: initial;

	
}

.miniDate {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.mDate {
	font-size: 20px;
	margin-top: 20px;
}

.miniDate {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.mDate {
	font-size: 20px;
	margin-top: 20px;
}

.mainContent {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 30px;
}

.mContent {
	font-size: 20px;
	margin-top: 20px;
}

.certiArea {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.certi {
	margin-top: 20px;
	font-size: 20px;
}

.diaryArea {
	width: 550px;
	height: 50px;
	font-size: 24px;
	margin-top: 20px;
}

.diary {
	font-size: 20px;
	margin-top: 20px;
}

.comentArea {
	width: 550px;
	height: 30px;
	font-size: 24px;
	display: -webkit-box;
}

.comentTop {
	margin-left: 20px;
	margin-top: 20px;
	display: -webkit-box;
}

.coWrap {
	 margin-left: 20px;
    margin-top: 35px;
    height: 600px;
    overflow-y: scroll;
}

.coImg {
	width: 60px;
	height: 60px;
}

.coImg>img {
	width: 60px;
	height: 60px;
	/*  object-fit: cover; */
	/* object-position: top; */
	border-radius: 50%;
}

.coName {
	width: 400px;
	height: 60px;
	border-bottom: 1px solid #eee;
	font-size: 20px;
	color: #ccc;
	font-weight: bold;
	padding: 20px;
	font-weight: bold;
}

.coCount {
	width: 100px;
	height: 60px;
	color: #333333;
	font-size: 20px;
	font-weight: bold;
}

#myco {
	width: 400px;
	height: 30px;
	color: #333333;
	font-size: 20px;
	font-weight: bold;
	border: 0px;
	autocomplete:false;
	
}

#en {
	display: none;
	width: 100px;
	height: 30px;
	background: #00bff0;
	border-radius: 3px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
	border: 1px solid #00bff0;
	margin-top: 20px;
	margin-left: 280px;
}

#en:hover {
	background: white;
}

.userInfo {
	width: 200px;
	height: 30px;
	display: -webkit-box;
	margin-left: 20px;
}

.userid {
	width: 100px;
	height: 30px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
	border-right: 1px solid #eee;
}

.userdate {
	width: 100px;
	height: 30px;
	text-align: center;
	font-weight: bold;
	text-size: 20px;
}

.imgList {
	width: 60px;
	height: 60px;
}

.list1 {
	margin-left: 20px;
	margin-top: 30px;
}

.imgList>img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
}

.userWrap {
	display: -webkit-box;
	/*  margin-left:30px; */
}

#comentContent {
	    font-size: 15px;
    font-weight: bold;
    text-align: center;
    margin-left: 60px;
    border-bottom: 1px solid #eee;
    margin-right: 50px;
    padding: 0px 20px 20px 20px;
}

</style>
</head>
<body>

	 <div class="right">
					
					<div class="coWrap">

						<div class="comentArea">
							<i class="fa fa-music" style="font-size: 24px">댓글</i>
						</div>
					
						<div class="comentTop">
							<div class="coImg">
							<c:choose>
							<c:when test="${list3.UPLOAD_NAME eq null || list3.UPLOAD_NAME ==''}">
							<img src="${contextPath}/resources/images/myPage/user.png">
							</c:when>
							<c:when test="${list3.UPLOAD_NAME ne null || list3.UPLOAD_NAME !=''}">
							 <img src="${contextPath}/resources/uploadFiles/myPage/profil/${list3.UPLOAD_NAME}"> 
							</c:when>
							 </c:choose>
							</div> 
							<div class="coName">
							<!-- form action="goComent.kch2" method="POST"  autocomplete="off"> --> 
								<input type="hidden"  value="${list.BOARD_NO}"id="boardNo" name="boardNo">
								<input type="hidden" value="${list3.USER_NO}"id="userNo" name="userNo">
								
								<input type="text" id="myco"  name="comentContent" 
									placeholder="공개적으로 댓글을 남길 아이디 ${list3.USER_ID}" onclick="goEn()">
								<button id="en"  onclick="enrollComent()">댓글</button>
							<!-- </form> --> 
							</div>

						</div>
						

						
						<div class="listcoTop">..

						
							<div class="list1">
								<div class="userWrap">
									<div class="imgList">
										<%-- <img src="${contextPath}/resources/images/myPage/user.png">  --%>
									</div>

									<div class="userInfo">
										<div class="userid"><!-- kch4361 --></div>
										<div class="userdate"><!-- 2018.10.21 --></div>
									</div>
								</div>
								<div id="comentContent"><!-- 댓글입니다 -->.</div>
							</div>
						
						</div>
					</div>

				</div> 
				
				<script>
		function goEn() {
			
			var con = document.getElementById('en');
			
			if(con.style.display=='block'){
				
				con.style.display='block';
			}else{
				con.style.display='none';
			}
			
		}
	</script>
	<script>
	
	function enrollComent(){
	
			var comentContent=$('#myco').val();
			var userNo=$('#userNo').val();
			var boardNo=$('#boardNo').val();
			console.log(comentContent);
			console.log(userNo);
			console.log(boardNo);
			$.ajax({
				
				url:"goComent.kch2",
				type:"POST",
				
				data:{					
					comentContent:comentContent,
					userNo:userNo,
					boardNo:boardNo
				},
				success:function(data){
					console.log(data);
					$(".list1").empty();
					for(var key in data){
						console.log(data[key]);
						console.log(data[key].COMENT_NO);
					$div0=$("<div class='listcoTop'>");
					$div1=$("<div class='list1'>");
					$div2=$("<div class='userWrap'>");
					$div3=$("<div class='imgList'>")
					$div3.append("<img src=${contextPath}/resources/uploadFiles/myPage/profil/"+data[key].UPLOAD_NAME+">"); 
					/* $('.list1').append($('.userWrap')); */
					/* $('.imgList').append("<img src="${contextPath}"/resources/uploadFiles/myPage/profil/"data[key].UPLOAD_NAME">"); */ 
					/* $('.list1').append($('.imgList')) */
					$div4=$("<div class='userInfo'>");
					$div5=$("<div class='userid'>"); 
					/* $('.userInfo').append(data[key].USER_ID).append($('.userid')) */
					$div5.append(data[key].USER_ID); 
					$div4.append($div5); 
					$div6=$("<div class='userdate'>"); 
					/* $('.userdate').append(data[key].COMENT_DATE); */
					$div4.append(moment( data[key].COMENT_DATE ).format("YYYY.MM") + '등록' );
					$div4.append($div6); 
					/* $('.comentContent').append(data[key].COMENT_CONTENT); */
					 $div7=$("<div id='comentContent'>"); 
					 $div7.append(data[key].COMENT_CONTENT); 
					 $div2.append($div3);
					 $div2.append($div4);
					 
					 $div1.append($div7); 
					 $div1.append($div2);
					
					/* $('.userWrap').append($('.userdate')); */
					/* $('.list1').append($('.comentContent')); */
					$('.listcoTop').append($div1); 
					
					}
				},error:function(){
					
					console.log("에러닷!!");
				}
				
			});
	}
	
	</script>
	<script>
		$(function(){
			var boardNo = ${list.BOARD_NO};
			console.log("boardNo : " + boardNo);
			checkComentCount(boardNo);
			
			function checkComentCount(){
				$.ajax({
					url:"checkComentCount.kch2",
					type:"get",
					data:{
						boardNo:boardNo
					},
					success:function(data){
						console.log(data);
						if(data > 0){
							$div1 = $("<div class='coCount'>");
							$div1.append(data + "개");
							
							$('.comentArea').append($div1);
						}else{
							$div1 = $("<div class='coCount'>");
							$div1.append(data + "개");
							
							$('.comentArea').append($div1);
						}
					},
					error:function(){
						console.log("에러");
					}
				});
			}
		});
	</script>
</body>
</html>