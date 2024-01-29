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
    
    <style>
    	a {
    		text-decoration: none;
    	}
    	h1 {
    		font-family: GmarketSansMedium, sans-serif;
            font-weight: bold;
            color: #ef4562;
            margin-top: 20px;
            margin-bottom: 0px;
    	}
    </style>
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
              <c:if test="${loginMember == null }">
              	<h1>
                인기 공연 Top 9
                </h1>
              </c:if>
              <c:if test="${loginMember != null }">
              	<h1>
	                ${loginMember.name}님을 위한 맞춤 공연!
	            </h1>
              </c:if>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
              	<c:forEach var="i" begin="0" end="2">
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
	                          src="${loginMember == null ? items[i].poster : listByGenre[i].poster}"
	                          alt="Modern, Well-Appointed Room"
	                          style="width: 285px; height: 320px; object-fit: cover"
	                        /><a class="tile-link" href="${path}/show-detail?pid=${loginMember == null ? items[i].pid : listByGenre[i].pid}"></a>
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
	                              >${loginMember == null ? items[i].pname : listByGenre[i].pname}</a
	                            >
	                          </h6>
	                          <div class="d-flex card-subtitle mb-3">
	                            <p
	                              class="flex-grow-1 mb-0 text-muted text-sm"
	                              style="font-size: 15px; font-weight: bold"
	                            >
	                              ${loginMember == null ? items[i].fname : listByGenre[i].fname}
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
	                            ${loginMember == null ? items[i].pfrom : listByGenre[i].pfrom} - ${loginMember == null ? items[i].pto : listByGenre[i].pto}
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
        <div
          class="carousel-item"
          style="background-color: #fff1f1; padding: 30px 0px"
        >
          <div class="container">
            <div style="font-family: GmarketSansMedium, sans-serif">
              <c:if test="${loginMember == null }">
              	<h1>
                인기 공연 Top 9
                </h1>
              </c:if>
              <c:if test="${loginMember != null }">
              	<h1>
	                ${loginMember.name}님을 위한 맞춤 공연!
	            </h1>
              </c:if>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
                <c:forEach var="i" begin="3" end="5">
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
	                          src="${loginMember == null ? items[i].poster : listByGenre[i].poster}"
	                          alt="Modern, Well-Appointed Room"
	                          style="width: 285px; height: 320px; object-fit: cover"
	                        /><a class="tile-link" href="${path}/show-detail?pid=${loginMember == null ? items[i].pid : listByGenre[i].pid}"></a>
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
	                              >${loginMember == null ? items[i].pname : listByGenre[i].pname}</a
	                            >
	                          </h6>
	                          <div class="d-flex card-subtitle mb-3">
	                            <p
	                              class="flex-grow-1 mb-0 text-muted text-sm"
	                              style="font-size: 15px; font-weight: bold"
	                            >
	                              ${loginMember == null ? items[i].fname : listByGenre[i].fname}
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
	                            ${loginMember == null ? items[i].pfrom : listByGenre[i].pfrom} - ${loginMember == null ? items[i].pto : listByGenre[i].pto}
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
        <div
          class="carousel-item"
          style="background-color: #fff1f1; padding: 30px 0px"
        >
          <div class="container">
            <div style="font-family: GmarketSansMedium, sans-serif">
              <c:if test="${loginMember == null }">
              	<h1>
                인기 공연 Top 9
                </h1>
              </c:if>
              <c:if test="${loginMember != null }">
              	<h1>
	                ${loginMember.name}님을 위한 맞춤 공연!
	            </h1>
              </c:if>
              <div
                class="today-show--small user-show"
                style="height: 340px; margin: 30px"
              >
                <c:forEach var="i" begin="6" end="8">
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
	                          src="${loginMember == null ? items[i].poster : listByGenre[i].poster}"
	                          alt="Modern, Well-Appointed Room"
	                          style="width: 285px; height: 320px; object-fit: cover"
	                        /><a class="tile-link" href="${path}/show-detail?pid=${loginMember == null ? items[i].pid : listByGenre[i].pid}"></a>
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
	                              >${loginMember == null ? items[i].pname : listByGenre[i].pname}</a
	                            >
	                          </h6>
	                          <div class="d-flex card-subtitle mb-3">
	                            <p
	                              class="flex-grow-1 mb-0 text-muted text-sm"
	                              style="font-size: 15px; font-weight: bold"
	                            >
	                              ${loginMember == null ? items[i].fname : listByGenre[i].fname}
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
	                            ${loginMember == null ? items[i].pfrom : listByGenre[i].pfrom} - ${loginMember == null ? items[i].pto : listByGenre[i].pto}
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
          	<c:if test="${loginMember == null }">
          		<h2
	              style="
	                font-family: GmarketSansMedium, sans-serif;
	                font-weight: bold;
	              "
	            >
	              오늘은 어떤 공연?
	            </h2>
          	</c:if>
          	<c:if test="${loginMember != null }">
          		<h2
	              style="
	                font-family: GmarketSansMedium, sans-serif;
	                font-weight: bold;
	              "
	            >
	              내 주변 HOT한 공연은?
	            </h2>
          	</c:if>
            <p class="subtitle" style="font-size: 20px">지금 당장 보러가자!</p>
          </div>
        </div>
        <div class="show-nearby">
          <c:forEach var="item" items="${loginMember == null ? items2 : listByRegion}">
	        <div class="content">
	            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
	                <div class="row g-0">
	                    <div class="col-md-6">
	                        <img height=400 src="${item.poster}"class="card-img rounded-start" alt="..."><a class="tile-link" href="${path}/show-detail?pid=${item.pid}"></a>
	                    </div>
	                    <div class="col-md-6">
	                        <div class="card-body">
	                            <h5 class="card-title" style="font-family: GmarketSansMedium, sans-serif; font-weight: bold;">${item.pname }</h5>
	                            <p class="text-md mb-2 text-muted text-uppercase text-dark">${item.fname}</p>
	                            <p class="text-md mb-2"><a class="me-1" href="#">${item.pfrom} ~ </a><a class="me-1" href="#">${item.pto}</a></p>
	                            <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">${item.price}</a></p>
	                            <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        </c:forEach>
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
        <div class="best-review" style="margin: 20px; height: 650px;">
          <c:forEach var="item" items="${items3}">
          	<div class="swiper-slide h-auto px-2" style="width: 420px;">
	            <div
	              class="w-100 h-100 hover-animate"
	              data-marker-id="59c0c8e33b1527bfe2abaf92"
	            >
	              <div class="card h-100 border-0 shadow">
	                <div class="card-img-top overflow-hidden gradient-overlay">
	                  <img
	                    style="width: 100%"
	                    class="img-fluid"
	                    src="${item.poster}"
	                    alt="Modern, Well-Appointed Room"
	                  /><a class="tile-link" href="${path}/boardPrf/view?no=${item.bno}"></a>
	                </div>
	                <div class="card-body d-flex align-items-center">
	                  <div class="w-100">
	                    <div class="d-flex card-subtitle mb-3">
	                      <p
	                        class="flex-grow-1 mb-0 text-muted"
	                        style="font-size: 18px; color: black; font-weight: bold"
	                      >
	                        ${item.title}
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
	                      ${item.content}
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
          </c:forEach>
        </div>
      </div>
    </section>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

    
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