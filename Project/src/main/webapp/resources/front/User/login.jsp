<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!-- 
THEME: Aviato | E-commerce template
VERSION: 1.0.0
AUTHOR: Themefisher

HOMEPAGE: https://themefisher.com/products/aviato-e-commerce-template/
DEMO: https://demo.themefisher.com/aviato/
GITHUB: https://github.com/themefisher/Aviato-E-Commerce-Template/

WEBSITE: https://themefisher.com
TWITTER: https://twitter.com/themefisher
FACEBOOK: https://www.facebook.com/themefisher
-->


<!DOCTYPE html>
<html lang="ko">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Login Page</title>
  
  <!-- function-->



  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
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

<!-- <SNS Login Script> -->
 <!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	 /* $(document).ready(function(){
		// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
	     window.Kakao.init('52a2e88e289f886a00f71208364ce394');

	     // SDK 초기화 여부를 판단합니다.
	     console.log(Kakao.isInitialized());
	 }); */
	 Kakao.init('52a2e88e289f886a00f71208364ce394');
   </script>
   <script>
   //카카오로그인
   function kakaoLogin() {
       Kakao.Auth.login({
    	scope:'profile, account_email, gender',
         success: function (response) {
           	console.log(response);
           	window.kakao.API.request({
           		url:'/ve/user/me',
           		success:function(response){
           			const kakao_account=res.kakao_asccount;
           			console.log(kakao_account);
           		}
           	});
             }  ,
             
             fail: function (error) {
               console.log(error)
             },
             
           })
         },
         fail: function (error) {
           console.log(error)
         },
       })
     }
   //카카오로그아웃  
   function kakaoLogout() {
       if (Kakao.Auth.getAccessToken()) {
         Kakao.API.request({
           url: '/v1/user/unlink',
           success: function (response) {
              console.log(response)
           },
           fail: function (error) {
             console.log(error)
           },
         })
         Kakao.Auth.setAccessToken(undefined)
       }
     }  
</script>


</head>




<body id="body">

<jsp:include page="/resources/header.jsp"></jsp:include>


<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
            <img src="/web/resources/images/logo.png" alt="">
          </a>
          <h2 class="text-center">Welcome Back</h2>
          <form class="text-left clearfix" action="/web/login.do" method="post" >
            <div class="form-group">
              <input type="text" class="form-control"  placeholder="ID" name="id">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" placeholder="Password" name="password">
            </div>
            <div class="text-center">
          </form>
          <button type="submit" class="btn btn-main text-center" >Login</button><br><br>
              <button onClick="kakaoLogin();">KAKAO</button>
              <button>Facebook</button>
              <!-- <button onClick="fnFbCustomLogin();"><a href="javascript:void(0)">Facebook</a></button> -->
              <input type="button" value="GoogleLogin" onClick="location.href='/web/resources/front/User/google.jsp'">
            </div>
              
          <p class="mt-20">New in this site ?<a href="signup.jsp"> Create New Account</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href="https://www.facebook.com/themefisher"> <i
								class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href="https://www.instagram.com/themefisher"> <i
								class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href="https://www.twitter.com/themefisher"> <i
								class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href="https://www.pinterest.com/themefisher/"> <i
								class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu text-uppercase">
						<li><a href="contact.html">CONTACT</a></li>
						<li><a href="shop.html">SHOP</a></li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">PRIVACY POLICY</a></li>
					</ul>
					<p class="copyright-text">
						Copyright &copy;2021, Designed &amp; Developed by <a
							href="https://themefisher.com/">Themefisher</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="/web/resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="/web/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="/web/resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="/web/resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="/web/resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="/web/resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="/web/resources/plugins/slick/slick.min.js"></script>
    <script src="/web/resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="/web/resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="/web/resources/js/script.js"></script>
    


  </body>
  </html>