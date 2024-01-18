<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>예매 스텝 1</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- 추가함!!! 아래의css파일들 넣어줘야됨 -->
    <link href="/resources/css/list-groups.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="stylesheet" href="/resources/css/style.calendar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap" rel="stylesheet">
    <style>
      .donglefont{
        font-family: 'Dongle';
      }
      @font-face {
        font-family: 'GmarketSansMedium';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }
      .gmarketfontM{
        font-family: 'GmarketSansMedium';
      }
      .stylishfont{
        font-family: 'Stylish';
      }
      .gdodumfont{
        font-family: 'Gowun Dodum';
      }

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
      .btn-secondary {
        background-color: #ef4562 !important;
        border-color: #ef4562 !important;
      }
      .list-group-item-check:hover + .list-group-item{
        background-color: #ef4562;
      }
      .list-group-item-check:checked + .list-group-item{
        background-color: #ef4562;
      }
    </style>
  </head>
  <body style="padding-top: 72px;">

    <!-- header 공간 -->
<!-- 헤더 영역 시작 -->
<header class="header">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
    <div class="container-fluid">
      <!-- 로고 영역 -->
      <div class="d-flex align-items-center header-logo">
        <a class="navbar-brand py-1" href="index.html">
          <img width="90px" height="60px" style="object-fit: cover" src="/resources/img/yja/myseoullogo4.png" alt="Directory logo"/>
        </a>
        <a href="index.html" style="font-size: 30px; color: #ef4562; font-weight: bold; text-decoration: none;">마이서울</a>
      </div>
      <!-- 로고 영역 끝 -->
      <!-- 메뉴 영역 시작 -->
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ms-auto">
          <!-- 관광지 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              관광지
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="tour-search.html" style="font-size: 18px;">관광지</a>
              <a class="dropdown-item" href="#" style="font-size: 18px;">맛집</a>
              <a class="dropdown-item" href="tour-best.html" style="font-size: 18px;">관광지 추천</a>
              <a class="dropdown-item" href="tour-realtime.html" style="font-size: 18px;">도시 데이터</a>
            </div>
          </li>
          <!-- 관광지 끝 -->
          <!-- 공연 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              공연
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="show-search-1.html" style="font-size: 18px;">음악</a>
              <a class="dropdown-item" href="show-search-2.html" style="font-size: 18px;">연극, 뮤지컬</a
              ><a class="dropdown-item" href="show-search-3.html" style="font-size: 18px;">무용, 서커스/마술</a>
              <a class="dropdown-item" href="show-inform.html" style="font-size: 18px;">공연 정보</a>
              <a class="dropdown-item" href="show-recommendations.html" style="font-size: 18px;">공연 추천</a>
              <a class="dropdown-item" href="show-award.html" style="font-size: 18px;">수상작</a>
            </div>
          </li>
          <!-- 공연 끝 -->
          <!-- 커뮤니티 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="community-tour.html" style="font-size: 18px;">관광지 게시판</a>
              <a class="dropdown-item" href="community-show.html" style="font-size: 18px;">공연 게시판</a>
              <a class="dropdown-item" href="#" style="font-size: 18px;">지역 행사 게시판</a>
            </div>
          </li>
          <!-- 커뮤니티 끝 -->
          <!-- 뉴스 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              뉴스
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="news-tour.html" style="font-size: 18px;">관광지 뉴스</a>
              <a class="dropdown-item" href="news-show.html" style="font-size: 18px;">공연 뉴스</a>
            </div>
          </li>
          <!-- 뉴스 끝 -->
          <!-- 로그인 영역 -->
          <li class="nav-item login-button" style="display: flex; align-items: center;">
            <a class="btn btn-primary" href="login.html"
              style="background-color: #ef4562; border: none; font-family: Concert One, sans-serif; font-weight: bolder; font-size: 15px;">
              Log in
            </a>
          </li>
          <!-- 로그인 영역 끝 -->
        </ul>
      </div>
      <!-- 메뉴 영역 끝 -->
    </div>
  </nav>
  <!-- /Navbar -->
