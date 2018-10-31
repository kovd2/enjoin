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
	background: black url(resources/images/crew/GettyImages-924368190.jpg) no-repeat center center fixed;
    background-size: cover;
}
.modal {
	text-align: center;    /*모달 중앙유지  */
}
 @media screen and (min-width: 768px) {	/* 모달 설정  */
	.container {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}
 .modal-body {					/* 모달 본체  */
	padding: 15px;
    width: 705px !important;
    margin: 0 auto;
    background: #f5f5f5;
    box-shadow: 10px 10px rgba(230,230,230,0.8);
}
 .container {				/* 사이즈  */
	display: flex;
	width: 1000px;
	margin: 0 auto;
}
.mainWriter{			/*  메인 fontSize 설정  */
	color: black;
    width: 680PX;
}
.crewName{
	color:#f98e2c;
}
.userId , .crewMember ,.crewCatagory{
	font-size: 16px;
    color: #03a9f4;
}
.crewCatagory{
	font-weight:bold;
	font-size: 27px;
}
.crewAddressBox{
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
    
}
.crewAddressBox::placeholder{
	color:#03a9f4;
}
.crewAddressBox:focus{
	border-bottom:1px solid #03a9f4;
	box-shadow:3px 3px 3px 3px #999;
}
.crewAddressBox:hover{
	border-bottom:1px solid #03a9f4;
}
.Img1 , .Img2 , .Img3{
	width: 316px;
    height: 190px;
    background: white;
    display: -webkit-inline-box;
    margin-left: 19px;
}
.crewImgWriter{
	color: #03A9F4;
	
}
.crewNum{
	margin-top: 20px;
}
.crewNum:focus{
	box-shadow:3px 3px 3px 3px #999;
}
.crewActBtn{
	width: 330px;
    height: 35px;
    margin-top: 10px;
    border-radius: 6px;
    background: #03A9F4;
    color: white;
    margin-left:10px;
    margin-right: 12px;
}
.backBtn{
	width: 330px;
    height: 35px;
    border-radius: 6px;
    background: gray;
    color: white;
    
} 
.crewCount{
    width: 303px;
    height: 25px;
}
.crewCount::placeholder{
	color:#03a9f4;
}
.crewA{
	display: -webkit-inline-box;
}
p.crewDate {
    margin-left: 50px;	
    color: #03a9f4;
}
.crewDate1{
	width: 269px;
    height: 31px;
}
.area1 {
    width: 700px;
    display: -webkit-box;
}
.area2 {
    width: 700px;
    display: -webkit-box;
    margin-top: 13px;
}
#contentImgArea2 {
    margin-left: 77px;
}
#contentImgArea4 {
    margin-left: 77px;
}
#contentImg1:hover{
	box-shadow:3px 3px 3px 3px #999;
}
#contentImg2:hover{
	box-shadow:3px 3px 3px 3px #999;
}
#contentImg3:hover{
	box-shadow:3px 3px 3px 3px #999;
}
#contentImg4:hover{
	box-shadow:3px 3px 3px 3px #999;
}
.thumbnailImg {
    color: #2e393e;
    font-weight: bolder;
    position: absolute;
    margin-left: 182px;
    opacity: 0.9;
    font-family: 'Architects Daughter', cursive;
}
p.mainImgP {
    color: #2e393e;
    font-weight: bold;
    position: absolute;
    margin-left: 180px;
    opacity: 0.9;
    font-family: 'Architects Daughter', cursive;

}
.crewImgWriter1{
	font-size: 12px;
    color: #f98e2c;
	
}
</style>
<script>
$(function(){
	$("#fileArea").hide();
		$("#contentImgArea1").click(function(){
			$("#File").click();
		})
		$("#contentImgArea2").click(function(){
			$("#File1").click();
		});
		$("#contentImgArea3").click(function(){
			$("#File2").click();
		});
		$("#contentImgArea4").click(function(){
			$("#File3").click();
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
							case 3 : $("#contentImg3").attr("src", e.target.result); break;
							case 4 : $("#contentImg4").attr("src", e.target.result); break;
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			};	
	
</script>
</head>
<body>
	<div class="container">
		<div class="modal-body">
			<form>
				<table>
					<tr>
						<td colspan="2">
							<p class="mainWriter">좋아요!<br>지금부터  oooo크루의  활동내역을 작성해 주세요!</p>
							<hr>
						</td>
					</tr>
					<tr>
						<td class="crew">
							<h1 class="crewName">김창희의 런닝 크루</h1>
							<p class="crewCatagory">런닝 크루</p>
						</td>
					</tr>
						<tr>
							<td>	
								<p class="crewAddress"><input type="text" class="crewAddressBox" placeholder="활동제목"></p>
							</td>
						</tr>	
						<tr>
							<td>	
								<p class="crewAddress"><input type="text" class="crewAddressBox" placeholder="활동지역"></p>
							</td>
						</tr>	
					<tr>
						<td colspan="2" class="crewA">
							<p class="crewMember"><input type="number" class="crewCount"placeholder="활동인원"></p>
							<p class="crewDate">활동일시<input type="date" placeholder="활동일시" class="crewDate1"></p>
						<td>
					</tr>		
					<tr>
						<td class="crewImgBox" >
							<p class="crewImgWriter">활동 내역 사진</p>
							<p class="crewImgWriter1">크루활동 이미지를 올려주세요!</p>
							<div id="fileArea">
								<input type="file" id="File" multiple="multiple"
								name="origin_Name" onchange="loadImg(this,1)">
								<input type="file" id="File1"
								name="origin_Name" multiple="multiple" onchange="loadImg(this,2)">
								<input type="file" id="File2"
								name="origin_Name" multiple="multiple" onchange="loadImg(this,3)">
								<input type="file" id="File3"
								name="origin_Name" multiple="multiple" onchange="loadImg(this,4)">
							</div>
						</td>
					</tr>
					<tr>
						<td class="imgArea1">
						<div class="area1">
						<div id="contentImgArea1">
							<p class="thumbnailImg">activity image</p>
							<img id="contentImg1" width="310px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						<div id="contentImgArea2">
							<p class="mainImgP">activity image</p>
							<img id="contentImg2" width="308px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						</div>
						<div class="area2">
						<div id="contentImgArea3">
							<p class="mainImgP">activity image</p>
							<img id="contentImg3" width="310px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						<div id="contentImgArea4">
							<p class="mainImgP">activity image</p>
							<img id="contentImg4" width="308px" height="260px"
								src="${ contextPath }/resources/images/crew/crossfit-534615_960_720.jpg">
						</div>
						</div>
						</td>
						
						
					</tr>
					<tr>
						<td>
							<textarea rows="13" cols="96" placeholder="크루님의 활동내역을 작성해주세요!" class="crewNum">
							</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="crewActBtn">활동내역작성</button>
							<button class="backBtn">돌아가기</button>
						</td>
					</tr>	
				</table>
			</form>
		</div>
	</div>				
</body>
</html> 