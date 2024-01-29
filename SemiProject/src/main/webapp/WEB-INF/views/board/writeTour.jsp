<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="관광 리뷰글 작성" name="title"/>
    </jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>글작성</title>
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
    <link rel="stylesheet" href="${path}/resources/css/list-groups.css">
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

    <section class="hero-home dark-overlay mb-5"><img class="bg-image" src="${path}/resources/img/myImages/classicmusicHero.jpg" alt="">
      <div class="container py-7">
        <div class="overlay-content text-center text-white">
          <h1 class="display-3 text-shadow donglefont bold" style="position: relative; top: 13rem; font-size: 8rem;">후기 작성하기</h1>
        </div>
      </div>
    </section>

    <!-- 후기 작성란 -->
    <section>
      <div class="container">
        <form action="${path}/boardTour/write" method="post" enctype="multipart/form-data">
        <!-- 이거 없으면 에러남 -->
        <input type="hidden" name="tid" value="${tid}">
        <input type="hidden" name="memberId" value="${board.memberId}">
          <div class="row mb-4">
            <div class="col-lg-7">
              <div class="row mb-2">
                <div class="col-lg-1"></div>
                <div class="col-lg-5">
                  <!-- 공연 / 관광 / 행사 -->
                  <label for="writetypesel">어떤 후기인가요?</label>
                  <select disabled id="writetypesel" class="form-select text-center form-select-lg w-100" size="2" multiple aria-label="writetypesel">
                    <option value="공연">공연</option>
                    <option selected value="관광">관광</option>
                  </select>
                </div>
                <div class="col-lg-1"></div>
              </div>
              <div class="row">
                <div class="mb-3">
                  <label for="eventname" class="gmarketfontM">방문한 관광지명</label>
                  <input type="text" class="form-control-lg gdodumfont w-100 form-control" id="eventname" 
                  			name="tname" value="${tname}" readonly placeholder="[뮤지컬] 몬테크리스토">
                </div>
              </div>
              <div class="row">
                <div class="mb-3">
                  <label for="reviewname" class="gmarketfontM">후기 제목</label>
                  <input type="text" class="form-control-lg gdodumfont form-control" id="reviewname" 
                  			name="title" value="" placeholder="제목 입력">
                </div>
              </div>
              <div class="row">
                <div>
                  <label for="reviewimage" class="gmarketfontM">사진 첨부</label>
                  <input class="form-control form-control-lg" id="reviewimage" multiple="multiple" 
                  			name="upfiles" type="file">
                </div>
              </div>
              
            </div>
            <div class="col-lg-5">
              <!-- 별점 -->
              <label for="ratings" class="gmarketfontM">별점</label>
              <div id="ratings" class="mt-n5 d-flex flex-column flex-md-row p-4 gap-4 py-md-5 align-items-center justify-content-center">
                <div class="list-group list-group-radio d-grid gap-2 border-0">
                  <div class="position-relative">
                    <input class="form-check-input position-absolute top-50 end-0 me-3 fs-5" type="radio" name="ratings" id="listGroupRadioGrid1" value="5" checked>
                    <label class="list-group-item py-3 pe-5" for="listGroupRadioGrid1">
                      <strong class="fw-semibold">★★★★★</strong>
                    </label>
                  </div>
              
                  <div class="position-relative">
                    <input class="form-check-input position-absolute top-50 end-0 me-3 fs-5" type="radio" name="ratings" id="listGroupRadioGrid2" value="4">
                    <label class="list-group-item py-3 pe-5" for="listGroupRadioGrid2">
                      <strong class="fw-semibold">★★★★</strong>
                    </label>
                  </div>
              
                  <div class="position-relative">
                    <input class="form-check-input position-absolute top-50 end-0 me-3 fs-5" type="radio" name="ratings" id="listGroupRadioGrid3" value="3">
                    <label class="list-group-item py-3 pe-5" for="listGroupRadioGrid3">
                      <strong class="fw-semibold">★★★</strong>
                    </label>
                  </div>
              
                  <div class="position-relative">
                    <input class="form-check-input position-absolute top-50 end-0 me-3 fs-5" type="radio" name="ratings" id="listGroupRadioGrid4" value="2">
                    <label class="list-group-item py-3 pe-5" for="listGroupRadioGrid4">
                      <strong class="fw-semibold">★★</strong>
                    </label>
                  </div>
                  <div class="position-relative">
                    <input class="form-check-input position-absolute top-50 end-0 me-3 fs-5" type="radio" name="ratings" id="listGroupRadioGrid5" value="1">
                    <label class="list-group-item py-3 pe-5" for="listGroupRadioGrid5">
                      <strong class="fw-semibold">★</strong>
                    </label>
                  </div>
                </div>
              </div>
              <!-- 별점 끝 -->
            </div>
            <div class="col-lg-2"></div>
          </div>
          
          <!-- 후기 본문 -->
          <div class="row mb-3">
            <label for="reviewcontent" class="gmarketfontM">본문</label>
            <textarea name="content" id="reviewcontent" class="form-control mb-3 gdodumfont" rows="10"></textarea>
          </div>
          <div class="row">
	          <div class="col"></div>
	          <div class="col"></div>
	          <div class="col"></div>
	          <div class="col"></div>
	          <div class="col">
		          <button class="btn btn-secondary" type="submit">
		          	<img class="mx-2" src="${path}/resources/img/myImages/iconpencil.png" alt="">등록하기
		          </button>
	          </div>
          </div>


        </form>
      </div>
    </section>


    <!-- JavaScript files-->

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
    <script src="${path}/resources/js/bootstrap.min.js"></script>
  </body>
</html>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>








