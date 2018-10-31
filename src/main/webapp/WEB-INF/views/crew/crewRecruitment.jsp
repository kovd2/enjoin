<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Architects+Daughter" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body{
	background: black url(resources/images/member/insertBackground2.jpg) no-repeat center center fixed;
    background-size: cover;
}
.modal {
	text-align: center; /*모달 중앙유지  */
}

@media screen and (min-width: 768px) { /* 모달 설정  */
	.container {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-body { /* 모달 본체  */
	padding: 15px;
    width: 700px !important;
    margin: 0 auto;
    background: #f9f9f9;
    box-shadow: 10px 10px rgba(230,230,230,0.8);	
}

.container { /* 사이즈  */
	display: flex;
	width: 1000px;
	margin: 0 auto;
}

.mainWriter { /*  메인 fontSize 설정  */
	color: black;
	width: 600PX;
}

.catagoryBox { /* 카테고리 박스  */
	width: 300px;
	height: 32px;
	margin-top: 25px;
	margin-right: 70px;
}

.crewNum {
	width: 300px;
	height: 28px;
}

.crewContent {
	border: 0 none;
	border-bottom: 1px solid #8c9092;
	border-radius: 0;
	background: none;
	font-size: 15px;
	font-weight: 400;
	height: 45px;
	padding: 0;
	-webkit-appearance: none;
	width: 306px;
	margin-top: 40px;
}

.startDate {
	width: 300px;
	height: 28px;
	margin-right: 70px;
	margin-top: 40px;
}

.endDate {
	width: 300px;
	height: 28px;
}

.startDate1 {
	position: relative;
	top: 40px;
	color: #03a9f4;
}

.startDate2 {
	margin: 0 auto;
	margin-left: 305px;
	position: relative;
	top: 40px;
	color: #03a9f4;
}

.box1 {
	margin-top: 10px;
}

.crewAdd {
	border: 0 none;
	border-bottom: 1px solid #8c9092;
	border-radius: 0;
	background: none;
	font-size: 15px;
	font-weight: 400;
	height: 45px;
	padding: 0;
	-webkit-appearance: none;
	width: 306px;
	margin-top: 40px;
}

.crewAdd::placeholder {
	color: #03a9f4;
}

.crewContent::placeholder {
	color: #03a9f4;
}
.boardTitle::placeholder{
	color:#03a9f4;
}
.boardTitle:focus{
	border-bottom:1px solid #03a9f4;
	box-shadow:3px 3px 3px 3px #999;
}
.boardTitle:hover{
	border-bottom:1px solid #03a9f4;
}



.crewWriter1 {
	margin: 0;
    margin-top: 40px;
    color: #0f98d6;
    font-weight: bold;
	/* font-family: 'Do Hyeon', sans-serif; */
}

.crewRecBtn {
	width: 330px;
	height: 35px;
	margin-top: 10px;
	border-radius: 6px;
	background: #03A9F4;
	color: white;
	margin-right: 23px;
}

.backBtn {
	width: 330px;
	height: 35px;
	border-radius: 6px;
	background: gray;
	color: white;
}
.imgArea1{
	width: 710px;
    display: -webkit-inline-box;
}
#contentImg2{
    margin-left: 150px;
}
input#File1 {
	position: relative;
	left: 200px;
	visibility: hidden;
}

input#File {
	position: relative;
	left: 100px;
	visibility: hidden;
}	
p.mainImgP {
    margin-left: 364px;
}
td#writer {
    display: -webkit-box;
}
.thumbnailImg {
    color: #2e393e;
    font-weight: bolder;
    position: absolute;
    margin-left: 132px;
    opacity: 0.9;
    font-family: 'Architects Daughter', cursive;
}
p.mainImgP {
    color: #2e393e;
    font-weight: bold;
    position: absolute;
    margin-left: 278px;
    opacity: 0.9;
    font-family: 'Architects Daughter', cursive;

}
div#contentImgArea1 {
    position: static;
}
#contentImg2{
	margin-left: 150px;
    position: static;
}
div#contentImgArea1:hover{
	cursor: pointer;
}
.crewImgs2{
	float: right;
    margin-right: 38px;
    font-size: 17px;
    font-family: 'Do Hyeon', sans-serif;
    font-weight: bold;
    color: #097db1;
}
.crewImgs1{
	font-size: 17px;
    font-family: 'Do Hyeon', sans-serif;
    font-weight: bold;
    color: #097db1;
}
.boardTitle{
	border: 0 none;
    border-bottom: 1px solid #8c9092;
    border-radius: 0;
    background: none;
    font-size: 15px;
    font-weight: 400;
    height: 45px;
    padding: 0;
    -webkit-appearance: none;
    width: 306px;
    margin-top: 40px;
}
/* 인풋박스 눌렀을떄 변화  */

