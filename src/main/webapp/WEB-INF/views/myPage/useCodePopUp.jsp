<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background: #00bff0;">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.popUpWrap {
	width: 100%;
	height: 100%;
}

.popUpBody {
	width: 100%;
	height: 100%;
}

.popUpHeader {
	width: 90%;
	height: 100px;
	margin: auto;
	color: white;
	text-align: center;
}

.useInfoArea {
	width: 90%;
	height: 480px;
	margin: auto;
	margin-top: 10px;
	background: white;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
	position: relative;
}
.useInfoArea td{
	width:150px;
}
.useInfoArea::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	right: 0;
	background-repeat: repeat;
	height: 10px;
	background-size: 20px 20px;
	background-image: radial-gradient(circle at 10px -5px, transparent 12px, #00bff0 13px);
}

.useInfoArea::after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	right: 0;
	background-repeat: repeat;
	height: 15px;
	background-size: 40px 20px;
	background-image: radial-gradient(circle at 10px 15px, #00bff0 12px, transparent 13px);
}
.infoArea{
	margin:auto;
}
.facilityName{
    padding-top:40px;
    padding-left:70px;
    font-size:xx-large;
    font-weight:bold;
}
.useCode{
	padding-top:40px;
    padding-left:70px;
    font-size:larger;
    font-weight:400;
}
.havePassCount{
	padding-top:40px;
    padding-left:70px;
    font-size:large;
    font-weight:400;
}
.usePassCount{
	padding-top:40px;
    padding-left:70px;
    font-size:large;
    font-weight:400;
}
.remainingPass{
	padding-top:40px;
    padding-left:70px;
    font-size:large;
    font-weight:400;
}
</style>
<body>
	<div class="popUpWrap">
		<div class="popUpBody">
			<div class="popUpHeader">
				<h3>시설을 이용 하실 수 있습니다.</h3>
				<h5>제휴 시설 데스크에서 이용코드를 보여주세요</h5>
			</div>
			<div class="useInfoArea">
					<div class="facilityName">
						${ facilityName }
					</div>
				<div class="infoArea">
					<div class="useCode">
						<table>
							<tr>
								<td>이용코드</td>
								<td style="text-align:center;">${ useCode }</td>
							</tr>
						</table>
					</div>
					<div class="havePassCount">
						<table>
							<tr>
								<td>멤버십 보유패스</td>
								<td style="text-align:center;">${ passCount } PASS</td>
							</tr>
						</table>
					</div>
					<div class="usePassCount">
						<table>
							<tr>
								<td>총 사용 패스</td>
								<td style="text-align:center; color:#00bff0;">${ ppCount } PASS</td>
							</tr>
						</table>
					</div>
					<div class="remainingPass">
						<table>
							<tr>
								<td>멤버십 잔여패스</td>
								<td style="text-align:center; color:#00bff0;">${ passCount - ppCount} PASS</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>