<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
<script type="text/javascript"
	src="${contextPath}/resources/style/js/admin/adminPage.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/style/css/admin/adminPage.css">
<title>Insert title here</title>
	<style>
		.content {
	  -webkit-flex: 1;
	  flex: 1;
	  padding: 30px;
	  background: #eee;
	  box-shadow: 0 0 5px rgba(0,0,0,1);
	  transform: translate3d(0,0,0);
	  transition: all .3s;
	}
	
	.content.content-is-open {
	  margin-left: 220px;
	}
	
	.side-panel-toggle {
	  cursor: pointer;
	  font-size: 42px;
	}
	
	/* Demo Navigation */
	
	.title {
	  font-size: 16px;
	  line-height: 50px;
	  text-align: center;
	  text-transform: uppercase;
	  letter-spacing: 7px;
	  color: #eee;
	  border-bottom: 1px solid #222;
	  background: #2a2a2a;
	}
	
	.nav li a {
	  position: relative;
	  display: block;
	  padding: 15px 15px 15px 50px;
	  font-size: 12px;
	  color: #eee;
	  border-bottom: 1px solid #222;
	}
	
	.nav li a:before {
	  font: 14px fontawesome;
	  position: absolute;
	  top: 14px;
	  left: 20px;
	}
	
	.nav li:nth-child(1) a:before { content: '\f00a'; }
	.nav li:nth-child(2) a:before { content: '\f012'; }
	.nav li:nth-child(3) a:before { content: '\f0e8'; }
	.nav li:nth-child(4) a:before { content: '\f0c3'; }
	.nav li:nth-child(5) a:before { content: '\f022'; }
	.nav li:nth-child(6) a:before { content: '\f115'; }
	.nav li:nth-child(7) a:before { content: '\f085'; }
	.nav li:nth-child(8) a:before { content: '\f023'; left: 23px; }
	
	.nav li a:hover {
	  background: #444;
	}
	
	.nav li a.active {
	  box-shadow: inset 5px 0 0 #5b5, inset 6px 0 0 #222;
	  background: #444;
	}
	
	/* Demo Description */
	
	h1 {
	  margin: 25px 0 15px;
	  font-size: 28px;
	  font-weight: 400;
	}
	
	h2 {
	  font-size: 18px;
	  font-weight: 400;
	  color: #999;
	}
	</style>
</head>
<body>




	<!-- 여기부터  -->
	
<div class="wrapper">
  <div class="sidebar">
    <div class="title">ENJOIN ADMIN</div>
    <ul class="nav">
      <li>
        <a>회원정보관리</a>
      </li>
      <li>
        <a href="adminPay.test">결제관리</a>
      </li>
      <li>
        <a class='active'>크루관리</a>
      </li>
      <li>
        <a>게시판관리</a>
      </li>
      <li>
        <a>문의관리</a>
      </li>
      <li>
        <a>제휴시설관리</a>
      </li>
      <li>
        <a>공고작성</a>
      </li>
      <li>
        <a>로그아웃</a>
      </li>
    </ul>
  </div> 
  <div class="content content-is-open">
    <span class='side-panel-toggle'>
      <i class="fa fa-bars"></i>
    </span>
    <h1>회원관리</h1>
    <h2>안녕하세요</h2>
    <div class="well well-sm">
      
      <p>Banh mi street art organic, bicycle rights synth YOLO Neutra. Try-hard cliche vegan mlkshk actually. Godard pour-over locavore tousled synth, try-hard Portland single-origin coffee church-key gluten-free 90's blog. Cliche blog tote bag, literally Banksy viral biodiesel Portland High Life. Marfa Neutra selvage, photo booth tilde whatever 8-bit pork belly irony post-ironic forage slow-carb. Pickled chia wayfarers, gentrify letterpress gastropub food truck seitan meditation trust fund cliche biodiesel sartorial. Tousled skateboard Thundercats, mumblecore jean shorts 90's flexitarian deep v gentrify.</p>
      
      <p>Banh mi street art organic, bicycle rights synth YOLO Neutra. Try-hard cliche vegan mlkshk actually. Godard pour-over locavore tousled synth, try-hard Portland single-origin coffee church-key gluten-free 90's blog. Cliche blog tote bag, literally Banksy viral biodiesel Portland High Life. Marfa Neutra selvage, photo booth tilde whatever 8-bit pork belly irony post-ironic forage slow-carb. Pickled chia wayfarers, gentrify letterpress gastropub food truck seitan meditation trust fund cliche biodiesel sartorial. Tousled skateboard Thundercats, mumblecore jean shorts 90's flexitarian deep v gentrify.</p>
    </div>
    <hr>
  </div>
</div>
 
	<!-- 여기까지  -->
<!-- <script>
	function go(){
		location.href = "adminMember.shw";
	}
</script> -->	
</body>
</html>