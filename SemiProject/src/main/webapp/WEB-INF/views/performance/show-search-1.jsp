<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="음악 장르 검색" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>음악 공연 검색</title>
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
        /* 체크박스 checked 영역 */
        .form-check-input:checked {
            background-color: #ef4562 !important;
            border-color: #ef4562 !important;
        }
        .content:hover {
        	cursor: pointer;
        }
    </style>
</head>
<body class="reward" style="padding-top: 90px;">
<!-- 공연 검색 폼 영역 시작 -->
<img src="${path}/resources/img/myImages/broadway.jpg" alt="" style="object-fit: cover; width: 1920px; height: 300px;">
<form name="searchPrfForm" action="${path}/show-search-1" method="get" >
<div class="container">
  <div class="search-bar rounded p-4 mt-n6 position-relative z-index-20">
	<input type="hidden" name="bypname" value="${param.bypname == 'name' ? 'name' : ''}">
	<input type="hidden" name="bydate" value="${param.bydate == 'date' ? 'date' : ''}">
   	 <input type="hidden" name="page" value="1">
      <div class="row mb-5">
        <div class="col-2 align-items-center no-divider">
          <div>
          	<c:set var="searchType" value="${param.searchType}" />
            <select
              class="selectpicker"
              title="지역 선택"
              data-style="btn-form-control"
              name="searchType"
            >
              <option value="concKeyword" ${param.searchType == 'concKeyword' || param.searchType == '' || param.searcyType == null ? 'selected' : ''}>공연 이름으로 검색</option>
              <option value="hallKeyword" ${param.searchType == 'hallKeyword' ? 'selected' : ''}>공연장 이름으로 검색</option>
            </select>
          </div>
        </div>
        <div class="col-8 d-flex align-items-center">
          <input
            class="form-control border-0 shadow-0"
            type="text"
            value="${param.keyword}"
            name="keyword"
            placeholder="원하는 공연을 검색해주세요"
          />
        </div>
        <div class="col-2 d-grid mb-0">
          <button
            class="btn btn-primary h-100"
            type="submit"
            style="background-color: #ef4562; border: none"
          >
            검색
          </button>
        </div>
      </div>
      <div class="row">
        <div class="col-3 align-items-center">
          <label class="form-label">어린이 공연</label>
          <ul class="list-inline mb-0">
            <li class="list-inline-item">
              <div class="form-check">
                <input
                  class="form-check-input"
                  type="checkbox"
                  id="type_2"
                  name="child"
                  value="Y"
                  ${param.child == 'Y' ? 'checked' : ''}
                />
                <label class="form-check-label" for="type_2">어린이</label>
              </div>
            </li>
          </ul>
        </div>
        <div class="col-3 align-items-center no-divider">
          <label class="form-label">장르 선택</label>
          <div>
            <select
              class="selectpicker"
              title="장르 선택"
              data-style="btn-form-control"
              name="genre"
            >
              <option value="" selected>장르 전체</option>
              <option value="연극" ${param.genre == '연극' ? 'selected' : ''}>연극</option>
              <option value="뮤지컬" ${param.genre == '뮤지컬' ? 'selected' : ''}>뮤지컬</option>
              <option value="클래식" ${param.genre == '클래식' ? 'selected' : ''}>클래식</option>
              <option value="국악" ${param.genre == '국악' ? 'selected' : ''}>국악</option>
              <option value="대중음악" ${param.genre == '대중음악' ? 'selected' : ''}>대중음악</option>
              <option value="무용" ${param.genre == '무용' ? 'selected' : ''}>무용</option>
              <option value="서커스/마술" ${param.genre == '서커스/마술' ? 'selected' : ''}>서커스/마술</option>
            </select>
          </div>
        </div>
        <div class="col-3 align-items-center no-divider">
          <label class="form-label">지역 선택</label>
          <div>
            <select
              class="selectpicker"
              title="지역 선택"
              data-style="btn-form-control"
              name="region"
            >
              <option value="" selected>지역 전체</option>
              <option value="종로구" ${param.region == '종로구' ? 'selected' : ''}>종로구</option>
              <option value="마포구" ${param.region == '마포구' ? 'selected' : ''}>마포구</option>
              <option value="중구" ${param.region == '중구' ? 'selected' : ''}>중구</option>
              <option value="강남구" ${param.region == '강남구' ? 'selected' : ''}>강남구</option>
              <option value="성동구" ${param.region == '성동구' ? 'selected' : ''}>성동구</option>
              <option value="서초구" ${param.region == '서초구' ? 'selected' : ''}>서초구</option>
              <option value="송파구" ${param.region == '송파구' ? 'selected' : ''}>송파구</option>
              <option value="용산구" ${param.region == '용산구' ? 'selected' : ''}>용산구</option>
              <option value="영등포구" ${param.region == '영등포구' ? 'selected' : ''}>영등포구</option>
              <option value="성북구" ${param.region == '성북구' ? 'selected' : ''}>성북구</option>
            </select>
          </div>
        </div>
        <div class="col-3 align-items-center no-divider">
          <label class="form-label">공연 상태</label>
          <div>
            <select
              class="selectpicker"
              title="공연 상태"
              data-style="btn-form-control"
              name="pstate"
            >
              <option value="" selected>선택</option>
              <option value="공연예정" ${param.pstate == '공연예정' ? 'selected' : ''}>공연예정</option>
              <option value="공연중" ${param.pstate == '공연중' ? 'selected' : ''}>공연중</option>
              <option value="공연완료" ${param.pstate == '공연완료' ? 'selected' : ''}>공연완료</option>
            </select>
          </div>
        </div>
      </div>
  </div>
