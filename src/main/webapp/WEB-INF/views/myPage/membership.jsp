<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.mypageMenu{
	background:white;
}
.mypageMenuWrap li{
	line-height:300%;
}
.rightContainer{
	width:800px;
	height:500px;
	margin-top:100px;
	display:inline-block;
	border-left: solid 0.5px lightgray;
	float:left;
}
.notYetMembership {
  text-align: center;
  max-width: 600px;
  margin: 30px auto 10px;
}
.notYetMembership h4 {
  font-size: 24px;
  font-weight: 100;
  letter-spacing: -1.5px;
  margin-bottom: 20px;
  line-height: 1.5;
  color: #555;
}
.notYetMembership h4 b {
  font-weight: 600;
}
.notYetMembership h4 span {
  display: inline-block;
}
.notYetMembership a.membershipApply {
  margin: 0 auto;}

.membershipApply
.timeline li h4 {
  margin-top: -75px;
  font-size: 13px;
  font-weight: 600;
}
.timeline li h4 .date {
  display: block;
  font-size: 16px;
  font-weight: 400;
  margin: 15px 0 0;
  color: #00bff0;
  letter-spacing: 0;
}
.timeline li h4 .date b {
  font-size: 18px;
  font-weight: 400;
}
.timeline li .stressLine {
  border-top: 4px solid #00bff0;
  display: inline-block;
  position: absolute;
  top: -3px;
}
.timeline li .passedline {
  border-top: 2px solid #ccc;
  display: inline-block;
  width: 50%;
  position: absolute;
  left: 0;
  top: -2px;
}
.timeline li .stressLine.sl100 {
  left: 0;
  width: 100%;
}
.timeline li .stressLine.sl50 {
  width: 50%
}
.timeline li .stressLine.slLeft {
  left: 0;
}
.timeline li .stressLine.slRight {
  right: 0;
}
.timeline li .point {
  display: inline-block;
  background: #00bff0;
  border-radius: 50%;
  text-align: center;
  color: #fff;
  width: 32px;
  height: 32px;
  padding-top: 4px;
  position: relative;
}
.timeline li .pointDesc {
  width:200px;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 15px;
  margin: 15px;
  font-size: 12px;
  color: #888;
}
.membershipSummary .timeline li .pointDesc {
  min-height: 150px;
}
.timeline li .pointDesc .price {
  display: block;
  font-size: 20px;
  font-weight: 300;
  margin: 10px 0;
}
.timeline li .pointDesc b {
  color: #00bff0;
}
.timeline li .pointDesc .hint {
  margin: 10px 0 0;
  display: block;
}
.timeline li .pointDesc h5 {
  color: #00bff0;
}
.timeline li .pointDesc .arrow,
.timeline li .pointDesc .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.timeline li .pointDesc .arrow {
  top: 8px;
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0,0,0,.25);
  border-width: 11px;
}
.timeline li .pointDesc .arrow:after {
  content: "";
  border-width: 10px;
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.bodyArea{
	margin:auto;
	width:1100px;
	height:auto;
}
.bmiArea{
	margin-left:30px;
}
.MembershipOk{
	margin-top:60px;
	margin-bottom:60px;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb" style="background-color: #68A4C4;">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">마이페이지</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<div class="bodyArea">
		<jsp:include page="../common/myPage/myPageLeft.jsp" />
		<input type="hidden" value="a_index" id="ckPage">
		<div class="rightContainer">
			<b id="a_index" class="current" style="font-size:30px; color:black; text-indent:30px;"><i class="fa fa-clone"></i>  내멤버십</b>			
				<c:set var="pass" value="${pass }"/>		
					<c:if test="${pass <= 0}">
						<div class="notYetMembership">
							<h4>필요한 만큼 결제하세요!!</h4>
							<p>
								<a href="passPurchase.hh" class="membershipApply"><i class="fa fa-clone"></i> 멤버십 신청하기</a>
							</p>
						</div>
					</c:if>
					
			<div class="MembershipOk" align="center">
				<c:if test="${pass > 0}">
					<h2>현재 보유 PASS권</h2>				
						<h3><c:out value="${ pass }"/> PASS</h3>
						<p>
							<a href="passPurchase.hh" class="membershipApply"><i class="fa fa-clone"></i> 멤버십 추가하기</a>
						</p>					
				</c:if>
			</div>
			<hr>
			
			<div style="margin-left:30px;">
				<h3><i class="fa fa-magic"></i>시설 이용 코드</h3>
				
			</div>
		</div>
		</div>
		<br><br><br><br><br><br>
		<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>