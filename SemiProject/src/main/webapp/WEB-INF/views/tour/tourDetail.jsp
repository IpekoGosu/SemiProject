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

<!-- 상세 영역 시작 -->
<div class="container-fluid" style="background-color: #fff1f1;">
  <h3 class="pt-5 text-center">${tour.t_title}</h3>
  <h5 class="mt-2 text-center">${tour.t_addr}</h5>
  <p class="mb-2 text-center">
    <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
    <!--<i class="fa fa-star text-gray-300"></i>-->
    <span style="font-size: 16px;">${tour.t_review_rate}</span>
  </p>
  <!--
  <div class="container form-check form-switch pb-3" style="display: flex; justify-content: end;">
    <input class="form-check-input" id="favor" type="checkbox">
    <label class="form-check-label ps-2" for="favor"> <span>즐겨찾기</span></label>
  </div>
  -->
</div>
<div class="container">
<!-- 배너(캐러셀) 영역 시작 -->
<!-- <section class="banner">
  <div id="banner" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
      <div class="carousel-inner shadow text-center d-flex align-items-center" style="height: 600px; background-color: rgba(212, 212, 212, 0.103);">
          <div class="carousel-item active">
              <img src="${path}/resources/img/photo/bangkok.jpg" class="img-fluid" alt="">
              <div class="carousel-caption">
              </div>
          </div>
          <div class="carousel-item">
              <img src="${path}/resources/img/photo/barcelona.jpg" class="img-fluid" alt="">
              <div class="carousel-caption">
              </div>
          </div>
          <div class="carousel-item">
              <img src="${path}/resources/img/photo/fez.jpg" class="img-fluid" alt="">
              <div class="carousel-caption">
              </div>
          </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#banner" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" style="background-color: gray; border-radius: 10px;" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#banner" data-bs-slide="next">
          <span class="carousel-control-next-icon" style="background-color: gray; border-radius: 10px;" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
      </button>
      <div class="carousel-indicators">
          <button type="button" data-bs-target="#banner" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#banner" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#banner" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
  </div>
