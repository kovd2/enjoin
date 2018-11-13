<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<style>
.sectionTitle h2 {
    font-size: 40px;
    font-weight: 300;
    color: #00bff0;
    letter-spacing: -1.5px;
    
}

.b2b2c_hotDeal {
  border-top: 1px dotted #ccc;
  border-bottom: 1px dotted #ccc;
  padding-bottom: 20px;
}
.monthly_0105 .priceTableTitle h3 b {
  color: #00bff0;
}
.longterm_0105 .priceTableTitle h3 b {
  color: #32c7be;
}
.priceTable {}
.priceTagPiece {
  border: 1px solid #ddd;
  border-radius: 2px;
  margin-bottom: 20px;
  margin-top: 20px;
}
.priceTagPiece:hover {
  box-shadow: 0 7px 20px rgba(0,0,0,0.1);
  transition: all 0.3s;
}
.priceTagPiece .priceTagHead {
  padding: 30px 0 20px;
  text-align: center;
  background: #00bff0;
  color: #fff;
  margin: -1px;
  border-radius: 2px 2px 0 0;
  position: relative;
  transition: all 1s;
}
.priceTagPiece .priceTagHead .bonusPass {
  position: absolute;
  top: -10px;
  right: -10px;
  display: inline-block;
  height: 32px;
  width: 32px;
  font-size: 12px;
  padding: 5px 0 0;
  text-align: center;
  background: #fff;
  border-radius: 50px;
  border: 2px solid #00bff0;
  color: #00bff0;
}
.priceTagPiece .priceTagHead strong {
  font-size: 30px;
  display: block;
  line-height: 1;
  letter-spacing: -1px;
}
.priceTagPiece .priceTagHead span {
  font-size: 13px;
}
.priceTagPiece .priceTagHead .hotDealTag {
  position: absolute;
  right: -48px;
  top: 50px;
  background: #fff;
  border: 4px solid #2E5D93;
  color: #2E5D93;
  border-radius: 50%;
  width: 96px;
  height: 96px;
  text-align: center;
  padding-top: 24px;
  font-size: 16px;
  font-weight: 400;
  box-shadow: 4px 4px rgba(0,0,0,0.1);
}
.priceTagPiece .priceTagHead .hotDealTag2 {
  position: absolute;
  right: -10px;
  top: 65px;
  background: #fff;
  border: 4px solid #2E5D93;
  color: #2E5D93;
  border-radius: 50%;
  width: 76px;
  height: 76px;
  line-height: 26px;
  text-align: center;
  padding-top: 15px;
  font-size: 12px;
  font-weight: 600;
  box-shadow: 4px 4px rgba(0,0,0,0.1);
}
.priceTagPiece .priceTagHead .hotDealTag strong,
.priceTagPiece .priceTagHead .hotDealTag2 strong {
  font-size: 13px;
  letter-spacing: 0;
}
.priceTagPiece .priceTagHead .hotDealTag em,
.priceTagPiece .priceTagHead .hotDealTag2 em {
  font-style: normal;
  font-size: 18px;
}
.cntHotDealSale {
  font-size: 15px;
}
.cntHotDealSale strong {
  color: #2E5D93;
  border: 1px solid #2E5D93;
  padding: 5px 5px 1px;
  border-radius: 2px;
  margin: 0 2px;
}
.HotDealAdditionalInfo {
  padding-top: 180px;
}
.HotDealAdditionalInfo ul {
  font-size: 13px;
  margin: 30px 0 0 15px;
  color: #888;
}
.HotDealAdditionalInfo li {
  list-style: disc;
}

.priceTagBody {
  text-align: center;
  padding: 20px 0;
}
.priceTagBody h5 {
  font-size: 12px;
  margin: 0;
}
.b2b2c_hotDeal .priceTagBody h5 {
  font-size: 16px;
}
.priceTagBody .priceWon {
  font-size: 15px;
  font-weight: 200;
  color: #444;
  margin: 10px 0;
  position:relative;
}
.priceTagBody .priceWon strong {
  font-size: 15px;
  font-weight: 400;
  font-family: Varela Round;
  color: #555;
}
.priceTagBody .priceWon small {
  font-size: 12px;
  font-weight: 400;
  display: block;
  margin-bottom: -5px;
}
.priceTagBody .priceWon small.period {
  margin-bottom: 5px;
}
.priceTagBody small.discounted {
  color: #f77d68;
}
.priceTagBody .originWon {
  font-size: 14px;
  color: #777;
}
.priceTagBody .originWon del,
.priceTagBody .originWon span.oneMonthPrice,
.priceTagBody .originWon strong.subscribePrice {
  font-size: 15px;
  font-family: Varela Round;
  color: #555;
  text-decoration: line-through;
  display: block;
}
.priceTagBody .originWon del,
.priceTagBody .originWon span.oneMonthPrice.deleted,
.priceTagBody .originWon strong.subscribePrice.deleted {
  opacity: 0.5;
}

