<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Enjoin Admin Page</title>

    <!-- Bootstrap core CSS-->
    <link href="resources/style/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="resources/style/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="resources/style/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resources/style/css/admin/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="adminMainPage.test">ENJOIN ADMIN PAGE</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>     
    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="goMain.me">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>홈으로</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>게시판</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="adminNotice.hh">공지사항</a>
            <a class="dropdown-item" href="adminFAQ.hh">FAQ</a>
            <a class="dropdown-item" href="adminContact.hh">문의</a>
           </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminPayment.hh">
           <i class="fas fa-fw fa-chart-area"></i>
            <span>결제 관리</span></a>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-table"></i>
            <span>테이블</span></a>
             <div class="dropdown-menu" aria-labelledby="pagesDropdown">
             	<div class="dropdown-divider"></div>
             	<h6 class="dropdown-header">회원 조회</h6>
            	<a class="dropdown-item" href="adminMember.shw">회원 조회</a>
	            <a class="dropdown-item" href="adminBlackMember.shw">블랙회원 조회</a>
	            <div class="dropdown-divider"></div>
	            <h6 class="dropdown-header">크루 조회</h6>
	            <a class="dropdown-item" href="adminCrew.shw">크루 조회</a>
	            <div class="dropdown-divider"></div>
	            <h6 class="dropdown-header">결제 내역 조회</h6>
	            <a class="dropdown-item" href="404.html">결제 조회</a>
	            <a class="dropdown-item" href="blank.html">pass이력 조회</a>
            </div>
        </li>
      </ul>

    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript-->
    <script src="resources/style/vendor/jquery/jquery.min.js"></script>
    <script src="resources/style/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/style/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="resources/style/vendor/chart.js/Chart.min.js"></script>
    <script src="resources/style/vendor/datatables/jquery.dataTables.js"></script>
    <script src="resources/style/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/style/js/admin/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="resources/style/js/admin/demo/datatables-demo.js"></script>
    <script src="resources/style/js/admin/demo/chart-area-demo.js"></script>

  </body>

</html>
