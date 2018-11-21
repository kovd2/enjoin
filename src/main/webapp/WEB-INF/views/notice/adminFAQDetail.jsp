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
    display: grid;
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
}
.content{
	height:300px;
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
.textarea::placeholder{
	font-size:18px;
	font-family: 'Poor Story', cursive;
}
.textArea2::placeholder{
	font-size:18px !important;
	font-family: 'Poor Story', cursive;
}


</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="formArea">
	<h2 class="titleName" align="center">
			<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
			FAQ 상세보기
		</h2>
		<p class="sideTitle" align="center" style="color:gray; font-size:15px;">관리자 FAQ 페이지</p>
   <form id="updateFAQForm" action="adminFAQUpdate.hh" method="post" encType="multipart/form-data" style="display: grid;
    height: 525px;">
    <input type="hidden" value="${faqDetail.boardNo }" id="boardNo" name="boardNo">
    <label for="country" class="category">카테고리</label>
    <select name="category" id="category" style="margin-top:-40px; height: 30px;">
	     <option value="센터이용/오류"  class="num1">센터이용/오류</option>
		 <option value="결제/환불">결제/환불</option>
		 <option value="패스">패스</option>
		 <option value="회원정보">회원정보</option>
		 <option value="기타">기타</option>
    </select>
    
    <label for="fname" class="title" style="margin-top:-50px">제목</label>
    <input type="text" id="fname" name="boardTitle" class="titleInput" placeholder="제목을 입력해주세요!" style="margin-top: -72px;" value="${faqDetail.boardTitle }">

    <label for="lname" class="contnetTitle" style="margin-top:-72px">내용</label>
	<textarea class="textArea2" id="boardContent" name="boardContent" rows="13" cols="80" placeholder="내용을 입력해주세요!" style="margin-top: -80px; font-size:13px !important;">${faqDetail.boardContent }</textarea>
  
   </form>
   <form  class="anum" action="adminFAQDelete.hh" method="post" style="display: inline;">
    <input type="button" class="btn btn-primary" value="수정" onclick="adminFAQUpdate()" style="width:450px; margin-left: 10px; margin-top:20px;">
    <input type="hidden" value="${faqDetail.boardNo }" id="boardNo" name="boardNo">
    <input type="submit" class="btn btn-danger" value="삭제" style="width:450px; margin-left: 30px; margin-top:20px;">
   </form> 
</div>
	
	<script>
		function adminFAQUpdate(){
			$("#updateFAQForm").submit();
		
		}

		
	</script>
</body>
</html>