.priceTagFoot {
    text-align: center;
    padding: 0 0 25px;
    position: relative;
}

.priceTagFoot a {
    padding: 6px 0;
    border: 1px solid #00bff0;
    border-radius: 50px;
    color: #00bff0;
    font-size: 13px;
    font-weight: 600;
    display: block;
    width: 75%;
    max-width: 110px;
    margin: 0 auto;
}

.priceTagPiece:hover .priceTagFoot a,
.priceTagFoot a:hover {
  background: #00bff0;
  color: #fff;
  text-decoration: none;
  border-color: #00bff0;
  transition: all 0.5s;
}

.priceAdditionalInfo {
  margin-top: 10px;
  margin-bottom: 10px;
  padding-top: 20px;
  opacity: 1;
  font-weight: 300;
  text-align: left;
  border-top: 1px dotted #ccc;
}
.priceAdditionalInfo h4 {
  text-align: left;
  font-size: 18px;
  font-weight: 500;
  color: #444;
  letter-spacing: -1px;
}
.priceAdditionalInfo h5 {
  margin: 10px 0 20px;
  font-size: 14px;
  font-weight: 300;
  letter-spacing: -0.5px;
}
.priceAdditionalInfo h5 strong {
  color: #00bff0;
}
.priceAdditionalInfo h6 {
  font-size: 13px;
  font-weight: 600;
  color: #555;
  letter-spacing: -0.5px;
}
.priceAdditionalInfo ul {
  margin: 15px 0;
}
.priceAdditionalInfo li {
  list-style: circle;
  margin-left: 20px;
  color: #666;
  font-size: 14px
}
.priceAdditionalInfo li b {
  font-weight: 600;
  color: #222;
}
.priceAdditionalInfo li b.bizAcc {
  color: #f6b37f;
}
.priceAdditionalInfo li i {
  color: #f6b37f;
}
.priceAdditionalInfo h6 a,
.priceAdditionalInfo li a {
  text-decoration: underline;
  color: #00bff0;
}
.startDateCheckBox {
  background: #fff;
  clear: both;
}
.membershipSelectTip {
  background: #F1FCFF;
  border: 1px solid #B5F0FF;
  font-size: 12px;
  margin-bottom: 10px;
}
.membershipSelectTip h6 {
  color: #00bff0;
  margin-top: 0;
  font-size: 12px;
}
.membershipSelectTip small {
  margin: 0 4px;
  opacity: 0.3;
  font-size: 9px;
}
.membershipSelectTip p span {
  display: block;
  margin-top: 5px;
  padding-left: 20px;
  padding-top: 5px;
  position: relative;
  font-size: 11px;
}
.membershipSelectTip p em {
  display: block;
  margin-bottom: 3px;
  font-style: normal;
  font-size: 12px;
}
.membershipSelectTip p b {
  display: inline-block;
}
.membershipSelectTip p i {
  float: left;
  margin-left: -20px;
  margin-top: 3px;
}
.datepicker table tr td.disabled, .datepicker table tr td.disabled:hover {
  color: #bbb;
}
</style>
</head>
<body>
<c:if test="${ !empty sessionScope.loginUser }">
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">멤버십 신청</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="sectionTitle priceSectionTitle col-xs-12">
					<h2>
						<strong>멤버십 신청</strong> <small>원하는 날부터 자유롭게 운동을 시작해 보세요!</small>
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<section class="serviceApplyWrap">
						<!--B2C 롱텀 상품 표기 - START* -->
						<!-- 일반결제 -->
						<div class=" col-md-12 col-sm-12  longterm_0105">
							<div class="row">
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">7</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩100</strong> <small class="discountNum">
												</small>
											</div>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a onclick="passPurchaseDetail()" class="btn-white" >시작하기</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">30</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩200</strong> <small class="discountNum">
												</small>
											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="passPurchaseDetail2.hh" class="btn-white">시작하기</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">78</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩300</strong> <small class="discountNum">
												</small>
											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="passPurchaseDetail3.hh" class="btn-white">시작하기</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">240</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->

										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩400</strong> <small class="discountNum">
												</small>

											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="passPurchaseDetail4.hh" class="btn-white">시작하기</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
							</div>
						</div>
						<!-- /.col -->


						<div class="col-md-12 col-sm-12">
							<div class="row">
								<div class="col-md-12 col-sm-12 priceAdditionalInfo">

									<div class="startDateCheckBox">
										<h4>지금 신청하세요!</h4>
										<h5>
											<strong>이용 시작일</strong>은 <b>오늘부터 10일 후까지</b> 선택이 가능합니다.
										</h5>
									</div>

									<ul>
										<li><b>PASS는 제휴시설을 이용할 수 있는 단위</b>입니다.</li>
										<li><b>제휴시설을 한번 이용할 때 시설별로 정해진 PASS가 차감</b> 됩니다.</li>
										<li>이용하고 싶은 제휴시설과, 횟수, 기간 따라 나에게 맞는 요금제를 선택하세요.</li>
										<li>이용기간 만료 시 잔여 PASS는 자동 소멸됩니다.</li>
										<li>더 궁금하신게 있으신가요? <a href="serviceCenter.hh" target="_blank">고객센터
												도움말</a>을 확인해 보세요.
										</li>
									</ul>
								</div>
								<!-- /.priceAdditionalInfo -->
							</div>
							<!-- /.row -->
						</div>
					</section>
					<!-- /.serviceApplyWrap -->
				</div>
			</div>
			<!--/.row -->
		</div>
		<!-- /container -->


	</div>
