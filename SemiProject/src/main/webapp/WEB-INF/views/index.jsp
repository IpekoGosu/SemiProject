<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="마이서울" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>마이서울</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css" />
    <!-- Google fonts - Playfair Display-->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700"
    />
    <!-- Google fonts - Poppins-->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700"
    />
    <!-- swiper-->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css"
    />
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css" />
    <!-- theme stylesheet-->
    <link
      rel="stylesheet"
      href="${path}/resources/css/style.default.css"
      id="theme-stylesheet"
    />
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path}/resources/css/custom.css" />
    <link rel="stylesheet" href="${path}/resources/css/customyja_index.css" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script
    ><![endif]-->
    <!-- Font Awesome CSS-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <link
      rel="canonical"
      href="https://getbootstrap.com/docs/5.3/examples/carousel/"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@docsearch/css@3"
    />
    <link href="${path}/resources/css/carousel/bootstrap.min.css" rel="stylesheet" />
    <link href="${path}/resources/css/carousel/carousel.css" rel="stylesheet" />
    <link href="${path}/resources/css/custom.css" rel="stylesheet" />
  </head>
  <body style="padding-top: 72px">

<!-- 공연 배너 시작 -->
    <section
      class="d-flex align-items-center bg-cover"
      style="background-color: #ffcccc; height: 550px"
    >
      <div
        class="container py-6 py-lg-7 text-white overlay-content text-center"
      >
        <div class="show-banner">
          <div class="show-bannerimg">
            <img src="${path}/resources/img/yja/showbanner.png" style="width: 300px" />
          </div>
          <div class="show-bannertext">
            <p style="font-size: 35px">환상적인 라이브와 함께하는 연말!</p>
            <p style="font-size: 40px; width: 550px; font-weight: bold">
              멜팅 라이브 X 가온스테이지: 기묘, 양지혜, 최솜, 영일
            </p>
            <p style="font-size: 20px">가온스테이지</p>
            <p style="font-size: 20px">2023.12.27</p>
          </div>
        </div>
      </div>
    </section>
    <!-- 공연 배너 끝 -->
    <div class="container">
      <div
        class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20"
      >
        <form action="#">
          <div class="row">
            <div class="col-lg-4 d-flex align-items-center form-group">
              <input
                class="form-control border-0 shadow-0 show-search"
                type="search"
                name="search"
                placeholder="공연을 검색하세요!"
                style="font-size: 20px"
              />
            </div>
            <div
              class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider"
            >
              <select
                class="selectpicker"
                title="자치구"
                data-style="btn-form-control"
                style="font-size: 20px"
              >
                <option value="small">Restaurants</option>
                <option value="medium">Hotels</option>
                <option value="large">Cafes</option>
                <option value="x-large">Garages</option>
              </select>
            </div>
            <div
              class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider"
            >
              <select
                class="selectpicker"
                title="장르"
                data-style="btn-form-control"
                style="font-size: 20px"
              >
                <option value="small">Restaurants</option>
                <option value="medium">Hotels</option>
                <option value="large">Cafes</option>
                <option value="x-large">Garages</option>
              </select>
            </div>
            <div class="col-lg-2 form-group d-grid mb-0">
              <button
                class="btn btn-primary h-100"
                style="
                  background-color: #ef4562;
                  border: none;
                  font-family: Concert One, sans-serif;
                  font-weight: bolder;
                  font-size: 20px;
                "
                type="submit"
              >
                Search
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <section class="py-6">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              오늘의 랭킹
            </h2>
            <p class="subtitle" style="font-size: 20px">
              오늘 가장 핫한 공연은?
            </p>
          </div>
        </div>
        <div class="container today-show" style="height: 730px; object-fit: cover">
          <div class="swiper-slide h-auto px-2" style="width: 620px; margin-right: 30px">
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img class="img-fluid" src="${items[0].poster }" alt="Modern, Well-Appointed Room" style="height: 700px; width: 620px; object-fit: cover"/>
                  <a class="tile-link" href="${path}/show-detail?pid=${items[0].pid}"></a>
                  <div class="card-img-overlay-top text-end">
                    <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"></use></svg></a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title">
                      <a class="text-decoration-none text-dark" href="tour-detail.html" style="font-family: GmarketSansMedium, sans-serif; font-weight: bold;">
                        ${items[0].pname}
                      </a>
                    </h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-weight: bold">
                        ${items[0].fname}
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">${items[0].pfrom} - ${items[0].pto}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div>
            <div
              class="today-show--small"
              style="display: grid; grid-template-columns: repeat(2, 1fr); row-gap:50px; margin-bottom: 50px;"
            >
              <c:forEach var="i" begin="1" end="4">
	              <div
	                class="swiper-slide px-2"
	                style="width: 285px; height: 340px; margin-right: 20px"
	              >
	                <div
	                  class="w-100 h-100 hover-animate"
	                  data-marker-id="59c0c8e33b1527bfe2abaf92"
	                >
	                  <div class="card h-100 border-0 shadow">
	                    <div class="card-img-top overflow-hidden gradient-overlay">
	                      <img
	                        class="img-fluid"
	                        src="${items[i].poster }"
	                        alt="Modern, Well-Appointed Room"
	                        style="width: 285px; height: 320px; object-fit: cover"
	                      /><a class="tile-link" href="${path}/show-detail?pid=${items[i].pid}"></a>
	                      <div class="card-img-overlay-top text-end">
	                        <a
	                          class="card-fav-icon position-relative z-index-40"
	                          href="javascript: void();"
	                        >
	                          <svg class="svg-icon text-white">
	                            <use xlink:href="#heart-1"></use></svg
	                        ></a>
	                      </div>
	                    </div>
	                    <div class="card-body d-flex align-items-center">
	                      <div class="w-100">
	                        <h6 class="card-title">
	                          <a
	                            class="text-decoration-none text-dark"
	                            href="show-detail.html"
	                            style="
	                              font-size: 15px;
	                              font-family: GmarketSansMedium, sans-serif;
	                              font-weight: bold;
	                            "
	                            >${items[i].pname }</a
	                          >
	                        </h6>
	                        <div class="d-flex card-subtitle mb-3">
	                          <p
	                            class="flex-grow-1 mb-0 text-muted text-sm"
	                            style="font-size: 15px; font-weight: bold"
	                          >
	                            ${items[i].fname }
	                          </p>
	                          <p
	                            class="flex-shrink-1 mb-0 card-stars text-xs text-end"
	                          >
	                            <i class="fa fa-star text-warning"></i
	                            ><i class="fa fa-star text-warning"></i
	                            ><i class="fa fa-star text-warning"></i
	                            ><i class="fa fa-star text-warning"></i
	                            ><i class="fa fa-star text-warning"></i>
	                          </p>
	                        </div>
	                        <p class="card-text text-muted" style="font-size: 15px">
	                          ${items[i].pfrom } - ${items[i].pto }
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
    </section>
    <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button
          type="button"
          data-bs-target="#myCarousel"
          data-bs-slide-to="0"
          class="active"
          aria-current="true"
          aria-label="Slide 1"
        ></button>
        <button
          type="button"
          data-bs-target="#myCarousel"
          data-bs-slide-to="1"
          aria-label="Slide 2"
        ></button>
        <button
          type="button"
          data-bs-target="#myCarousel"
          data-bs-slide-to="2"
          aria-label="Slide 3"
        ></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="${path}/resources/img/yja/f.png" width="100%" style="object-fit: cover" />
          <div class="container">
            <div
              class="carousel-caption text-start"
              style="font-family: GmarketSansMedium, sans-serif"
            >
              <h1 style="font-family: GmarketSansMedium, sans-serif">
                가족들과 친구들과 함께하는 여행
              </h1>
              <p class="opacity-75">마이서울과 함께 떠나요!</p>
              <p>
                <a
                  class="btn btn-lg btn-primary"
                  href="tour-search.html"
                  style="background-color: #ef4562; border: none"
                  >관광지 검색</a
                >
              </p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="${path}/resources/img/yja/g.jpg" width="100%" style="object-fit: cover" />
          <div class="container">
            <div
              class="carousel-caption"
              style="font-family: GmarketSansMedium, sans-serif"
            >
              <h1 style="font-family: GmarketSansMedium, sans-serif">
                가족들과 친구들과 함께하는 여행
              </h1>
              <p style="font-weight: bold">마이서울과 함께 떠나요!</p>
              <p>
                <a
                  class="btn btn-lg btn-primary"
                  href="#"
                  style="background-color: #ef4562; border: none"
                  >맛집 검색</a
                >
              </p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="${path}/resources/img/yja/h.jpg" width="100%" style="object-fit: cover" />
          <div class="container">
            <div
              class="carousel-caption text-end"
              style="font-family: GmarketSansMedium, sans-serif"
            >
              <h1 style="font-family: GmarketSansMedium, sans-serif">
                가족들과 친구들과 함께하는 여행
              </h1>
              <p>마이서울과 함께 떠나요!</p>
              <p>
                <a
                  class="btn btn-lg btn-primary"
                  href="tour-best.html"
                  style="background-color: #ef4562; border: none"
                  >관광지 추천</a
                >
              </p>
            </div>
          </div>
        </div>
      </div>
      <button
        class="carousel-control-prev"
        type="button"
        data-bs-target="#myCarousel"
        data-bs-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button
        class="carousel-control-next"
        type="button"
        data-bs-target="#myCarousel"
        data-bs-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <section style="margin-bottom: 100px">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              인기 관광지
            </h2>
            <p class="subtitle" style="font-size: 20px">
              어디가지? 할 때는 여기 가자!
            </p>
          </div>
        </div>
        <div class="popular-tour" style="margin: 20px">
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <!-- place item-->
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    class="img-fluid"
                    src="${path}/resources/img/yja/i.jpg"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="tour-detail.html"></a>
                  <div class="card-img-overlay-top text-end">
                    <a
                      class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();"
                    >
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"></use></svg
                    ></a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        순천 낙안읍성
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">서울 특별시 강남구</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <!-- place item-->
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    class="img-fluid"
                    src="${path}/resources/img/yja/i.jpg"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="tour-detail.html"></a>
                  <div class="card-img-overlay-top text-end">
                    <a
                      class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();"
                    >
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"></use></svg
                    ></a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        순천 낙안읍성
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">서울 특별시 강남구</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <!-- place item-->
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    class="img-fluid"
                    src="${path}/resources/img/yja/i.jpg"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="tour-detail.html"></a>
                  <div class="card-img-overlay-top text-end">
                    <a
                      class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();"
                    >
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"></use></svg
                    ></a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        순천 낙안읍성
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">서울 특별시 강남구</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="container">
      <div class="row mb-3">
        <div class="col-md-8 title">
          <h2
            style="
              font-family: GmarketSansMedium, sans-serif;
              font-weight: bold;
            "
          >
            관광지 게시판
          </h2>
        </div>
      </div>
    </div>
    <section class="container tour-boardsection">
      <ul class="tour-board">
      	<c:forEach items="${listPrf}" var="item">
	        <li><a href="${path}/boardPrf/view?no=${item.bno}" style="text-decoration: none; color: black;"><c:out value="${item.title}"/></a>
	        	<span><fmt:formatDate type="date" value="${item.createDate}"/></span>
	        </li>
      	</c:forEach>
      </ul>
      <div class="tour-board__etc">
        <div class="etc__tour etc">
          <a href="tour-search.html">
            <img class="tour-img scale-img" src="${path}/resources/img/yja/j.jpg" width="230px" height="210px" style="object-fit: cover"/>
            <span>관광지 검색</span>
            <img class="etc__search-img" src="${path}/resources/img/yja/search.svg" />
          </a>
        </div>
        <div class="etc__food etc">
          <a href="#">
            <img class="food-img scale-img" src="${path}/resources/img/yja/k.jpg" width="230px" height="210px" style="object-fit: cover"/>
            <span>맛집 검색</span>
            <img class="etc__food-img" src="${path}/resources/img/yja/utensils.svg" />
          </a>
        </div>
        <div class="etc__food etc">
          <a href="tour-best.html">
            <img class="best-img scale-img" src="${path}/resources/img/yja/l.jpg" width="230px" height="210px" style="object-fit: cover"/>
            <span>관광지 추천</span>
            <img class="etc__best-img" src="${path}/resources/img/yja/smile-beam-solid.svg" />
          </a>
        </div>
      </div>
    </section>
    <section class="py-2">
      <div class="container">
        <div class="row mb-3">
          <div class="col-md-8 title">
            <h2 style="
                              font-family: GmarketSansMedium, sans-serif;
                              font-weight: bold;
                            ">
              나의 주변
            </h2>
            <p class="subtitle" style="font-size: 20px">
              현재 나의 위치를 기반으로
            </p>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="#">
            더 둘러보기<i class="fas fa-angle-double-right ms-2" aria-hidden="true"></i></a></div>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="tour-detail.html"></a>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">창고 43</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm"style="font-family :GmarketSansMedium;">강남대로 362</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"style="font-family :GmarketSansMedium;">과거의 건축이 그대로남아있는곳</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="../img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="tour-detail.html"></a>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">경복궁</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm"style="font-family :GmarketSansMedium;">서울특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"style="font-family :GmarketSansMedium;">투어 & 박물관이 있는 역사적인 궁전</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="../img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"/><a class="tile-link" href="tour-detail.html"></a>

                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">남산골 한옥마을</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm"style="font-family :GmarketSansMedium;">퇴계로34길 28</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"style="font-family :GmarketSansMedium;">조선 시대에 지은 한옥을 둘러 볼 수 있는 관광 명소</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="../img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"/><a class="tile-link" href="tour-detail.html"></a>

                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">청계천</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm"style="font-family :GmarketSansMedium;">서울 특별시 종로구</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"style="font-family :GmarketSansMedium;">복원된 개울이 있는 도시 공원 공간</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="../img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="tour-detail.html"></a>

                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title" style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">노란 상소 갈비</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm" style="font-family :GmarketSansMedium;">역삼동 테헤란로8길</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted" style="font-family :GmarketSansMedium;">이집은 가성비 맛집입니다.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="../img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="tour-detail.html"></a>

                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"style="font-family :GmarketSansMedium;"><a class="text-decoration-none text-dark" href="tour-detail.html">동화고옥</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm"style="font-family :GmarketSansMedium;">테헤란로 129</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"style="font-family :GmarketSansMedium;">강남의 새로운 형태의 맛집 경험</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>

    
    <!-- Instagram-->
    <section>
      <div class="container-fluid px-0 mb-5 mt-5">
        <div class="swiper-container instagram-slider">
          <div class="swiper-wrapper">
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-1.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-2.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-3.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-4.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-5.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-6.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-7.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-8.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-9.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-10.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-11.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-12.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-13.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-14.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-10.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-11.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-12.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-13.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="tour-detail.html"><img class="img-fluid hover-scale" src="../img/instagram/instagram-14.jpg" alt=" "></a></div>
          </div>
        </div>
      </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


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
        ajax.onload = function (e) {
          var div = document.createElement("div");
          div.className = "d-none";
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
        };
      }
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
      injectSvgSprite(
        "https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg"
      );
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
    <script>
      var basePath = "";
    </script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
    <!-- 커스텀 js 영역 -->
    <script src="${path}/resources/js/custom.js"></script>
  </body>
</html>