.crewContent:focus{

	border:1px solid #03a9f4;
	box-shadow:3px 3px 3px 3px #999;
}
.crewAdd:focus{
	border:1px solid #03a9f4;
	box-shadow:3px 3px 3px 3px #999;
}
.crewArea:focus{
	border:1px solid #03a9f4;
	box-shadow:3px 3px 3px 3px #999;
}
#contentImg1:hover{
	box-shadow:3px 3px 3px 3px #999;
}
#contentImg2:hover{
	box-shadow:3px 3px 3px 3px #999;
}
.crewContent:hover{
	border-bottom: 1px solid #03a9f4;
}
.crewAdd:hover{
	border-bottom: 1px solid #03a9f4;
}

</style>
</head>
<script>
$(function(){
	$("#fileArea").hide();
		$("#contentImgArea1").click(function(){
			$("#File").click();
		})
		$("#contentImgArea2").click(function(){
			$("#File1").click();
		});
	});
					
		function loadImg(value, num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					/* $("#titleImg").attr("src", e.target.result); */
						switch(num){
							case 1 : $("#contentImg1").attr("src", e.target.result); break;
							case 2 : $("#contentImg2").attr("src", e.target.result); break;
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			};
			
			
		function goBack(){
			location.href="crewRecruitmentBoard.test";	
		}
	
</script>
<body>
	<div class="container">
		<div class="modal-body">
			<!-- <form action="crewInsert.shw2" method="post" enctype="multipart/form-data"> -->
			<form action="crewInsert.shw2" method="post">	
				<table>
					<tr>
						<td colspan="2">
							<p class="mainWriter">
								좋아요!<br>지금부터 oooo님의 크루 모집 작성을 신청할께요 !
							</p>
							<hr>
						</td>
					</tr>
					<tr>
						<td colspan="2"><select class="catagoryBox"  name="category_No">
								<option vlaue=0>카테고리</option>
								<option vlaue=1>런닝</option>
								<option vlaue=2>수영</option>
								<option vlaue=3>필라테스</option>
								<option vlaue=4>격투기</option>
								<option vlaue=5>댄스</option>
								<option vlaue=6>요가</option>
								<option vlaue=7>헬스</option>
								<option vlaue=8>크로스핏</option>
								<option vlaue=9>기타</option>
						</select> <input type="number" placeholder="모집인원" class="crewNum" name="crew_Max">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="crewContent"  placeholder="글 제목"
									name="board_Title">
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<input type="text" class="crewContent"  placeholder="크루이름"
									name="crew_Name">
							</div>
						</td>
					</tr>
					<tr>
					<tr>
						<td class="box1"><label class="startDate1">모집 날짜 </label> <label
							class="startDate2">마감 날짜</label>
						<td>
					</tr>
					<tr>
						<td colspan="2" class="crewBox"><input type="date"
							class="startDate" name="start_Date" > <input type="date"
							class="endDate" name="end_Date"></td>
					</tr>
					<tr>
						<td>
							<div>
								<input type="text" class="crewAdd"  placeholder="지역" name="crew_Address">
							</div>
						</td>
					</tr>
					<tr>
					<h2>1</h2>
						<div id="fileArea">
							<td id="writer" colspan="2">
							<input type="file" id="File" multiple="multiple"
								name="origin_Name" onchange="loadImg(this,1)">
								<!-- <input type="file" id="File1"
								name="origin_Name" multiple="multiple" onchange="loadImg(this,2)"> --></td>
						</div>
					</tr>
					<tr>
						<td class="imgArea1">
						<div id="contentImgArea1">
							<p class="thumbnailImg">crew logo image</p>
							<img id="contentImg1" width="262px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						<div id="contentImgArea2">
							<p class="mainImgP">using crew image</p>
							<img id="contentImg2" width="262px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						</td>
					</tr>
					<tr>
						<td><span class="crewImgs1">크루 로고 이미지를 선택해주세요!</span><span class="crewImgs2">크루 이용시설 이미지를 선택해주세요!</span></td>
					</tr>
					<tr>
						<td>
							<h4 class="crewWriter1">크루모집 작성내용을 입력해주세요!</h4> <textarea rows="13"
								cols="95" class="crewArea" name="board_Content">
							</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="crewRecBtn">크루모집작성</button>
							<button class="backBtn" onclick="goBack()">돌아가기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
