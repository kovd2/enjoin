<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
    width: 700px !important;
    height: 800px;
    margin: 0 auto;
    background: #f5f5f5;
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
	color:#03A9F4;
}
.userId , .crewMember , .crewAddress, .crewCatagory{
	font-size:12px;
}
.crewAddressBox{
	width:200px;
}
.Img1 , .Img2 , .Img3{
	width: 206px;
    height: 140px;
    background: white;
    display: -webkit-inline-box;
    margin-left: 19px;
}
.crewImgWriter{
	color: #03A9F4;
    margin-left: 18px;
	
}
.crewNum{
	margin-top: 20px;
    margin-left: 14px;
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
</style>
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
							<p class="userId">작성자 :  김창희 님</p>
							<p class="crewCatagory">카테고리 : 런닝</p>
							<p class="crewMember">참여인원 :  황훈님,신헌우님,이진석님,안광성님</p>
							<p class="crewAddress">위치 :  <input type="text" class="crewAddressBox"></p>
						</td>
					</tr>
					<tr>
						<td class="crewImgBox">
							<p class="crewImgWriter">활동 내역 사진</p>
							<div class="Img1"></div>
							<div class="Img2"></div>
							<div class="Img3"></div>
						</td>
					</tr>
					<tr>
						<td>
							<textarea rows="13" cols="93" placeholder="크루님의 활동내역을 작성해주세요!" class="crewNum" ">
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