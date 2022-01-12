<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ko" />
    <title>Data</title>

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
                <h1 class="page-name">데이터분석</h1>
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
                    <h3>
                      <li>Data Shape</li>
                   </h3>
                      <h4>
                      <ul>
                        <li>기초통계</li>
                        <li>상관관계 및 정규분포 검증</li>
                        <li>인코딩</li>
                        <li>Data Scaling</li>
                        <li>Data Set</li>
                      </ul>
                      </h4>
                 
                    <h3>
                      <li>Analysis Planning</li>
                    </h3>
                      <h4>
                      <ul>
                        <li>데이터전처리 방향성</li>
                        <li>모델 선택</li>
                        <li>스케일링</li>
                        <li>인코딩</li>
                      </ul>
                   </h4>
                    <h3>
                      <li>Data Coding,Univ Level Data Collecting</li>
                      <a href="./processing.jsp"><span>데이터전처리</span></a>
                    </h3>
                    <h3><li>Classification</li></h3>
                  </ol>
                  <h3>사용 라이브러리</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/result/python_libarary.png"
                  />
                  <br />
                  <h2>1.Data Sahpe 파악</h2>
                  <h3>1-1. 기초통계</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/result/01.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/result/02.png"
                  />
                  <br />
                  <h3>1-2. 상관관계 및 정규분포 검증</h3>
                  <h4>상관관계</h4>
                  <li>
                    특정 변수들은 데이터의 계산 및 변환 변수가 존재하기에
                    상관관계 해석에 대한 VIF 고려
                  </li>
                  <img
                    src="/web/resources/images/bigdata/result/1.png"
                    alt=""
                  />
                  <h4>정규성 검정</h4>
                  <li>
                    관측기간보다 변동치가 적은 변수들(정원기준 변수, 재단 변수,
                    예산비율 변수)일 수록 정규성이 없는것으로 나타남
                  </li>
                  <img
                    src="/web/resources/images/bigdata/result/2.png"
                    alt=""
                  />
                  <br />
                  <h3>1-3. 인코딩</h3>
                  <h4>라벨인코딩</h4>
                  <img
                    src="/web/resources/images/bigdata/result/3.png"
                    alt=""
                  />
                  <h4>원핫인코딩</h4>
                  <img
                    src="/web/resources/images/bigdata/result/4.png"
                    alt=""
                  />

                  <h3>1-4. Data Scaling</h3>
                  <h4>정규화</h4>
                  <img
                    src="/web/resources/images/bigdata/result/5.png"
                    alt=""
                  />
                  <br />

                  <h3>1-5. Data Set</h3>
                  <img
                    src="/web/resources/images/bigdata/result/6.png"
                    alt=""
                  />
                  <h4>결측치 제거</h4>
                  <img
                    src="/web/resources/images/bigdata/result/7.png"
                    alt=""
                  />
                  <br />
                  <img
                    src="/web/resources/images/bigdata/result/8.png"
                    alt=""
                  />
                  <h4>인코딩에 따른 종속변수 데이터 분할</h4>
                  <img
                    src="/web/resources/images/bigdata/result/9.png"
                    alt=""
                  />
                  <h3>데이터 전처리 방향성</h3>
                  <li>
                    케이스의 숫자가 적은 관계로 최대한 Data를 보존하는 방향으로
                    설정
                  </li>
                  <h3>모델선택</h3>
                  <li>
                    특정 변수들은 데이터의 계산 및 변환 변수가 존재하기에
                    다중공선성이 높음 => 선형성과 정규분포의 가정은 유의
                  </li>
                  <h3>스케일링</h3>
                  <li>
                    변환변수가 DF에 포함됨, 따라서 각 변수별 표준편차의 차이가
                    심함 => 이상치 제거보다는 압축하는 방향으로 스케일링
                    (MinMaxScaler)
                  </li>
                  <h3>인코딩</h3>
                  <li>
                    '대학지원', '대학평균점수', '년도'는 순서가 존재 =>
                    종속변수는 라벨인코딩, 기타 변수는 원핫인코딩
                  </li>
                  <br /><br />
                  <h2>2. Data anysis</h2>
                  <h3>사용한 라이브러리</h3>
                  <img
                    src="/web/resources/images/bigdata/result/10.png"
                    alt=""
                  />
                  <h3>2-1. 대학지원인원 원핫인코딩</h3>
                  <h4>a. k-NN(k-Nearest Neighbors)</h4>
                  <img
                    src="/web/resources/images/bigdata/result/11.png"
                    alt=""
                  />

                  &nbsp;
                  <h4>b. 결정트리</h4>
                  <img
                    src="/web/resources/images/bigdata/result/12.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/13.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/14.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/15.png"
                    alt=""
                  />

                  &nbsp;
                  <h4>c. 랜덤포레스트</h4>
                  <img
                    src="/web/resources/images/bigdata/result/16.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/17.png"
                    alt=""
                  />

                  &nbsp;
                  <h3>2-2. 대학지원인원 라벨인코딩</h3>
                  <h4>a. k-NN(k-Nearest Neighbors)</h4>
                  <img
                    src="/web/resources/images/bigdata/result/18.png"
                    alt=""
                  />

                  <h4>b. 결정트리</h4>
                  <img
                    src="/web/resources/images/bigdata/result/19.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/20.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/21.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/22.png"
                    alt=""
                  />

                  <h4>c. 앙상블</h4>
                  <img
                    src="/web/resources/images/bigdata/result/23.png"
                    alt=""
                  />

                  <h4>d. 랜덤포레스트</h4>
                  <img
                    src="/web/resources/images/bigdata/result/24.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/25.png"
                    alt=""
                  />

                  <h4>e.GBM</h4>
                  <img
                    src="/web/resources/images/bigdata/result/26.png"
                    alt=""
                  />
                  <br />
                  <h3>2-3. 평균점수 원핫인코딩</h3>
                  <h4>a. k-NN(k-Nearest Neighbors)</h4>
                  <img
                    src="/web/resources/images/bigdata/result/27.png"
                    alt=""
                  />

                  &nbsp;
                  <h4>b. 결정트리</h4>
                  <img
                    src="/web/resources/images/bigdata/result/28.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/29.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/30.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/31.png"
                    alt=""
                  />

                  &nbsp;
                  <h4>c. 랜덤포레스트</h4>
                  <img
                    src="/web/resources/images/bigdata/result/32.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/33.png"
                    alt=""
                  />
                  <br />
                  <h3>2-4. 평균점수 라벨인코딩</h3>
                  <h4>a. k-NN(k-Nearest Neighbors)</h4>
                  <img
                    src="/web/resources/images/bigdata/result/34.png"
                    alt=""
                  />

                  <h4>b. 결정트리</h4>
                  <img
                    src="/web/resources/images/bigdata/result/35.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/36.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/37.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/38.png"
                    alt=""
                  />

                  <h4>c. 앙상블</h4>
                  <img
                    src="/web/resources/images/bigdata/result/39.png"
                    alt=""
                  />

                  <h4>d. 랜덤포레스트</h4>
                  <img
                    src="/web/resources/images/bigdata/result/40.png"
                    alt=""
                  /><br />
                  <img
                    src="/web/resources/images/bigdata/result/41.png"
                    alt=""
                  />

                  <h4>e.GBM</h4>
                  <img
                    src="/web/resources/images/bigdata/result/42.png"
                    alt=""
                  />
                  <br />
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
