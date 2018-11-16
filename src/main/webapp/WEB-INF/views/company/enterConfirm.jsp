<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입장내역 확인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>

/* 프로필 - 상품권 등록 */
.voucherWrap {
}
.voucherWrap .fiHeader {
  background-image: url(resources/images/company/enter_confirm2.jpg);
}

.voucherWrap h6 {
  color: #333;
  letter-spacing: -0.5px;
}
.redeemBox {
  padding: 10px 20px;
  margin: 30px 0;
  background: #f5f5f5;
  border-radius: 4px;
}
.redeemBox .form-group {
  max-width: 50%;
}
.redeemBox .btn {
  background: #edfbff;
  color: #00bff0;
  border: 2px solid #00bff0;
  font-size: 14px !important;
  font-weight: 400;
}
.redeemBox .membershipCard {
  margin-bottom: 30px;
  padding-bottom: 25px;
}
.redeemBox .membershipCard  .leftPass {
  margin-top: 60px;
}
.redeemSuccess h6 {
  color: #00bff0;
}
.voucherAnc {
  font-size: 14px;
  line-height: 1.4;
  color: #555;
}
.voucherAnc li {
  list-style: disc;
  margin-bottom: 10px;
}
.voucherAnc p {
  font-size: 12px;
  color: #888;
}
.voucherAnc li span {
  display: inline-block;
}
.voucherAnc b {
  font-weight: 600;
  color: #333;
}
.voucherAnc .membershipApply {
  margin: 0;
}
/* 프로필 - 친구초대 */
.fiWrap {}
.fiHeader {
  height: 230px;
  background: url(../images/bg/bg_invite_panel_header_2.jpg) no-repeat center center;
  background-size: cover;
  margin: 0 -15px 20px -20px;
  padding: 20px;
  color: #fff;
}
.fiHeader h3 {
  color: #fff;
  margin: 0 0 20px;
}
.fiHeader h4 {
  text-align: right;
  font-size: 34px;
  letter-spacing: -0.5px;
  font-weight: 200;
}
.fiHeader h4 small {
  display: block;
  margin-top: 15px;
  font-size: 18px;
  letter-spacing: -1px;
  color:#fff;
}
.fiContent h5 {
  font-size: 18px;
  letter-spacing: -0.5px;
  font-weight: 400;
  margin-bottom: 5px;
  line-height: 1.4;
}
.fiContent .fiacc_1 {
  color: #00bff0;
}
.fiContent .fiacc_2 {
  color: #b565c4;
}
.fiSocialBtnWrap {
  margin: 20px 0;
}
.fiSocialBtnWrap h6 {
  font-size: 12px;
}
.fiSocialBtnWrap .inner{
  background: #f5f5f5;
  border-radius: 4px;
  padding: 20px 20px 15px;
}
.fiSocialBtnWrap .fiSocialBtn {
  display: block;
  border: 2px solid #ddd;
  border-radius: 100px;
  background: #fff;
  padding: 15px;
  font-size: 14px;
  text-align: center;
  letter-spacing: -1px;
  text-decoration: none;
  margin-bottom: 5px;
}
.fiSocialBtnWrap .fiSocialBtn span {
  display: inline-block;
}
.fiSocialBtnWrap .fiSocialBtn b {
  font-weight: 600;
}
.fiSocialBtnWrap .fiSocialBtn .ico {
  width: 20px;
  height: 20px;
  margin-right: 5px;
}
.fiSocialBtnWrap .fisb_fb {
  color: #3b5998;
  border-color: #3b5998;
}
.fiSocialBtnWrap .fisb_kakao {
  color: #3c1e1e;
  border-color: #ffeb00;
}
.fiSocialBtnWrap .fiSocialBtn:hover {
  border-color: #00bff0;
}
.fiHelpWrap {
  font-size: 12px;
  color: #888;
  letter-spacing: -0.5px;
}
.fiHelp {
  margin: 0 0 20px;
}
.fiHelp li {
  list-style: circle;
  margin-left: 15px;
}
.fiHelp li.forGift {
  margin-top: 20px;
}
.fiResutHeader {
  padding: 20px 5px;
  margin: 40px -15px 40px -20px;
  border-top: 1px solid #ddd;
  position: relative;
}
.fiResutHeader p {
  font-size: 12px;
  letter-spacing: -0.5px;
  color: #777;
  margin: -5px 0 0;
}
.fiResut {}
.fiResut .fiResutList {
  margin-bottom: 20px;
}
.fiResut .fiResutList li {
  border-bottom: 1px solid #ddd;
  padding: 30px 0 30px 70px;
  margin-top: 10px;
}
.fiResut .fiResutList li .userImg {
  border-radius: 50%;
  width: 48px;
  height: 48px;
  margin-left: -70px;
  position: absolute;
}
.fiResut .fiResutList li h5 {
  color: #00bff0;
}
.fiResut .fiResutList li p {
  margin: 0;
}
.fiResut .fiResutList li p.date {
  font-weight: 600;
  color: #555;
}
.fiResut .fiResutList li p strong {
  font-weight: 600;
}
.fiWrap .bonusPass {
  letter-spacing: -1px;
  color: #00bff0;
  text-align: right;
}
.fiWrap .bonusPass strong {
  width: 48px;
  height: 48px;
  background: #f5f5f5;
  padding-top: 12px;
  display: inline-block;
  text-align: center;
  font-size: 18px;
  font-weight: 600;
  border-radius: 50%;
}
.fiWrap .bonusPass small {
  font-size: 14px;
}
.fiWrap .totalBonusPass {
  margin-top: 10px;
}
.fiWrap .totalBonusPass strong {
  background: #00bff0;
  color: #fff;
}
.notYetResponse {
  text-align: center;
  padding: 30px 0;
  max-width: 600px;
  margin:0 auto;
}
.notYetResponse h4 {
  font-size: 24px;
  font-weight: 100;
  letter-spacing: -1.5px;
  margin-bottom: 20px;
  line-height: 1.5;
  color: #555;
}
.notYetResponse span {
  display: inline-block;
}
</style>
</head>
<body>

	<div id="wrapper">
		<jsp:include page="../common/menubar.jsp" />
		<jsp:include page="companyLeft.jsp" />
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<div class="container">
    <div class="row">
	<div class="col-lg-10 col-md-9 col-sm-8 mypagePanel" id="inner_top" style="display: block;"><div class="fiWrap voucherWrap">
    <div class="fiHeader">

    </div><!-- /.fiHeader -->
