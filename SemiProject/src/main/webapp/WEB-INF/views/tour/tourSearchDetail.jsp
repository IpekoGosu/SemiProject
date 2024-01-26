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
      .btn-secondary {
            background-color: #ef4562 !important;
            border-color: #ef4562 !important;
      }
      .btn-check:checked + .btn-outline-primary{
            background-color: #ef4562 !important;
            border-color: #ef4562 !important;
            color: white !important;
      }
      .btn-check + .btn-outline-primary{
            color: #ef4562 !important;
            border-color: #ef4562 !important;
      }
    </style>
  </head>
  <body style="padding-top: 72px;">

    <section class="position-relative py-6 ">
      <div class="container h-100;" style=" height: 250px">
        <img class="bg-image" src="${path}/resources/img/photo/photo-1467987506553-8f3916508521.jpg" alt="">
      </div>
    </section>
    <div class="container">
      <div
        class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20"
      >
        <form name="searchTourFrom" action="${path}/tour/searchdetail" method="get">
          <input type="hidden" name="page" value="1">
          <div class="row">
            <div class="col-lg-6 d-flex align-items-center form-group">
              <input
                class="form-control border-0 shadow-0 show-search"
                type="search"
                name="searchValue"
                value="${searchValue}"
                placeholder="여행지를 검색하세요!!"
                style="font-size: 20px"
              />
            </div>

            <div
              class="col-md-6 col-sm-2 col-lg-3 d-flex align-items-center form-group no-divider"
            >
              <select
                class="selectpicker"
                title="자치구"
                name="areaCodeValue"
                id="areaCodeValue"
                data-style="btn-form-control" data-size="5"
                style="font-size: 20px"
              >
              <c:if test="${empty areaCodeValue}">
                <option value="0" selected>전체</option>
              </c:if>
              <!--<c:if test="${not empty areaCodeValue}">-->
                <c:if test="${0 eq areaCodeValue}">
                  <option value="0" selected>전체*</option>
                </c:if>
                <c:if test="${1 eq areaCodeValue}">
                  <option value="1" selected>강남구*</option>
                </c:if>
                <c:if test="${2 eq areaCodeValue}">
                  <option value="2" selected>강동구*</option>
                </c:if>
                <c:if test="${3 eq areaCodeValue}">
                  <option value="3" selected>강북구*</option>
                </c:if>
                <c:if test="${4 eq areaCodeValue}">
                  <option value="4" selected>강서구*</option>
                </c:if>
                <c:if test="${5 eq areaCodeValue}">
                  <option value="5" selected>관악구*</option>
                </c:if>
                <c:if test="${6 eq areaCodeValue}">
                  <option value="6" selected>광진구*</option>
                </c:if>
                <c:if test="${7 eq areaCodeValue}">
                  <option value="7" selected>구로구*</option>
                </c:if>
                <c:if test="${8 eq areaCodeValue}">
                  <option value="8" selected>금천구*</option>
                </c:if>
                <c:if test="${9 eq areaCodeValue}">
                  <option value="9" selected>노원구*</option>
                </c:if>
                <c:if test="${10 eq areaCodeValue}">
                  <option value="10" selected>도봉구*</option>
                </c:if>
                <c:if test="${11 eq areaCodeValue}">
                  <option value="11" selected>동대문*</option>
                </c:if>
                <c:if test="${12 eq areaCodeValue}">
                  <option value="12" selected>동작구*</option>
                </c:if>
                <c:if test="${13 eq areaCodeValue}">
                  <option value="13" selected>마포구*</option>
                </c:if>
                <c:if test="${14 eq areaCodeValue}">
                  <option value="14" selected>서대문*</option>
                </c:if>
                <c:if test="${15 eq areaCodeValue}">
                  <option value="15" selected>서초구*</option>
                </c:if>
                <c:if test="${16 eq areaCodeValue}">
                  <option value="16" selected>성동구*</option>
                </c:if>
                <c:if test="${17 eq areaCodeValue}">
                  <option value="17" selected>성북구*</option>
                </c:if>
                <c:if test="${18 eq areaCodeValue}">
                  <option value="18" selected>송파구*</option>
                </c:if>
                <c:if test="${19 eq areaCodeValue}">
                  <option value="19" selected>양천구*</option>
                </c:if>
                <c:if test="${20 eq areaCodeValue}">
                  <option value="20" selected>영등포*</option>
                </c:if>
                <c:if test="${21 eq areaCodeValue}">
                  <option value="21" selected>용산구*</option>
                </c:if>
                <c:if test="${22 eq areaCodeValue}">
                  <option value="22" selected>은평구*</option>
                </c:if>
                <c:if test="${23 eq areaCodeValue}">
                  <option value="23" selected>종로구*</option>
                </c:if>
                <c:if test="${24 eq areaCodeValue}">
                  <option value="24" selected>중구*</option>
                </c:if>
                <c:if test="${25 eq areaCodeValue}">
                  <option value="25" selected>중랑구*</option>
                </c:if>
              <!--</c:if>-->
               <option value="0">전체</option> 
                <option value="1">강남구</option> 
                <option value="2">강동구</option> 
                <option value="3">강북구</option> 
                <option value="4">강서구</option> 
                <option value="5">관악구</option> 
                <option value="6">광진구</option> 
                <option value="7">구로구</option> 
                <option value="8">금천구</option> 
                <option value="9">노원구</option> 
                <option value="10">도봉구</option>
                <option value="11">동대문</option>
                <option value="12">동작구</option>
                <option value="13">마포구</option>
                <option value="14">서대문</option>
                <option value="15">서초구</option>
                <option value="16">성동구</option>
                <option value="17">성북구</option>
                <option value="18">송파구</option>
                <option value="19">양천구</option>
                <option value="20">영등포</option>
                <option value="21">용산구</option>
                <option value="22">은평구</option>
                <option value="23">종로구</option>
                <option value="24">중구</option> 
                <option value="25">중랑구</option>
              </select>
            </div>
            <div class="col-lg-3 form-group d-grid mb-0">
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
    </div>
    <section class="py-6">
      <div class="container">
        <div class="container">
          <div class="row mb-4">
            <div class="col-md-8 title" style="padding-left: 0px;">
              <h2 style="font-family: GmarketSansMedium, sans-serif;font-weight: bold;">
                ${searchValue}
              </h2>
              <p class="subtitle" style="font-size: 20px">에 대한 검색결과 입니다.</p>
            </div>
            <div class="col-md-4 d-lg-flex align-items-center justify-content-end">
              <label class="form-label me-2" for="form_sort">총 ${pageInfo.listCount}개</label>
              <!--
              <div>
                <label class="form-label me-2" for="form_sort">정렬 방법</label>
                <div class="dropdown bootstrap-select">
                  <div class="dropdown bootstrap-select">
                    <select class="selectpicker" style="text-align-last: right;" name="sort" id="form_sort" data-style="btn-selectpicker" title="" tabindex="null">
                  <option value="sortBy_0">최신순</option>
                  <option value="sortBy_1">추천순</option>
                  <option value="sortBy_2">평점순</option>
                </select>
                <button type="button" tabindex="-1" class="btn dropdown-toggle btn-selectpicker" data-bs-toggle="dropdown" role="combobox" aria-owns="bs-select-2" aria-haspopup="listbox" aria-expanded="false" title="최신순" data-id="form_sort"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">최신순</div></div> </div></button><div class="dropdown-menu "><div class="inner show" role="listbox" id="bs-select-2" tabindex="-1"><ul class="dropdown-menu inner show" role="presentation"></ul></div></div></div>
                <div class="dropdown-menu ">
                  <div class="inner show" role="listbox" id="bs-select-1" tabindex="-1">
                    <ul class="dropdown-menu inner show" role="presentation"></ul>
                  </div>
                </div>
                </div>
              </div>
              -->
            </div>
          </div>
        </div>
        <div class="row">
          <!-- place item-->
          <c:forEach items="${list}" var="item" varStatus="status">
          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="selector card-img-top overflow-hidden gradient-overlay" style="width:416px;height:277px;">
                <c:if test="${empty item.t_image_main}">
                  <img class="img-fluid" src="${path}/resources/img/yja/i.jpg" alt="Modern, Well-Appointed Room">
                </c:if>
                <c:if test="${not empty item.t_image_main}">
                  <img style="position: absolute; top:0; left: 0;
                                          width: 100%;
                                          height: 100%;" class="img-fluid" src="${item.t_image_main}" alt="Modern, Well-Appointed Room">
                </c:if><a class="tile-link" href="${path}/tour/tourdetail?no=${item.t_content_id}"></a>
                <div class="card-img-overlay-top text-end">
                  <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"></use>
                    </svg></a>
                </div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <div class="d-flex card-subtitle mb-3">
                    <p class="flex-grow-1 mb-0 text-muted"
                      style="font-size: 18px; color: black; font-weight: bold">
                      ${item.t_title}
                    </p>
                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                      <c:forEach begin="1" end="${item.t_review_rate}" step="1">
                        <i class="fa fa-star text-warning"></i>
                      </c:forEach>
                    </p>
                  </div>
                  <div class="d-flex card-text mt-1">
                    <p class="flex-grow-1 mb-0 text-muted " style="font-size: 0.95rem !important;"><i
                        class="fas fa-map-marker text-secondary opacity-4 me-1"></i>${item.t_addr}
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
          <!-- Pagination -->
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
        <!-- <div class="col-md-12">
        <div class="col text-center">
      <button type="button" class="btn btn-primary h-100" type="submit">
        더보기 + 
      </button>
    </div> -->
      </div>
      </div>
    </section>



	<script type="text/javascript">
		function movePage(page){
			searchTourFrom.page.value = page;
			searchTourFrom.submit();
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














