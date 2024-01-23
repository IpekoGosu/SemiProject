<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="공연 정보" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>공연 정보</title>
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
    <link rel="stylesheet" href="${path}/resources/css/customyja_show-inform.css" />
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

    <section class="py-6">
      <div class="container genre">
        <div class="row mb-3">
          <div class="col-md-12 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              장르별로 모아보기!
            </h2>
            <div class="dropdown">
              <button
                class="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                정렬
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">이름순</a></li>
                <li><a class="dropdown-item" href="#">날짜순</a></li>
                <li>
                  <a class="dropdown-item" href="#">랭킹순</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="select-genre">
			<button><a href="${path}/show-inform"> 전체 </a></button>
			<button><a href="${path}/show-inform?genre=클래식"> 클래식 </a></button>
            <button><a href="${path}/show-inform?genre=대중음악"> 대중음악 </a></button>
            <button><a href="${path}/show-inform?genre=뮤지컬"> 뮤지컬 </a></button>
            <button><a href="${path}/show-inform?genre=연극"> 연극 </a></button>
            <button><a href="${path}/show-inform?genre=서커스/마술"> 서커스/마술 </a></button>
            <button><a href="${path}/show-inform?genre=국악"> 국악 </a></button>
            <button><a href="${path}/show-inform?genre=무용"> 무용 </a></button>
        </div>
        <div class="genre__el" style="margin-bottom: 50px">
          <c:forEach var="item" items="${items}">
          	<div class="swiper-slide h-auto" style="width: 300px">
	            <div
	              class="w-100 h-100 hover-animate"
	              data-marker-id="59c0c8e33b1527bfe2abaf92"
	            >
	              <div class="card h-100 border-0 shadow">
	                <div class="card-img-top overflow-hidden gradient-overlay">
	                  <img
	                    class="img-fluid"
	                    src="${item.poster}"
	                    alt="Modern, Well-Appointed Room"
	                    style="width: 300px; height: 320px; object-fit: cover"
	                  /><a class="tile-link" href="${path}/show-detail?pid=${item.pid}"></a>
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
	                        >${item.pname}</a
	                      >
	                    </h6>
	                    <div class="d-flex card-subtitle mb-3">
	                      <p
	                        class="flex-grow-1 mb-0 text-muted text-sm"
	                        style="font-size: 15px; font-weight: bold"
	                      >
	                        ${item.fname}
	                      </p>
	                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
	                        <i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i>
	                      </p>
	                    </div>
	                    <p class="card-text text-muted" style="font-size: 15px">
	                      ${item.pfrom } - ${item.pto }
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
          </c:forEach>
        </div>
        <div class="row">
			<div class="col-12">
				<nav class="mt-4 d-flex justify-content-center"
					aria-label="navigation">
					<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
						<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
							<a class="page-link" href="javascript:movePage(${pageInfo1.prevPage})" tabindex="-1"><i class="fas fa-angle-left"></i></a>
						</li>
						<c:forEach begin="${pageInfo1.startPage}" end="${pageInfo1.endPage}" varStatus="status" step="1">
							<c:if test="${status.current == pageInfo1.currentPage}">
								<li class="page-item mb-0 active">
									<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
								</li>
							</c:if>
							<c:if test="${status.current != pageInfo1.currentPage}">
								<li class="page-item mb-0">
									<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
								</li>
							</c:if>
						</c:forEach>
						<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
							<a class="page-link" href="javascript:movePage(${pageInfo1.nextPage})"><i class="fas fa-angle-right"></i></a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
      </div>
    </section>
    <section class="show-statistics">
      <div class="container statistics-title">
        <h1 style="font-family: GmarketSansMedium, sans-serif">서울 공연</h1>
        <div class="h3-date clearfix">
          <ul class="clearfix">
            <li>
              <a href="javascript:performStat();" id="p_daily" class="on"
                >일간</a
              >
            </li>
            <li><a href="javascript:performStat();" id="p_weekly">주간</a></li>
            <li><a href="javascript:performStat();" id="p_monthly">월간</a></li>
          </ul>
          <div>
            <span id="periodStr_p"> 2024.01.10~2024.01.10 기준</span>
          </div>
        </div>
      </div>
      <ul class="container statistics-content">
        <li class="content__el">
          <div class="el__info">
            <p>공연건수</p>
            <p>1039건</p>
          </div>
          <div>
            <img width="100px" src="${path}/resources/img/yja/magic-trick_7304521.png" />
          </div>
        </li>
        <li class="content__el">
          <div class="el__info">
            <p>공연횟수</p>
            <p>6277건</p>
          </div>
          <div>
            <img width="100px" src="${path}/resources/img/yja/free-icon-piano-1624425.png" />
          </div>
        </li>
        <li class="content__el">
          <div class="el__info">
            <p>총 티켓판매수</p>
            <p>2219814건</p>
          </div>
          <div>
            <img width="100px" src="${path}/resources/img/yja/magic-trick_7304521.png" />
          </div>
        </li>
        <li class="content__el">
          <div class="el__info">
            <p>총 티멧판매액</p>
            <p>13917백만원</p>
          </div>
          <div>
            <img
              width="100px"
              src="${path}/resources/img/yja/free-icon-performance-1624424.png"
            />
          </div>
        </li>
      </ul>
    </section>
    <section class="py-6">
      <div class="container region">
        <div class="row mb-5">
          <div class="col-md-12 title">
            <h2
              style="
                font-family: GmarketSansMedium, sans-serif;
                font-weight: bold;
              "
            >
              지역별로 모아보기!
            </h2>
            <div class="filters">
              <select name="region" class="region-select" onchange="if(this.value) location.href=(this.value);">
              	<option value=""><a href="${path}/show-inform"> 전체 </a></option>
              	<c:forEach var="region" items="${regions}">
              		<option value="${path}/show-inform?${region}">${region}</option>
              	</c:forEach>
			  </select>
              <div class="dropdown">
                <button
                  class="btn btn-secondary dropdown-toggle"
                  type="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                  style="margin-left: 10px"
                >
                  정렬
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">이름순</a></li>
                  <li><a class="dropdown-item" href="#">날짜순</a></li>
                  <li>
                    <a class="dropdown-item" href="#">랭킹순</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="region__el" style="margin-bottom: 50px">
          <c:forEach var="item" items="${items2}">
          	<div class="swiper-slide h-auto" style="width: 300px">
	            <div
	              class="w-100 h-100 hover-animate"
	              data-marker-id="59c0c8e33b1527bfe2abaf92"
	            >
	              <div class="card h-100 border-0 shadow">
	                <div class="card-img-top overflow-hidden gradient-overlay">
	                  <img
	                    class="img-fluid"
	                    src="${item.poster}"
	                    alt="Modern, Well-Appointed Room"
	                    style="width: 300px; height: 320px; object-fit: cover"
	                  /><a class="tile-link" href="${path}/show-detail?pid=${item.pid}"></a>
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
	                        >${item.pname}</a
	                      >
	                    </h6>
	                    <div class="d-flex card-subtitle mb-3">
	                      <p
	                        class="flex-grow-1 mb-0 text-muted text-sm"
	                        style="font-size: 15px; font-weight: bold"
	                      >
	                        ${item.fname}
	                      </p>
	                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
	                        <i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i
	                        ><i class="fa fa-star text-warning"></i>
	                      </p>
	                    </div>
	                    <p class="card-text text-muted" style="font-size: 15px">
	                      ${item.pfrom } - ${item.pto }
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
          </c:forEach>
        </div>
        <div class="row">
			<div class="col-12">
				<nav class="mt-4 d-flex justify-content-center"
					aria-label="navigation">
					<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
						<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
							<a class="page-link" href="javascript:movePage(${pageInfo2.prevPage})" tabindex="-1"><i class="fas fa-angle-left"></i></a>
						</li>
						<c:forEach begin="${pageInfo2.startPage}" end="${pageInfo2.endPage}" varStatus="status" step="1">
							<c:if test="${status.current == pageInfo2.currentPage}">
								<li class="page-item mb-0 active">
									<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
								</li>
							</c:if>
							<c:if test="${status.current != pageInfo2.currentPage}">
								<li class="page-item mb-0">
									<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
								</li>
							</c:if>
						</c:forEach>
						<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
							<a class="page-link" href="javascript:movePage(${pageInfo2.nextPage})"><i class="fas fa-angle-right"></i></a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
      </div>
    </section>
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-8 title">
          <h2
            style="
              font-family: GmarketSansMedium, sans-serif;
              font-weight: bold;
            "
          >
            공연 게시판
          </h2>
        </div>
      </div>
    </div>
    <section class="container show-boardsection">
      <div class="show-board__container">
        <div class="more"><span>+ 더보기</span></div>
        <ul class="show-board">
          <li>
            <span>요즘 인기있는 공연 뭔가요? </span><span>2023.12.25</span>
          </li>
          <li><span>오늘 너무 재밌었어요</span><span>2023.12.25</span></li>
          <li><span>다음 공연도 기대되네용</span><span>2023.12.25</span></li>
          <li>
            <span>오늘 배우님들 연기 대박이에요..</span><span>2023.12.25</span>
          </li>
          <li><span>내한 또 와주세요!!!</span><span>2023.12.25</span></li>
          <li><span>막콘도 예매할걸...</span><span>2023.12.25</span></li>
        </ul>
      </div>
      <div class="show-board__etc">
        <div class="etc__show etc">
          <img
            class="show-img scale-img"
            src="${path}/resources/img/yja/austin-neill-hgO1wFPXl3I-unsplash.jpg"
            width="230px"
            height="210px"
            style="object-fit: cover"
          />
          <span>공연 검색</span>
          <img class="etc__search-img" src="${path}/resources/img/yja/search.svg" />
        </div>
        <div class="etc__award etc">
          <img
            class="award-img scale-img"
            src="${path}/resources/img/yja/aleksandr-popov-hTv8aaPziOQ-unsplash.jpg"
            width="230px"
            height="210px"
            style="object-fit: cover"
          />
          <span>수상작 보러가기</span>
          <img class="etc__award-img" src="${path}/resources/img/yja/trophy.svg" />
        </div>
        <div class="etc__recommend etc">
          <img
            class="recommend-img scale-img"
            src="${path}/resources/img/yja/antoine-j-FNieWqIDsJA-unsplash.jpg"
            width="230px"
            height="210px"
            style="object-fit: cover"
          />
          <span>공연 추천</span>
          <img
            class="etc__recommend-img"
            src="${path}/resources/img/yja/smile-beam-solid.svg"
          />
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