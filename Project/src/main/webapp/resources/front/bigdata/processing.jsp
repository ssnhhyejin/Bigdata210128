<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ko" />
    <title>Processing</title>

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
                <h1 class="page-name">데이터 전처리</h1>
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
                  <h3>순서</h3>
                  <ol>
                    <h4>
                      <li>김영편입 데이터 - 합격자 데이터</li>
                    </h4>
                    <h4>
                      <li>김영편입 데이터 - 모집현황 데이터</li>
                    </h4>
                    <h4>
                      <li>Open API 데이터</li>
                    </h4>
                  </ol>
                  <h2>1. 김영편입 데이터 - 합격자 데이터</h2>
                  <h3>1-1. 합격횟수 레이블 추가</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/1.png"
                  />
                  <br />
                  <h3>1-2. 모의고사 응시횟수 레이블 추가</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/2.png"
                  />
                  <h3>1-3. 결측치 처리</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/3.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/4.png"
                  />
                  <h3>
                    1-4. 합격대학, 출신대학 분류기준 만들기 ← 합격대학 기준으로
                    Open API에서 받아온 학교코드 매칭
                  </h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/5.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/6.png"
                  /><br />
                  <h2>2. 김영편입 데이터 - 모집현황 데이터</h2>
                  <h3>
                    2-1. 합격자 엑셀파일에있는 모집단위별 합격자 점수 데이터
                    merge
                  </h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/7.png"
                  />
                  <h3>3-2. Data Merge</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/8.png"
                  />
                  <h3>3-3. 중복제거 및 합격자 평균점수 있는 row만 살리기</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/9.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/10.png"
                  /><br />
                  <h3>3-4. 결측치 처리</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/11.png"
                  /><br />
                  <h3>3-5. 레이블 인코딩</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/12.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/13.png"
                  /><br />
                  <h2>김영편입에서 제공 받은 데이터</h2>
                  <ul>
                    <li>모집현황 데이터 → meage_df.xlsx</li>
                    <li>합격자 데이터 → pass_df.xlsx</li>
                  </ul>
                  <h3>합격자 데이터 전처리확인 - EDA:corr</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/14.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/15.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/16.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/17.png"
                  />
                  <h4><li>응시횟수 히스토그램</li></h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/18.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/19.png"
                  />

                  <h4><li>합격횟수 히스토그램</li></h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/20.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/21.png"
                  />
                  <hr />
                  <h2>3. OpenAPI - 한국대학교육협의회 대학정보공시</h2>
                  <li>
                    공공데이터포털 5개의 서비스에서 김영편입 데이터에 존재하는
                    대학교의 데이터 확보 → univ_df.xlsx
                  </li>
                  <h3>사용한 라이브러리</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/22.png"
                  />
                  <h3>3-1. Open API의 주요지표 및 코드 조회</h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/23.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/24.png"
                  /><br />
                  <ul>
                    <li>
                      김영편입 합격자 데이터(merge_df)에 존재하는 약 30개의
                      학교의 학교코드를 미리 API를 통해
                      수집(<strong>univ_code99.xlsx</strong>)
                    </li>
                  </ul>
                  <h3>
                    3-2.모집현황 데이터의 "대학명"을 univ_code99 데이터의
                    "대학명"에서 조회
                  </h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/25.png"
                  /><br />
                  <ul>
                    <li>
                      김영편입에서 제공받은 데이터에 존재하는 대학교의
                      "학교코드" 리스트 추출
                    </li>
                    <br />
                    <li>이후 API 데이터 수집 함수에 사용</li>
                  </ul>
                  <img
                    src="/web/resources/images/bigdata/processing/26.png"
                    alt=""
                  />
                  <h3>
                    3-3. function으로 Open API 데이터 가져오는 함수
                    구현(2019-2021년도)
                  </h3>
                  <h4>
                    API에서 얻고자하는 정보의 operation을 통해 Data받고 형변환,
                    Data merge
                  </h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/27.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/28.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/29.png"
                  />
                  <h4>위의 과정을 반복하여 DataFrame 구성</h4>
                  <h3>3-4 API를 통해 수집한 데이터(univ_df)</h3>
                  <ul>
                    <li>학생정원, 재학생수, 재학생 충원율</li>
                    <br />
                    <li>휴학생수, 외국인 학생수</li>
                    <br />
                    <li>졸업자, 취업자, 취업대상자, 취업률</li>
                    <br />
                    <li>전임교원 1인당 저역서</li>
                    <br />
                    <li>
                      전임교원 1인당 학생수(재학생), 전임교원 1인당
                      학생수(편제정원기준)
                    </li>
                    <br />
                    <li>전임교원 강의담당비율</li>
                    <br />
                    <li>
                      전임교원 교내 1인당 연구비, 전임교원 교외 1인당 연구비
                    </li>
                    <br />
                    <li>
                      전임교원확보율(학생정원기준), 전임교원확보율(재학생기준)
                    </li>
                    <br />
                    <li>비전임교원 강의비율, 외국인 전임교원수</li>
                    <br />
                    <li>학생 1인당 교육비, 평균등록금, 재학생 1인당 장학금</li>
                    <br />
                    <li>
                      학자금대출 이용학생비율(전체), 학자금대출
                      이용학생비율(등록금(학비))
                    </li>
                    <br />
                    <li>
                      기숙사 수용률, 수익용 기본재산 확보율, 수익용 기본재산
                      부담률
                    </li>
                    <br />
                    <li>
                      학생 1인당 자료 구입비, 대학총예산대비 자료구입비 비율
                    </li>
                  </ul>
                  <h3>
                    3-5 합격자 데이터(merge_df)에서 대학별 총 편입학 합격인원 과
                    합격자 평균점수 추출하여 Open API 데이터 레이블 추가
                  </h3>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/30.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/31.png"
                  />
                  <h3>3-6 Open API 데이터 확ㅇ니 - 기초통계</h3>
                  <h4>자료형 및 결측치 확인 및 제거, 형변환</h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/32.png"
                  /><br />
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/33.png"
                  />
                  <h4>"대학지원", "대학평균점수" 카테고리 변수로 변환</h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/34.png"
                  /><br />
                  <h4>원핫인코딩</h4>
                  <img
                    alt=""
                    src="/web/resources/images/bigdata/processing/35.png"
                  /><br />

                  <button id="linkToDataAnalysis" class="btn btn-transparent">
                    <a href="./result1.jsp">데이터 분석 내용</a>
                  </button>
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
