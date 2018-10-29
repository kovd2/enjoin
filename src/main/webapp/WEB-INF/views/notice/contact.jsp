<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
	<jsp:include page="../common/menubar.jsp"/>
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active">고객센터</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<div class="wrap">

    <div class="container">
    <div class="row">
      <div class="content col-md-12">
        <div class="page-header">
          <h2>1:1 문의
            <small>
            서비스 이용에 도움이 필요하신가요?<br>
            보내주신 문의를 확인 후 최대한 빠르게 답변해 드리겠습니다. (영업일 기준 최대 3일 소요)
            </small>
          </h2>
        </div>

        <div class="qaListWrap">
          <div class="row">
            <div class="applyBoxWrap col-sm-8">
              <p>
                <!--
                <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#applyBox" aria-expanded="false" aria-controls="applyBox">문의 접수하기</button>
                -->
                <button type="button" class="btn btn-default" style="width:100px; height:40px; font-size: initial;" onclick="contactDetail();">문의하기</button>

              </p>
            </div><!-- /.applyBoxWrap -->
          </div>

          <h3>문의 내역</h3>
          <div class="accordionList">
              <div class="panel panel-default">
                  <div class="panel-body">
                    1:1 문의 내역이 없습니다. <br>
                  	  여기에 게시판 목록보듯이 문의내역있으면 문의한 내역들 보이도록 처리
                  </div>
              </div>
            </div><!-- /.panel-group -->
          </div><!-- /.accordionFaq -->
        </div><!-- /.qaListWrap -->




      </div> <!-- /.content -->
    </div><!-- /.row -->
  </div>
  
  <script>
  	function contactDetail(){
  		
  		location.href = "contactDetail.hh";
  	}
  </script>
</body>
</html>