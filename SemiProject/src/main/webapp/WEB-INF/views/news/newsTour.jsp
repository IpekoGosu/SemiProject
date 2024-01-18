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
    <title>관광 뉴스 검색</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="../vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="../vendor/magnific-popup/magnific-popup.css">
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <style>
        /* nav-link 영역 (이름순 정렬, 날짜순 정렬) */
        .nav-link {
            color: #ef4562 !important;
        }
        .nav-link:hover {
            color: white !important;
            background-color: #ef4562 !important;
        }
        .nav-link:focus {
            color: white !important;
            background-color: #ef4562 !important;
        }
        .nav-link.active {
            color: white !important;
            background-color: #ef4562 !important;
        }
        /* 페이지네이션 영역 (1, 2, 3, 4, 5) */
        .page-link {
            color: #ef4562 !important;
            box-shadow: none;
        }
        .page-link.active, .active > .page-link {
            color: white !important;
            background-color: #ef4562 !important;
            border: none !important;
            box-shadow: none !important;
        }
        .page-link:focus {
            box-shadow: none !important;
        }
    </style>
</head>
<body class="reward" style="padding-top: 72px;">
<!-- 헤더 영역 시작 -->
<header class="header">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
    <div class="container-fluid">
      <!-- 로고 영역 -->
      <div class="d-flex align-items-center header-logo">
        <a class="navbar-brand py-1" href="index.html">
          <img width="90px" height="60px" style="object-fit: cover" src="../img/yja/myseoullogo4.png" alt="Directory logo"/>
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
<!-- 공연 검색 폼 영역 시작 -->
<img src="../img/myImages/newBanner.png" alt="" style="object-fit: cover; width: 1920px; height: 400px;">
<div class="container">
    <div class="search-bar rounded p-4 mt-n5 position-relative z-index-20">
      <form action="#">
        <div class="row">
            <div class="col-10 d-flex align-items-center">
              <input class="form-control border-0 shadow-0" type="search" name="search" placeholder="원하는 뉴스를 검색해주세요">
            </div>
            <div class="col-2 d-grid mb-0">
              <button class="btn btn-primary h-100" type="submit" style="background-color: #ef4562; border: none;">검색</button>
            </div>
        </div>
      </form>
    </div>
  </div>
<!-- 공연 검색 폼 영역 끝 -->
<!-- 검색된 영역 시작 -->
<section class="awards">
<div class="container">
    <div class="mt-3 d-flex justify-content-between align-items-center">
        <!-- 검색된 결과 수 시작 -->
        <span>검색된 결과 : <strong style="color: #ef4562;">30</strong> 개</span>
        <!-- 검색된 결과 수 끝 -->
        <!-- 정렬 선택 영역 시작 -->
        <ul class="nav nav-pills-custom" style="justify-content: end;">
            <li class="nav-item"><a class="nav-link active" href="#" style="border: none;">최신순 정렬</a></li>
            <li class="nav-item"><a class="nav-link" href="#" style="border: none;">오래된순 정렬</a></li>
        </ul>
        <!-- 정렬 선택 영역 끝 -->
    </div>
    <!-- 검색된 리스트 영역 시작 -->
    <div class="row gx-5 gy-4">
        <!-- 1 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero officiis excepturi reprehenderit a, qui fugit, dolorum dolore aut quidem sit unde! Mollitia eos, velit minima sequi consequuntur aperiam dolore dignissimos.
                            Minima illum quia corporis, quos in amet facilis tempore beatae architecto, accusamus laboriosam commodi alias aperiam eaque eius id nobis harum doloremque ipsa? Libero accusantium dolorem culpa quibusdam eius aspernatur.
                            Consequatur vero quod natus optio explicabo culpa dolor doloribus. Dicta ipsam obcaecati pariatur ipsum? Natus repudiandae quaerat cumque tenetur numquam similique in molestiae minima nostrum deserunt, at reiciendis, modi vero?</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 2 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_alta.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 3 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error earum, eum officia inventore non reprehenderit velit consequatur esse at assumenda dolorum reiciendis aut placeat cum expedita tempore numquam quo nam.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_dracula.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 4 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_les.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 5 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error earum, eum officia inventore non reprehenderit velit consequatur esse at assumenda dolorum reiciendis aut placeat cum expedita tempore numquam quo nam.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_monte.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 6 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_notr.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 7 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error earum, eum officia inventore non reprehenderit velit consequatur esse at assumenda dolorum reiciendis aut placeat cum expedita tempore numquam quo nam.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_rebecca.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 8 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_rent.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 9 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_rent.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
        <!-- 10 -->
        <div class="col-6">
            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                <div class="row g-0">
                    <div class="col-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text" style="height: 250px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore et nihil adipisci rerum quibusdam perspiciatis nobis eaque nesciunt quasi. Voluptate quod ratione reprehenderit non doloribus hic facilis, vel aut corrupti.</p>
                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span>2023-01-01</span></p>
                            <a href="#" style="text-decoration: none;">기사 링크로 가기</a>
                        </div>
                    </div>
                    <div class="col-auto">
                        <img src="../img/myImages/m_rent.png" class="card-img rounded-start" alt="...">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 검색된 리스트 영역 끝 -->
    <!-- 페이지네이션 영역 시작 -->
    <div class="mt-5 mb-5">
      <nav aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
          </ul>
      </nav>
    </div>
    <!-- 페이지네이션 영역 끝 -->
