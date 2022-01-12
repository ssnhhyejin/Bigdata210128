<%@page import="com.spring.web.vo.FBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<FBoardVO> boardList=(List)request.getAttribute("fboardList");
%>
<!DOCTYPE html>
<html lang="ko">
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>자유게시판</title>

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

</head>

<body id="body">

<jsp:include page="/resources/header.jsp"></jsp:include>

<center>
<section class="page-header">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="content">
               <h1 class="page-name">자유게시판</h1>
               <ol class="breadcrumb">
               </ol>
            </div>
         </div>
      </div>
   </div>
</section>
</center>


<div class="page-wrapper">
  <div class="cart shopping">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="block">
            <div class="product-list">  	
                <table class="table">
                  <thead>
                    <tr>
                      <th class="">번호</th>
                      <th class="">&nbsp;&nbsp;&nbsp;닉네임</th>
                      <th class="">제목</th>
                      <th class="">내용</th>
                      <th class="">날짜</th>
                    </tr>
                  </thead>
                  <tbody>
                  <%for(FBoardVO board : boardList) { %>
                  <tr align="center">
                     <td><%=board.getSeq() %></td>
                     <td><%=board.getNickname() %></td>
                     <td><a href="getFBoard.do?seq=<%=board.getSeq()%>"><%=board.getSubject() %></a></td>
                     <td><%=board.getContent()%> </td>
                     <td><%=board.getDate() %></td>
                  </tr>
                  <%} %>
                  </tbody>
                </table>
                <form method="post">
                <div class="text-center">
                <ul class="pagination">
                   <li><a href="#">1</a></li>
                   <li><a href="#">2</a></li>
                   <li><a href="#">3</a></li>
                   <li><a href="#">4</a></li>
                   <li><a href="#">5</a></li>
                   <li><a href="#">다음▶</a></li>
                </ul>
                </div>
                <a href="/web/resources/front/Board/freeBoardWrite.jsp" class="btn btn-main pull-right">글작성하기</a>
              </form>
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
    


  </body>
  </html>