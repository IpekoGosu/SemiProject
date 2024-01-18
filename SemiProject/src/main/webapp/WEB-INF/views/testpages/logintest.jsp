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
    <title>로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    

    <style>
      @import url('https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap');
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
      .btn-secondary {
        background-color: #ef4562 !important;
        border-color: #ef4562 !important;
      }
      .btn-primary{
        background-color: #FEE500 !important;
        border-color: black;
        color: black !important;
      }

    </style>
  </head>
  <body style="padding-top: 72px">
<!-- 헤더 영역 시작 -->
<header class="header">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
    <div class="container-fluid">
      <!-- 로고 영역 -->
      <div class="d-flex align-items-center header-logo">
        <a class="navbar-brand py-1" href="index.html">
          <img width="90px" height="60px" style="object-fit: cover" src="${path}/resources/img/yja/myseoullogo4.png" alt="Directory logo"/>
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
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="${path}/resources/img/yja/myseoullogo4.png" alt="${path}/resources." style="max-width: 6rem;">
              <h2 class="gmarketfontM">MY SEOUL</h2>
            </div>
            <form class="form-validate">
              <div class="mb-4">
                <label class="form-label" for="loginUsername"> 아이디</label>
                <input class="form-control" name="loginUsername" id="loginUsername" type="text" placeholder="아이디 입력" autocomplete="off" required data-msg="아이디를 입력하세요">
              </div>
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="loginPassword"> 비밀번호</label>
                  </div>
                </div>
                <input class="form-control" name="loginPassword" id="loginPassword" placeholder="비밀번호 입력" type="password" required data-msg="비밀번호를 입력하세요">
              </div>
              <div class="mb-4">
              </div>
              <!-- Submit-->
              <div class="d-grid">
                <button class="btn btn-lg btn-secondary" style="font-size: 14pt;">로그인</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
              <div class="d-grid gap-2">
                <button class="btn btn-lg btn-primary">
                  <img src="${path}/resources/img/myImages/kakotalk.png" alt="" width="30" style="position: relative; left: -50pt;">
                  <span class="" style="text-align: center; font-size: 14pt;">카카오톡 </span>
                </button>
              </div>
              <hr class="my-4">
              <p class="text-center"><small class="text-muted text-center">아이디가 없으신가요? <a href="enroll.html">회원가입                </a></small></p>
            </form><a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.html"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg></a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${path}/resources/img/myImages/loginBackground.jpg);"></div>
        </div>
      </div>
    </div>
<!-- 푸터 영역 시작 -->
<footer style="background-color: #fff1f1">
  <div class="container footer-container" style="padding: 0;">
    <div class="row row-cols-5 pt-3">
      <!-- 로고 영역 -->
      <div class="col footer-left">
        <a href="index.html" class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
          <img width="80px" height="80px" src="${path}/resources/img/yja/myseoullogo3.png" alt="Directory logo" style="border-radius: 30px; margin-left: -10px"/>
        </a>
        <p class="text-body-secondary">&copy; 2024</p>
        <img class="footer-sns instagram" src="${path}/resources/img/yja/instagram-1.svg" style="width: 20px"/>
        <img class="footer-sns youtube" src="${path}/resources/img/yja/youtube-1.svg" style="width: 20px"/>
        <img class="footer-sns facebook" src="${path}/resources/img/yja/facebook-square.svg" style="width: 20px"/>
        <img class="footer-sns twitter" src="${path}/resources/img/yja/twitter-1.svg" style="width: 20px"/>
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
    <!-- JavaScript files-->
    <script>
      
    </script>
    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
  </body>
</html>