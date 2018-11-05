<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ENJOIN</title>
<style>

.wrapComplete{
	display:inline-block !important;
	width:1000px !important;
	height:500px !important;
	margin-top: 150px;
}
.completeLogo{
	width:200px;
	height:200px;
	
}
.gs_lettering{
	font-size: 36px;
    font-style: normal;
    display: block;
    letter-spacing: -1px;
  	line-height: 1.2;
  	color: #777;
  	font-weight: 600;
  	margin-top:35px;
}
</style>
</head>
<body>

	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<jsp:include page="companyLeft.jsp" />
	</div>
	
	<div class="wrapComplete" align="center">
	<img class="completeLogo" src="resources/images/company/planes.png">
	<h1 align="center" class="gs_lettering">제휴시설 신청을 보냈어요. 조금만 기다려주세요.</h1>
	</div>

	<jsp:include page="../common/footer.jsp" />


</body>
</html>