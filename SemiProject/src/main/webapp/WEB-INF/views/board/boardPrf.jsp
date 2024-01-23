<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="공연 커뮤니티" name="title"/>
    </jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>공연 커뮤니티</title>
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

    <section class="position-relative py-6"><img class="bg-image" src="${path}/resources/img/myImages/musicalmageHero.jpg" alt="">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-body p-5"><strong class="text-uppercase text-secondary d-inline-block mb-2 text-sm gmarketfontM">인기 후기</strong>
                <h2 class="mb-3 gmarketfontM"><c:out value="${firstBoard.title}"/></h2>
                <table class="w-100 gmarketfontM">
                  <tr>
                    <td>
                    	<img class="mx-1" src="${path}/resources/img/myImages/iconclock.png" alt="">
                    	<fmt:formatDate type="date" value="${firstBoard.createDate}"/>
                    </td>
                    <td>
                    	<img class="mx-1" src="${path}/resources/img/myImages/iconbook.png" alt="">
                    	조회 <c:out value="${firstBoard.readCount}"/>
                    </td>
                    <td>
                    	<img class="mx-1" src="${path}/resources/img/myImages/iconchat-dots.png" alt="">
                    	댓글 <c:out value="${firstBoard.replyCount}"/>
                    </td>
                    <td>
						<c:if test="${firstBoard.ratings == 5}">★★★★★</c:if>
                    	<c:if test="${firstBoard.ratings == 4}">★★★★</c:if>
                    	<c:if test="${firstBoard.ratings == 3}">★★★</c:if>
                    	<c:if test="${firstBoard.ratings == 2}">★★</c:if>
                    	<c:if test="${firstBoard.ratings == 1}">★</c:if>
					</td>
                  </tr>
                </table>
                <p class="text-muted gdodumfont" style="height: 100px; overflow: hidden; text-overflow: ellipsis;"><c:out value="${firstBoard.content}"/></p>
                <div class="row">
                	<span class="col-sm-6"><c:out value="no.  ${firstBoard.bno}"/></span>
	                <span class="col-sm-6" style="text-align: right">
	                	<img class="mx-1" src="${path}/resources/img/myImages/iconfile-person.png" alt="">
	                	<c:out value="${firstBoard.memberName}"/>
	                </span>
	            </div>
                <a class="btn btn-link p-0 gmarketfontM" href="${path}/boardPrf/view?no=${firstBoard.bno}">계속 읽기<i class="fa fa-long-arrow-alt-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
        <!-- 검색 -->
      	<c:set var="searchType" value="${param.searchType}" />
		<c:set var="searchValue" value="${param.searchValue}" />
		<c:set var="orderType" value="${param.orderType}" />
		<c:if test="${empty searchType}">
			<c:set var="searchType" value="title" />
        </c:if>
		<c:if test="${empty orderType}">
			<c:set var="orderType" value="time" />
        </c:if>
       <form name="searchBoardPrfFrom" action="${path}/boardPrf/list" method="get">
       		<input type="hidden" name="page" value="1">
        <div class="container">
          <div class="row mt-n2 mb-2">
            <div class="col-lg-7"></div>
            <div class="col-lg-4" style="float: right;">
              <table class="w-100">
                <tbody>
                  <tr>
                    <td>
                      <input type="radio" name="searchType" value="title" class="btn-check"
                      		 id="btn-check-outlined1" autocomplete="off" ${searchType == 'title' ? 'checked' : ''}>
                      <label class="btn btn-outline-dark gmarketfontM" for="btn-check-outlined1">&nbsp;&nbsp;&nbsp;&nbsp;제목&nbsp;&nbsp;&nbsp;</label>
                    </td>
                    <td>
                      <input type="radio" name="searchType" value="writer" class="btn-check"
                      		 id="btn-check-outlined2" autocomplete="off" ${searchType == 'writer' ? 'checked' : ''}>
                      <label class="btn btn-outline-dark" for="btn-check-outlined2">&nbsp;&nbsp;&nbsp;작성자&nbsp;&nbsp;&nbsp;</label>
                    </td>
                    <td>
                      <input type="radio" name="searchType" value="pname" class="btn-check"
                      		 id="btn-check-outlined3" autocomplete="off" ${searchType == 'pname' ? 'checked' : ''}>
                      <label class="btn btn-outline-dark" for="btn-check-outlined3">&nbsp;&nbsp;&nbsp;공연명&nbsp;&nbsp;&nbsp;</label>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row mb-5">
            <div class="search-bar rounded p-3 p-lg-4 position-relative z-index-20">
                <div class="row">
                  <div class="col-lg-9 d-flex align-items-center form-group">
                    <input
                      class="form-control border-0 shadow-0"
                      style="font-size: 20pt"
                      type="search"
                      name="searchValue"
                      value="${searchValue}"
                      placeholder="후기를 검색하세요"
                    />
                  </div>
                  <div class="col-lg-3 form-group d-grid mb-0">
                    <button class="btn btn-secondary h-100" type="submit">
                      검&nbsp;&nbsp;&nbsp;색
                    </button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mt-4 mb-3">
          <table class="w-100 gmarketfontM">
            <tbody>
              <tr>
                <td>
                  	<input type="checkbox" class="btn-check" id="orderType1" name="orderType"
                  		 value="read" autocomplete="off" onclick="checkOnly(this)" ${orderType == 'read' ? 'checked' : ''}>
					<label class="btn btn-outline-primary" for="orderType1">조회순</label>
                </td>
                <td>
                  	<input type="checkbox" class="btn-check" id="orderType2" name="orderType"
                  		 value="reply" autocomplete="off" onclick="checkOnly(this)" ${orderType == 'reply' ? 'checked' : ''}>
					<label class="btn btn-outline-primary" for="orderType2">댓글순</label>
                </td>
                <td>
                  	<input type="checkbox" class="btn-check" id="orderType3" name="orderType"
                  		 value="time" autocomplete="off" onclick="checkOnly(this)" ${orderType == 'time' ? 'checked' : ''}>
					<label class="btn btn-outline-primary" for="orderType3">최신순</label>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </form>
        
        <!-- 게시물들 -->
        <div class="row mb-5">
	        <c:forEach items="${list}" var="item" varStatus="status">
	          <!-- blog item-->
	          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
	            <div class="card shadow border-0 h-100">
	              <a href="${path}/boardPrf/view?no=${item.bno}">
	              	<img class="img-fluid card-img-top" src="${path}/resources/img/myImages/boardPrfImg${status.index}.jpg" alt=""/>
	              </a>
	              <div class="card-body">
	              	<a class="text-uppercase text-muted text-sm letter-spacing-2 gmarketfontM" href="#">
	              		<c:out value="[${item.pname}]"/>
	              	</a>
	                <h5 class="my-2" style="height: 30px; overflow: hidden; text-overflow: ellipsis;">
	                	<a class="text-dark gmarketfontM" href="${path}/boardPrf/view?no=${item.bno}">
	                	<c:out value="${item.title}"/></a>
	                </h5>
	                <table class="w-100 gmarketfontM">
	                  <tr>
	                    <td><fmt:formatDate type="date" value="${item.createDate}"/></td>
	                    <td><c:out value="댓글 ${item.replyCount}"/></td>
	                    <td><c:out value="조회 ${item.readCount}"/></td>
	                    <td>
	                    	<c:if test="${item.ratings == 5}">★★★★★</c:if>
	                    	<c:if test="${item.ratings == 4}">★★★★</c:if>
	                    	<c:if test="${item.ratings == 3}">★★★</c:if>
	                    	<c:if test="${item.ratings == 2}">★★</c:if>
	                    	<c:if test="${item.ratings == 1}">★</c:if>
	                    </td>
	                  </tr>
	                </table>
	                <p class="my-2 text-muted text-sm gdodumfont" style="height: 120px; overflow: hidden; text-overflow: ellipsis;">
	                	<c:out value="${item.content}"/>
	                </p>
	                <div class="row">
	                	<span class="col-sm-6"><c:out value="no.  ${item.bno}"/></span>
		                <span class="col-sm-6" style="text-align: right">
		                	<img class="mx-1" src="${path}/resources/img/myImages/iconfile-person.png" alt="">
		                	<c:out value="${item.memberName}"/>
		                </span>
	                </div>
		                <a class="btn btn-link ps-0 gmarketfontM" href="${path}/boardPrf/view?no=${item.bno}">
		                	계속 읽기<i class="fa fa-long-arrow-alt-right ms-2"></i>
		                </a>
	              </div>
	            </div>
	          </div>
	        </c:forEach>
        </div>
        

        
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



	<script type="text/javascript">
		function movePage(page){
			searchBoardPrfFrom.page.value = page;
			searchBoardPrfFrom.submit();
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














