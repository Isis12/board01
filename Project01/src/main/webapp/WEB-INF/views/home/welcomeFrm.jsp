<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Home</title>
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
  <link href="/board/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/board/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/board/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="/board/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="/board/css/nav.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/board/assets/css/style2.css" rel="stylesheet">
  <!-- =======================================================
  * Template Name: Tempo - v2.2.1
  * Template URL: https://bootstrapmade.com/tempo-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/board/home/welcome">Tempo</a></h1>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li id="profile" style="color: #DCE3E7;">${mb.m_name}님</li>
          <li class="active"><a href="/board/home/welcome">HOME</a></li>
          <li><a href="/board/movie/moviePage">영화</a></li>
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

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <h3>Welcome to <strong>Tempo</strong></h3>
      <h1>We're Creative Agency</h1>
      <h2>We are team of talented designers making websites with Bootstrap</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero -->



  <!-- Vendor JS Files -->
  <script src="/board/assets/vendor/jquery/jquery.min.js"></script>
  <script src="/board/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/board/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="/board/assets/vendor/php-email-form/validate.js"></script>
  <script src="/board/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/board/assets/vendor/venobox/venobox.min.js"></script>
  <script src="/board/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="/board/assets/js/main.js"></script>
</body>

</html>