</div>
<!-- 공연 검색 폼 영역 끝 -->
<!-- 검색된 영역 시작 -->
<section class="awards">
<div class="container">
    <div class="mt-3 d-flex justify-content-between align-items-center">
        <!-- 검색된 결과 수 시작 -->
        <span>검색된 결과 : <strong style="color: #ef4562;">${numOfResult}</strong> 개</span>
        <!-- 검색된 결과 수 끝 -->
        <!-- 정렬 선택 영역 시작 -->
        <ul class="nav nav-pills-custom" style="justify-content: end;">
            <li class="nav-item"><button type="button" class="nav-link ${param.bypname == 'name' ? 'active' : ''}" onclick="searchPrfForm.bydate.value =''; searchPrfForm.bypname.value ='name'; movePage(1);" style="border: none;">이름순 정렬</button></li>
            <li class="nav-item"><button type="button" class="nav-link ${param.bydate == 'date' ? 'active' : ''}" onclick="searchPrfForm.bydate.value = 'date'; searchPrfForm.bypname.value =''; movePage(1);" style="border: none;">날짜순 정렬</button></li>
        </ul>
        <!-- 정렬 선택 영역 끝 -->
    </div>
    <!-- 검색된 리스트 영역 시작 -->
    <div class="row gx-5 gy-4">
        <!-- 1 -->
        <c:forEach var="item" items="${items}">
	        <div class="col-6 content">
	            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
	                <div class="row g-0">
	                    <div class="col-md-6">
	                        <img height=400 src="${item.poster}"class="card-img rounded-start" alt="..."><a class="tile-link" href="${path}/show-detail?pid=${item.pid}"></a>
	                    </div>
	                    <div class="col-md-6">
	                        <div class="card-body">
	                            <h5 class="card-title">${item.pname }</h5>
	                            <p class="text-md mb-2"><a class="me-1" href="#">${item.pfrom} ~ </a><a class="me-1" href="#">${item.pto}</a></p>
	                            <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">${item.price}</a></p>
	                            <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
        </c:forEach>
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
</form>
<!-- 검색된 영역 끝 -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

    <!-- JavaScript files-->
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
    <script src="../vendor/object-fit-images/ofi.min.js"></script>
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
</html>

