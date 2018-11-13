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

</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb" style="background-color: #68A4C4;">
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
                                <h6 class="aq">78 PASS</h6>
                        </div>
					<!-- startDateCheckBox -->
					<br>
					<img src="${contextPath }/resources/images/payment/iamport.png" width="100%">					
                </div> <!-- /.membershipSummary -->
                <div class="col-md-4 col-sm-5 col-xs-12">
                    <div class="paymentInfo2" id="mobilePaymentInfo">
                        <div class="payDiv">
                            <h5 style="font-size:x-large;">결제금액</h5>
                            <p class="price" id="cost_p_normal">
                                <span class="aq" id="span_cost" style="font-size:large;">300원</span>
                            </p>
                        </div>

                        <div class="paymentSubmitLine" onclick="payment(${sessionScope.loginUser.userNo})">
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

<jsp:include page="../common/footer.jsp" />

<script>
	function payment(userNo){
		var IMP = window.IMP;
		IMP.init("imp11417443"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		
		// IMP.request_pay(param, callback) 호출
		IMP.request_pay({ // param
		    pg: "html5_inicis",
		    pay_method: "card",
		    merchant_uid: "merchant" + new Date().getTime(),
		    name: "78 PASS",
		    amount: 300,
		    buyer_email: "${ loginUser.getEmail() }",
		    buyer_name: "${ loginUser.getUserName() }",
		    buyer_tel: "${ loginUser.getPhone() }",
		    
		}, function (rsp) { // callback
		    if (rsp.success) {
		      
		      var imp_uid = rsp.imp_uid;
		      var merchant_uid = rsp.merchant_uid;
		      var paid_amount = rsp.paid_amount;
		      var apply_num = rsp.apply_num;
		     
		      location.href = "passPurchaseFinish3.hh?imp_uid=" + imp_uid + "&merchant_uid=" + merchant_uid + "&paid_amount=" + paid_amount + "&apply_num=" + apply_num;
		    } else {
		    	var msg = '결제에 실패하였습니다. \n';
		        msg += '에러내용 : ' + rsp.error_msg;
		        alert(msg);
		    	location.href = "passPurchase.hh";
		    }
		});
	} 

	
</script>


</body>
</html>