<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="프로필" name="title"/>
</jsp:include>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>프로필</title>
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
    </style>
</head>
<body class="reward" style="padding-top: 100px;">
<!-- 상세 영역 시작 -->
<div class="container mt-4 mb-4">
    <!-- 탭 영역 시작 -->
    <div class="row shadow" style="min-height: 800px;">
        <div class="col-2">
            <nav id="tablist" class="nav flex-column pt-2">
                <a class="nav-link active" style="border-radius: 5px;" id="tab1" data-bs-toggle="tab" aria-current="page" href="#content1">회원정보</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab2" data-bs-toggle="tab" href="#content2">내가 쓴 글</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab3" data-bs-toggle="tab" href="#content3">비밀번호 변경</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab4" data-bs-toggle="tab" href="#content4">예매 내역</a>
            </nav>
        </div>
        <div class="col-10 shadow">
        	<div class="tab-content mt-3">
                <!-- 회원정보 시작 -->
                <div class="tab-pane fade show active" id="content1">
                	<div class="tab-content mt-3">
		              <div class="mb-4">
		                <label class="form-label" for="id"> 아이디</label>
		                <input class="form-control" name="id" id="id" type="text" readonly value="${loginMember.id}" placeholder="awesomeId" autocomplete="off">
		              </div>
		              <div class="mb-4">
		                <label class="form-label" for="email"> 이메일</label>
		                <input class="form-control" name="email" id="email" type="email" readonly value="${loginMember.email}" placeholder="name@address.com" autocomplete="off">
		              </div>
		              <div class="mb-4">
		                <label class="form-label" for="name"> 닉네임</label>
		                <input class="form-control" name="name" id="name" type="text" readonly value="${loginMember.name}" placeholder="fancyNickname" autocomplete="off">
		              </div>
		              <div class="mb-4">
		                <label class="form-label" for="phone"> 전화번호</label>
		                <input class="form-control" name="phone" id="phone" type="text" readonly value="${loginMember.phone}" placeholder="010-1234-5678" autocomplete="off">
		              </div>
		              <div class="mb-4">
		                <label class="form-label" for="address"> 주소</label>
		                <input class="form-control" name="phone" id="address" type="text" readonly value="${loginMember.address}" placeholder="010-1234-5678" autocomplete="off">
		              </div>
		              <div class="mb-4">
		                <label class="form-label" for="favGenre"> 선호장르</label>
		                <input class="form-control" name="phone" id="favGenre" type="text" readonly value="${loginMember.favoriteGenre}" placeholder="" autocomplete="off">
		              </div>
                	</div>
                </div>
                <!-- 회원정보 끝 -->
                <!-- 내가 쓴 글 시작 -->
            	<div class="tab-pane fade" id="content2">
               <ul class="nav nav-tabs mt-3">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#content2-1" aria-current="page">관광지 내가 쓴 글</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#content2-2">공연 내가 쓴 글</a>
                    </li>
                </ul>
                <div class="tab-content mt-3">
                    <!-- 관광지 내가 쓴 글 시작-->
                    <div class="tab-pane fade show active" id="content2-1">
                      <div>
                      <c:forEach var="item" items="${listTour}">
                        <!-- 1 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2">
                                	<c:if test="${item.ratings == 1}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                                	<c:if test="${item.ratings == 2}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                                	<c:if test="${item.ratings == 3}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
                                	<c:if test="${item.ratings == 4}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i></c:if>
                                	<c:if test="${item.ratings == 5}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i></c:if>
                                </p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p><c:out value="${item.tname}"></c:out> </p></li>
                                    <li><p><fmt:formatDate type="date" value="${item.createDate}"/></p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong><a href="${path}/boardTour/view?no=${item.bno}"><c:out value="${item.title}"/></a></strong></li>
                                <li><c:out value="${item.content}"/></li>
                            </ul>
                        </div>
                      </c:forEach>
                      
                      </div>
                      
                      
                      
                      <%-- <nav aria-label="Page navigation example">
				          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
				              <li class="page-item page-link" onclick="movePage(1);"  style="border-top-left-radius: 20%; border-bottom-left-radius: 20%;">
				              	<i class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i></li>
				              <li class="page-item page-link" onclick="movePage(${pageInfoTour.prevPage});"><i class="fa fa-angle-left"></i></li>
				              <c:forEach begin="${pageInfoTour.startPage}" end="${pageInfoTour.endPage}" varStatus="status" step="1">
				              	<c:if test="${status.current == pageInfoTour.currentPage}">
				              		<li class="page-item page-link active">${status.current}</li>
				              	</c:if>
				              	<c:if test="${status.current != pageInfoTour.currentPage}">
				              		<li onclick="movePage(${status.current});" class="page-item page-link">${status.current}</li>
				              	</c:if>
				              </c:forEach>
				              <li class="page-item page-link" onclick="movePage(${pageInfoTour.nextPage});"><i class="fa fa-angle-right"></i></li>
				              <li class="page-item page-link" onclick="movePage(${pageInfoTour.maxPage});" style="border-top-right-radius: 20%; border-bottom-right-radius: 20%;">
				              	<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></li>
				          	</ul>
			      		</nav> --%>
                    </div>
                    <!-- 관광지 내가 쓴 글 끝 -->
                    <!-- 공연 내가 쓴 글 시작 -->
                    <div class="tab-pane fade" id="content2-2">
                      <div>
                      	<c:forEach var="item" items="${listPrf}">
	                        <!-- 1 -->
	                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
	                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
	                                <p class="text-xs mb-2">
	                                	<c:if test="${item.ratings == 1}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
	                                	<c:if test="${item.ratings == 2}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
	                                	<c:if test="${item.ratings == 3}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300"></i></c:if>
	                                	<c:if test="${item.ratings == 4}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i></c:if>
	                                	<c:if test="${item.ratings == 5}"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i></c:if>
	                                </p>
	                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
	                                    <li style="padding-right: 20px;"><p><c:out value="${item.pname}"></c:out> </p></li>
	                                    <li><p><fmt:formatDate type="date" value="${item.createDate}"/></p></li>
	                                </ul>
	                            </div>
	                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
	                                <li><strong><a href="${path}/boardPrf/view?no=${item.bno}"><c:out value="${item.title}"/></a></strong></li>
	                                <li><c:out value="${item.content}"/></li>
	                            </ul>
	                        </div>
	                      </c:forEach>
                      
                      </div>
                      <!-- <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-template d-flex justify-content-center mt-3">
                            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                        </ul>
                      </nav> -->
                    </div>
                    <!-- 공연 내가 쓴 글 끝 -->
                </div>
                </div>
                <!-- 내가 쓴 글 끝 -->
                <!-- 비밀번호 변경 시작 -->
                <div class="tab-pane fade" id="content3">
                  <ul class="nav nav-tabs mt-3">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#content3-1" aria-current="page">비밀번호 변경</a>
                    </li>
                  </ul>
                  <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="content3-1">
                        <form action="${path}/member/update" method="post" name="changePasswordForm">
                          <fieldset>
                            <div class="row">
                              <div class="col-2"></div>
                              <div class="col-8">
                                <!-- 기존 비밀번호 -->
                                <div class="row g-3 align-items-center justify-content-center">
                                  <div class="col-3">
                                    <label for="inputPassword1" class="col-form-label">기존 비밀번호</label>
                                  </div>
                                  <div class="col-5">
                                    <input type="password" name="prevPassword" id="inputPassword1" class="form-control" aria-describedby="passwordHelpInline">
                                  </div>
                                  <div class="col-4"></div>
                                </div>
                                <!-- 변경할 비밀번호 -->
                                <div class="row g-3 align-items-center justify-content-center mt-3">
                                  <div class="col-3">
                                    <label for="inputPassword2" class="col-form-label">변경할 비밀번호</label>
                                  </div>
                                  <div class="col-5">
                                    <input type="password" name="newPassword2" id="inputPassword2" class="form-control" aria-describedby="passwordHelpInline" placeholder="8자 이상 20자 이하">
                                  </div>
                                  <div class="col-4">
                                    <span id="passwordHelpInline" class="form-text">
                                      영문과 숫자를 혼합해 입력해주세요.
                                    </span>
                                  </div>
                                </div>
                                <!-- 변경할 비밀번호 확인 -->
                                <div class="row g-3 align-items-center justify-content-center" style="padding-top: 2px;">
                                  <div class="col-3">
                                    <label for="inputPassword3" class="col-form-label">변경할 비밀번호 확인</label>
                                  </div>
                                  <div class="col-5">
                                    <input type="password" name="newPassword" id="inputPassword3" class="form-control" aria-describedby="passwordHelpInline" placeholder="한번 더 입력해주세요">
                                  </div>
                                  <div class="col-4">
                                    <span id="passwordHelpInline" class="form-text">
                                      영문과 숫자를 혼합해 입력해주세요.
                                    </span>
                                  </div>
                                </div>
                                <!-- 확인 버튼 -->
                                <button type="submit" id="updateSubmit" class="btn btn-secondary mx-auto mt-4" style="background-color: #ef4562; display: flex; justify-content: center;">확인</button>
                              </div>
                              <div class="col-2"></div>
                            </div>
                          </fieldset>
                        </form>
                    </div>
                  </div>
                </div>
                <!-- 비밀번호 변경 끝 -->
                <!-- 예매 내역 시작 -->
                <div class="tab-pane fade" id="content4">
                  <ul class="nav nav-tabs mt-3">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#content4-1" aria-current="page">예매 목록</a>
                    </li>
                  </ul>
                  <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="content4-1">
                      <div class="row">
                      
                      	<c:forEach var="item" items="${tList}" varStatus="status">
                        <!-- 예매 1 시작 -->
                        <div class="col-6">
                          <div class="card border-0 shadow">
                            <div class="card-body p-4">
                              <table class="w-100">
                                <tbody>
                                  <tr>
                                    <td rowspan="4">
                                    	<a href="${path}/show-detail?pid=${item.pid}">
                                    		<img class="shadow" src="${pList[status.index].poster}" alt="MonteCristoPoster" height="220px">
                                    	</a>
                                    </td>
                                    <td class="text-center"><a href="${path}/show-detail?pid=${item.pid}">${item.pname}</a></td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">${item.reserveTime}</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">${item.showTime}</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">${item.seatType} ${item.seatCount}매</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                              <div>
                                <table class="w-100">
                                  <tbody>
                                    <tr>
                                      <td>${pList[status.index].fname}</td>
                                      <td>
                                      	<a class="btn btn-lg btn-primary" href="${path}/ticketing/delete?reserveno=${item.reserveno}"
						                  	style="background-color: #ef4562; border: none">예매취소</a>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- 예매 1 끝 -->
                      	</c:forEach>
                        
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 예매 내역 끝 -->
            </div>
        </div>
    </div>
    <!-- 탭 영역 끝 -->
</div>
<!-- 상세 영역 끝 -->
    <!-- JavaScript files-->
    
    <script type="text/javascript">
	    
	    
	    $(function(){
			$('#inputPassword2').blur((e) => {
				let pass1 = $('#inputPassword2').val();			
				let pass2 = $('#inputPassword3').val();
				
				if(pass1.trim() != pass2.trim()) {
					alert('비밀번호가 일치하지 않습니다.');
					
					$('#inputPassword2').val('');
					$('#inputPassword3').val('');
					$('#inputPassword2').focus();
				}		
			});
		});
	    
    </script>
    
    
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
    <script src="${path}/resources/js/theme.js"></script>
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




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>















