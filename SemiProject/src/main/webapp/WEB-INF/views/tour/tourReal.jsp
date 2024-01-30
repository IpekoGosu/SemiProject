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


    <!-- <section class="mt-5 py-7 position-relative dark-overlay" style="height: 300px;"><img class="bg-image" src="https://lh3.googleusercontent.com/p/AF1QipP3htX1v33rqqW6_FkfMN81E_Z3n3i0WZrgKDRn=s680-w680-h510" alt=""> -->
    <section class="mt-5 py-7 position-relative dark-overlay" style="height: 300px;"><img class="bg-image" src="${path}/resources/img/myImages/gyeongbokgung.jpg" alt="">
      <div class="container">
        <div class="overlay-content text-white">
          <h3 class="display-3 text-shadow mb-0" style="font-family: GmarketSansMedium">서울 관광데이터를 확인해보세요</h3>
          <div class="container-fluid py-2 px-lg-0">
            <ul class="nav nav-pills-custom text-align: center;">
              <!-- <li class="nav-item"><a class="nav-link active" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;날씨&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li> -->
              <li class="nav-item"><a class="nav-link" style="font-family: GmarketSansMedium;background-color:white; border: none;" href="#weather">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;날씨&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
              <li class="nav-item"><a class="nav-link" style="font-family: GmarketSansMedium;background-color:white; border: none;" href="#population">&nbsp;&nbsp;&nbsp;유동인구&nbsp;&nbsp;&nbsp;</a></li>
              <!-- <li class="nav-item"><a class="nav-link" style="font-family: GmarketSansMedium;background-color:white; border: none;" href="#event-now">문화행사현황</a></li> -->
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- 주간 날씨 영역 시작 -->
    <section class="pt-5 mb-5 mt-3"  id="weather">
      <div class="container">
        <div class="row mb-3">
          <div class="col-12 title">
            <h2 style="font-family: GmarketSansMedium, sans-serif; font-weight: bold;">오늘의 서울날씨</h2>
            <p class="subtitle" style="font-size: 20px">를 확인하세요!</p>
          </div>
        </div>
        <div class="row gx-4 mb-5" style="text-align: center; display: flex;">
          <div class="col">
            <div class="shadow pt-4 p-3 pb-1 mh-100" style="border-radius: 20px; background: linear-gradient(to right, #fff1f1, #ffffff);">
              <p><b>오늘</b>은 <strong style="color: #ef4562;"><span>${korDayOfWeek}</span></strong>입니다</p>
              <!--<p>오늘의 <b>날씨</b>는 <strong style="color: #ef4562;"><span>맑음</span></strong>입니다</p>-->
              <p>${tourWeather.pcp_msg}</p>
              <p>일 <b>평균온도</b>는 <strong style="color: #ef4562;"><span>${tourWeather.temp}</span>°C</strong> 입니다</p>
              <p>일 <b>최고온도</b>는 <strong style="color: #ef4562;"><span>${tourWeather.max_temp}</span>°C</strong> 입니다</p>
              <p>일 <b>최저온도</b>는 <strong style="color: #ef4562;"><span>${tourWeather.min_temp}</span>°C</strong> 입니다</p>
              <p>일 <b>체감온도</b>는 <strong style="color: #ef4562;"><span>${tourWeather.sensible_temp}</span>°C</strong> 입니다</p>
            </div>
          </div>
          <div class="col">
            <div class="shadow pt-4 p-3 pb-1 mh-100" style="border-radius: 20px; background: linear-gradient(to right, #ffffff, #fff1f1); ">
              <p><b>습도</b>은 <strong style="color: #ef4562;"><span>${tourWeather.humidity}</span>mm</strong> 입니다</p>
              <p><b>풍향</b>은 <strong style="color: #ef4562;"><span>${tourWeather.wind_dirct}</span>mm</strong> 입니다</p>
              <p><b>풍속</b>은 <strong style="color: #ef4562;"><span>${tourWeather.wind_spd}</span>mm</strong> 입니다</p>
              <p><b>강수량</b>은 <strong style="color: #ef4562;"><span>${tourWeather.precipitation}	</span>mm</strong> 입니다</p>
              <p><b>강수타입</b>은 <strong style="color: #ef4562;"><span>${tourWeather.precpt_type}	</span>mm</strong> 입니다</p>
            </div>
          </div>
          <div class="col">
            <div class="shadow pt-4 p-3 pb-1 mh-100" style="border-radius: 20px; background: linear-gradient(to right, #fff1f1, #ffffff); ">
              <p><b>일출 시각</b>은 <strong style="color: #ef4562;">${tourWeather.sunrise}</strong> 입니다</p>
              <p><b>일몰 시각</b>은 <strong style="color: #ef4562;">${tourWeather.sunset}</strong> 입니다</p>
              <p><b>자외선지수단계</b>은 <strong style="color: #ef4562;">${tourWeather.uv_index_lvl}</strong> 입니다</p>
              <p><b>자외선지수</b>은 <strong style="color: #ef4562;">${tourWeather.uv_index}</strong> 입니다</p>
              <p><b>자외선메세지</b>은 <strong style="color: #ef4562;">${tourWeather.uv_msg}</strong></p>
            </div>
          </div>
          <div class="col">
            <div class="shadow pt-4 p-3 pb-1 mh-100" style="border-radius: 20px; background: linear-gradient(to right, #ffffff, #fff1f1);">
              <p><b>미세먼지지표</b>은 <strong style="color: #ef4562;">${tourWeather.pm10_index}</strong> 입니다</p>
              <p><b>미세먼지농도</b>은 <strong style="color: #ef4562;">${tourWeather.pm10}</strong> 입니다</p>
              <p><b>초미세먼지지표</b>은 <strong style="color: #ef4562;">${tourWeather.pm25_index}</strong> 입니다</p>
              <p><b>초미세먼지농도</b>은 <strong style="color: #ef4562;">${tourWeather.pm25}</strong> 입니다</p>
            </div>
          </div>
          <div class="col">
            <div class="shadow pt-4 p-3 pb-1 mh-100" style="border-radius: 20px; background: linear-gradient(to right, #fff1f1, #ffffff);">
              <p><b>통합대기환경등급</b>은 <strong style="color: #ef4562;">${tourWeather.air_idx}</strong> 입니다</p>
              <p><b>통합대기환경지수</b>은 <strong style="color: #ef4562;">${tourWeather.air_idx_mvl}</strong> 입니다</p>
              <p><b>통합대기환경지수 결정물질</b>은 <strong style="color: #ef4562;">${tourWeather.air_idx_main}</strong> 입니다</p>
              <p><b>통합대기환경등급별 메세지</b>은 <strong style="color: #ef4562;">${tourWeather.air_msg}</strong></p>
              <!--<p><b>24시간 예보</b>은 <strong style="color: #ef4562;">${tourWeather.fcst24hours}</strong> 입니다</p>-->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 주간 날씨 영역 끝 -->

    <!-- 유동인구 영역 시작 -->
    <section class="py-0 mt-3 mb-6" id="population">
      <div class="container">
        <div class="row mb-2">
          <div class="col-md-8 title">
            <h2 style="font-family: GmarketSansMedium, sans-serif; font-weight: bold;">서울</h2>
            <p class="subtitle" style="font-size: 20px">의 유동인구 입니다.</p>
          </div>
          <div class="col-md-12">
              <div id="map" style="width:100%;height:800px;"></div>
          </div>
          <!-- <div class="col-md-12">
            <svg xmlns="http://www.w3.org/2000/svg" style="color: red;" width="35" height="35" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
              <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" style="color: orange;" width="35" height="35" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
              <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" style="color: #FAED27;" width="35" height="35" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
              <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" style="color: green;" width="35" height="35" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
              <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
            </svg>
          </div> -->
        </div>
      </div>
    </section>
    <!-- 유동인구 영역 끝 -->

    

