<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
}
.searchedHelpList>ul {
  min-height: 400px;
  padding-left: 5px;
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
  list-style: circle;
  margin-left: 20px;
}
.searchedHelpList li:hover {
  list-style: disc;
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
</style>
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
		
		<div class="wrap">

    <div class="container">
    <div class="row">
      <div class="content col-md-12">
        <div class="page-header">
          <h2>고객센터 <small>원하시던 내용이신가요?</small></h2>
        </div>
        <div class="helpCenterWrap">
          <div class="row">
            <div class="col-md-12">
              <article class="helpArticle">
                <h4><strong class="phType phType_1">FAQ 카테고리</strong>  <span>응 여기에 FAQ 제목~ </span></h4>
                <div class="answer">
                  <p>응 여기에 FAQ 내용~~~<br>The high that you’re giving me is coming so strong.
(君のおかげで感じる気持ちの高ぶりは強烈で)
Head up in the clouds it could poke the ozone.
(あの雲の上、オゾンの層にさへ届きそうだよ)
The world is a wake up call away from the end.
(この世界がモーニングコールと共に終わりを迎えるとしても)
Till then, we’ll find peace in this bed like we’re Yoko and John.
(その時まで、僕たちはこのベットで安らぎを見つけるさ、
まるであの頃のヨーコとジョンのようにね)
There‘s no coming home when you’re not there.
(君が居なければ本当の意味でのホームはない)
‘Cause together is alone when we‘re not a pair.
(一緒という言葉だって君とペアでなければ
1人と一緒だからね)
Girl, my love is timeless and colorblind.
(愛しい君よ、僕の愛には時間も色も無関係なんだ)
I will love your black, love your brown and your white hair.
(君の黒い、茶色い、白い髪だって愛するさ)
After all this time
(この時が終わっても)
After all these vibes
(この気分が終わっても)
After all these highs
(この高鳴りが冷めたとしても)
We’re still on this ride
(僕らはこのまま旅を続けるさ)
Never wanna say good bye
(サヨナラは決して言いたくないよ)
You brought me back to life
(君は僕の人生を救ってくれたんだ)
and forever it’s just us
(そして永遠に”僕ら二人”)
No more you and I
(“君と僕”という言葉はもういらない)
Never off just on
(それることなく真っ直ぐに)
Opposite of wrong
(間違いの正反対を行く)
If it was you and me against the world
(もし君と僕がこの世界を敵に回したとしても)
I’d still like our odds
(それでも僕らの可能性にかけるんだ)
Please don’t ever close your eyes on me
(お願いだから僕を残して目を閉ざさないで)
My sleeping beauty
(僕の眠れる女神よ)

I gotta know now if you’re,
(今知りたいんだ、君が)
You’re really down cause
(君が本当に僕で大丈夫なのかって)
(だって)
Where there’s smoke there’s fire
(君を見てると少しは信じていいと思ってしまうよ)
I just hope you realize
(僕はただ君に知っていてほしい)
That you know I believe in a thing called destiny
(僕が運命なんて呼ばれるものを信じてるってことを)
So please don’t
(だからどうかお願い)
Please don’t
(どうか)</p>
                </div>
              </article>
              <div class="orCantFindHelp">
                궁금한 점에 대한 도움말을 찾을 수 없으신가요? 1:1문의로 문의해주세요.
                <a href="contactDetail.hh" class="btn btn-default btnQuestion"> 1:1 문의하기</a>
              </div>


            </div><!-- /.col -->

          </div>


        </div><!-- /.helpCenterWrap -->

      </div> <!-- /.content -->
    </div><!-- /.row -->
  </div><!-- /container -->


</div>
</body>
</html>