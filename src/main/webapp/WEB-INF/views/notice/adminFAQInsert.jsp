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

</style>
<body>
	<jsp:include page="../common/admin/adminSideBar.jsp" />
	<div class="formArea">
	<h2 class="titleName" align="center">
			<!-- <i class="fa fa-window-maximize" style="font-size:30px;"></i> -->
			FAQ 작성
		</h2>
		<p class="sideTitle" align="center" style="color:gray; font-size:15px;">FAQ를 작성해 주세요</p>
   <form id="insertFAQForm" action="adminFAQInsertBtn.hh" method="post" encType="multipart/form-data">
    <label for="country" class="category">카테고리</label>
    <select name="category" id="category">
	     <option value="센터이용/오류"  class="num1">센터이용/오류</option>
		 <option value="결제/환불">결제/환불</option>
		 <option value="패스">패스</option>
		 <option value="회원정보">회원정보</option>
		 <option value="기타">기타</option>
    </select>
    
    <label for="fname" class="title">제목</label>
    <input type="text" id="fname" name="boardTitle" class="titleInput" placeholder="제목을 입력해주세요!">

    <label for="lname" class="contnetTitle">내용</label>
    <input type="text" id="lname" name="boardContent" class="content"  placeholder="내용을 작성해 주세요">

  
    <input type="button" class="btn btn-primary" value="작성" onclick="adminFAQInsertBtn()">
   </form>
</div>
	
<script>
		function adminFAQInsertBtn(){
			$("#insertFAQForm").submit();
		
		}
	
</script>
</body>
</html>