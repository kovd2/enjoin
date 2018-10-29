<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript" src="http://t1.daumcdn.net/postcode/api/core/180928/1538455030985/180928.js"></script>
<style>
.rightContainer {
	width: 800px;
	height: auto;
	margin-top: 100px;
	display: inline-block;
	border-left: solid 0.5px lightgray;
	float:left;
}
.memberForm{
	margin-left:50px;
}
.withdraw{
	float:right;
}
.bodyArea{
	margin:auto;
	width:1100px;
	height:auto;
}
.profilPhoto{
	width:150px;
	height:150px;
	border:solid 0.5px lightgray;
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
		<jsp:include page="../common/myPage/myPageLeft.jsp"/>
	<div class="rightContainer">
		<b id="a_index" class="current" style="font-size:30px; color:black; text-indent:30px;"><i class="fa fa-clone"></i>  내 정보 수정</b>
		<form class="memberForm" action="/mypage/index/modify/" method="post" name="modify_form" onkeydown="return captureReturnKey(event)">

            <input type="hidden" name="img_temp" id="img_temp">
            <input type="hidden" name="r" value="">
            <input style="visibility: hidden; width: 0;height: 0;">


            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="password" class="">비밀번호</label>
                  <input type="password" class="form-control" id="password" placeholder="비밀번호" name="password1">
                </div>
                <div class="form-group">
                  <label for="password2" class="">비밀번호 다시 입력</label>
                  <input type="password" class="form-control" id="password2" placeholder="비밀번호를 한번 더 입력" name="password2">
                </div>
                <div class="form-group" id="user_email_div">
                  <label for="email" class="">이메일</label>
                  <input type="email" class="form-control" id="email" placeholder="이메일" value="kovd2@naver.com" name="user_email" onfocusout="check_email(); return false;">
                  <span class="help-block" id="user_email_help"></span>
                </div>

                <div class="form-group">
                  <label class="">휴대폰 번호</label>
                  <div class="input-group">
                    <input type="tel" class="form-control" placeholder="휴대폰 번호를 입력하세요" value="010-5537-4103" name="user_phone" id="phoneValue" disabled="">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button" id="phone" onclick="changePhone();"><span class="text-info">새 번호 입력하기</span></button>
                    </span>
                  </div>
                  <p class="help-block">
                    전화번호를 변경하시려면 <strong class="text-info">새 번호 입력하기</strong> 를 누르세요.
                  </p>
                </div>
				<div class="form-group">
                  <label class="">생년월일</label>
                  <div class="form-inline birthday">
                    <select class="form-control" name="birth_year">
                    <option selected="" value="">년도</option>
                      <option value="2017">2017 년</option>
                      <option value="2016">2016 년</option>
                      <option value="2015">2015 년</option>
                      <option value="2014">2014 년</option>
                      <option value="2013">2013 년</option>
                      <option value="2012">2012 년</option>
                      <option value="2011">2011 년</option>
                      <option value="2010">2010 년</option>
                      <option value="2009">2009 년</option>
                      <option value="2008">2008 년</option>
                      <option value="2007">2007 년</option>
                      <option value="2006">2006 년</option>
                      <option value="2005">2005 년</option>
                      <option value="2004">2004 년</option>
                      <option value="2003">2003 년</option>
                      <option value="2002">2002 년</option>
                      <option value="2001">2001 년</option>
                      <option value="2000">2000 년</option>
                      <option value="1999">1999 년</option>
                      <option value="1998">1998 년</option>
                      <option value="1997">1997 년</option>
                      <option value="1996">1996 년</option>
                      <option value="1995">1995 년</option>
                      <option value="1994">1994 년</option>
                      <option value="1993">1993 년</option>
                      <option value="1992">1992 년</option>
                      <option value="1991">1991 년</option>
                      <option value="1990">1990 년</option>
                      <option value="1989">1989 년</option>
                      <option value="1988">1988 년</option>
                      <option value="1987">1987 년</option>
                      <option value="1986">1986 년</option>
                      <option value="1985">1985 년</option>
                      <option value="1984">1984 년</option>
                      <option value="1983">1983 년</option>
                      <option value="1982">1982 년</option>
                      <option value="1981">1981 년</option>
                      <option value="1980">1980 년</option>
                      <option value="1979">1979 년</option>
                      <option value="1978">1978 년</option>
                      <option value="1977">1977 년</option>
                      <option value="1976">1976 년</option>
                      <option value="1975">1975 년</option>
                      <option value="1974">1974 년</option>
                      <option value="1973">1973 년</option>
                      <option value="1972">1972 년</option>
                      <option value="1971">1971 년</option>
                      <option value="1970">1970 년</option>
                      <option value="1969">1969 년</option>
                      <option value="1968">1968 년</option>
                      <option value="1967">1967 년</option>
                      <option value="1966">1966 년</option>
                      <option value="1965">1965 년</option>
                      <option value="1964">1964 년</option>
                      <option value="1963">1963 년</option>
                      <option value="1962">1962 년</option>
                      <option value="1961">1961 년</option>
                      <option value="1960">1960 년</option>
                      <option value="1959">1959 년</option>
                      <option value="1958">1958 년</option>
                      <option value="1957">1957 년</option>
                      <option value="1956">1956 년</option>
                      <option value="1955">1955 년</option>
                      <option value="1954">1954 년</option>
                      <option value="1953">1953 년</option>
                      <option value="1952">1952 년</option>
                      <option value="1951">1951 년</option>
                      <option value="1950">1950 년</option>
                      <option value="1949">1949 년</option>
                      <option value="1948">1948 년</option>
                      <option value="1947">1947 년</option>
                      <option value="1946">1946 년</option>
                      <option value="1945">1945 년</option>
                      <option value="1944">1944 년</option>
                      <option value="1943">1943 년</option>
                      <option value="1942">1942 년</option>
                      <option value="1941">1941 년</option>
                      <option value="1940">1940 년</option>
                      <option value="1939">1939 년</option>
                      <option value="1938">1938 년</option>
                      <option value="1937">1937 년</option>
                      <option value="1936">1936 년</option>
                      <option value="1935">1935 년</option>
                      <option value="1934">1934 년</option>
                      <option value="1933">1933 년</option>
                      <option value="1932">1932 년</option>
                      <option value="1931">1931 년</option>
                      <option value="1930">1930 년</option>
                      <option value="1929">1929 년</option>
                      <option value="1928">1928 년</option>
                      <option value="1927">1927 년</option>
                      <option value="1926">1926 년</option>
                      <option value="1925">1925 년</option>
                      <option value="1924">1924 년</option>
                      <option value="1923">1923 년</option>
                      <option value="1922">1922 년</option>
                      <option value="1921">1921 년</option>
                      <option value="1920">1920 년</option>
                      <option value="1919">1919 년</option>
                      <option value="1918">1918 년</option>
                      <option value="1917">1917 년</option>
                      <option value="1916">1916 년</option>
                      <option value="1915">1915 년</option>
                      <option value="1914">1914 년</option>
                      <option value="1913">1913 년</option>
                      <option value="1912">1912 년</option>
                      <option value="1911">1911 년</option>
                      <option value="1910">1910 년</option>
                      <option value="1909">1909 년</option>
                      <option value="1908">1908 년</option>
                      <option value="1907">1907 년</option>
                      <option value="1906">1906 년</option>
                      <option value="1905">1905 년</option>
                      <option value="1904">1904 년</option>
                      <option value="1903">1903 년</option>
                      <option value="1902">1902 년</option>
                      <option value="1901">1901 년</option>
                      <option value="1900">1900 년</option>
                    </select>
                    <select class="form-control" name="birth_month">
                      <option selected="" value="">월</option>
                        <option value="1">1 월</option>
                        <option value="2">2 월</option>
                        <option value="3">3 월</option>
                        <option value="4">4 월</option>
                        <option value="5">5 월</option>
                        <option value="6">6 월</option>
                        <option value="7">7 월</option>
                        <option value="8">8 월</option>
                        <option value="9">9 월</option>
                        <option value="10">10 월</option>
                        <option value="11">11 월</option>
                        <option value="12">12 월</option>
                    </select>
                    <select class="form-control" name="birth_day">
                      <option selected="" value="">일</option>
                        <option value="1">1 일</option>
                        <option value="2">2 일</option>
                        <option value="3">3 일</option>
                        <option value="4">4 일</option>
                        <option value="5">5 일</option>
                        <option value="6">6 일</option>
                        <option value="7">7 일</option>
                        <option value="8">8 일</option>
                        <option value="9">9 일</option>
                        <option value="10">10 일</option>
                        <option value="11">11 일</option>
                        <option value="12">12 일</option>
                        <option value="13">13 일</option>
                        <option value="14">14 일</option>
                        <option value="15">15 일</option>
                        <option value="16">16 일</option>
                        <option value="17">17 일</option>
                        <option value="18">18 일</option>
                        <option value="19">19 일</option>
                        <option value="20">20 일</option>
                        <option value="21">21 일</option>
                        <option value="22">22 일</option>
                        <option value="23">23 일</option>
                        <option value="24">24 일</option>
                        <option value="25">25 일</option>
                        <option value="26">26 일</option>
                        <option value="27">27 일</option>
                        <option value="28">28 일</option>
                        <option value="29">29 일</option>
                        <option value="30">30 일</option>
                        <option value="31">31 일</option>
                    </select>
                  </div><!-- /.birthday -->
                </div>
                <div class="form-group" id="user_phone_div" style="display: none;"> <!--  -->

                  <div class="input-group">
                    <input type="tel" class="form-control" placeholder="휴대폰 번호를 숫자만 입력하세요" name="user_phone_new" id="user_phone" value="">
                    <span class="input-group-btn">
                      <button class="btn btn-warning btn_cer" type="button" onclick="check_phone(this);">인증하기</button>
                    </span>
                  </div>
                  <p class="help-block">
                    본인의 휴대폰 번호 인지 인증합니다. 휴대폰 번호 입력 후 인증하기 를 눌러주세요.
                  </p>
                  <span class="help-block" id="user_phone_help"></span>
                  <p id="interval" class="text-success" style="display: none;">수신된 6자리 인증번호를 입력하세요. <br> <span>120</span>초 후에 재발송 하실 수 있습니다.</p><!-- -->

                  <div class="tel_cer" style="display: none;"> <!--  -->
                    <div class="input-group">
                      <input type="tel" class="form-control" placeholder="인증번호를 입력하세요" name="user_phone_cer" id="user_phone_cer" value="" maxlength="6">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="check_phone_cer(); return false;">확인</button>
                      </span>
                    </div>
                  </div>

                </div>

                <br>

              </div><!--/.col -->



              <div class="col-md-6">

                <div class="form-group userPicUploadBox">
                 	<div class="profilImg">
                 		<label class="">프로필 사진</label>
                 		<div class="profilPhoto"><img src="resources/images/myPage/user.png" style="width:150px; height:150px;"></div>
                 		<input type="file" name="photo">
                  	</div>
                    <span class="text-danger">미리보기로 업로드된 사진을 확인하신 후, 하단의 저장하기 버튼을 꼭 눌러주세요.</span>
                    <span>정면, 상반신 사진 / 가로 400px*세로400px 이상의 사진을 등록해주세요.</span>
                    <span>프로필 사진은 제휴시설 이용시 본인 확인 용도로 사용됩니다.</span>
                    <span>사진으로 본인 확인이 어려울 경우, 제휴시설 입장이 제한 될 수 있습니다.</span>
                </div>
                

                <div class="form-group">
                  <label class="">주소</label>
                  <div class="input-group postNumber">
                    <input type="text" class="form-control" placeholder="우편번호" readonly="" value="" name="user_post" id="user_post">
                    <span class="input-group-btn"><button type="button" class="btn btn-default" onclick="get_post();">우편번호 검색</button></span>
                  </div>
                  <div class="postDiv" id="post_div">
                  </div>
                  <input type="text" class="form-control" placeholder="주소" readonly="" value="" name="user_addr1" id="user_addr1">
                </div>

                <div class="form-group">
                  <input type="text" class="form-control" placeholder="상세주소를 입력하세요" value="" name="user_addr2" id="user_addr2">
                </div>

               
              </div><!-- /.col -->
            </div><!-- /.row -->

            <div class="form-group submitLine forMobileAppFloat">
              <button type="submit" class="btn btn-lg btn-primary btn_mobileAppFloat" style="background:#00bff0;" onclick="saveInfo();"><i class="fa fa-check"></i> 저장하기</button>
              <a href="javascript:history.go(-1)" class="btn btn-link"><i class="fa fa-close"></i> 취소</a>
              <span class="withdraw">
                <button type="button" class="btn btn-sm btn-link" data-toggle="modal" data-target="#myModal">탈퇴 신청</button>
              </span>
            </div>
          </form>
	</div>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin: 95px auto;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">회원 탈퇴 신청</h4>
      </div>
      <div class="modal-body" style="height:200px;">
			<div class="alert alert-warning">
          <p>탈퇴하면 회원 정보가 삭제되고, 되돌릴 수 없습니다. 잔여 패스가 있더라도 사용할 수 없으니 유의하세요. 즉시 탈퇴를 원하시는 경우에는  1:1문의로 탈퇴신청을 해주시면 즉시탈퇴를 도와드리겠습니다.</p>
          <p>정말 탈퇴하실 건가요? (마지막 질문입니다)</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" style="background:#68A4C4;">네 (1:1문의로 이동)</button>
      </div>
    </div>
  </div>
</div>
	</div>
	<br><br><br><br><br><br>

	<script>
//	 모달
	$('#myModal').click('shown.bs.modal', function () {
		  $('#myInput').focus()
		})
    
//   주소 API
 //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
     function get_post() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('user_post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('user_addr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('user_addr2').focus();
            }
        }).open();
    }
	//휴대번호 변경 하기 위한 jquery
	$("#phone").click(function(){
		$("#phoneValue").attr('disabled', false)
	});
</script>

</body>
</html>