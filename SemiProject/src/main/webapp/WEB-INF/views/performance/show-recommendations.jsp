<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="공연 추천" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>공연 추천</title>
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
    <link rel="stylesheet" href="${path}/resources/css/customyja_show-recommendations.css" />
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
        <div
          class="carousel-item active"
          style="background-color: #fff1f1; padding: 30px 0px"
        >
          <div class="container">
            <div style="font-family: GmarketSansMedium, sans-serif">
              <h1
                style="
                  font-family: GmarketSansMedium, sans-serif;
                  color: #ef4562;
                  margin-top: 20px;
                  margin-bottom: 0px;
                "
              >
                홍길동님을 위한 음악 공연!
              </h1>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/b.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >내일은 스타 [대학로]</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              스타스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/d.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >멜팅 라이브 X 가온스테이지</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              가온스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 50px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/e.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >SORI PERCUSSION, 타악기 음악극 Blink</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              문화비축기지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div
          class="carousel-item"
          style="background-color: #fff1f1; padding: 30px 0px"
        >
          <div class="container">
            <div style="font-family: GmarketSansMedium, sans-serif">
              <h1
                style="
                  font-family: GmarketSansMedium, sans-serif;
                  color: #ef4562;
                  margin-top: 20px;
                  margin-bottom: 0px;
                "
              >
                홍길동님을 위한 뮤지컬 공연!
              </h1>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/b.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >내일은 스타 [대학로]</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              스타스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/d.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >멜팅 라이브 X 가온스테이지</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              가온스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 50px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/e.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >SORI PERCUSSION, 타악기 음악극 Blink</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              문화비축기지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div
          class="carousel-item"
          style="background-color: #fff1f1; padding: 30px 0px"
        >
          <div class="container">
            <div style="font-family: GmarketSansMedium, sans-serif">
              <h1
                style="
                  font-family: GmarketSansMedium, sans-serif;
                  color: #ef4562;
                  margin-top: 20px;
                  margin-bottom: 0px;
                "
              >
                홍길동님을 위한 연극 공연!
              </h1>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/b.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >내일은 스타 [대학로]</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              스타스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 30px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/d.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >멜팅 라이브 X 가온스테이지</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              가온스테이지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="swiper-slide h-auto px-2"
                  style="width: 285px; margin-right: 50px"
                >
                  <div
                    class="w-100 h-100 hover-animate"
                    data-marker-id="59c0c8e33b1527bfe2abaf92"
                  >
                    <div class="card h-100 border-0 shadow">
                      <div
                        class="card-img-top overflow-hidden gradient-overlay"
                      >
                        <img
                          class="img-fluid"
                          src="../img/yja/e.png"
                          alt="Modern, Well-Appointed Room"
                          style="width: 285px; height: 320px; object-fit: cover"
                        /><a class="tile-link" href="detail-rooms.html"></a>
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
                              href="detail-rooms.html"
                              style="
                                font-size: 15px;
                                font-family: GmarketSansMedium, sans-serif;
                                font-weight: bold;
                              "
                              >SORI PERCUSSION, 타악기 음악극 Blink</a
                            >
                          </h6>
                          <div class="d-flex card-subtitle mb-3">
                            <p
                              class="flex-grow-1 mb-0 text-muted text-sm"
                              style="font-size: 15px; font-weight: bold"
                            >
                              문화비축기지
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
                          <p
                            class="card-text text-muted"
                            style="font-size: 15px"
                          >
                            2023.12.31
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
    <section class="mb-6">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              내 주변 HOT한 공연은?
            </h2>
            <p class="subtitle" style="font-size: 20px">지금 당장 보러가자!</p>
          </div>
        </div>
        <div class="show-nearby">
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="../img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="../img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="../img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="../img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="${path}/resources/img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="${path}/resources/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="${path}/resources/img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
          <div
            class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
          >
            <div class="col-auto d-none d-lg-block">
              <img
                src="${path}/resources/img/yja/PF_PF231803_231205_094306.gif"
                width="200"
                height="250"
              />
            </div>
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-3">IV BREAK JAM'23: 2VS2 Breaking Battle</h3>
              <p class="flex-shrink-1 mb-3 card-stars text-xs">
                <i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i
                ><i class="fa fa-star text-warning"></i>
              </p>
              <div class="mb-1 text-body-secondary">
                무신사 개러지(구. 왓챠홀)
              </div>
              <div class="mb-3 text-body-secondary">2023.12.30</div>
              <a
                href="#"
                class="icon-link gap-1 icon-link-hover stretched-link go-ticketing"
              >
                예매
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mb-6">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              Best 후기
            </h2>
            <p class="subtitle" style="font-size: 20px">
              생생한 후기를 모아서~!
            </p>
          </div>
        </div>
        <div class="best-review" style="margin: 20px">
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    style="width: 100%"
                    class="img-fluid"
                    src="${path}/resources/img/yja/PF_PF232950_231222_094218.gif"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="detail-rooms.html"></a>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        멋진 공연이였어요!!!
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">
                      너무 감동적이고 보는 내내 집중 할 수 있는 무대였어요
                      최고예요!!!
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    style="width: 100%"
                    class="img-fluid"
                    src="${path}/resources/img/yja/PF_PF233750_240111_103938.gif"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="detail-rooms.html"></a>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        멋진 공연이였어요!!!
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">
                      너무 감동적이고 보는 내내 집중 할 수 있는 무대였어요
                      최고예요!!!
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2" style="width: 420px">
            <div
              class="w-100 h-100 hover-animate"
              data-marker-id="59c0c8e33b1527bfe2abaf92"
            >
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay">
                  <img
                    style="width: 100%"
                    class="img-fluid"
                    src="${path}/resources/img/yja/PF_PF233619_240109_111627.gif"
                    alt="Modern, Well-Appointed Room"
                  /><a class="tile-link" href="detail-rooms.html"></a>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <div class="d-flex card-subtitle mb-3">
                      <p
                        class="flex-grow-1 mb-0 text-muted"
                        style="font-size: 18px; color: black; font-weight: bold"
                      >
                        멋진 공연이였어요!!!
                      </p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                        <i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i
                        ><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted">
                      너무 감동적이고 보는 내내 집중 할 수 있는 무대였어요
                      최고예요!!!
                    </p>
                  </div>
                </div>
              </div>
            </div>
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
  </body>
</html>