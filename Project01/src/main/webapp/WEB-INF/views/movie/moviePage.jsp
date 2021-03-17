<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>영화</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/board/assets/img/favicon.png" rel="icon">
  <link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/board/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/board/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="/boardassets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/boardassets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/boardassets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="/boardassets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/board/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Tempo - v2.2.1
  * Template URL: https://bootstrapmade.com/tempo-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/board/home/welcome">Tempo</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li id="profile" style="color: #e43c5c;">${mb.m_name}님</li>
          <li><a href="/board/home/welcome">HOME</a></li>
          <li class="active"><a href="/board/movie/moviePage">영화</a></li>
          <li><a href="./tvPage">TV 프로그램</a></li>
          <li><a href="./boardlist">Q&A</a></li>
          	<c:choose>
          		<c:when test="${id!=null and id eq 'admin'}">
         		 <li><a href="/board/managermode/managerPage">ADMIN PAGE</a></li>
          		</c:when>
          	</c:choose>
          <li><a href="/board/home/logout">LOGOUT</a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->
</body>
</html>