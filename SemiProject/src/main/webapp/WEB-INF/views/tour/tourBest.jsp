<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="관광지 커뮤니티" name="title"/>
    </jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>관광지 커뮤니티</title>
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

    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom.css" />
    <link rel="stylesheet" href="${path}/resources/css/customyja_index.css" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap" rel="stylesheet">
    <style>

    </style>
  </head>
  <body style="padding-top: 72px;">

    <div class="swiper-container" style="height: 65vh;">
      <!-- Additional required wrapper-->
      <div class="swiper-wrapper">
        <div class="swiper-slide bg-cover dark-overlay" style="background-image: url('${path}/resources/img/tour/seoul.jpg');">
          <div class="container h-100">
            <div class="d-flex h-100 text-white overlay-content align-items-center" data-swiper-parallax="-500">
              <div class="w-100 pt-6">
                <div class="row">
                  <div class="col-12 mb-2">
                    <!-- <h4 class="display-3 fw-bold mb-3" style="line-height: 1">가장 인기 많은 관광지</h4> -->
                    <h4 style="color:#ef4562;line-height: 1; font-family: GmarketSansMedium, sans-serif; font-weight: bold;">BEST 4 관광지</h4>
                    <p class="mb-1 ">가장 인기많은 관광지를 4개를 확인해보세요.</p>
                    <h2 style="color:#f3798d;;font-family: GmarketSansMedium, sans-serif;
                    font-weight: bold;">관광지를 골라 여행을 떠나보세요.</h2>
                  </div>
                </div>
                <a class="d-md-none btn btn-outline-light" href="#">Start exploring</a>
                <div class="row">
                  <!-- place item-->
                  <c:forEach items="${list}" var="item" varStatus="status">
                  <div class="d-none d-md-block col-md-3 mb-5" data-marker-id="">
                    <div class="card h-100 border-0 shadow-lg bg-dark hover-animate">
                      <div class="card-img-top overflow-hidden gradient-overlay"> 
                        <!--<img class="img-fluid" src="${path}/resources/img/photo/fez.jpg" alt="Fez"/>-->
                        <c:if test="${empty item.t_image_main}">
                          <img class="img-fluid" src="${path}/resources/img/yja/i.jpg" alt="Modern, Well-Appointed Room">
                        </c:if>
                        <c:if test="${not empty item.t_image_main}">
                          <img class="img-fluid" src="${item.t_image_main}" alt="Modern, Well-Appointed Room">
                        </c:if><a class="tile-link" href="${path}/tour/tourdetail?no=${item.t_content_id}"></a>
                        <!--
                        <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                            <svg class="svg-icon text-white">
                              <use xlink:href="${path}/tour/tourdetail?no=${item.t_content_id}"> </use>
                            </svg></a>
                          </div>
                        -->
                      </div>
                      <div class="card-body d-flex">
                        <div class="w-100">
                          <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-white" href="detail-rooms.html">${item.t_title}</a></h6>
                          <div class="d-flex card-subtitle">
                            <p class="flex-grow-1 mb-0 text-muted text-sm">${item.t_addr}</p>
                            <p class="flex-shrink-0 mb-0 card-stars text-xs text-end">
                              <c:forEach begin="1" end="${item.t_review_rate}" step="1">
                                <i class="fa fa-star text-warning"></i>
                              </c:forEach>
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-pagination swiper-pagination-white"></div>
      <div class="swiper-nav d-none d-lg-block">
        <div class="swiper-button-prev" id="homePrev"></div>
        <div class="swiper-button-next" id="homeNext"></div>
      </div>
    </div>
    <!-- background-color: #ffcccc -->

    <section class="py-5">
      <div class="container">
        
        <div class="container">
          <div class="row mb-3">
            <div class="col-md-12 title" style="padding-left: 0px;">
              <h2 style="color:#ef4562;font-family: GmarketSansMedium, sans-serif;font-weight: bold;">추천관광지</h2>
              <p class="subtitle" style="font-size: 20px">
                오늘의 추천 관광지 입니다.
              </p>
            </div>
            <!-- <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-food.html">
              더 둘러보기<i class="fas fa-angle-double-right ms-2" aria-hidden="true"></i></a></div> -->
          </div>
          
          <div>
            <div></div>
            <div>
              <div></div>
              <div></div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
             <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(http://www.sangjomagazine.com/imgdata/sangjomagazine_com/201811/2018111017584296.jpg) no-repeat; background-size: cover;">
                  <a class="tile-link" href="/semi/tour/tourdetail?no=126535"> </a>
                  <h2 class="text-shadow text-white pt-3" style="margin-left: 20px; font-family :GmarketSansMedium">서울의 상징</h2>
                  <h2 class="text-shadow text-white" style="margin-left: 20px; font-family :GmarketSansMedium">남산 타워</h2>
                  <h3 class="text-shadow text-mutedCustom" style="margin-left: 20px;color:#f3798d;  font-family :GmarketSansMedium">#명소 #랜드마크</h3>
                  <div class="d-flex h-100 text-white justify-content-around py-6 py-lg-7 mb-10">
                  </div>
              </div>
              <!-- <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(https://gocamping.or.kr/upload/camp/3353/thumb/thumb_720_3233c4IhyPbzG49c42NBshTq.jpg) no-repeat; background-size: cover;">
                  <a class="tile-link" href="campingDetail.html"> </a>
                  <h2 class="text-shadow text-white pt-3" style="margin-left: 20px; font-family :GmarketSansMedium">자차로 1시간 거리의</h2>
                  <h2 class="text-shadow text-white" style="margin-left: 20px; font-family :GmarketSansMedium">하늘연 캠핑장</h2>
                  <h3 class="text-shadow text-mutedCustom" style="margin-left: 20px;color:#f3798d;  font-family :GmarketSansMedium">#파주#글램핑</h3>
                  <div class="d-flex h-100 text-white justify-content-around py-6 py-lg-7 mb-10">
                  </div>
              </div> -->
          </div>
          
          <div class="mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 h-48 border-0 hover-animate" style="background: center center url(https://mediahub.seoul.go.kr/uploads/mediahub/2022/08/gAlWJGXGNDYOAhIqfwpniAOxkmgqqbpM.png) no-repeat; background-size: cover;">
              <a class="tile-link" href="/semi/tour/tourdetail?no=129507"> </a>
              <h3 class="text-shadow text-white" style="margin-left: 20px; padding-top:110px; font-family :GmarketSansMedium">청계천</h3>
              <h4 class="text-shadow text-mutedCustom" style="margin-left: 20px;color:#f3798d;  font-family :GmarketSansMedium">#서울의흐름</h4>
            </div>
            <!-- <div class="card shadow-lg border-0 w-100 h-48 border-0 hover-animate" style="background: center center url(https://gocamping.or.kr/upload/camp/7707/thumb/thumb_720_8592aNVHM8XTABlndiDfBnhS.jpg) no-repeat; background-size: cover;">
              <a class="tile-link" href="campingDetail.html"> </a>
              <h3 class="text-shadow text-white" style="margin-left: 20px; padding-top:110px; font-family :GmarketSansMedium">더스트림 카라반</h3>
              <h4 class="text-shadow text-mutedCustom" style="margin-left: 20px;color:#f3798d;  font-family :GmarketSansMedium">#영덕#해변</h4>
            </div> -->
            <div class="card shadow-lg border-0 w-100 h-48 border-0 hover-animate mt-5" style="background: center center url(https://media.istockphoto.com/id/1327824636/ko/%EC%82%AC%EC%A7%84/%EA%B2%BD%EB%B3%B5%EA%B6%81%EC%97%90%EC%84%9C-%EB%B4%84%EB%B2%9A%EA%BD%83.jpg?s=2048x2048&w=is&k=20&c=FBqsoky4RHxGe7WDnPFvXVqwaY9WdNrCuqy6B8_AmJ0=) no-repeat; background-size: cover;">
                <a class="tile-link" href="/semi/tour/tourdetail?no=126508"> </a>
                <h3 class="text-shadow text-white" style="margin-left: 20px; padding-top:110px;font-family :GmarketSansMedium">경복궁</h3>
                <h4 class="text-shadow text-mutedCustom" style="margin-left: 20px;color:#f3798d;  font-family :GmarketSansMedium">#문화유산</h4>
            </div>
        </div>
      </div>
      </div>
      <!-- <div class="col-md-12">
        <div class="col text-center">
      <button type="button" class="btn btn-primary h-100" type="submit">
        더보기 + 
      </button> -->
    </div>
    </section>

    <section class="py-5" style="background-color: #fff1f1;height: 600px;">
      <div class="container">
        <div class="row mb-2">
          <div class="col-md-12 title">
            <h2 style="font-family: GmarketSansMedium, sans-serif;font-weight: bold;">최근 HOT</h2>
            <p class="subtitle" style="font-size: 20px">관광지</p>
          </div>
          <!-- <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-food.html">
            더 둘러보기<i class="fas fa-angle-double-right ms-2" aria-hidden="true"></i></a></div> -->
        </div>
        <div class="swiper-container guides-slider mx-n2 pt-3">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/semi/tour/tourdetail?no=127699"></a><img class="bg-image" src="https://i.namu.wiki/i/fYMG7M0UBfE8RiHGsY2iK0yeowsmSeQB2dZQa9gVSU6o3x-ej1YyXV1vrweflII3ApYsd_oLgVEjPvtjNs6Piprw_9TqTNgzArEHr2PLLCZ_N9mkuRoj8F0ECGERc5Vg24m9C9FevL5UYQpemKEPRA.webp" alt="Card image">
                <div class="card-body overlay-content">
                  <h5 class="card-title text-shadow text-uppercase" style="font-family :GmarketSansMedium;color:#fff1f1">63스퀘어</h5>
                  <p class="card-text text-sm"style="font-family :GmarketSansMedium;color:#f3798d">서울의 랜드마크</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/semi/tour/tourdetail?no=126508"></a><img class="bg-image" src="https://previews.123rf.com/images/prakobkit/prakobkit1507/prakobkit150700030/43187833-%EC%84%9C%EC%9A%B8%EC%9D%98-%EA%B2%BD%EB%B3%B5%EA%B6%81.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h5 class="card-title text-shadow text-uppercase"style="font-family :GmarketSansMedium;color:#fff1f1">경복궁</h5>
                  <p class="card-text text-sm" style="font-family :GmarketSansMedium;color:#f3798d">문화적 랜드마크</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/semi/tour/tourdetail?no=129703"></a><img class="bg-image" src="https://www.koya-culture.com/data/photos/20210519/art_16207829057529_84ddab.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h5 class="card-title text-shadow text-uppercase"style="font-family :GmarketSansMedium;color:#fff1f1">국립 중앙 박물관</h5>
                  <p class="card-text text-sm"style="font-family :GmarketSansMedium;color:#f3798d">국립박물관</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/semi/tour/tourdetail?no=130431"></a><img class="bg-image" src="https://img.hankyung.com/photo/201511/AB.10880117.1.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h5 class="card-title text-shadow text-uppercase" style="font-family :GmarketSansMedium;color:#fff1f1">전쟁기념관</h5>
                  <p class="card-text text-sm"style="font-family :GmarketSansMedium;color:#f3798d">과거의 기억</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/semi/tour/tourdetail?no=129507"></a><img class="bg-image" src="https://img.hankyung.com/photo/202205/ZN.29961447.1.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h5 class="card-title text-shadow text-uppercase" style="font-family :GmarketSansMedium;color:#fff1f1">청계천</h5>
                  <p class="card-text text-sm"style="font-family :GmarketSansMedium;color:#f3798d">서울의 중심</p>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination d-md-none"> </div>
        </div>
      </div>
    </section>
    <section class="py-6"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8 title">
            <h2 style="font-family: GmarketSansMedium, sans-serif;font-weight: bold;">우연한 만남</h2>
            <p class="subtitle" style="font-size: 20px">
              랜덤한 관광지를 소개시켜 드립니다.
            </p>
          </div>
        </div>
        <div class="row">
          <!-- place item-->
          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="selector card-img-top overflow-hidden gradient-overlay" style="width:416px;height:277px;">
                  <img style="position: absolute; top:0; left: 0;
                                          width: 100%;
                                          height: 100%;" class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/16/3075616_image2_1.jpg" alt="Modern, Well-Appointed Room">
                <a class="tile-link" href="/semi/tour/tourdetail?no=3075640"></a>
                <!-- <div class="card-img-overlay-top text-end">
                  <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"></use>
                    </svg></a>
                </div> -->
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <div class="d-flex card-subtitle mb-3">
                    <p class="flex-grow-1 mb-0 text-muted" style="font-size: 18px; color: black; font-weight: bold">
                      라이트룸 서울(Lightroom Seoul)
                    </p>
                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                    </p>
                  </div>
                  <div class="d-flex card-text mt-1">
                    <p class="flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"><i class="fas fa-map-marker text-secondary opacity-4 me-1"></i>서울특별시 강동구 아리수로61길 103 (고덕동)
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="selector card-img-top overflow-hidden gradient-overlay" style="width:416px;height:277px;">
                
                
                  <img style="position: absolute; top:0; left: 0;
                                          width: 100%;
                                          height: 100%;" class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/94/2031894_image2_1.jpg" alt="Modern, Well-Appointed Room">
                <a class="tile-link" href="/semi/tour/tourdetail?no=479778"></a>
                <!-- <div class="card-img-overlay-top text-end">
                  <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"></use>
                    </svg></a>
                </div> -->
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <div class="d-flex card-subtitle mb-3">
                    <p class="flex-grow-1 mb-0 text-muted" style="font-size: 18px; color: black; font-weight: bold">
                      정법사(서울)
                    </p>
                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                    </p>
                  </div>
                  <div class="d-flex card-text mt-1">
                    <p class="flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"><i class="fas fa-map-marker text-secondary opacity-4 me-1"></i>서울특별시 성북구 대사관로13길 44
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="selector card-img-top overflow-hidden gradient-overlay" style="width:416px;height:277px;">
                
                
                  <img style="position: absolute; top:0; left: 0;
                                          width: 100%;
                                          height: 100%;" class="img-fluid" src="http://tong.visitkorea.or.kr/cms/resource/23/2714023_image2_1.jpg" alt="Modern, Well-Appointed Room">
                <a class="tile-link" href="/semi/tour/tourdetail?no=2714028"></a>
                <!-- <div class="card-img-overlay-top text-end">
                  <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"></use>
                    </svg></a>
                </div> -->
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <div class="d-flex card-subtitle mb-3">
                    <p class="flex-grow-1 mb-0 text-muted" style="font-size: 18px; color: black; font-weight: bold">
                      쾨닉 서울
                    </p>
                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                        <i class="fa fa-star text-warning"></i>
                      
                    </p>
                  </div>
                  <div class="d-flex card-text mt-1">
                    <p class="flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"><i class="fas fa-map-marker text-secondary opacity-4 me-1"></i>서울특별시 강남구 압구정로 412
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </section>

    <section class="py-5 position-relative dark-overlay"><img class="bg-image" src="${path}/resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg" alt="">
      <div class="container">
        <div class="overlay-content text-white py-lg-0">
          <h3 class="display-3 fw-bold text-serif text-shadow mb-0">서울로 여행을 떠나보세요</h3>
        </div>
      </div>
    </section>

    <section class="py-6">
      <div class="container">
        <div class="row mb-3">
          <div class="col-md-12 title">
            <h2 style="
                              font-family: GmarketSansMedium, sans-serif;
                              font-weight: bold;
                            ">
              서울의 랜드마크
            </h2>
            <p class="subtitle" style="font-size: 20px">
              관광 명소랜드마크를 모았습니다.
            </p>
          </div>
          <!-- 
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-food.html">
            더 둘러보기<i class="fas fa-angle-double-right ms-2" aria-hidden="true"></i></a></div> -->
        </div>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3 swiper-container-horizontal" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5" style="transform: translate3d(-996px, 0px, 0px); transition-duration: 0ms;height: 400px;"><div class="swiper-slide h-auto px-2 swiper-slide-duplicate" data-swiper-slide-index="2" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="http://hanoknews.kr/data/tmp/2001/20200115123811_rvnhqagv.png" alt="Mid-Century Modern Garden Paradise"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=">남산골 한옥마을</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">퇴계로34길 28</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">조선 시대에 지은 한옥을 둘러 볼 수 있는 관광 명소</p>
                    </div>
                  </div>
                </div>
              </div>
            </div><div class="swiper-slide h-auto px-2 swiper-slide-duplicate" data-swiper-slide-index="3" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=">청계천</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">서울 특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">복원된 개울이 있는 도시 공원 공간</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2 swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="5" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="https://lh3.googleusercontent.com/p/AF1QipNG4IZ29enVbadoJTtyg9NCU0Dp2dJXqLQ-OpMO=s680-w680-h510" alt="Cute Quirky Garden apt, NYC adjacent"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=">북한산국립공원</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">테헤란로 129</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">국립공원</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2 swiper-slide-next" data-swiper-slide-index="0" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="https://www.snkpress.kr/news/photo/202205/546_764_3429.png" alt="Modern Apt - Vibrant Neighborhood!"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>
                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=128162">숭례문</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">강남대로 362</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">과거의 건축이 그대로남아있는곳</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2" data-swiper-slide-index="1" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="https://a.cdn-hotels.com/gdcs/production142/d123/10ec894d-089c-41f5-bddb-8d603a4545d0.jpg?impolicy=fcrop&w=1600&h=1066&q=medium" alt="Sunny Private Studio-Apartment"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>
                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126508">경복궁</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">서울특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">투어 &amp; 박물관이 있는 역사적인 궁전</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2" data-swiper-slide-index="2" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="http://hanoknews.kr/data/tmp/2001/20200115123811_rvnhqagv.png" alt="Mid-Century Modern Garden Paradise"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126747">남산골 한옥마을</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">퇴계로34길 28</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">조선 시대에 지은 한옥을 둘러 볼 수 있는 관광 명소</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2 swiper-slide-duplicate-prev" data-swiper-slide-index="4" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="https://i.namu.wiki/i/WffBmOkLPosp-Idoc_ABKre-g5qbyUFVjK78m4YD8OixVG_IVlKpr_wQzrF6PRHrV4hL6qwQTQnvOVoPrOdF_EmTVF2wlfEnvVVDgZsvR9cE8b0LIcVQU3SEBViF3-vxPyAhcFin0O329uy8gstVVA.webp" alt="Modern, Well-Appointed Room"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126498">롯데월드</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">역삼동 테헤란로8길</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">즐거운 환상의 나라</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2 swiper-slide-duplicate-active" data-swiper-slide-index="5" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="https://i.namu.wiki/i/5qsp5KWpAI6N0KEFZ09MHWPHaj4hTEvH2nUQL-puJVwF361RTAo7S3bZVww8n08U-XwhpOhdlpFjBTWkTQ6TRV_ZFVVMiGGX7lrXFZ1CBEeiZEK9xuk41fkEkp611PorVhvnLg5axRvsWxb3JHL5og.webp" alt="Cute Quirky Garden apt, NYC adjacent"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126509">덕수궁</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">테헤란로 129</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">과거의 유산</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <div class="swiper-slide h-auto px-2 swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="0" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>
                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126485">남산 공원</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">강남대로 362</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">싱그러운 자연의 향기</p>
                    </div>
                  </div>
                </div>
              </div>
            </div><div class="swiper-slide h-auto px-2 swiper-slide-duplicate" data-swiper-slide-index="1" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>
                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126508">경복궁</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">서울특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">투어 &amp; 박물관이 있는 역사적인 궁전</p>
                    </div>
                  </div>
                </div>
              </div>
            </div><div class="swiper-slide h-auto px-2 swiper-slide-duplicate" data-swiper-slide-index="2" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=126747">남산골 한옥마을</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">퇴계로34길 28</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">조선 시대에 지은 한옥을 둘러 볼 수 있는 관광 명소</p>
                    </div>
                  </div>
                </div>
              </div>
            </div><div class="swiper-slide h-auto px-2 swiper-slide-duplicate" data-swiper-slide-index="3" style="width: 312px; margin-right: 20px;">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"><a class="tile-link" href="/semi/tour/tourdetail?no="></a>

                                        <!-- <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div> -->
                  </div>
                  <div class="card-body d-flex">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="/semi/tour/tourdetail?no=129507">청계천</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">서울 특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">복원된 개울이 있는 도시 공원 공간</p>
                    </div>
                  </div>
                </div>
              </div>
            </div></div>
          <!-- If we need pagination-->
          <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-bullets-dynamic" style="width: 80px;"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1" style="left: -48px;"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2" style="left: -48px;"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3" style="left: -48px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-prev-prev" tabindex="0" role="button" aria-label="Go to slide 4" style="left: -48px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-prev" tabindex="0" role="button" aria-label="Go to slide 5" style="left: -48px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active swiper-pagination-bullet-active-main" tabindex="0" role="button" aria-label="Go to slide 6" style="left: -48px;"></span></div>
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      </div>
    </section>
	<script type="text/javascript">
		function movePage(page){
			searchBoardTourFrom.page.value = page;
			searchBoardTourFrom.submit();
		}
		function checkOnly(elem){
			const checkBoxes = document.getElementsByName("orderType");
			checkBoxes.forEach((cb) =>{
				cb.checked = false;
			});
			elem.checked = true;
		}
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



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>














