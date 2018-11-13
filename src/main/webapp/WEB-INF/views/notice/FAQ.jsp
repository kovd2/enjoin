<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

.helpCenterWrap {
  overflow: hidden;
}
.helpCenterWrap h3 {
  font-size: 18px;
  color: #00bff0;
  letter-spacing: -1px;
  margin: 0 0 10px;
}
.helpCenterWrap .breadcrumb {
  margin-top: 15px;
}
.helpCenterWrap .searchFormBox {
  padding: 10px;
  border-radius: 4px;
  background: #eee;
  margin: 10px 0 20px;
}
.helpCenterWrap .searchFormBox p {
  margin: 5px 0 0 4px;
  font-size: 13px;
}
.helpCenterWrap .innerBox {
  margin: 0 0 30px;
}
.helpCenterWrap .innerBox h3 {
  margin: 0 0 10px;
}
.helpCenterWrap .innerBox p span {
  display: inline-block;
}
.helpCenterWrap .panel-title {
  font-size: 14px;
  font-weight: 500;
}
.phType_1 .panel-title {
  color: #798E19;
  border-color: #798E19;
}
.phType_2 .panel-title {
  color: #E0498E;
  border-color: #E0498E;
}
.phType_3 .panel-title {
  color: #00bff0;
  border-color: #00bff0;
}
.phType_4 .panel-title {
  color: #9a90d1;
  border-color: #9a90d1;
}

.label-faq {
  display: inline-block;
  padding: 3px 7px;
  margin: 2px;
  border: 1px solid #ddd;
  border-radius: 2px;
  background: #fff;
  color: #777;

  font-weight: 400;
  font-size: 13px;
  letter-spacing: -1px;
  text-decoration: none;
}
.label-faq:hover {
  text-decoration: none;
  color: #fff;
}
.phType_1 .label-faq:hover {
  background: #798E19;
  border-color: #798E19;
}
.phType_2 .label-faq:hover {
  background: #E0498E;
  border-color: #E0498E;
}
.phType_3 .label-faq:hover {
  background: #00bff0;
  border-color: #00bff0;
}
.phType_4 .label-faq:hover {
  background: #9a90d1;
  border-color: #9a90d1;
}
.helpCenterWrap .panel-footer a {
  font-size: 12px;
  letter-spacing: -1px;
  display: block;
}
.helpCenterWrap .panel-footer a b {
  display: block;
}
.phType_1 .panel-footer a b {
  color: #798E19;
}
.fastLink {
  margin-top: 40px;
  margin-bottom: 100px;
}

.searchedHelpList {
  list-style:none;
}
.searchedHelpList>ul {
  min-height: 400px;
  padding-left: 5px;
  list-style:none;
  
}
.faqList {
  margin-top: 30px;
  margin-bottom: 80px;
}
.faqList .label-info {
  vertical-align: top;
}
.faqList li,
.searchedHelpList li {
  font-size: 18px;
  font-weight: 200;
  letter-spacing: -0.5px;
  color: #666;
  margin: 10px 0;
  list-style:none;
}
.searchedHelpList li.hasNo {
  letter-spacing: -1px;
  color: #777;
  display: block;
}
.faqList h3 small {
  font-size: 14px;
  letter-spacing: 0;
}
strong.phType {
  padding: 3px 7px;
  display: inline-block;
  min-width: 90px;
  line-height: 1.8;
  text-align: center;
  margin: 0 5px 0 0;
  border: 1px solid #ddd;
  border-radius: 2px;
  background: #fff;
  color: #777;
  font-weight: 400;
  font-size: 13px;
  letter-spacing: -1px;
  text-decoration: none;
  vertical-align: middle;
}
strong.phType_1 {
  border-color: #798E19;
  color: #798E19;
}
strong.phType_2 {
  border-color: #E0498E;
  color: #E0498E;
}
strong.phType_3 {
  border-color: #00bff0;
  color: #00bff0;
}
strong.phType_4 {
  border-color: #9a90d1;
  color: #9a90d1;
}
.searchedHelpList li {
  list-style: none;
}
.searchedHelpList li:hover {
  list-style: none;
}
.searchedHelpList li i.fa {
  margin: 0 5px 0 0;
  vertical-align: middle;
}
.searchedHelpList li a:hover {
  background: #f5f5f5;
}

.helpArticle {
}
.helpArticle h4 {
  font-size: 24px;
  letter-spacing: -1px;
  font-weight: 200;
  color: #555;
  margin: 50px 0 20px;
  line-height: 1.4;
}
.helpArticle h4 strong.phType {
  margin: 0 0 15px;
  letter-spacing: 0;
}
.helpArticle h4 span {
  display: block;
  clear: both;
}
.helpArticle h4 i.fa {
  margin: 0 5px 0 0;
  vertical-align: middle;
}
.helpArticle .answer {
  font-size: 18px;
  font-weight: 200;
  color: #555;
  letter-spacing: -0.5px;
  line-height: 1.7;
}
.helpArticle .answer p {
  margin: 10px 0;
}
.helpArticle .answer a {
  color: #00bff0;
  text-decoration: underline;
}
.helpArticle .answer a:hover {
  background:#00bff0;
  color: #fff;
  text-decoration: none;
}
.surveyWrap {
  padding: 10px;
  background: #f5f5f5;
  border-radius: 4px;
  margin: 60px 0 40px;
}
.orCantFindHelp {
  margin-top: 40px;
  padding-top: 40px;
  border-top: 1px solid #ddd;
}

.breadcrumb {
    padding: 8px 15px;
    margin-bottom: 20px;
    list-style: none;
    background-color: #f5f5f5;
    border-radius: 4px;
}

</style>
<body>
	<div id="wrapper">
	<jsp:include page="../common/menubar.jsp"/>
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb" style="background-color: #68A4C4;">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active">고객센터</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		<div class="wrap">

    <div class="container">
    <div class="row">
      <div class="content col-md-12">
        <div class="page-header">
          <h2>고객센터 <small>찾으시는 내용이 맞으신가요?</small></h2>
        </div>
        <div class="helpCenterWrap">
          <div class="row">

            <div class="col-md-12">
              <div class="searchFormBox">
                <form id="searchForm" action="search.hh" method="post">
                <div class="input-group input-group-lg">
                   <input type="text" class="form-control" value="${keyword}" placeholder="${map.keyword }" name="keyword">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
                  </span>
                </div><!-- /input-group -->
                </form>
              </div><!-- /.searchFormBox -->

              <div class="searchedHelpList">
                <ul style="margin-left:0px; margin-bottom:0px;">
                  <!-- 여기부터 검색결과 -->
                  <c:forEach var="mm" items="${map.list}">

                 <li><strong class="phType phType_1">${mm.FAQ_CATEGORY }</strong> <a onclick="FAQ_detail(${mm.BOARD_NO})"> ${mm.BOARD_TITLE}</a></li>
					
			      </c:forEach>
                  <!-- 여기까지 검색결과 -->
                </ul>
              </div>


            </div><!-- /.col -->


          </div>

        </div><!-- /.helpCenterWrap -->


      </div> <!-- /.content -->
    </div><!-- /.row -->
  </div><!-- /container -->
<jsp:include page="../common/footer.jsp" />

</div>
<script>
	function FAQ_detail(boardNo){
		
		location.href = "FAQ_detail.hh?boardNo=" + boardNo
		
	}
</script>

</body>
</html>