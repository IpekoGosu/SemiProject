<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

    <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="공연 뉴스 검색" name="title"/>
    </jsp:include>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>공연 뉴스 검색</title>
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
        .btn-outline-danger:checked {
            background-color: #ef4562 !important;
            border-color: #ef4562 !important;
      	}
      	@import url('https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap');
      .donglefont{
        font-family: 'Dongle';
      }
      	.gmarketfontM{
        font-family: 'GmarketSansMedium';
      }
    </style>
</head>
<body class="reward" style="padding-top: 72px;">
<!-- 공연 검색 폼 영역 시작 -->
<section class="hero-home dark-overlay"><img class="bg-image" src="${path}/resources/img/myImages/waitingforGodotHero.jpg" alt="">
      <div class="container py-7">
        <div class="overlay-content text-center text-white">
          <h1 class="display-3 text-shadow donglefont bold" style="position: relative; top: 9rem; font-size: 10rem;">뉴스 검색하기</h1>
        </div>
      </div>
</section>
<c:set var="searchType" value="${param.searchType}" />
<c:set var="searchValue" value="${param.searchValue}" />
<c:if test="${empty searchType}">
	<c:set var="searchType" value="sim" />
</c:if>
<div class="container">
   <form name="searchPrfForm" action="${path}/news/perform" method="get">
   	<input type="hidden" name="page" value="1">
    <div class="search-bar rounded p-4 mt-n5 position-relative z-index-20">
        <div class="row">
            <div class="col-10 d-flex align-items-center">
              <input class="form-control border-0 shadow-0" type="search" value="${searchValue}" name="searchValue" placeholder="원하는 뉴스를 검색해주세요">
            </div>
            <div class="col-2 d-grid mb-0">
              <button class="btn btn-primary h-100" type="submit" style="background-color: #ef4562; border: none;">검색</button>
            </div>
        </div>
    </div>
    <div class="mt-3 d-flex justify-content-between align-items-center">
        <!-- 검색된 결과 수 시작 -->
        <span>검색된 결과 : <strong style="color: #ef4562;"><c:out value="${searchCount}"/></strong> 개</span>
        <!-- 검색된 결과 수 끝 -->
        <!-- 정렬 선택 영역 시작 -->
        <span class="nav nav-pills-custom" style="justify-content: end;">
        <input type="radio" value="sim" class="btn-check" name="searchType" id="success-outlined" ${searchType == 'sim' ? 'checked' : ''} />
		<label class="btn btn-outline-danger mx-3" style="width: 9rem;" for="success-outlined">정확도순</label>
		
		<input type="radio" value="date" class="btn-check" name="searchType" id="danger-outlined" ${searchType == 'date' ? 'checked' : ''} />
		<label class="btn btn-outline-danger" style="width: 9rem;" for="danger-outlined">날짜순</label>
        </span>
        <!-- 정렬 선택 영역 끝 -->
    </div>
  </form>
</div>
<!-- 공연 검색 폼 영역 끝 -->
<!-- 검색된 영역 시작 -->
<section class="awards">
<div class="container">
    <!-- 검색된 리스트 영역 시작 -->
    <div class="row gx-5 gy-4">
    	<c:forEach var="item" items="${nlist}">
	        <div class="col-6">
	            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
	                <div class="row g-0">
	                    <div class="col-6">
	                        <div class="card-body">
	                            <h5 class="card-title"><c:out value="${item.title}"/></h5>
	                            <div class="card-text" style="height: 270px; overflow: hidden; text-overflow: ellipsis;">
	                            	<c:out value="${item.description}"/>
	                            	<div class="mt-4">
			                            <p class="text-md mb-2 text-sm" style="color: gray;">기사 일자 : <span><c:out value="${item.pubDate}"/></span></p>
			                            <a href="${item.originallink}" style="text-decoration: none;">기사 링크로 가기<i class="fa fa-long-arrow-alt-right"></i></a>
	                            	</div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-auto">
	                        <img src="${path}/resources/img/myImages/m_agatha.png" class="card-img rounded-start" alt="${path}/resources.">
	                    </div>
	                </div>
	            </div>
	        </div>
    	</c:forEach>
        <!-- 1 -->
    </div>
    <!-- 검색된 리스트 영역 끝 -->
    <!-- 페이지네이션 영역 시작 -->
    <div class="mt-5 mb-5">
      <nav aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
              <li class="page-item page-link" onclick="movePage(1);"  style="border-top-left-radius: 20%; border-bottom-left-radius: 20%;">
              	<i class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i></li>
              <li class="page-item page-link" onclick="movePage(${pageInfo.prevPage});"><i class="fa fa-angle-left"></i></li>
              <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
              	<c:if test="${status.current == pageInfo.currentPage}">
              		<li class="page-item page-link active">${status.current}</li>
              	</c:if>
              	<c:if test="${status.current != pageInfo.currentPage}">
              		<li onclick="movePage(${status.current});" class="page-item page-link">${status.current}</li>
              	</c:if>
              </c:forEach>
              <li class="page-item page-link" onclick="movePage(${pageInfo.nextPage});"><i class="fa fa-angle-right"></i></li>
              <li class="page-item page-link" onclick="movePage(${pageInfo.maxPage});" style="border-top-right-radius: 20%; border-bottom-right-radius: 20%;">
              	<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></li>
          </ul>
      </nav>
    </div>
    <!-- 페이지네이션 영역 끝 -->
</div>
</section>
<!-- 검색된 영역 끝 -->
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
    <script src="js/theme.js"></script>
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
    <!-- Available tile layers-->
    <script src="${path}/resources/js/map-layers.js"> </script>
    <script src="${path}/resources/js/map-category.js">                               </script>
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
    <script src="${path}/resources/js/datepicker-category.js"> </script>
    <!-- Price Slider-->
    <script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
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
<script type="text/javascript">
	function movePage(page){
		searchPrfForm.page.value = page;
		searchPrfForm.submit();
	}
	$(()=>{
		$('#success-outlined, #danger-outlined').click((e)=>{
	        searchPrfForm.submit();
	    })
	});

</script>
</html>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
    

    
    
    
    