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
    width: 420px !important;
    height: 600px;
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
	width: 410PX;
}
.catagoryBox{			/* 카테고리 박스  */
	width: 150px;
    height: 32px;
    margin-top: 12px;
}
.crewName{				/* 크루이름 인풋박스  */
	border: 0 none;
    border-bottom: 1px solid #8c9092;
    border-radius: 0;
    background: none;
    font-size: 15px;
    font-weight: 400;
    height: 45px;
    padding: 0;
    -webkit-appearance: none;
    width: 250px;
}
.crewName:hover{		/* 마우스 올렸을시  */
	border: 0 none;
    border-bottom: 2px solid #8c9092;
    border-radius: 0;
    background: none;
    font-size: 15px;
    font-weight: 400;
    height: 45px;
    padding: 0;
    -webkit-appearance: none;
    width: 250px;
}
.crewName:active{		/* 클릭시  */
	border: 0 none;
    border-bottom: 2px solid #8c9092;
    border-radius: 0;
    background: none;
    font-size: 15px;
    font-weight: 400;
    height: 45px;
    padding: 0;
    -webkit-appearance: none;
    width: 250px;
}
.searchId{			/* id 검색 inputbox  */
	width: 300px;
    height: 30px;
    margin-top: 20px;
}
.searchBtn{			/* 검색 버튼  */
	margin-left: 18px;
    width: 70px;
    height: 36px;
    border-radius: 6px;
    background: #03A9F4;
    color: white;
}
.searchBox{			/* 검색박스  */
	width: 390px;
    height: 110px;
    background: white;
    margin-top: 20px;
    overflow-y: scroll;
}
.userIdP{			/* 아이디  */
	color: #4c4b4b;
    font-size: 13px;
    margin-left: 12px;
}
.crewImg{
	width: 150px;
    height: 157px;
    background: white;
    display: inline-block;
    border-radius: 14px;
    margin-top: 20px;
}
.crewBtn{
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
							<p class="mainWriter">좋아요!<br>지금부터  oooo님의 크루를 만들게요!</p>
							<hr>
						</td>
					</tr>
					<tr>
						<td>
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
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<input class="crewName" style="text" placeholder="크루 이름">
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input class="searchId" style="text" placeholder="아이디 검색"><button class="searchBtn">검색</button>
						</td>
					</tr>
					<tr>
						<td>
							<div class="searchBox">
								<p class="userIdP">쌈자님</p>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div class="crewImg"></div>
							<textarea rows="10" cols="32" placeholder="크루에 대해서 설명해주세요!"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="crewBtn">크루 작성</button>
							<button class="backBtn">돌아가기</button>
						</td>
					</tr>	
				</table>
			</form>
		</div>
	</div>
</body>
</html> 