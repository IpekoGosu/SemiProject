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
   <form name="informForm" action="${path}/show-inform" method="get">
      <input type="hidden" name="page1" value="${param.page1 != null ? param.page1 : 1 }">
      <input type="hidden" name="page2" value="${param.page2 != null ? param.page2 : 1 }">
      <input type="hidden" name="genre" value="${param.genre != null ? param.genre : '' }">
      <input type="hidden" name="region" value="${param.region != null ? param.region : '' }">
      
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
          </div>
        </div>
        <div class="select-genre">
			<c:if test="${empty param.genre}">
				<button onclick="informForm.genre.value = ''; movePageA(1);">전체</button>
			</c:if>
			<c:if test="${not empty param.genre}">
				<button onclick="informForm.genre.value = ''; movePageA(1);">전체</button>
			</c:if>
			
			<c:forEach var="genre" items="${genreList}">
				<c:if test="${param.genre == genre}">
					<button style="color: black" onclick="informForm.genre.value='${genre}'; movePageA(1);">${genre }</button>
				</c:if>
				<c:if test="${param.genre != genre}">
					<button onclick="informForm.genre.value='${genre}'; movePageA(1);">${genre }</button>
				</c:if>
			</c:forEach>
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
        <div class="mt-5 mb-5">
	      <nav aria-label="Page navigation example">
	          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
	              <li class="page-item page-link" onclick="movePageA(1);"  style="border-top-left-radius: 20%; border-bottom-left-radius: 20%;">
	              	<i class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i></li>
	              <li class="page-item page-link" onclick="movePageA(${pageInfo1.prevPage});"><i class="fa fa-angle-left"></i></li>
	              <c:forEach begin="${pageInfo1.startPage}" end="${pageInfo1.endPage}" varStatus="status" step="1">
	              	<c:if test="${status.current == pageInfo1.currentPage}">
	              		<li class="page-item page-link active">${status.current}</li>
	              	</c:if>
	              	<c:if test="${status.current != pageInfo1.currentPage}">
	              		<li onclick="movePageA(${status.current});" class="page-item page-link">${status.current}</li>
	              	</c:if>
	              </c:forEach>
	              <li class="page-item page-link" onclick="movePageA(${pageInfo1.nextPage});"><i class="fa fa-angle-right"></i></li>
	              <li class="page-item page-link" onclick="movePageA(${pageInfo1.maxPage});" style="border-top-right-radius: 20%; border-bottom-right-radius: 20%;">
	              	<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></li>
	          </ul>
	      </nav>
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
          </div>
        </div>
        <div class="select-region">
        	<c:if test="${empty param.region}">
				<button style="color: black" onclick="informForm.region.value = ''; movePageB(1);">전체</button>
			</c:if>
			<c:if test="${not empty param.region}">
				<button onclick="informForm.region.value = ''; movePageB(1);">전체</button>
			</c:if>
			
			<c:forEach var="region" items="${regionList}">
				<c:if test="${param.region == region}">
					<button style="color: black" onclick="informForm.region.value='${region}'; movePageB(1);">${region }</button>
				</c:if>
				<c:if test="${param.region != region}">
					<button onclick="informForm.region.value='${region}'; movePageB(1);">${region }</button>
				</c:if>
			</c:forEach>
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
        <div class="mt-5 mb-5">
	      <nav aria-label="Page navigation example">
	          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
	              <li class="page-item page-link" onclick="movePageB(1);"  style="border-top-left-radius: 20%; border-bottom-left-radius: 20%;">
	              	<i class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i></li>
	              <li class="page-item page-link" onclick="movePageB(${pageInfo2.prevPage});"><i class="fa fa-angle-left"></i></li>
	              <c:forEach begin="${pageInfo2.startPage}" end="${pageInfo2.endPage}" varStatus="status" step="1">
	              	<c:if test="${status.current == pageInfo2.currentPage}">
	              		<li class="page-item page-link active">${status.current}</li>
	              	</c:if>
	              	<c:if test="${status.current != pageInfo2.currentPage}">
	              		<li onclick="movePageB(${status.current});" class="page-item page-link">${status.current}</li>
	              	</c:if>
	              </c:forEach>
	              <li class="page-item page-link" onclick="movePageB(${pageInfo2.nextPage});"><i class="fa fa-angle-right"></i></li>
	              <li class="page-item page-link" onclick="movePageB(${pageInfo2.maxPage});" style="border-top-right-radius: 20%; border-bottom-right-radius: 20%;">
	              	<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></li>
	          </ul>
	      </nav>
    	</div>
      </div>
    </section>
   </form>
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
          <a class="more" href="${path}/boardPrf/list" style="text-decoration: none;">+ 더보기</a>
	      <ul class="show-board">
	      	<c:forEach items="${listPrf}" var="item">
		        <li style="height: 25px"><a href="${path}/boardPrf/view?no=${item.bno}" style="text-decoration: none; color: black; width: 350px; text-overflow: ellipsis; overflow: hidden;"><c:out value="${item.title}"/></a>
		        	<span><fmt:formatDate type="date" value="${item.createDate}"/></span>
		        </li>
	      	</c:forEach>
	      </ul>
      </div>
      <div class="show-board__etc">
      	<a href="show-search-1">
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
        </a>
        <a href="show-award">
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
        </a>
        <a href="show-recommendations">
	        <div class="etc__recommend etc">
	          <img
	            class="recommend-img scale-img"
	            src="${path}/resources/img/yja/antoine-j-FNieWqIDsJA-unsplash.jpg"
	            width="230px"
	            height="210px"
	            style="object-fit: cover"
	          /><a href="show-recommendations">
	          <span>공연 추천</span>
	          <img
	            class="etc__recommend-img"
	            src="${path}/resources/img/yja/smile-beam-solid.svg"
	          />
	        </div>
        </a>
      </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>

    <!-- JavaScript files-->
    <script type="text/javascript">
	function movePage(){
		informForm.submit();
	}
	function movePageA(page){
		informForm.page1.value = page;
		informForm.submit();
	}
	
	function movePageB(page){
		informForm.page2.value = page;
		informForm.submit();
	}
	
	$(()=>{
		$('#success-outlined, #danger-outlined').click((e)=>{
	        informForm.submit();
	    })
	});
	</script>
	
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