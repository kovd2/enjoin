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
div#wrapper {
    height: 930px !important;
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
				1:1 문의 답변
			</h2>
			<p class="sideTitle" style="color:gray; font-size:15px;" align="center">관리자 1:1 문의 답변</p>
	   <form id="insertBoardForm" action="adminNoticeInsertBtn.hh" method="post" encType="multipart/form-data">
	   	 
	    <label for="fname" class="title">제목</label>
	    <input type="text" id="fname" name="boardTitle" class="titleInput" style="background:white;" placeholder="제목을 입력해주세요!" value="${detail.boardTitle}" disabled>
	    <table>
	   		<tr>
	   			<div class="Area6" style="display:-webkit-inline-box; margin-left: -20px;">
					<p class="contentNum" style=" margin-right: 20px; font-size: 16px; font-family:'Poor Story', cursive !important; font-weight:bold;">내용</p>
					<p class="photo" style="margin-left: 323px;
	    			font-size: 16px; font-family:'Poor Story', cursive !important; font-weight:bold;">사진</p>	
				</div>		
				<td class="area4" style="display:-webkit-inline-box; margin-top: -30px;">
			    <textarea rows="16" cols="60" id="boardContent" name="boardContent"  placeholder="내용을 작성해 주세요" style="margin-top: 21px; background:white;" disabled>${detail.boardContent }</textarea>
				<div id="contentImgArea1" style="width:300px; height:290px; margin-left: 30px;">
				<c:if test="${ empty detail.upload_name }">
					<p >등록된 이미지가 없습니다.</p>
				</c:if>
				<c:if test="${ !empty detail.upload_name }">
					<img id="contentImg1" width="100%" height="100%" src="resources/uploadFiles/contact/${ detail.upload_name }">
				</c:if>	
				</div></td>
			</tr>
		
	    </table>
	   </form>
	   	  <c:if test="${ detail.contactStatus == 0 }">
	    	<form class="anum" action="contactComent.hh" id="contactReplyForm" style="display: inline;     position: relative;
    		top: -210px;">
	    	<textarea rows="7" cols="100"  placeholder="답변을 입력해 주세요!" name="comentContent" id="comentContent"></textarea>
				<input type="hidden" name="boardNo" id="boardNo" value="${ detail.boardNo }">
			<input type="submit" class="btn btn-primary" value="작성" onclick="adminNoticeInsertBtn()" style="width: 110px;height: 112px;position: relative;top: -54px;">
			</form>
		 </c:if>
		 <c:if test="${ detail.contactStatus == 1 }">	
		 	<form class="anum" action="contactComent.hh" id="contactReplyForm" style="display: inline;     position: relative;
    		top: -210px;">
    			<input type="hidden" name="boardNo" id="boardNo" value="${ detail.boardNo }">
		 		<textarea rows="13" cols="122"  name="comentContent" id="comentContent">${ detail2.comentContent }</textarea>
			</form>
		 </c:if>

	</div>
</body>
</html>