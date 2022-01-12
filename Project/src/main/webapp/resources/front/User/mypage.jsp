<%@page import="com.spring.web.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id=(String)session.getAttribute("id");
	String nickname=(String)session.getAttribute("nickname");
	UserVO userInfo=(UserVO)request.getAttribute("userInfo");

%>

<!DOCTYPE html>
<html lang="ko">
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>EduAcademy</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/web/resources/images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="/web/resources/plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="/web/resources/plugins/bootstrap/css/bootstrap.min.css">

<!-- Animate css -->
<link rel="stylesheet" href="/web/resources/plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="/web/resources/plugins/slick/slick.css">
<link rel="stylesheet" href="/web/resources/plugins/slick/slick-theme.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="/web/resources/css/style.css">

<style>
	table{
		text-align: "center";
	}
	
	input {

	}
</style>
</head>

<body id="body">
<jsp:include page="/resources/header.jsp"></jsp:include>
<%--  <%
 	out.println(userInfo);
 %> --%>
  <div class="page-wrapper">
  <div class="cart shopping">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="block">
            <div class="product-list">  	
                <table class="table">
                  <form method="post" action="/web/updateUser.do">
                  	<input type="hidden" value="<%=id%>" name="id">
                    <tr align="center">
                      <th class="">Password</th>
                      <td><input class="form-control" type="text" value="<%=userInfo.getPassword()%>" name="password"></td>
                    </tr>
                    <tr align="center">
                      <th class="">Nickname</th>
                      <td><input class="form-control" type="text" value="<%=userInfo.getNickname()%>" name="nickname"></td>
                     </tr>
                    <tr align="center">
                    	<th class="">Name</th>
                    	<td><input class="form-control" type="text" value="<%=userInfo.getName() %>" name="name"></td>
                    </tr>
                    <tr align="center">
                      <th class="">Email</th>
                       <td><input class="form-control" type="text" value="<%=userInfo.getEmail()%>" name="email"> </td>
                    </tr>
                </table>
                <button type="submit" class="btn btn-main pull-right">회원 수정 </button>
                </form>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/web/resources/front/User/deleteUser.jsp" class="btn btn-main pull-right">회원 탈퇴</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<footer class="footer section text-center">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <ul class="social-media">
               <li>
                  <a href="https://www.facebook.com/themefisher">
                     <i class="tf-ion-social-facebook"></i>
                  </a>
               </li>
               <li>
                  <a href="https://www.instagram.com/themefisher">
                     <i class="tf-ion-social-instagram"></i>
                  </a>
               </li>
               <li>
                  <a href="https://www.twitter.com/themefisher">
                     <i class="tf-ion-social-twitter"></i>
                  </a>
               </li>
               <li>
                  <a href="https://www.pinterest.com/themefisher/">
                     <i class="tf-ion-social-pinterest"></i>
                  </a>
               </li>
            </ul>
            <ul class="footer-menu text-uppercase">
               <li>
                  <a href="contact.html">CONTACT</a>
               </li>
               <li>
                  <a href="shop.html">SHOP</a>
               </li>
               <li>
                  <a href="pricing.html">Pricing</a>
               </li>
               <li>
                  <a href="contact.html">PRIVACY POLICY</a>
               </li>
            </ul>
            <p class="copyright-text">Copyright &copy;2021, Designed &amp; Developed by <a href="https://themefisher.com/">Themefisher</a></p>
         </div>
      </div>
   </div>
</footer>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    
 
      


    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    
    


  </body>
  </html>