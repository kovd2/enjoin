<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height:auto;
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
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
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
			<div class="notYetMembership">
				<h4>필요한 만큼 결제하세요!!</h4>
				<p>
					<a href="/service/select/" class="membershipApply"><i class="fa fa-clone"></i> 멤버십 신청하기</a>
				</p>
			</div>
			<div class="MembershipOk" align="center">
				<h2>현재 보유 PASS권</h2><h1>7 PASS</h1>
			</div>
			<hr>
			<div style="height:65px;">
				<h5 style="text-indent:30px;">멤버십 이용기간</h5>
			</div>
			<br><br>
			<div class="timeline longterm_timeline"> <!-- .lognterm_timeline -->
                            <ul>
                                <li class="m_step m_step_1" style="float:left; list-style:none; text-align:center;">
                                    <h4>선택한 이용 시작일 <small class="date" id="s1"><b class="aq">2018.10.23</b>(화)</small></h4>
                                    <span class="stressLine passedline"></span>
                                    <span class="stressLine sl50 slRight"></span>
                                    <span class="point"><i class="fa fa-credit-card"></i></span>
                                    <div class="pointDesc">
                                    <div class="arrow"></div>
                                    <h5>첫결제</h5>
                                    <strong class="price" id="price_first_pay">34,300 원</strong>
                      <span class="hint">멤버십 이용요금
                      </span>
                        </div>
                        </li>

                        <li class="m_step m_step_3" style="float:right; list-style:none; text-align:center;">
                            <h4>이용 종료일 <small class="date" id="s2"><b class="aq">11.22</b>(목)</small></h4>
                            <span class="stressLine sl50 slLeft"></span>
                            <span class="point"><i class="fa fa-circle-o"></i></span>
                            <div class="pointDesc">
                                <div class="arrow"></div>
                                <h5>이용 종료</h5>
                                <span class="hint">잔여 패스는 모두 소멸됩니다.<br>패스가 모두 소진 되면, 추가 이용 하실 수 없습니다.</span>
                            </div>
                        </li>
                        </ul>
                    </div>
		</div>
		</div>
		<br><br><br><br><br><br>
	
</body>
</html>