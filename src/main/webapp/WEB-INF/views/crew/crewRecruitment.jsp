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
    height: 750px;
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
    width: 600PX;
}
.catagoryBox{			/* 카테고리 박스  */
	width: 300px;
    height: 32px;
    margin-top: 25px;
    margin-right: 70px;
}
.crewNum{
	width: 300px;
    height: 28px;
}
.crewContent{
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
.startDate{
	width: 300px;
    height: 28px;
    margin-right: 70px;
    margin-top: 40px;
}
.endDate{
	width: 300px;
    height: 28px;
}
.startDate1{
	position:relative;
    top: 40px;
    color:#03a9f4;	
}
.startDate2{
	margin: 0 auto;
    margin-left: 305px;
    position: relative;
    top: 40px;
    color:#03a9f4;
}
.box1{
	margin-top:10px;
}
.crewAdd{
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
.crewAdd::placeholder{
	 color:#03a9f4;
}
.crewContent::placeholder{
	color:#03a9f4;
}
.crewArea{
}
.crewWriter1{
	margin: 0;
    margin-top: 40px;
    color:#03a9f4;
}
.crewRecBtn{
	width: 330px;
    height: 35px;
    margin-top: 10px;
    border-radius: 6px;
    background: #03A9F4;
    color: white;
    margin-right: 23px;
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
							<p class="mainWriter">좋아요!<br>지금부터  oooo님의 크루 모집 작성을 신청할께요 !</p>
							<hr>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<select class="catagoryBox">
								<option>카테고리</option>
								<option>런닝</option>
								<option>수영</option>
								<option>필라테스</option>
								<option>격투기</option>
								<option>댄스</option>
								<option>요가</option>
								<option>헬스</option>
								<option>크로스핏</option>
								<option>기타</option>
							</select>
							<input type="number" placeholder="모집인원" class="crewNum">
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<input class="crewContent" style="text" placeholder="글 제목">
							</div>
						</td>
					</tr>
					<tr>
					<tr>
						<td class="box1">
							<label class="startDate1" >모집 날짜 </label>
							<label class="startDate2">마감 날짜</label>
						<td>	
					</tr>
					<tr>		
						<td colspan="2" class="crewBox">
							<input type="date" class="startDate">
							<input type="date" class="endDate">
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<input class="crewAdd" style="text" placeholder="지역">
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<p class="crewWriter1">크루모집 작성내용을 입력해주세요!</p>
							<textarea rows="13" cols="95"  class="crewArea" >
							</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="crewRecBtn">크루모집작성</button>
							<button class="backBtn">돌아가기</button>
						</td>
					</tr>	
				</table>
			</form>
		</div>
	</div>				
</body>
</html> 