<br>
<br>


    <div class="fiContent">

        <div class="redeemBox">
            <h6>입장코드 확인</h6>
            
            <div class="form-group"> <!-- 오류 일때 여기에 has-error -->
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" id="useCode" name="useCode" placeholder="입장코드를 입력하세요" value="">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button" id="use_code">등록하기</button>
                    </span>
                </div>
                <!-- 오류 일때!!! -->
            </div>
        </div><!-- /.redeemBox -->
        
   
        
        <!-- 이용코드 확인 -->
        <script type="text/javascript">
        //이용코드 체크여부
        var codeck = 0;
        $(function() {
            //idck 버튼을 클릭했을 때 
            $("#use_code").click(function() {
                
                //userid 를 param.
                var useCode = $("#useCode").val();
                $.ajax({
                    async: true,
                    type : 'POST',
                    data : {
                    	useCode : useCode
                    },
                    url : "useCode.gs",
                    success : function(data) {
                        if (data*1 == 1) {

                            if(confirm("이용코드를 사용하시겠습니까?")==true){
                            	 
                            		  $.ajax({
                               	      async: true,
                               	      type : 'POST',
                               	      data : {
                               	    	  useCode : useCode
                               	      },
                               	      url : "updateCode.gs",
                               	      success : function(data){
                               		     	 if(data*1 == 1){
                                    		 
                                	    	 alert("사용이 완료되었습니다.");
                                	    	 }
                                    	 }
                                     });
                            };
                            $("#useCode").focus();
                        } else {
                            alert("잘못된 코드입니다. 다시 한번 확인해주세요.");
                           
                            $("#useCode").focus();
                            
                        }
                    },
                    error : function(request,status,error) {
                        
                        alert("code : "+request.status+"\n"+"message : "+request.responseText+"\n"+"error : " + error);
                    }
                });
            });
        });
        </script>


        <div class="fiHelpWrap">
            <h6>입장코드 등록안내</h6>
            <ul class="fiHelp">
                <li>입장권별로 표기되거나 따로 안내된 유효기간은 없습니다.</li>
                <li>입장권은 현금으로 환불할 수 없으며, 재사용할 수 없습니다.</li>
                <li>타인에게 양도는 불가능합니다.</li>
                <li>ENJOIN에서 규정되는 판매 경로 외 비 정상적으로 구매하여 등록된 멤버십으로 인한 회원의 손해에 대해 회사는 책임을 지지않으며, 적발 시 회원자격상실 및 법적 조치가 진행 될 수 있습니다.</li>
            </ul>
        </div><!-- /.fiHint -->

    </div><!-- /.fiContent -->
</div><!-- /.fiWrap --></div>
</div>
</div>





<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>