</header>
<!-- 헤더 영역 끝 -->


    <!-- 상단 진행률표시 시작 -->
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 85px;">
      <div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <!-- 상단 진행률표시 끝 -->


    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="subtitle text-primary gmarketfontM">[뮤지컬]</p>
            <h1 class="h1 mb-3 gmarketfontM">몬테크리스토<span class="text-muted float-end">Step 1</span>      </h1>
            <div class="text-block mb-5"></div>
            <div class="row">
              <div class="col-lg-7">
                <img src="/resources/img/myImages/MonteCristoPoster.jpg" height="400px" alt="poster">
              </div>

              <div class="row mb-2 col-lg-5">
                    <p class="mb-0 text-black gmarketfontM" style="text-align: left;">장소</p>
                    <p class="mb-0 text-black gdodumfont" style="text-align: right;">충무아트센터 대극장</p>
                    <p class="mb-0 text-black gmarketfontM" style="text-align: left;">공연기간</p>
                    <p class="mb-0 text-black gdodumfont" style="text-align: right;">2023.11.21~2024.02.25</p>
                    <p class="mb-0 text-black gmarketfontM" style="text-align: left;">공연시간</p>
                    <p class="mb-0 text-black gdodumfont" style="text-align: right;">170분(인터미션20분)</p>
                    <p class="mb-0 text-black gmarketfontM" style="text-align: left;">관람연령</p>
                    <p class="mb-0 text-black gdodumfont" style="text-align: right;">8세 이상 관람가능</p>
                    <p class="mb-0 text-black gmarketfontM" style="text-align: left;">좌석종류</p>
                    <p class="mb-0 text-black gdodumfont" style="text-align: right;">VIP, R, S, A</p>
              </div>
            </div>
            <div class="text-block"></div>
          </div>
          <div class="col-lg-6 ps-xl-5">
            <div class="card border-0 shadow">
              <div class="card-body p-3">
                <!-- 달력 시작 -->
                <section class="ftco-section w-auto">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="elegant-calencar d-md-flex">
                        <div class="wrap-header d-flex align-items-center img" style="background-image: url(/resources/img/myImages/nTower.png);">
                          <p id="reset">Today</p>
                          <div id="header" class="p-0">
                            <div class="head-info">
                              <div class="head-month"></div>
                                <div class="head-day"></div>
                            </div>
                          </div>
                        </div>
                        <div class="calendar-wrap">
                          <div class="w-100 button-wrap">
                            <div class="pre-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-left"></i></div>
                            <div class="next-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-right"></i></div>
                          </div>
                          <table id="calendar">
                            <thead>
                                <tr>
                                  <th>Sun</th>
                                  <th>Mon</th>
                                  <th>Tue</th>
                                  <th>Wed</th>
                                  <th>Thu</th>
                                  <th>Fri</th>
                                  <th>Sat</th>
                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>

                <!-- 달력 끝 -->
                
              </div>
              <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                <div>
                  <h6 class="text-dark gmarketfontM">날짜를 선택해 주세요</h6>
                  <p class="text-dark gmarketfontM">1인당 4장까지 예매 가능합니다</p>
                </div>
              </div>
            </div>
          </div>
          <div class="text-block mb-5"></div>
          <div class="row">
            <div class="col-lg-6">
              <div class="col-lg-7">
                <div class="donglefont h2">좌석</div>
                <div class="d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center mt-n5">
                  <div class="list-group list-group-checkable d-grid gap-2 border-0 gmarketfontM">
                    <input class="list-group-item-check pe-none" type="radio" name="listGroupCheckableRadios" id="listGroupCheckableRadios1" value="" checked>
                    <label class="list-group-item rounded-5 py-3" for="listGroupCheckableRadios1" style="text-align: center;">
                      VIP석
                      <span class="d-block small">170,000원</span>
                    </label>
                
                    <input class="list-group-item-check pe-none" type="radio" name="listGroupCheckableRadios" id="listGroupCheckableRadios2" value="">
                    <label class="list-group-item rounded-5 py-3" for="listGroupCheckableRadios2" style="text-align: center;">
                      R석
                      <span class="d-block small">140,000원</span>
                    </label>
                
                    <input class="list-group-item-check pe-none" type="radio" name="listGroupCheckableRadios" id="listGroupCheckableRadios3" value="">
                    <label class="list-group-item rounded-5 py-3" for="listGroupCheckableRadios3" style="text-align: center;">
                      S석
                      <span class="d-block small">110,000원</span>
                    </label>
                
                    <input class="list-group-item-check pe-none" type="radio" name="listGroupCheckableRadios" id="listGroupCheckableRadios4" value="">
                    <label class="list-group-item rounded-5 py-3" for="listGroupCheckableRadios4" style="text-align: center;">
                      A석
                      <span class="d-block small">80,000원</span>
                    </label>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="mb-2 donglefont h2">매수</div>
                <div class="mb-4">
                  <select class="selectpicker form-control gmarketfontM" name="guests" id="form_guests" data-style="btn-selectpicker" title=" " style="text-align: center;">
                    <option value="1" selected>1매</option>
                    <option value="2">2매</option>
                    <option value="3">3매</option>
                    <option value="4">4매</option>
                  </select>
                </div>
                <div class="mb-2 donglefont h2">회차</div>
                <div class="mb-4">
                  <select class="selectpicker form-control gmarketfontM" name="guests" id="form_guests" data-style="btn-selectpicker" title=" " style="text-align: center;">
                    <option value="1" selected>1회 - 19시 35분</option>
                    <option value="2">2회 - 20시 10분</option>
                    <option value="3">3회 - 21시 05분</option>
                  </select>
                </div>
              </div>
              <div class="text-block"></div>
              <div class="row form-block flex-column flex-sm-row">
                <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="show-detail.html">예매 취소</a></div>
                <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="user-booking-2.html">다음 단계<i class="fa-chevron-right fa ms-2"></i></a></div>
              </div>
            </div>
            <div class="col-lg-6 mt-6">
              <img src="/resources/img/myImages/seats.jpg" alt="seats" height="500px">
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer 공간-->
<!-- 푸터 영역 시작 -->
<footer style="background-color: #fff1f1">
  <div class="container footer-container" style="padding: 0;">
    <div class="row row-cols-5 pt-3">
      <!-- 로고 영역 -->
      <div class="col footer-left">
        <a href="index.html" class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
          <img width="80px" height="80px" src="/resources/img/yja/myseoullogo3.png" alt="Directory logo" style="border-radius: 30px; margin-left: -10px"/>
        </a>
        <p class="text-body-secondary">&copy; 2024</p>
        <img class="footer-sns instagram" src="/resources/img/yja/instagram-1.svg" style="width: 20px"/>
        <img class="footer-sns youtube" src="/resources/img/yja/youtube-1.svg" style="width: 20px"/>
        <img class="footer-sns facebook" src="/resources/img/yja/facebook-square.svg" style="width: 20px"/>
        <img class="footer-sns twitter" src="/resources/img/yja/twitter-1.svg" style="width: 20px"/>
      </div>
      <!-- 로고 영역 끝 -->
      <!-- 관광지 영역 -->
      <div class="col footer-section">
        <h5><strong style="color: #ef4562;">관광지</strong></h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">
            <a href="tour-search.html" class="nav-link p-0 text-body-secondary">관광지</a>
          </li>
          <li class="nav-item mb-2">
            <a href="#" class="nav-link p-0 text-body-secondary">맛집</a>
          </li>
          <li class="nav-item mb-2">
            <a href="tour-best.html" class="nav-link p-0 text-body-secondary">관광지 추천</a>
          </li>
          <li class="nav-item mb-2">
            <a href="tour-realtime.html" class="nav-link p-0 text-body-secondary">도시 데이터</a>
          </li>
        </ul>
      </div>
      <!-- 관광지 영역 끝 -->
      <!-- 공연 영역 시작 -->
      <div class="col footer-section">
        <h5><strong style="color: #ef4562;">공연</strong></h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">
            <a href="show-search-1.html" class="nav-link p-0 text-body-secondary">음악</a>
          </li>
          <li class="nav-item mb-2">
            <a href="show-search-2.html" class="nav-link p-0 text-body-secondary">연극, 뮤지컬</a>
          </li>
          <li class="nav-item mb-2">
            <a href="show-search-3.html" class="nav-link p-0 text-body-secondary">무용, 서커스/마술</a>
          </li>
          <li class="nav-item mb-2">
            <a href="show-inform.html" class="nav-link p-0 text-body-secondary">공연 정보</a>
          </li>
          <li class="nav-item mb-2">
            <a href="show-recommendations.html" class="nav-link p-0 text-body-secondary">공연 추천</a>
          </li>
          <li class="nav-item mb-2">
            <a href="show-award.html" class="nav-link p-0 text-body-secondary">수상작</a>
          </li>
        </ul>
      </div>
      <!-- 공연 영역 끝 -->
      <!-- 커뮤니티 영역 시작 -->
      <div class="col footer-section">
        <h5><strong style="color: #ef4562;">커뮤니티</strong></h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">
            <a href="community-tour.html" class="nav-link p-0 text-body-secondary">관광지 게시판</a>
          </li>
          <li class="nav-item mb-2">
            <a href="community-show.html" class="nav-link p-0 text-body-secondary">공연 게시판</a>
          </li>
          <li class="nav-item mb-2">
            <a href="#" class="nav-link p-0 text-body-secondary">지역 행사 게시판</a>
          </li>
        </ul>
      </div>
      <!-- 커뮤니티 영역 끝 -->
      <!-- 뉴스 영역 시작 -->
      <div class="col footer-section">
        <h5><strong style="color: #ef4562;">뉴스</strong></h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">
            <a href="news-tour.html" class="nav-link p-0 text-body-secondary">관광지 뉴스</a>
          </li>
          <li class="nav-item mb-2">
            <a href="news-show.html" class="nav-link p-0 text-body-secondary">공연 뉴스</a>
          </li>
        </ul>
      </div>
      <!-- 뉴스 영역 끝 -->
    </div>
  </div>
</footer>
<!-- 푸터 영역 끝 -->
    
    <!-- jQuery-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="/resources/https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="/resources/js/theme.js"></script>

    <!-- 아래의 스크립트 추가해야됨!! -->
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/popper.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/main.js"></script>
  </body>
</html>