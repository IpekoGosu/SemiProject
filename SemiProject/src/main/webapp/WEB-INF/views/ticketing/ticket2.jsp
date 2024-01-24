<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
  <jsp:param value="예매 스텝 2" name="title"/>
</jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>예매 스텝 2</title>
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
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  
    <!-- 추가 css 링크 -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="stylesheet" href="${path}/resources/css/style.calendar.css">
  
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Dodum&family=Stylish&display=swap');
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
      .btn-secondary {
        background-color: #ef4562 !important;
        border-color: #ef4562 !important;
      }
    </style>
  </head>
  <body style="padding-top: 72px;">

    <!-- 상단 진행률표시 시작 -->
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 85px;">
      <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <!-- 상단 진행률표시 끝 -->


    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="subtitle text-primary gmarketfontM">[공연]</p>
            <h1 class="h1 gmarketfontM mb-3">${ticket.pname}<span class="text-muted float-end">Step 2</span></h1>
            <h2 class="h5 gdodumfont">결제수단을 선택하세요</h2>
            <div class="text-block mb-3"></div>
            <div class="text-block">
              <form action="#">
                <div class="d-flex justify-content-between align-items-end mb-4">
                  <h5 class="mb-0 gmarketfontM">신용카드 / 체크카드</h5>
                  <div><img src="${path}/resources/img/myImages/bankIcons.png" alt="bankIcons" height="50px"></div>
                </div>
                <select class="selectpicker form-control mb-3 gmarketfontM" name="payment" id="form_payment" data-style="btn-selectpicker">
                  <option value="">우리은행 •••• 5687</option>
                  <option value="">신한은행 •••• 4569</option>
                  <option value="">직접 입력하기</option>
                </select>
                <button class="btn btn-link btn-collapse ps-0 text-muted gmarketfontM" type="button" data-bs-toggle="collapse" data-bs-target="#addNewCard" aria-expanded="false" aria-controls="addNewCard" data-expanded-text="닫기" data-collapsed-text="카드 추가하기" >카드 추가하기</button>
                <div class="row collapse gdodumfont" id="addNewCard">
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="card-name">카드이름</label>
                    <input class="form-control" type="text" name="card-name" placeholder="카드이름" id="card-name">
                  </div>
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="card-number">카드번호</label>
                    <input class="form-control" type="text" name="card-number" placeholder="카드번호" id="card-number">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="expiry-date">유효기간</label>
                    <input class="form-control" type="text" name="유효기간" placeholder="MM/YY" id="expiry-date">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="cvv">CVC/CVV</label>
                    <input class="form-control" type="text" name="cvv" placeholder="123" id="cvv">
                  </div>
                  <div class="mb-4 col-md-4">
                    <label class="form-label" for="zip">카드 비밀번호</label>
                    <input class="form-control" type="text" name="카드 비밀번호" placeholder="1234" id="zip">
                  </div>
                </div>
              </form>
            </div>
            <div class="text-block">

              <!-- 카카오페이 연동 해줄 부분 -->
              <div class="d-flex justify-content-between align-items-end mt-n2 mb-3">
                <h5 class="gmarketfontM">카카오페이</h5>
                <div><a href="#"><img class="hover-animate shadow" src="${path}/resources/img/myImages/easyPay.png" alt="kakaoPay" height="70px" style="border-radius: 5%;"></a></div>
              </div>
            </div>
            <div class="text-block gdodumfont">
              <div class="text-dark">${ticket.pname}</div>
              <div class="text-dark">${ticket.showTime}</div>
              <div class="text-dark">${ticket.seatType} ${ticket.seatCount}매</div>
              <div class="text-dark gmarketfontM" style="text-align: right;">합계 금액 : ${total}원</div>
            </div>
            <div class="row form-block flex-column flex-sm-row gmarketfontM">
              <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="${path}/">예매 취소</a></div>
                <div class="col text-center text-sm-end gmarketfontM"><a class="btn btn-secondary px-3" href="${path}/ticketing/last?reserveno=${ticket.reserveno}&pid=${prfItem.pid}">다음 단계<i class="fa-chevron-right fa ms-2"></i></a></div>
            </div>
          </div>
          <div class="col-lg-6 ps-xl-5">
            <div class="card border-0 shadow">
              <div class="card-body p-4">
                <!-- 달력 시작 -->
                <section class="ftco-section w-auto">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="elegant-calencar d-md-flex">
                        <div class="wrap-header d-flex align-items-center img" style="background-image: url(${path}/resources/img/myImages/nTower.png);">
                          <p id="reset">Today</p>
                          <div id="header" class="p-0">
                            <div class="head-info">
                              <div class="head-month"></div>
                                <div class="head-day"></div>
                            </div>
                          </div>
                        </div>
                        <div class="calendar-wrap">
                          <div class="w-100 button-wrap">
                            <div class="pre-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-left"></i></div>
                            <div class="next-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-right"></i></div>
                          </div>
                          <table id="calendar">
                            <thead>
                                <tr>
                                  <th>Sun</th>
                                  <th>Mon</th>
                                  <th>Tue</th>
                                  <th>Wed</th>
                                  <th>Thu</th>
                                  <th>Fri</th>
                                  <th>Sat</th>
                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>

                <!-- 달력 끝 -->
                
                
              </div>
              <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                <div>
                  <h6 class="text-dark gmarketfontM">${ticket.pname}</h6>
                  <p class="text-dark gmarketfontM">${ticket.showTime}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    
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
    <script src="${path}/resources/js/theme.js"></script>

    <!-- 추가 스크립트 -->
    <script src="${path}/resources/js/jquery.min.js"></script>
    <script src="${path}/resources/js/popper.js"></script>
    <script src="${path}/resources/js/bootstrap.min.js"></script>
    <script src="${path}/resources/js/main.js"></script>

  </body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>