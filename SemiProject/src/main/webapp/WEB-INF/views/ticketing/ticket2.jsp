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
    <title>예매 스텝 2</title>
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
  
    <!-- 추가 css 링크 -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="stylesheet" href="/resources/css/style.calendar.css">
  
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
      <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <!-- 상단 진행률표시 끝 -->


    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="subtitle text-primary gmarketfontM">[뮤지컬]</p>
            <h1 class="h1 gmarketfontM mb-3">몬테크리스토<span class="text-muted float-end">Step 2</span>      </h1>
            <h2 class="h5 gdodumfont">결제수단을 선택하세요</h2>
            <div class="text-block mb-3"></div>
            <div class="text-block">
              <form action="#">
                <div class="d-flex justify-content-between align-items-end mb-4">
                  <h5 class="mb-0 gmarketfontM">신용카드 / 체크카드</h5>
                  <div><img src="/resources/img/myImages/bankIcons.png" alt="bankIcons" height="50px"></div>
                </div>
                <select class="selectpicker form-control mb-3 gmarketfontM" name="payment" id="form_payment" data-style="btn-selectpicker">
                  <option value="">우리은행 •••• 5687</option>
                  <option value="">신한은행 •••• 4569</option>
                  <option value="">직접 입력하기</option>
                </select>
                <button class="btn btn-link btn-collapse ps-0 text-muted gmarketfontM" type="button" data-bs-toggle="collapse" data-bs-target="#addNewCard" aria-expanded="false" aria-controls="addNewCard" data-expanded-text="닫기" data-collapsed-text="카드 추가하기" >카드 추가하기</button>
                <div class="row collapse gdodumfont" id="addNewCard">
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="card-name">카드이름</label>
                    <input class="form-control" type="text" name="card-name" placeholder="카드이름" id="card-name">
                  </div>
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="card-number">카드번호</label>
                    <input class="form-control" type="text" name="card-number" placeholder="카드번호" id="card-number">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="expiry-date">유효기간</label>
                    <input class="form-control" type="text" name="유효기간" placeholder="MM/YY" id="expiry-date">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="cvv">CVC/CVV</label>
                    <input class="form-control" type="text" name="cvv" placeholder="123" id="cvv">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="zip">카드 비밀번호</label>
                    <input class="form-control" type="text" name="카드 비밀번호" placeholder="1234" id="zip">
                  </div>
                </div>
              </form>
            </div>
            <div class="text-block">

              <!-- 카카오페이 연동 해줄 부분 -->
              <div class="d-flex justify-content-between align-items-end mt-n2 mb-3">
                <h5 class="gmarketfontM">카카오페이</h5>
                <div><a href="#"><img class="hover-animate shadow" src="/resources/img/myImages/easyPay.png" alt="kakaoPay" height="70px" style="border-radius: 5%;"></a></div>
              </div>
            </div>
            <div class="text-block gdodumfont">
              <div class="text-dark">[뮤지컬] 몬테 크리스토</div>
              <div class="text-dark">2023.12.15.  1회차(19시35분)</div>
              <div class="text-dark">R석 4매</div>
              <div class="text-dark gmarketfontM" style="text-align: right;">합계 금액 : 560,000원</div>
            </div>
            <div class="row form-block flex-column flex-sm-row gmarketfontM">
              <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="show-detail.html">예매 취소</a></div>
              <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="user-booking-1.html"><i class="fa-chevron-left fa me-2"></i>이전 단계</a></div>
                <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="user-booking-3.html">다음 단계<i class="fa-chevron-right fa ms-2"></i></a></div>
            </div>
          </div>
          <div class="col-lg-6 ps-xl-5">
            <div class="card border-0 shadow">
              <div class="card-body p-4">
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
                  <h6 class="text-dark gmarketfontM">[뮤지컬] 몬테 크리스토</h6>
                  <p class="text-dark gmarketfontM">2023.12.15. 19시35분</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="/resources/js/theme.js"></script>

    <!-- 추가 스크립트 -->
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/popper.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/main.js"></script>

  </body>
</html>