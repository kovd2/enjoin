<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>패스 구매</title>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
.sectionTitle h2 {
    font-size: 40px;
    font-weight: 300;
    color: #00bff0;
    letter-spacing: -1.5px;
    
}


.selectedPrice {
  border: 1px solid #11BCF4;
  color: #11BCF4;
  padding: 20px;
  width: 100%;
  border-radius: 4px;
  text-align: center;
}
.selectedPrice .pType {
  text-align: center;
  font-size: 11px;
  display: block;
}
.selectedPrice h5 {
  font-size: 18px;
}
.selectedPrice h6 {
  font-size: 40px;
  font-weight: 300;
  color: #0e2036;
}
.selectedPrice h6 span {
  font-size: 13px;
  color: #00bff0;
  font-weight: 600;
}
.month3 h6 span {
  color: #30619C;
}
.month6 h6 span {
  color: #0D1F35;
}
.selectedPrice h6.overpass {
  color: #f6786e;
}
.selectedPrice h6.overpass span,
.month3 h6 span,
.month6 h6 span {
  color: #f6786e;
}

.selectedPrice h6 small {
  margin-left: 5px;
  margin-top: 10px;
  font-size: 14px;
  color: #0e2036;
}
.selectedPrice.month {
  border-color: #aaa;
  background: #fff;
}
.selectedPrice.month.month3 {
  color: #30619C;
}
.selectedPrice.month.month6 {
  color: #0D1F35;
}

.paymentInfo h4 {
  font-size: 18px;
  color: #00bff0;
  letter-spacing: -1px;
  margin: 30px 0 10px;
}

.paymentInfoSheet {
  margin: 10px 0;
}
.paymentInfoSheet h6 {
  font-size: 14px;
  font-weight: 500;
  color: #00bff0;
  letter-spacing: -1px;
  padding: 10px 0;
}
.paymentInfoSheet .summary h5 {
  margin: 0 0 5px;
  border: 1px solid #00bff0;
  color: #00bff0;
  padding: 10px;
  border-radius: 2px;
  letter-spacing: -1px;
}
.paymentInfoSheet .summary h6 {
  padding: 5px 0;
  margin: 0;
}
.paymentInfoSheet .summary p {
    margin: 5px 0 30px 15px;
}
.paymentInfoSheet .summary p {
  margin: 0 0 20px;
}
.paymentInfoSheet .summary p strong {
  font-size: 32px;
  font-weight: 200;
}
.paymentInfoSheet .startDateCheckBox {
  margin: 0 0 20px;
}
.paymentInfoSheet .startDateCheckBox input.form-control {
  font-size: 20px;
  font-weight: 600;
  color: #333;
}
.paymentInfoSheet .startDateCheckBox .date input.form-control {
  /* 버튼이 버튼처럼 보이지 않도록 처리 */
  border-right: 0 none;
}
.paymentInfoSheet .startDateCheckBox .input-group-addon {
  /* 버튼이 버튼처럼 보이지 않도록 처리 */
  cursor: default !important;
  background: none;
}
.paymentInfoSheet p small {
  letter-spacing: -1px;
  color: #888;
  display: block;
}
.paymentInfoSheet fieldset {
  background: #f5f5f5;
  border-radius: 4px;
  margin: 0 0 10px;
}
.paymentInfoSheet .control-label {
  font-size: 13px;
  letter-spacing: -1px;
}
.paymentInfoSheet .nav-tabs {
  font-size: 12px;
}
.paymentInfoSheet .nav-tabs a {
  background: #eee;
}
.tabAcoountType {
  padding: 10px;
  background: #fff;
  border: 1px solid #ddd;
  border-top: 0 none;
}
.tabAcoountType .form-control {
  width: 20%;
  display: inline;
  text-align: center;
}
.birthday select.form-control {
  width: 25%;
  display: inline;
}
.tabAcoountType .phoneNumber {
  width: 60%;
}
.paymentInfoSheet .summary {
  font-size: 14px;
}

.payAgreement .text-warning {
  display: inline-block;
}
.payAgreement .textBox {
  background: #fff;
  font-size: 12px;
  padding: 0 19px;
}
.payAgreement ol {
  padding-left: 15px;
}
.payAgreement ol li {
  list-style: decimal;
  margin: 10px 0;
}
.payAgreement .agreementBox {
  font-size: 12px;
  color: #777;
}
.payAgreement .agreementBox label {
  padding: 5px 12px;
  border: 1px solid #ddd;
  margin: 0 7px;
  border-radius: 2px;
  background: #fff;
  cursor: pointer;
  color: #0d1f35;
}
.paymentSubmitLine {
  border-top: 1px solid #ccc;
  padding: 15px 0 0;
  margin-top: 15px;
  clear: both;
}
.paymentSubmitLine button {
  min-width: 100%;
}
.paymentType {
  font-size: 14px;
}
.paymentType > .nav {
  margin: 10px 0;
}
.paymentType > .nav > li > a {
  padding: 7px 15px;
  background: #eee;
  font-weight: 500;
  border-radius: 2px;
  font-size: 14px;
  letter-spacing: -1px;
  margin-bottom: 5px;
}
.paymentType > .nav-pills > li.active > a,
.paymentType > .nav-pills > li.active > a:focus,
.paymentType > .nav-pills > li.active > a:hover {
  background: #00bff0;
}
.paymentType .nav > li > a i {
  margin-right: 3px;
}
.payAnc {}
.payAnc span {
  display: inline-block;
}
.paymentType h5 {
  margin: 20px 0px 5px;
  color: #00BFF0;
  font-size: 14px;
  letter-spacing: -1px;
}
.paymentType .payAnc strong {
  font-size: 20px;
}


