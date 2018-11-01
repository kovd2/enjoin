<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.rightContainer {
	width: 800px;
	height: auto;
	margin-top: 100px;
	display: inline-block;
	border-left: solid 0.5px lightgray;
}
.crewManangerWrap{
	width:800px;
	margin-top:50px;
	text-indent:30px;
}
.crewList{
	width:200px;
	height:200px;
	margin-left:30px;
	display:inline-block;
	border:1px solid #ddd;
	border-radius: 5%;
}
.crewList ul{
	height:auto;
	list-style:none;
	margin:0px; 
	padding:0px;
}
.crewList:hover{
	cursor:pointer;
}
.joinCrewList{
	width:200px;
	height:200px;
	margin-left:30px;
	display:inline-block;
	border:1px solid #ddd;
	border-radius: 5%;
}
.joinCrewList ul{
	height:auto;
	list-style:none;
	margin:0px; 
	padding:0px;
}
.joinCrewList:hover{
	cursor:pointer;
}
.crewName{
	margin-top:15px;
	font-size:20px;
	text-align:center;
}
.bodyArea{
	margin:auto;
	width:1100px;
	height:auto;
}
.joinCrew{
	width:800px;
	margin-top:50px;
	text-indent:30px;
}
.modal-left{
	float:left;
}
.modal-right{
	width:320px;
    height:auto;
    display:inline-block;
    float:left;
    text-align:center;
    margin-left:35px;
}
.modal-right .title{
	background:#f5f5f5;
	cursor:pointer;
}
.title{
	border-top:solid 1px black;
	border-bottom:solid 1px black;
}
.titleArea{
	background:#f5f5f5;
}
.acceptList tr{
	border-bottom:solid 1px black;
}
.acceptList td {
	text-align:center;
}
.acceptMemberArea{
	width:800px;
	margin-top:50px;
	text-indent:30px;
}
.crewLogo{
	width:150px;
	height:150px;
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
		<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp" />
		<input type="hidden" value="a_invite" id="ckPage">
	<div class="rightContainer">
		<b id="a_index" class="current" style="font-size: 30px; color: black; text-indent: 30px;"><i class="fa fa-child"></i> 크루관리</b>
		<br>
		<div class="acceptMemberArea">
			<h3>가입 승인</h3>
				<div class="acceptList">					
					<table style="width: 800px; border-top:solid 1px black;">
						<tr class="titleArea">
							<td style="width:350px;">회원아이디</td>
							<td style="width:350px;">구분</td>
						</tr>
						<%for(int i = 0; i < 3; i++){ %>
						<tr>
							<td>userId</td>
							<td><button>승인</button></td>
						</tr>
						<%} %>
					</table>
				</div>
		</div>
		<hr>
		<div class="crewManangerWrap">
			<h3>생성된 크루</h3>
			<!-- 크루 리스트 반복-->
			<c:forEach var="c" items="${ crewList }">
			<div class="crewList" data-toggle="modal" data-target="#myModal">
				<img src="resources/images/myPage/image.png" class="crewLogo">
				<div class="crewName">${ c.crew_Name }</div><br>
			</div>
			</c:forEach>
		</div>
		<hr>
		<div class="joinCrew">
			<h3>가입한 크루</h3>
			<c:forEach var="ic" items="${ inCrewList }">
			<div class="joinCrewList" onclick="goCrewBoardList();">
				<div class="crewName">${ ic.crew_Name }</div><br>
				<ul>
					<li>크루원 닉네임</li>
					<li>크루원 닉네임</li>
					<li>크루원 닉네임</li>
				</ul>
			</div>
			</c:forEach>	
		</div>
	</div>
	

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin: 95px auto;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Crew Name</h4>
      </div>
      <div class="modal-body" style="height:350px;">
		<div class="modal-left">
			<div class="crewImg">
				<img src="" style="width:200px; height:200px;">
			</div>
		</div>
		<div class="modal-right">
			<table>
				<tr class="title">
					<td><input type="checkBox"></td>
					<td style="width:30px;">번호</td>
					<td style="width:100px;">크루원</td>
					<td></td>
					<td><input type="checkBox"></td>
					<td style="width:30px;">번호</td>
					<td style="width:100px;">크루원</td>
				</tr>
				
				<%for(int i = 0; i < 10; i++){ %>
				<tr>
					<td><input type="checkBox"></td>
					<td>1</td>
					<td>크루원ID</td>	
					<td></td>
					<td><input type="checkBox"></td>
					<td>1</td>
					<td>크루원ID</td>		
				</tr>
				<%} %>
			</table>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">나기기</button>
        <button type="button" class="btn btn-primary" style="background:#68A4C4;">추방</button>
      </div>
    </div>
  </div>
</div>
	
	
	</div>
	<br><br><br><br><br>

	<script>
		//	모달
		$('#myModal').click('shown.bs.modal', function() {
			$('#myInput').focus()
		});
		
		//크루게시판 이동
		function goCrewBoardList(){
			//크루 ID를 가지고 크루게시판으로 이동
			location.href="goCrewBoardList.ljs";
		}
	</script>
</body>
</html>
























