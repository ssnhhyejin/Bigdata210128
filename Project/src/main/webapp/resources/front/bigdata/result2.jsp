<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ko" />
    <title>result2</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Construction Html5 Template" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=5.0"
    />
    <meta name="author" content="Themefisher" />
    <meta name="generator" content="Themefisher Constra HTML Template v1.0" />

    <!-- Favicon -->
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="/web/resources/images/favicon.png"
    />

    <!-- Themefisher Icon font -->
    <link
      rel="stylesheet"
      href="/web/resources/plugins/themefisher-font/style.css"
    />
    <!-- bootstrap.min css -->
    <link
      rel="stylesheet"
      href="/web/resources/plugins/bootstrap/css/bootstrap.min.css"
    />

    <!-- Animate css -->
    <link rel="stylesheet" href="/web/resources/plugins/animate/animate.css" />
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="/web/resources/plugins/slick/slick.css" />
    <link
      rel="stylesheet"
      href="/web/resources/plugins/slick/slick-theme.css"
    />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="/web/resources/css/style.css" />
  </head>

  <body>
    <jsp:include page="/resources/header.jsp"></jsp:include>

    <center>
      <section class="page-header">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="content">
                <h1 class="page-name">Data Analysis Conclusion</h1>
                <ol class="breadcrumb"></ol>
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
                  <h1>Data Analysis Process</h1>
                  <ol>
                    <h3><li>Data Shape</li></h3>
                    <h3><li>Analysis Planning</li></h3>
                    <h3><li>Data Coding,Univ Level Data Collecting</li></h3>
                    <h3><li>Classification</li></h3>
                  </ol>

                  <h2>1. 개인단위 분석</h2>
                  <h3>
                    합격률 예측 및 다수의 합격 성과를 보인 학생의 특성 분석
                  </h3>
                  <ul>
                    <li>
                      <strong
                        >비교대조군이 존재하지 않기에 실제 합격률 예측 및 집단
                        간 차이 분석 불가능</strong
                      >
                    </li>
                    <li>
                      대학에서 Open된 Data는
                      <strong>최소 캠퍼스 단위</strong>(단, 이원화대학은 본교의
                      Data만 존재)이며, 이로 인해
                      <strong>Anaylsis Level의 불일치</strong>
                    </li>
                    <li>
                      대학의 모집단위는 대학분류에 따른 편제조사 데이터에 따라
                      상이함. 따라서,
                      <strong
                        >모집단위별 모집인원은 해당 모집 입학정원의 최근 2년의
                        결원 Data가 확보</strong
                      >되어야 함
                    </li>
                  </ul>
                  <h3>시사점</h3>
                  <ol>
                    <h4>
                      <li>
                        Data collecting시 출신대학의 학제 및 지역정보 추가
                        <span
                          >➡ 상향지원, 소신지원, 하향지원 등의 지원전략</span
                        >
                      </li>
                    </h4>
                    <ul>
                      <li>전문대 > 대학</li>
                      <li>
                        전문대 또는 대학 등 집단 특성에 맞는 커리큘럼 제공
                      </li>
                    </ul>
                    <h4><li>비교집단의 Data 확보</li></h4>
                    <h4>
                      <span
                        ><strong
                          >➡ 재등록에 따른 할인이나 정보제공 프로모션 시 기존
                          지원 현황을 통해 약점 분석 Data와 불합격 Data 같이
                          수취</strong
                        ></span
                      >
                    </h4>
                    <h4><li>모의고사 응시할 경우 Data 확보</li></h4>
                    <span
                      >➡ 김영편입학원에서 모의고사를 보는 학생이 전체
                      시장수요자의 대표성을 가진다면,<br />
                      시험응시 후
                      <strong
                        >성적확인 시 희망 대학과 학과정보를 통해서 당해년도의
                        지원인원의 가숫자를 확보</strong
                      >
                      가능</span
                    >
                  </ol>
                  <br />
                  <hr />
                  <br />
                  <h2>2. 대학 단위 분석</h2>
                  <h3>
                    대학 경쟁력 및 특성이 학생들의 지원인원(경쟁률)과
                    평균점수(진입장벽)에 영향을 주는가?
                  </h3>
                  <ul>
                    <li>
                      이번 분석에서의 데이터는 기본적으로 <strong
                        >Value간 VIF로 인해 상관의 왜곡이 존재</strong
                      ><br />, 대학알리미의 변수들은 <strong
                        >설계를 통해 이론적 기반이 존재</strong
                      >하는 바, 시간을 들일 경우 정제가능함.
                    </li>
                    <br />
                    <li>
                      표본이 대표성을 가지려면 단기간이 아닌 <strong
                        >정기적이고 장기적인 Data Collecting이 필요</strong
                      >
                    </li>
                    <br />
                    <li>
                      편입을 선택하는 학생들은 대입 학생들보다 관여도가 높음
                      <br />➡ Countable 변수만이 아닌 <strong
                        >대학과 학과의 특성화 요소, 취업 진로 및 자격증 취득에
                        대한 정보 등 Uncountable Data 확보</strong
                      >도 필요
                    </li>
                  </ul>
                  <h3>시사점</h3>
                  <ol>
                    <h4>
                      <li>
                        현재 대학의 특성은 크게
                        학생/재정/교육여건/교육성과/학생환원 등으로
                        <span style="text-decoration-line: underline"
                          >Category화</span
                        >
                        가능함.
                      </li>
                    </h4>
                    <ul>
                      <li>
                        학생은 학교의 규모, 재정은 재단의 건전성과
                        학교발전가능성, 교육여건은 교육의 질, 교육성과는 취업과
                        대학의 방향성, 학생환원은 학생의 경제적 부담을 파악 가능
                      </li>
                    </ul>

                    <h4>
                      <li>
                        이번 분석에서는 VIF로 인하여 인코딩에 따른 가중치가
                        혼재되어 있으나,
                        <span style="text-decoration-line: underline"
                          >교육여건 및 학생환원에 대한 지표의 가중치가
                          존재</span
                        >하는것으로 나타남
                      </li>
                    </h4>
                    <ul>
                      <li>
                        대학의 조각화 및 교육 방식의 변화로 인해, 고등교육의
                        수요 또한 변화됨
                      </li>
                    </ul>
                  </ol>
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
              <li><a href="contact.html">CONTACT</a></li>
              <li><a href="shop.html">SHOP</a></li>
              <li><a href="pricing.html">Pricing</a></li>
              <li><a href="contact.html">PRIVACY POLICY</a></li>
            </ul>
            <p class="copyright-text">
              Copyright &copy;2021, Designed &amp; Developed by
              <a href="https://themefisher.com/">Themefisher</a>
            </p>
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
