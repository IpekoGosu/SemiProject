<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="상세 페이지" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>공연 상세</title>
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
        .fa-star {
          font-size: 24px;
        }
    </style>
</head>
<body class="reward" style="padding-top: 90px;">

<div class="container">
    <h3 class="text-center pt-5" style="margin-top:100px">${item.pname}</h3>
    <p class="mb-2 text-center">
      <i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
      <span style="font-size: 16px;">4.22</span>
    </p>
    <div class="form-check form-switch pb-1" style="display: flex; justify-content: end;">
      <input class="form-check-input" id="favor" type="checkbox">
      <label class="form-check-label ps-2" for="favor"><span>즐겨찾기</span></label>
    </div>
    <!-- 카드 영역 시작 -->
    <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
        <div class="row col-12 g-0">
            <div class="col-md-3">
                <img src="${item.poster}" class="card-img rounded-start" alt="...">
            </div>
            <div class="col-md-9">
                <div class="card-body pb-0">
                    <ul class="p-0">
                        <li class="row mb-3">
                            <strong class="col-2">장소</strong>
                            <div class="col"><a href="#">${item.fname }</a></div>
                        </li>
                        <li class="row mb-3">
                            <strong class="col-2">공연기간</strong>
                            <div class="col"><span>${item.pfrom}</span> ~ <span>${item.pto }</span></div>
                        </li>
                        <li class="row mb-3">
                            <strong class="col-2">공연시간</strong>
                            <div class="col">${item.ptime}</div>
                        </li>
                        <li class="row mb-3">
                            <strong class="col-2">관람연령</strong>
                            <div class="col">${item.prfage }</div>
                        </li>
                        <li class="row mb-3">
                            <strong class="col-2">가격</strong>
                            <div class="col">
                                <div class="row">
                                    <div class="mb-1"><a href="#">전체가격보기</a></div>
                                    <div class="mb-1">${item.price }</div>
                                    <!-- <div class="mb-1">VIP석 180,000원</div>
                                    <div class="mb-1">R석 150,000원</div>
                                    <div class="mb-1">S석 120,000원</div>
                                    <div>A석 90,000원</div> -->
                                    
                                </div>
                            </div>
                        </li>
                        <li class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="button" class="btn btn-primary me-md-2" style="background-color: #ef4562; border: none;"><a href="user-booking-1.html" style="color: white; text-decoration: none;">예매하기</a></button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 카드 영역 끝 -->
    <!-- 탭 영역 시작 -->
    <!-- <ul class="nav nav-tabs mt-3" id="myTabs">
        <li class="nav-item">
            <a class="nav-link active" id="tab1" data-bs-toggle="tab" href="#content1" aria-current="page">공연정보</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="tab2" data-bs-toggle="tab" href="#content2">캐스팅정보</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="tab3" data-bs-toggle="tab" href="#content3">판매정보</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="tab4" data-bs-toggle="tab" href="#content4">관람후기</a>
        </li>
    </ul>
    <div class="tab-content mt-3">
        <div class="tab-pane fade show active" id="content1">
            <p>공연정보 내용</p>
        </div>
        <div class="tab-pane fade" id="content2">
            <p>캐스팅정보 내용</p>
        </div>
        <div class="tab-pane fade" id="content3">
            <p>판매정보 내용</p>
        </div>
        <div class="tab-pane fade" id="content4">
            <p>관람후기 내용</p>
        </div>
    </div> -->
    <ul class="mt-3" style="padding-left: 5px;">
        <li class="border-0 shadow rounded" style="list-style: none;">
            <h4 class="shadow" style="text-align: center; padding: 5px;">공연정보</h4>
            <div style="margin: 10px;">
                <div>
                    <strong style="font-size: 1.2rem;">공연시간 정보<br><br></strong>
                    <p>
                        예매가능시간: 관람 3시간 전까지<br><br>
                        평일 : 화,목,금 19:30 / 수 14:30, 19:30 (월 공연없음)<br>
                        주말 및 공휴일 : 14:00, 19:00<br><br>
    
                        * 01.04(목), 02.01(목), 02.16(금), 02.23(금) 14:30 19:30 (2회 공연)<br>
                        * 01.27(토) 14:00, 02.25(일) 14:00 기업 전관 판매로 마감되었습니다.<br>
                        * 02.09(금) 19:00, 02.12(월) 14:00 공연 있음<br>
                        * 일부 회차 및 좌석은 단체 판매로 인해 사전 마감되었습니다.<br>
                    </p>
                </div>
                <div class="pt-4">
                    <strong style="font-size: 1.2rem;">공연상세 / 캐스팅일정<br><br></strong>
                    <c:if test="${item.img1 != null }">
                    	<img src="${item.img1 }" alt="">
                    </c:if>
                    <c:if test="${item.img2 != null }">
                    	<img src="${item.img2 }" alt="">
                    </c:if>
                    <c:if test="${item.img3 != null }">
                    	<img src="${item.img3 }" alt="">
                    </c:if>
                    <c:if test="${item.img4 != null }">
                    	<img src="${item.img4 }" alt="">
                    </c:if>
                    <c:if test="${item.img5 != null }">
                    	<img src="${item.img5 }" alt="">
                    </c:if>
                </div>
            </div>
        </li>
        <li class="border-0 shadow rounded" style="list-style: none;">
            <h4 class="shadow" style="text-align: center; padding: 5px;">판매정보</h4>
            <div style="margin: 10px;">
                <div>
                    <strong style="font-size: 1.2rem;">예매 유의사항<br><br></strong>
                    <ul>
                        <li>다른 이용자의 원활한 예매 및 취소에 지장을 초래할 정도로 반복적인 행위를 지속하는 경우 회원의 서비스 이용을 제한할 수 있습니다.</li>
                        <li>일부 상품의 판매 오픈 시 원활한 서비스 제공을 위하여 인터파크페이, I-point, NOL 포인트, 문화예매권 등의 특정 결제수단 이용이 제한될 수 있습니다.</li>
                    </ul>
                </div>
                <div class="pt-4">
                    <strong style="font-size: 1.2rem;">티켓 수령 안내<br><br></strong>
                    <p>예약 번호 입장</p>
                    <ul>
                        <li>공연 당일 현장 교부처에서 예약번호 및 본인 확인 후 티켓을 수령하실 수 있습니다.</li>
                        <li>상단 예매확인/취소 메뉴에서 예매내역을 프린트하여 가시면 편리합니다.</li>
                    </ul>
                    <p style="padding-top: 15px;">티켓배송</p>
                    <ul>
                        <li>예매완료(결제익일) 기준 4~5일 이내에 배송됩니다. (주말, 공휴일을 제외한 영업일 기준)</li>
                        <li>배송 중 전달 불가사항이 발생할 시에는 반송되며, 본인 수령 불가 시 경우에 따라 대리 수령도 가능합니다.</li>
                        <li>공연 3일 전까지 티켓을 배송받지 못하신 경우 고객센터(1544-1555)로 연락 주시기 바랍니다.</li>
                        <li>반송이 확인되지 않은 티켓은 현장에서도 수령하실 수 없으며, 공연 관람 및 환불이 불가합니다.</li>
                        <li>티켓 배송 (배송상태 : 배송 준비중 이후) 후에는 주소 변경이 불가합니다.</li>
                        <li>부득이하게 주소 변경이 필요하신 경우 각 배송사에 수취 거절 요청 후, 고객센터(1544-1555)로 재배송 신청할 수 있습니다.
                            (배송비 3,200원 추가 부과)</li>
                    </ul>
                </div>
            </div>
        </li>
        
        <li class="border-0 shadow rounded" style="list-style: none;">
	        
	            <h4 class="shadow" style="text-align: center; padding: 5px;">관람후기</h4>
	            <div style="margin: 10px;">
	                <div class="mt-3 d-flex justify-content-between align-items-center">
				        
				        <form name="searchBoardPrfFrom" action="${path}/show-detail" method="get">
							<input type="hidden" name="pid" value="${item.pid}">				        
							<input type="hidden" name="page" value="1">				        
		                    <span>총 <strong style="color: deepskyblue;"><c:out value="${boardCount}"/></strong> 개의 관람후기가 등록되었습니다.</span>
		                    <div class="mt-2">
					            <div class="col">
					              <table class="w-100">
					                <tbody>
					                  <tr>
					                    <td>
					                      <input type="radio" name="orderType" value="time" class="btn-check" onclick="subfunc()"
					                      		 id="btn-check-outlined1" autocomplete="off" ${bparamPrf.orderType == 'time' ? 'checked' : ''}>
					                      <label class="btn btn-outline-dark gmarketfontM" for="btn-check-outlined1">&nbsp;&nbsp;최신순&nbsp;&nbsp;</label>
					                    </td>
					                    <td>
					                      <input type="radio" name="orderType" value="read" class="btn-check" onclick="subfunc()"
					                      		 id="btn-check-outlined2" autocomplete="off" ${bparamPrf.orderType == 'read' ? 'checked' : ''}>
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
	                              <li class="ms-3"><a href="${path}/boardPrf/view?no=${item.bno}" style="display: flex; text-align: end;">글 보러가기</a></li>
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
	                  	<a href="${path}/boardPrf/write?pid=${item.pid}&pname=${item.pname}" style="color: white; text-decoration: none; border: none;">리뷰쓰러가기</a>
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
<!-- 상세 영역 끝 -->

<script type="text/javascript">
	function movePage(page){
		searchBoardPrfFrom.page.value = page;
		searchBoardPrfFrom.submit();
	}
	function subfunc(){
		searchBoardPrfFrom.submit();
	}
	$('#write').click(
		()=>{
			$.ajax({
				type: 'get',
				url: '${path}/boardPrf/write'
				data: {
					item: ${item}
				}
				success: ()=>{}
				error: (e)=>{console.log(e);}
			});
		}	
	);
	
</script>

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
</html>