</div>
</section>
<!-- 검색된 영역 끝 -->
<!-- 푸터 영역 시작 -->
<footer style="background-color: #fff1f1">
  <div class="container footer-container" style="padding: 0;">
    <div class="row row-cols-5 pt-3">
      <!-- 로고 영역 -->
      <div class="col footer-left">
        <a href="index.html" class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
          <img width="80px" height="80px" src="../img/yja/myseoullogo3.png" alt="Directory logo" style="border-radius: 30px; margin-left: -10px"/>
        </a>
        <p class="text-body-secondary">&copy; 2024</p>
        <img class="footer-sns instagram" src="../img/yja/instagram-1.svg" style="width: 20px"/>
        <img class="footer-sns youtube" src="../img/yja/youtube-1.svg" style="width: 20px"/>
        <img class="footer-sns facebook" src="../img/yja/facebook-square.svg" style="width: 20px"/>
        <img class="footer-sns twitter" src="../img/yja/twitter-1.svg" style="width: 20px"/>
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
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {
        
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }    
        // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
        // use your own URL in production, please :)
        // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
        //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
        injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
        
    </script>
    <!-- jQuery-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="../vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="../vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="../vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="../vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="js/theme.js"></script>
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
    <!-- Available tile layers-->
    <script src="../js/map-layers.js"> </script>
    <script src="../js/map-category.js">                               </script>
    <script>
      createListingsMap({
          mapId: 'categorySideMap',
          jsonFile: 'js/rooms-geojson.json',
          mapPopupType: 'rental',
          useTextIcon: true,
          //tileLayer: tileLayers[5]  - uncomment for a different map styling
      });   

    </script>
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"> </script>
    <script src="../js/datepicker-category.js"> </script>
    <!-- Price Slider-->
    <script src="../vendor/nouislider/nouislider.min.js"></script>
    <script>
      var snapSlider = document.getElementById('slider-snap');
    
      noUiSlider.create(snapSlider, {
          start: [ 3, 100 ],
          snap: false,
          connect: true,
          step: 1,
          range: {
              'min': 3,
              'max': 100
          },
          format: {
            to: function (value) {
                return parseInt(value);
            },
            from: function (value) {
                return value;
            }
        }
      });
      var snapValues = [
          document.getElementById('slider-snap-value-from'),
          document.getElementById('slider-snap-value-to')
      ];
      var inputValues = [
          document.getElementById('slider-snap-input-from'),
          document.getElementById('slider-snap-input-to')
      ];
      snapSlider.noUiSlider.on('update', function( values, handle ) {
          snapValues[handle].innerHTML = parseInt(values[handle]);
          inputValues[handle].value = parseInt(values[handle]);
      })
    </script>
</body>
</html>