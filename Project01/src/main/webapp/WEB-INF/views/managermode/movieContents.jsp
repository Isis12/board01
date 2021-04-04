<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/board/assets/img/favicon.png" rel="icon">
<link href="/board/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<title>Movie Management</title>
</head>
<style>
#header{
  background: #fff;
  box-shadow: 0px 2px 15px rgb(0 0 0 / 10%);
  padding: 12px 0;
}
#header .header-inner-pages{
  transition: all 0.5s;
  z-index: 997;
  padding: 20px 0;
}
.fixed-top{
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  z-index: 1030;
}
.align-item-center{
  align-items: center!important;
}
.d-flex{
  display: flex!important;
}
.container{
  max-width: 720px;
  width: 100%;
  margin: 0 20px 0 171px;
}
#header .logo{
  font-size: 28px;
  margin: 15px 50% 13px 13%;
  padding: 0;
  line-height: 1;
  font-weight: 400;
  letter-spacing: 1px;
  text-transform: uppercase;
  margin-right: auto!important;
  color: #767582;
}
h1{
  font-family: "Nunito", sans-serif;
}
.d-none{
  display: none;
}
.nav-menu > ul{
  display: flex;
}
.nav-menu ul{
  margin: 0;
  padding: 0;
  list-style: none;
}
.slash{
  padding: 17px;
  color: #566F94;
}
a{
  text-decoration: none;
  color: #858796;
}
#main_menu{
  float: left;
  font-size: 16px;
}
.h3{
  font-family: 400;
  font-size: 1.75rem;
  color: #5a5c69 !important;
  line-height: 1.2;
}
.h-title{
  font-size: 13px;
  color: #767582;
  margin: 6% 0 0 16%;
}
.main{
  margin-left: 8px;
}
.main_contents{
  float: left;
  margin: 2px 2px 0 20%;
}
.m_detail{
  float: left;
  margin: 77px 0 0px 83px;
}
input[type=text]{border-style: none;}

input:focus {outline:none;}

.m_icon{
  margin: 0 9px 0 14px;
  color: rgba(0, 0, 0, 0.5);
}
.m_title{
  position: fixed
  font-weight: 600;
  font-size: 31px;
  margin-left: -22px;
}
.m_bundle{
  color: rgba(0, 0, 0, 0.5);
  font-weight: 400;
  font-size: 15px;
  margin: 21px -176px 0 -15px;
}
.m_average{
  font-weight: 600;
  margin: 15px 15px 0px -17px;
}
#average{
  margin: 0 -179px 0 -18px;
  font-size: 17px;
}
.center2{
  background: #F1F0F0; 
  margin-top: 19%;
  border-top: 1px solid #D0D3DA;
}
.h1{
  font-size: 21px;
  font-weight: 600;
  margin: 28px 0 0 20%;
}
.main_contents2{
  margin: 10px 0 0 23%;
}
.txt_box2{
  background: #F1F0F0;
  font-size: 16px;
  margin-left: -8px;
}
.m_bundle2{
  font-weight: 400;
  font-size: 16px;
  margin: 0 -134px -0-6px;
}
#text_cover{
  margin: 10px 0 0 421px;
}
#text_cover2{
  margin: 10px 0 0 421px;
}
.m_name{
  color: rgba(0, 0, 0, 0.5);
  padding-right: 30px;
}
.m_perfomer{
  width: 80%;
}
</style>
<body>
<!-- ======= Header ======= -->
 <header id="header" class="header-inner-pages fixed-top">
   <div class="container d-flex align-items-center">
     <h1 class="logo"><a href="/board/home/welcome" style="color: #493c3e">TEMPO</a></h1>
     <nav class="nav-menu" style="margin: 28px 47% 0 0; font-size: 14px;">
       <ul>
         <li><a href="/board/managermode/managerPage">뒤로가기</a></li>
         <li><span class="slash">/</span></li>
         <li><a href="/board/managermode/memberManagement">회원관리</a></li>
       </ul>
     </nav><!-- .nav-menu -->
   </div>
</header><!-- End Header -->
<div id="center">
	<div class="h-title"><h1 style="font-weight: 400;">영화 상세보기</h1></div>
	
	<!-- ========영화 header======== -->
	<div class="main" style="margin-left:8px;">
		<div class="main_contents">
		<div><img style="width:100%; height:320px;" src="/board/upload/${mo.mo_photo}"></div>
		</div>
		<div class="main_contentes m_detail">
			<input type="text" name="mo_title" class="txt_box m_title" value="${mo.mo_title}" readonly><br>
			<input type="text" name="mo_day" class="txt_box m_bundle" value="${mo.mo_day}" readonly>
			<span class="m_icon" style="margin-left: 14px;">・</span>
			<input type="text" name="mo_country" class="txt_box m_bundle" value="${mo.mo_country}" readonly>
			<span class="m_icon" >・</span>
			<input type="text" name="mo_genre" class="txt_box m_bundle" value="${mo.mo_genre}" readonly><br>
			<span class="m_average">평균 ★</span>
			<input type="text" name="mo_grade" class="txt_box m_average" id="average" value="${mo.mo_grade}" readonly>
			<input type="text" class="txt_box m_average" value="(113만명)" readonly style="font-size: 16px;">
		</div>
	</div>
	
	<div class="center2">
		<!-- ========제작/출연======== -->
		<div>
			<h1 class="h1">제작/출연</h1>
			<div id="text_cover">
				<span class="m_name">감독&nbsp;</span>
				<input type="text" name="mo_director" class="txt_box2" value="${mo.mo_director}" readonly><br>
			</div>
			<div id="text_cover2">
				<span style="color: rgba(0, 0, 0, 0.5); margin-right: 14px;">출연진&nbsp;</span>
				<input type="text" name="mo_perfomer" class="txt_box2 m_perfomer" value="${mo.mo_perfomer}" readonly>
			</div>
		</div>
		
		<!-- ========영화 기본정보======== -->
		<h1 class="h1">기본정보</h1>
		<div class="main_contents2">
			<input type="text" name="mo_orititle" class="txt_box2" value="${mo.mo_orititle}" readonly><br>
			<input type="text" name="mo_day" class="txt_box2 m_bundle2" value="${mo.mo_day}" readonly>
			<span style="margin-left:-30px;">・</span>
			<input type="text" name="mo_country" class="txt_box2 m_bundle2" value="${mo.mo_country}" readonly>
			<span style="margin-left: -34px;">・</span>
			<input type="text" name="mo_genre" class="txt_box2 m_bundle2" value="${mo.mo_genre}" readonly><br>
			<input type="text" name="mo_time" class="txt_box2" value="${mo.mo_time}" readonly>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	
</script>
</html>