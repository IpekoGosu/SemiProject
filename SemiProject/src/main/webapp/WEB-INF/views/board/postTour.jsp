<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="관광지 포스트" name="title"/>
    </jsp:include>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>관광지 포스트</title>
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
    </style>
  </head>
  <body>

    <section class="hero-home dark-overlay mb-5"><img class="bg-image" src="${path}/resources/img/myImages/boardTourHero.jpg" alt="">
      <div class="container py-7">
        <div class="overlay-content text-center text-white">
          <!-- 후기 제목 -->
          <h1 class="display-3 text-shadow donglefont bold" style="position: relative; top: 5rem; font-size: 7rem;"><c:out value="${board.title}"/></h1>
          <!-- 별점 -->
          <div class="text-shadow" style="position: relative; top: 8rem; font-size: 2rem;">
          	<c:if test="${board.ratings == 5}">★★★★★</c:if>
           	<c:if test="${board.ratings == 4}">★★★★</c:if>
           	<c:if test="${board.ratings == 3}">★★★</c:if>
           	<c:if test="${board.ratings == 2}">★★</c:if>
           	<c:if test="${board.ratings == 1}">★</c:if>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-xl-8 col-lg-10 mx-auto">
            <!-- 관람한 관광지 이름 -->
            <!-- 후기 정보 -->
            <div class="gmarketfontM text-center mb-1" style="font-size: 20pt;"><c:out value="[${board.tname}]"/></div>
            <div>
              <p class="mb-5 gmarketfontM text-center" style="font-size: 15pt;">
                <!-- 작성자 -->
                <img class="mx-1" src="${path}/resources/img/myImages/iconfile-person.png" alt=""><c:out value="${board.memberName}"/>
                <span class="mx-1">|</span>
                <!-- 작성일자 -->
                <img class="mx-1" src="${path}/resources/img/myImages/iconclock.png" alt=""><fmt:formatDate type="date" value="${board.createDate}"/>
                <span class="mx-1">|</span>
                <!-- 조회수 -->
                <img class="mx-1" src="${path}/resources/img/myImages/iconbook.png" alt="">조회 <c:out value="${board.readCount}"/>
                <span class="mx-1">|</span>
                <!-- 댓글수 -->
                <img class="mx-1" src="${path}/resources/img/myImages/iconchat-dots.png" alt="">댓글 <c:out value="${board.replyCount}"/>
              </p>
            </div>
            <!-- 후기 내용1 -->
            <p class="mb-5 gdodumfont" style="font-size: 15pt;"></p>
          </div>
        </div>
        
        <!-- 게시글 수정/삭제 버튼 -->
        
        <c:if test="${not empty loginMember && (loginMember.id == board.memberId 
															|| loginMember.role == 'ROLE_ADMIN')}">
			<div class="container">
			<div class="row mb-4">
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
	        	<div class="col">
	         		<button type="button" class="btn btn-secondary w-100" id="btnUpdate">글 수정</button>
	        	</div>
	        	<div class="col">
	         		<button type="button" class="btn btn-secondary w-100" id="btnDelete">글 삭제</button>
	        	</div>
				<div class="col"></div>
			</div>
			</div>
        </c:if>
        <div class="row">
          <!-- 첨부 이미지 -->
           	<c:if test="${empty board.attachFiles}">
	          <div class="col-xl-10 mx-auto">
	          	<img class="img-fluid mb-5" src="${path}/resources/img/myImages/mcimg.webp" alt="">
	          </div>
           	</c:if>
          
           	<c:if test="${not empty board.attachFiles}">
           		<div class="col-xl-10 mx-auto mb-5">
           		<c:forEach var="item" items="${board.attachFiles}" >
					<c:if test="${fn:contains(item.originalFilename,'.jpg') 
								  or fn:contains(item.originalFilename,'.png')  
								  or fn:contains(item.originalFilename,'.jpeg')}">
						<img class="mb-2" src="${path}/resources/upload/boardTour/${item.renamedFilename}"
																	width="45%"/>
					</c:if>
				</c:forEach>
				</div>
           	</c:if>
        </div>
        <c:if test="${not empty board.attachFiles}">
	        <div class="row mb-5">
	        	<div>
	        		첨부파일 목록
	        	</div>
        		<div>
	        	<c:forEach var="item" items="${board.attachFiles}">
	        			<img alt="" src="${path}/resources/img/myImages/iconfiledown.png">
		        		<a href="javascript:fileDownload('${item.fno}');">
		        			<c:out value="${item.originalFilename}"></c:out>
		        		</a>
	        	</c:forEach>
        		</div>
	        </div>
        </c:if>
        
        <div class="row">
          <div class="col-xl-8 col-lg-10 mx-auto">                               
            <div class="gdodumfont" style="font-size: 15pt;">
            	<p><c:out value="${board.content}"/></p>
            </div>
            
            <!-- comments-->
            <div class="mt-5">
              	<h6 class="text-uppercase text-muted mb-4 gmarketfontM">댓글 <c:out value="${board.replyCount}"/></h6>
	            <c:forEach var="item" items="${board.replies}">
	              <!-- comment-->
	              <div class="row">
              		<div class="col-sm-10">
		              <div class="d-flex mb-4">
		              	<img class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="${path}/resources/img/myImages/replyicon.png" alt="">
		                <div>
		                  <h5><c:out value="${item.memberName}"/></h5>
		                  <p class="text-uppercase text-sm text-muted"><i class="far fa-clock mx-1"></i><fmt:formatDate type="date" value="${item.createDate}"/></p>
		                  <p class="text-black gdodumfont"><c:out value="${item.content}"/></p>
		                </div>
		              </div>
              		</div>
	             	 <div class="col-sm-2">
		                <!-- 댓글삭제버튼 -->
		                <c:if test="${not empty loginMember && (loginMember.id == item.memberId 
															|| loginMember.role == 'ROLE_ADMIN')}">
		                	<div>
			                	<button onclick="deleteReply('${item.rno}','${board.bno}');" class="btn btn-secondary">댓글 삭제</button>
		                	</div>
		                </c:if>
	             	 </div>
	              </div>
	              <!-- /comment-->
	            </c:forEach>
            </div>
            <!-- /comments-->
            <!-- 댓글 내비 -->
            <!-- <nav aria-label="Page navigation example">
              <ul class="pagination pagination-template d-flex justify-content-center">
                <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
              </ul>
            </nav> -->

			<c:if test="${not empty loginMember}">
	            <!-- 댓글 작성하기 -->
	            <div class="mb-5">
	              <div>댓글을 남겨보세요</div>
	              <form method="post" action="${path}/boardTour/reply">
	              	<input type="hidden" name="bno" value="${board.bno}" />
	    			<input type="hidden" name="memberId" value="${loginMember.id}" />
	                <textarea name="content" class="form-control mb-3 gdodumfont" rows="5"></textarea>
	                <div class="row"><div class="col-sm-9"></div><div class="col-sm-3 float-right">
		                <button class="btn btn-secondary" type="submit"><i class="far fa-comment"></i>댓글 달기</button>
	                </div></div>
	              </form>
	            </div>
			</c:if>
            
            
          </div>
        </div>
      </div>
    </section>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		$(document).ready(() => {
			$("#btnUpdate").click((e) => {
				location.href = "${path}/boardTour/update?no=${board.bno}";
			});
			
			$("#btnDelete").click((e) => {
				if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
					location.replace("${path}/boardTour/delete?no=${board.bno}");
				}
			});
		});
		
		function fileDownload(fno) {
			const url = '${path}/boardTour/fileDown?fno=' + fno;
			location.href = url;
		}

		function deleteReply(rno, bno) {
			const url = '${path}/boardTour/replyDel?rno=' + rno + '&bno=' + bno;
			location.href = url;
		}
		
	</script>

    <!-- JavaScript files-->
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


	