</section> -->
<!-- 배너(캐러셀) 영역 끝 -->
    <ul class="mt-3" style="padding-left: 5px;">
        <li class="border-0 shadow rounded" style="list-style: none;">
            <div class="row">
              <div class="col-7">
                <div class="p-3">
                  <h3>갤러리</h3>
                  <!-- 배너(캐러셀) 영역 시작 -->
                  <section class="banner">
                    <div id="banner" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
                      <div class="carousel-inner shadow text-center d-flex align-items-center" style="height: 600px; background-color: rgba(212, 212, 212, 0.103);">
                        <c:if test="${empty tour.t_image_list}">
                          <div class="carousel-item active">
                            <img src="${path}/resources/img/photo/barcelona.jpg" class="img-fluid" alt="">
                            <div class="carousel-caption"></div>
                          </div>
                        </c:if>
                        <c:if test="${not empty tour.t_image_list}">
                          <c:forEach var="item" items="${tour.t_image_list}" varStatus="status">
                            <c:if test="${1 eq status.count}">
                              <div class="carousel-item active">
                                <img src="${item.t_image_url}" class="img-fluid" alt="">
                                <div class="carousel-caption"></div>
                              </div>
                            </c:if>
                            <c:if test="${1 ne status.count}">
                              <div class="carousel-item">
                                <img src="${item.t_image_url}" class="img-fluid" alt="">
                                <div class="carousel-caption"></div>
                              </div>
                            </c:if>
                          </c:forEach>
                        </c:if>
                      </div>
                      <button class="carousel-control-prev" type="button" data-bs-target="#banner" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" style="background-color: gray; border-radius: 10px;" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#banner" data-bs-slide="next">
                          <span class="carousel-control-next-icon" style="background-color: gray; border-radius: 10px;" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                      </button>
                      <div class="carousel-indicators">
                          <button type="button" data-bs-target="#banner" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#banner" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#banner" data-bs-slide-to="2" aria-label="Slide 3"></button>
                          <button type="button" data-bs-target="#banner" data-bs-slide-to="3" aria-label="Slide 4"></button>
                          <button type="button" data-bs-target="#banner" data-bs-slide-to="4" aria-label="Slide 5"></button>
                      </div>
                    </div>
                  </section>
                  <!-- 배너(캐러셀) 영역 끝 -->
                </div>
                <div class="p-3">
                  <h3>소개</h3>
                  <p>${tour.t_summary}</p>
                </div>
              </div>
              <div class="col-5">
                <div class="p-3 shadow mt-2 me-2 mb-5">
                  <h3>기본정보</h3>
                  <div class="shadow">
                    <ul style="list-style: none; padding: 10px;">
                      <li><strong class="me-4">우편번호</strong><span>${tour.t_zip}</span></li>
                      <hr>
                      <li><strong class="me-4">주소</strong><span>${tour.t_addr}</span></li>
                      <hr>
                      <li><strong class="me-4">홈페이지 주소</strong><span>${tour.t_homepage_url}</span></li>
                    </ul>
                  </div>
                </div>
                <div class="p-3 shadow me-2">
                  <h3>상세정보</h3>
                  <div class="shadow">
                    <ul style="list-style: none; padding: 10px;">
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">수용인원</strong><span>${tour.t_capacity}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">유모차대여정보</strong><span>${tour.t_babvcarryinfo}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">신용카드가능정보</strong><span>${tour.t_creditinfo}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">애완동물동반가능정보</strong><span>${tour.t_petinfo}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">체험가능연령</strong><span>${tour.t_exrate}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">체험안내</strong><span>${tour.t_exguide}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between; margin-bottom: 20px;"><strong class="me-4">문의 및 안내</strong><span>${tour.t_infocenter}</span></li>
                      <hr>
                      <li style="display: flex; justify-content: space-between;"><strong class="me-4">개장일</strong><span>${tour.t_useseason}</span></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-12">
                <div class="p-4">
                  <h3>위치</h3>
                  <div id="map" style="width:100%;height:400px;"></div>
                </div>
              </div>
            </div>
        </li>
        <li class="border-0 shadow rounded" style="list-style: none;">
	        
          <h4 class="shadow" style="text-align: center; padding: 5px;">관광후기</h4>
          <div style="margin: 10px;">
              <div class="mt-3 d-flex justify-content-between align-items-center">
            
        <form name="searchBoardtourFrom" action="${path}/tour/tourdetail" method="get">
          <input type="hidden" name="no" value="${tour.t_content_id}">				
          <input type="hidden" name="page" value="1">				        
                    <span>총 <strong style="color: deepskyblue;"><c:out value="${boardCount}"/></strong> 개의 관광후기가 등록되었습니다.</span>
                    <div class="mt-2">
                  <div class="col">
                    <table class="w-100">
                      <tbody>
                        <tr>
                          <td>
                            <input type="radio" name="orderType" value="time" class="btn-check" onclick="subfunc()"
                                 id="btn-check-outlined1" autocomplete="off" ${bparamTour.orderType == 'time' ? 'checked' : ''}>
                            <label class="btn btn-outline-dark gmarketfontM" for="btn-check-outlined1">&nbsp;&nbsp;최신순&nbsp;&nbsp;</label>
                          </td>
                          <td>
                            <input type="radio" name="orderType" value="read" class="btn-check" onclick="subfunc()"
                                 id="btn-check-outlined2" autocomplete="off" ${bparamTour.orderType == 'read' ? 'checked' : ''}>
                            <label class="btn btn-outline-dark" for="btn-check-outlined2">&nbsp;&nbsp;조회순&nbsp;&nbsp;</label>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
            </form>
              </div>
            <div>
              <c:forEach var="item" items="${list}">
                  <!-- 1 -->
                  <div class="card mt-3 hover-animate border-0 shadow" id="review-1" style="padding: 0;">
                      <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                          <ul style="display: inline-flex; list-style: none; padding: 0;">
                            <li><p class="text-xs mb-0">
                              <c:if test="${item.ratings == 1}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                             <c:if test="${item.ratings == 2}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                             <c:if test="${item.ratings == 3}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                             <c:if test="${item.ratings == 4}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i></c:if>
                             <c:if test="${item.ratings == 5}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i></c:if>
                            </p></li>
                            <li class="ms-3"><a href="${path}/boardTour/view?no=${item.bno}" style="display: flex; text-align: end;">글 보러가기</a></li>
                          </ul>
                          <ul style="display: inline-flex; list-style: none;">
                              <li style="padding-right: 20px;"><p><c:out value="${item.memberName}"/></p></li>
                              <li><p><fmt:formatDate type="date" value="${item.createDate}"/></p></li>
                          </ul>
                      </div>
                      <ul class="ms-3 p-0 me-3" style="list-style: none;">
                          <li><strong><c:out value="${item.title}"/></strong></li>
                          <li><c:out value="${item.content}"/></li>
                      </ul>
                  </div>
              </c:forEach>
            
                
            </div>
            
            <!-- 로그인 해야 버튼 보이도록 -->
            <c:if test="${loginMember != null}">
              <div style="text-align: right;">
                <button id="write" class="btn btn-secondary mt-4" style="background-color: #ef4562;">
                  <a href="${path}/boardTour/write?pid=${item.pid}&pname=${item.pname}" style="color: white; text-decoration: none; border: none;">리뷰쓰러가기</a>
                </button>
              </div>
            </c:if>
        </div>
        <div class="pb-4">
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
    </li>
    </ul>
    <!-- 탭 영역 끝 -->
</div>



<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee850f3227ff38fdb5e4924011797d01"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(${x}, ${y}), // 지도의 중심좌표
	    level: 4 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
		<c:forEach var="map" items="${mapList}" >
			{
			    content: '<div>${map.name}</div>', 
			    latlng: new kakao.maps.LatLng(${map.x}, ${map.y})
			},
		</c:forEach>
	];
	
	for (var i = 0; i < positions.length; i ++) {
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions[i].latlng // 마커의 위치
	});
	
	// 마커에 표시할 인포윈도우를 생성합니다 
	var infowindow = new kakao.maps.InfoWindow({
	    content: positions[i].content // 인포윈도우에 표시할 내용
	});
	
	// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	// 이벤트 리스너로는 클로저를 만들어 등록합니다 
	// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}
	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	return function() {
	    infowindow.open(map, marker);
	};
	}
	
	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	return function() {
	    infowindow.close();
	};
	}
</script>


<script type="text/javascript">
	function movePage(page){
		searchBoardtourFrom.page.value = page;
		searchBoardtourFrom.submit();
	}
	function subfunc(){
		searchBoardtourFrom.submit();
	}
	
</script>

	<script type="text/javascript">
		// function movePage(page){
		// 	searchBoardTourFrom.page.value = page;
		// 	searchBoardTourFrom.submit();
		// }
		// function checkOnly(elem){
		// 	const checkBoxes = document.getElementsByName("orderType");
		// 	checkBoxes.forEach((cb) =>{
		// 		cb.checked = false;
		// 	});
		// 	elem.checked = true;
		// }
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














