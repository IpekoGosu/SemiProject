<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="수상작" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>공연 수상작</title>
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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
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
            border: none !important;
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
<body class="reward" style="padding-top: 90px">

<section class="banner">
    <div id="banner" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${path}/resources/img/myImages/award1.png" style="width: 100%" class="img-fluid" alt="">
                <div class="carousel-caption">
                    <h5>공연 수상작</h5>
                    <p>드라큘라</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${path}/resources/img/myImages/award2.png" style="width: 100%" class="img-fluid" alt="">
                <div class="carousel-caption">
                    <h5>공연 수상작</h5>
                    <p>오페라의 유령</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${path}/resources/img/myImages/award3.png" style="width: 100%" class="img-fluid" alt="">
                <div class="carousel-caption">
                    <h5>공연 수상작</h5>
                    <p>노트르담 드 파리</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#banner" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#banner" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#banner" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#banner" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#banner" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
    </div>
</section>
<!-- 배너(캐러셀) 영역 끝 -->
<!-- 수상작 영역 시작 -->
<section class="awards" style="margin-bottom: 120px">
<div class="container">
    <!-- 장르 선택 영역 시작 -->
    <div class="mt-4">
        <h3 style="color: #ef4562; text-shadow: 0px 1px 1px #f3a4b1;">장르별 수상작</h3>
        <ul class="nav nav-pills-custom">
        	<li class="nav-item"><a class="nav-link" href="${path}/show-award">전체</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=뮤지컬">뮤지컬</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=연극" style="border: none;">연극</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=대중음악" style="border: none;">대중음악</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=서양음악(클래식)" style="border: none;">클래식</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=무용(서양/한국무용)" style="border: none;">무용</a></li>
            <li class="nav-item"><a class="nav-link" href="${path}/show-award?genre=서커스/마술" style="border: none;">서커스</a></li>
        </ul>
    </div>
    <!-- 장르 선택 영역 끝 -->
    <!-- 수상작 리스트 영역 시작 -->
    <!-- 1 -->
	    <c:forEach var="item" items="${items}">
	    		<div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
			        <div class="row g-0">
			            <div class="col-md-3">
			                <img src="${item.poster }" width=300 height=400 class="card-img rounded-start" alt="..."><a class="tile-link" href="${path}/show-detail?pid=${item.pid}"></a>
			            </div>
			            <div class="col-md-9">
			                <div class="card-body">
			                    <h5 class="card-title">${item.pname }</h5>
			                    <p class="text-md mb-2 text-muted text-uppercase">${item.awards}</p>
			                    <p class="text-md mb-2"><a class="me-1" href="#">${item.pfrom} ~ </a><a class="me-1" href="#">${item.pto}</a></p>
			                    <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">${item.price }</a></p>
			                    <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
			                </div>
			            </div>
			        </div>
		    	</div>
	    </c:forEach>
</div>
</section>
<!-- 수상작 영역 끝 -->

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
    <script src="js/theme.js"></script>
    <!-- Map-->
    <script
      src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
      integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
      crossorigin=""
    ></script>
    <!-- Available tile layers-->
    <script src="../js/map-layers.js"></script>
    <script src="../js/map-category.js"></script>
    <script>
      createListingsMap({
        mapId: "categorySideMap",
        jsonFile: "js/rooms-geojson.json",
        mapPopupType: "rental",
        useTextIcon: true,
        //tileLayer: tileLayers[5]  - uncomment for a different map styling
      });
    </script>
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"></script>
    <script src="${path}/resources/js/datepicker-category.js"></script>
    <!-- Price Slider-->
    <script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
    <script>
      var snapSlider = document.getElementById("slider-snap");

      noUiSlider.create(snapSlider, {
        start: [3, 100],
        snap: false,
        connect: true,
        step: 1,
        range: {
          min: 3,
          max: 100,
        },
        format: {
          to: function (value) {
            return parseInt(value);
          },
          from: function (value) {
            return value;
          },
        },
      });
      var snapValues = [
        document.getElementById("slider-snap-value-from"),
        document.getElementById("slider-snap-value-to"),
      ];
      var inputValues = [
        document.getElementById("slider-snap-input-from"),
        document.getElementById("slider-snap-input-to"),
      ];
      snapSlider.noUiSlider.on("update", function (values, handle) {
        snapValues[handle].innerHTML = parseInt(values[handle]);
        inputValues[handle].value = parseInt(values[handle]);
      });
    </script>
  </body>
</html>