.membershipSummary {
}
.membershipSummary .selectedPrice {
  margin-bottom: 30px;
}
.membershipSummary .selectedPrice h5 {
  font-size: 14px;
  margin-bottom: 20px;
  margin-top: 10px;
  letter-spacing: 0;
}
.membershipSummary .selectedPrice h6 {
  margin-bottom: 0;
}
.membershipSummary h5 {
  font-size: 18px;
  color: #00bff0;
  letter-spacing: -1px;
  font-weight: 300;
}
.membershipSummary .selectedPrice .timesAnc {
  color: #777;
}
.membershipSummary .selectedPrice .timesAnc strong {
  font-size: 18px;
  font-weight: 200;
  display: block;
  color: #00bff0;
}
.membershipSummary .startDateCheckBox {
  width: 50%;
  margin: 30px 0;
}
.membershipSummary .startDateCheckBox input {
  font-size: 18px;
  font-weight: 600;
}
.membershipSummary .startDateCheckBox .form-control-feedback {
  top: 10px;
}

.timeline {
  margin: 30px 0;
}
.timeline h3 {
  font-size: 14px;
  text-align: center;
  letter-spacing: -0.5px;
}
.timeline ul {
  border-top: 2px dotted #ccc;
  position: relative;
  margin-top: 130px;
  list-style: none;
}
.timeline li {
  float: left;
  width: 25%;
  position: relative;
  text-align: center;
}
.longterm_timeline li {
  width: 50%;
}
/* 시작일 종료일 표시 timeline */
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

.timeline li.m_step_1 .point:after {
  content:"";
  border: 1px solid #91e9ff;
  position: absolute;
  width: 36px;
  height: 36px;
  left: -2px;
  top: -2px;
  border-radius: 50%;
}
.timeline li.m_step_3 h4 .date {
  color: #32c7be;
}
.timeline li.m_step_3 .point {
  background: #32c7be;
}
.timeline li.m_step_3 .pointDesc h5 {
  color: #32c7be;
}
.timeline li.m_step_4 h4 {
  color: #999;
}
.timeline li.m_step_4 h4 .date {
  color: #999;
}
.timeline li.m_step_4 .point {
  background: #999;
}
.timeline li.m_step_4 .pointDesc h5 {
  color: #999;
  font-size: 12px;
  font-weight: 400;
}
.timeline li.m_step_today .point {
  background: #fff;
  border: 1px solid #00bff0;
  color: #00bff0;
}
.timeline li.m_step_currentSet h4 .date{
  color: #32c7be;
}
.timeline li.m_step_currentSet .point {
  background: #32c7be;
}
.timeline li.m_step_currentSet .pointDesc h5 {
  color: #32c7be;
}

</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">멤버십 결제</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="wrap">
    <div class="container" xmlns="http://www.w3.org/1999/html">
    <div class="row">
        <div class="col-md-12">
            <div class="sectionTitle priceSectionTitle">
                <h2><strong>멤버십 결제</strong> <small>마지막 결제 단계입니다</small></h2>
                
            </div>
            
            <section class="serviceApplyWrap">
                <div class="row">
                    <div class="membershipSummary col-md-8 col-sm-7 col-xs-12">
                        <!-- 이전 단계에서 선택한 요금제를 표시합니다 -->
                        <div class="selectedPrice">
                                <h6 class="aq">30 PASS</h6>
                        </div>
					<!-- startDateCheckBox -->

                </div> <!-- /.membershipSummary -->
                <div class="col-md-4 col-sm-5 col-xs-12">
                    <div class="paymentInfo2" id="mobilePaymentInfo">
                        <div class="payDiv">
                            <h5 style="font-size:x-large;">결제금액</h5>
                            <p class="price" id="cost_p_normal">
                                <span class="aq" id="span_cost" style="font-size:large;">100원</span>
                            </p>
                        </div>

                        <div class="paymentSubmitLine" onclick="payment()">
                            <button type="button" class="btn btn-lg btn-success" id="btn_go"><i  class="fa fa-credit-card"></i> 결제하기</button>
                        </div>
                    </div><!-- /.paymentInfo2 -->
                </div><!-- /.col -->
        </div> <!-- /.row -->
        </section>
    </div>
</div><!-- /.row -->
</div><!-- /container -->
</div><!-- /wrap -->

<script>
	function payment(){
		var IMP = window.IMP;
		IMP.init("imp11417443"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		
		// IMP.request_pay(param, callback) 호출
		IMP.request_pay({ // param
		    pg: "html5_inicis",
		    pay_method: "card",
		    merchant_uid: "merchant" + new Date().getTime(),
		    name: "30 PASS",
		    amount: 100,
		    buyer_email: "${ loginUser.getEmail() }",
		    buyer_name: "${ loginUser.getUserName() }",
		    buyer_tel: "${ loginUser.getPhone() }",
		    
		}, function (rsp) { // callback
		    if (rsp.success) {
		    	var msg = '결제가 완료되었습니다. \n';
		    	
		        msg += '고유ID : ' + rsp.imp_uid + '\n';
		        msg += '상점 거래ID : ' + rsp.merchant_uid + '\n';
		        msg += '결제 금액 : ' + rsp.paid_amount + '\n';
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        
		        location.href = "passPurchaseFinish2.hh";
		    } else {
				
		    	alert("결제 실패하였습니다. \n");
		    	location.href = "passPurchase.hh";
		    }
		});
	} 

	
</script>


</body>
</html>