<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee850f3227ff38fdb5e4924011797d01"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(37.572087, 126.985443), // 지도의 중심좌표
	    level: 8 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
		<c:forEach var="map" items="${tourPeople}" >
			{
			    content: '<div style="padding: 1em;"><p style="font-weight: bold;">${map.area_nm}</p><br/> 정도 : ${map.area_congest_lvl}<br/>메세지 : ${map.area_congest_msg}</div>',
			    //link : '<a href="https://map.kakao.com/link/map/${map.lat}, ${map.lng}" target="_blank">',
			    link : 'https://map.kakao.com/link/map/${map.area_nm},${map.lat}, ${map.lng}',
			    latlng: new kakao.maps.LatLng(${map.lat}, ${map.lng}),
          setData: '${map.area_congest_lvl}'
			},
		</c:forEach>
	];
	
  var imageSrc1 = '${path}/resources/img/tour/marker_red.png', // 마커이미지의 주소입니다    
  imageSize1 = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
  imageOption1 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

  var imageSrc2 = '${path}/resources/img/tour/marker_orenge.png', // 마커이미지의 주소입니다    
  imageSize2 = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
  imageOption2 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

  var imageSrc3 = '${path}/resources/img/tour/marker_yellow.png', // 마커이미지의 주소입니다    
  imageSize3 = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
  imageOption3 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

  var imageSrc4 = '${path}/resources/img/tour/marker_green.png', // 마커이미지의 주소입니다    
  imageSize4 = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
  imageOption4 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.   

  //붐빔, 약간 붐빔, 보통, 여유
  var markerImage1 = new kakao.maps.MarkerImage(imageSrc1, imageSize1, imageOption1);
  var markerImage2 = new kakao.maps.MarkerImage(imageSrc2, imageSize2, imageOption2)
  var markerImage3 = new kakao.maps.MarkerImage(imageSrc3, imageSize3, imageOption3)
  var markerImage4 = new kakao.maps.MarkerImage(imageSrc4, imageSize4, imageOption4)

	for (var i = 0; i < positions.length; i ++) {

    var marker = null;
    console.log("setData:", positions[i].setData);
    if (positions[i].setData == '붐빔') {
      // 마커를 생성합니다
      marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage1
      });
    } else if (positions[i].setData == '약간 붐빔') {
      marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage2
      });
    } else if (positions[i].setData == '보통') {
      marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage3
      });
    } else if (positions[i].setData == '여유') {
      marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
        image: markerImage4
      });
    }
    
    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });
    
    var link = positions[i].link;
    
    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    kakao.maps.event.addListener(marker, 'click', makeClickListener(link));
	}
	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
		return function() {
		    infowindow.open(map, marker);
		};
	}
	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeClickListener(link) {
		return function() {
			window.open(link);
		};
	}
	
	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
		return function() {
		    infowindow.close();
		};
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