</c:if>


<c:if test="${ empty sessionScope.loginUser }">
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">멤버십 신청</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>

	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="sectionTitle priceSectionTitle col-xs-12">
					<h2>
						<strong>멤버십 신청</strong> <small>원하는 날부터 자유롭게 운동을 시작해 보세요!</small>
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<section class="serviceApplyWrap">
						<!--B2C 롱텀 상품 표기 - START* -->
						<!-- 일반결제 -->
						<div class=" col-md-12 col-sm-12  longterm_0105">
							<div class="row">
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">7</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩100</strong> <small class="discountNum">
												</small>
											</div>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="memberLogin.me" class="btn-white" >로그인</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">30</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩200</strong> <small class="discountNum">
												</small>
											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="memberLogin.me" class="btn-white" >로그인</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">78</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->
										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>₩300</strong> <small class="discountNum">
												</small>
											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="memberLogin.me" class="btn-white" >로그인</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
								<div class="col-sm-3 col-xs-6">
									<div class="priceTagPiece priceTagLT priceTagNotOptionalCheck">
										<div class="priceTagHead">
											<strong class="aq">240</strong> <span class="aq">PASS</span>
											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagHead -->

										<div class="priceTagBody">
											<div class="priceWon originWon">
												<strong>\400</strong> <small class="discountNum">
												</small>

											</div>

											<!-- 보너스 패스 -->
										</div>
										<!-- /.priceTagBody -->
										<div class="priceTagFoot">
											<a href="memberLogin.me" class="btn-white" >로그인</a>
										</div>
										<!-- /.priceTagFoot -->
									</div>
									<!-- /.priceTagPiece -->
								</div>
							</div>
						</div>
						<!-- /.col -->


						<div class="col-md-12 col-sm-12">
							<div class="row">
								<div class="col-md-12 col-sm-12 priceAdditionalInfo">

									<div class="startDateCheckBox">
										<h4>지금 신청하세요!</h4>
										<h5>
											<strong>이용 시작일</strong>은 <b>오늘부터 10일 후까지</b> 선택이 가능합니다.
										</h5>
									</div>

									<ul>
										<li><b>PASS는 제휴시설을 이용할 수 있는 단위</b>입니다.</li>
										<li><b>제휴시설을 한번 이용할 때 시설별로 정해진 PASS가 차감</b> 됩니다.</li>
										<li>이용하고 싶은 제휴시설과, 횟수, 기간 따라 나에게 맞는 요금제를 선택하세요.</li>
										<li>이용기간 만료 시 잔여 PASS는 자동 소멸됩니다.</li>
										<li>더 궁금하신게 있으신가요? <a href="serviceCenter.hh" target="_blank">고객센터
												도움말</a>을 확인해 보세요.
										</li>
									</ul>
								</div>
								<!-- /.priceAdditionalInfo -->
							</div>
							<!-- /.row -->
						</div>
					</section>
					<!-- /.serviceApplyWrap -->
				</div>
			</div>
			<!--/.row -->
		</div>
		<!-- /container -->


	</div>
</c:if>
<script>
	function passPurchaseDetail(){
		
		location.href = "passPurchaseDetail.hh";
	}
</script>

</body>
</html>