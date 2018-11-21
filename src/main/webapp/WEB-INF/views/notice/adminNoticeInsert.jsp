<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/style/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poor+Story" rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
ul.sidebar.navbar-nav{
	position: relative;
    top: -20px;
    right: 20px;
}
form {
    display: table-caption;
    height: 605px;
}
.formArea{
	width:1000px;
}
#country{
	font-size:15px;
}
.category{
	font-size:16px;
	font-weight:bold;
	font-family: 'Poor Story', cursive;
	font-weight:bold;
	color:#484747;
}
.title {
    font-size: 16px;
    font-weight: bold;
    font-family: 'Poor Story', cursive;
    font-weight: bold;
    color:#484747;
}
#fname{
	height: 35px;
    width: 630px;
}
.content{
    height: 250px;
    width: 350px;
    margin-top: 20px;
}
select#country {
    height: 36px;
	font-family: 'Poor Story', cursive;
}
.contnetTitle{
	font-size:16px;
	font-weight:bold;
	font-family: 'Poor Story', cursive;
	font-weight:bold;
	color:#484747;
}
div#wrapper{
	height: 645px;
}
.titleInput::placeholder{
	font-size:15px;
	font-family: 'Poor Story', cursive;
}
.content::placeholder{
	font-size:15px;
	font-family: 'Poor Story', cursive;
}
div#wrapper {
    height: 735px;
}
#country option{
	font-family: 'Poor Story', cursive;
}
#country option::placeholder{{
	font-family: 'Poor Story', cursive;
}
.btn.btn-primary {
    height: 35px;
    margin-top: 14px;
    border-radius: 5px;
}
.sideTitle {
    font-size: 13px !important;
    font-family: 'Poor Story', cursive !important;;
}
p.sideTitle {
    height: 30px;
    font-size: 13px !important;
    color: gray;
}
.area4 {
    display: -webkit-inline-box !important;
}
input.btn.btn-primary{
	width: 640px;
    height: 33px;
}
.Area6{
	display: -webkit-inline-box;
}
p.photo {
    margin-left: 335px;
    font-size: 17px;
    font-family: 'Poor Story', cursive !important;
}
p.contentNum {
    margin: 0;
    font-size: 17px;
    font-family: 'Poor Story', cursive !important;
}
textarea {
    overflow: auto;
    resize: vertical;
    margin-top: 21px;
}
div#contentImgArea1 {
    margin-left: 30px;
}


</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="formBody" style="margin:0 auto!important;">
		<h2 class="titleName" align="center">
				<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
				공지사항
			</h2>
			<p class="sideTitle" style="color:gray; font-size:15px;" align="center">공지사항을 작성해 주세요</p>
	   <form id="insertBoardForm" action="adminNoticeInsertBtn.hh" method="post" encType="multipart/form-data">
	   
	    <label for="fname" class="title">제목</label>
	    <input type="text" id="fname" name="boardTitle" class="titleInput" placeholder="제목을 입력해주세요!">
	    <table>
	   		<tr>
	   			<div class="Area6" style="display:-webkit-inline-box; margin-left: -20px;">
					<p class="contentNum" style=" margin-right: 20px; font-size: 16px; font-family:'Poor Story', cursive !important; font-weight:bold;">내용</p>
					<p class="photo" style="margin-left: 323px;
	    			font-size: 16px; font-family:'Poor Story', cursive !important; font-weight:bold;">사진</p>	
				</div>		
				<td class="area4" style="display:-webkit-inline-box; margin-top: -30px;">
			    <textarea rows="16" cols="60" id="boardContent" name="boardContent"  placeholder="내용을 작성해 주세요" style="margin-top: 21px;"></textarea>
				<div id="contentImgArea1" style="width:300px; height:290px; margin-left: 30px;">
				<img id="contentImg1" width="100%" height="100%" src="${ contextPath }/resources/images/crew/thumbnail2.png">
				</div></td>
			</tr>
		
	    </table>
		    <div id="fileArea">
				<input type="file" id="photo" name="photo" value="파일선택" onchange="loadImg(this,1)">
			</div>
			<input type="button" class="btn btn-primary" value="작성" onclick="adminNoticeInsertBtn()" style="width:640px;height:33px;">
	   </form>
	</div>
	<script>
		function adminNoticeInsertBtn(){
			$("#insertBoardForm").submit();
		
		}
		
		$(function(){
			$("#fileArea").hide();
				$("#contentImgArea1").click(function(){
					$("#photo").click();
				})

			});
		
			function loadImg(value, num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
						switch(num){
							case 1 : $("#contentImg1").attr("src", e.target.result); break;

						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			};	
	
	</script>
</body>
</html>