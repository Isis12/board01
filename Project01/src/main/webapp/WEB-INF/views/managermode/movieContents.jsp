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
  margin: 12px 0 0 20px;
  font-size: 16px;
}
.h3{
  font-family: 400;
  font-size: 1.75rem;
  color: #5a5c69 !important;
  line-height: 1.2;
}
#center{
  float: left;
  margin: 7% 0 0 23%;
}
.h-title{
  font-size: 24px;
  font-weight: 400;
  color: #5a5c69;
  margin: -20px 0px 0 -10%;
}
#main_contents{
  margin: 45px 2px 0 -20px;
}

</style>
<body>
<!-- ======= Header ======= -->
 <header id="header" class="header-inner-pages fixed-top">
   <div class="container d-flex align-items-center">
     <nav class="nav-menu" style="margin-top: 17px;">
       <ul>
         <li><a href="/board/managermode/managerPage">뒤로가기</a></li>
         <li><span class="slash">/</span></li>
         <li><a href="/board/managermode/memberManagement">회원관리</a></li>
       </ul>
     </nav><!-- .nav-menu -->
     <h1 class="logo"><a href="/board/home/welcome" style="color: #493c3e">TEMPO</a></h1>
   </div>
</header><!-- End Header -->
<div>
	<div id="center">
	<div><h1 class="h-title">영화 상세보기</h1></div>
		<table id="main_contents">
			<tr>
				<td><img style="width:113%; height:100%;" src="/board/upload/${mo.mo_photo}"></td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>