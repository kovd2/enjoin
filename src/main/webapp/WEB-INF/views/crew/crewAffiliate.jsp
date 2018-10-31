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
    width: 430px !important;
    height: 600px;
    margin: 0 auto;
    background: #f5f5f5;
    overflow-y: scroll;
}
 .container {				/* 사이즈  */
	display: flex;
	width: 1000px;
	margin: 0 auto;
}
.mainWriter{			/*  메인 fontSize 설정  */
	color: black;
	width: 410PX;
}
.affiliate{
	color:#615f5f;
}
.affAddress{
	color:#615f5f;
	font-size: 16px;
}
.pass{
	color: #03A9F4;
    margin-top: -11px;
}
.pass1{
	color: #03A9F4;
    margin-top: -20px;
    font-size: 13px;
}
.img1{
	width: 180px;
    height: 130px;
    background: white;
}
.img2{
	width: 180px;
    height: 130px;
    background: white;
    margin-left: 50px;
}
.imgBox{
	display: -webkit-inline-box;
}
.crewDate{
	width: 407px;
    height: 30px;
    margin-top: -6px;
}
.crewDate1{
	color: #03A9F4;
}
.crewName{
	color:#03A9F4;
}
.crewClass{
	width:400px;
	height:200px;
	background:white;
}
.userId{
	font-size:13px;
	margin-left: 23px;
}
.passWriter{
	color: #03A9F4;
    margin: 0;
    display: -webkit-inline-box;
}
.crewAffBtn{
	width: 200px;
    height: 35px;
    margin-top: 10px;
    border-radius: 6px;
    background: #03A9F4;
    color: white;
}
.backBtn{
	width: 200px;
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
							<p class="mainWriter">좋아요!<br>지금부터  oooo크루의  제휴 시설을 신청할께요!</p>
							<hr>
						</td>
					</tr>
					<tr>
						<td>
							<h2 class="affiliate">김창희의 헬스장</h2>
							<p class="affAddress">강남역 3번 출구</p>
							<h2 class="pass">패스권 7</h2>
							<p class="pass1">크루 인원 명단 만큼 패스권을 차감합니다.</p>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="imgBox">
							<div class="img1">
							
							</div>
							<div class="img2">
							
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<p class="crewDate1">제휴시설 신청날짜</p>
							<input type="date" class="crewDate"  ">
						</td>
					</tr>
					<tr>
						<td>
							<p class="crewName">ooooo크루 명단</p>
							<div class="crewClass">
								<p class="userId">김창희님</p>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="checkBox">
							<p class="passWriter">결제 약관에 동의합니다.</p>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="crewAffBtn">제휴시설신청</button>
							<button class="backBtn">돌아가기</button>
						</td>
					</tr>
				</table>	
			</form>
		</div>
	</div>				
</body>
</html> 