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
    <link rel="stylesheet" href="../vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="../vendor/magnific-popup/magnific-popup.css">
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../img/favicon.png">
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
<body class="reward">
<!-- 상세 영역 시작 -->
<div class="container mt-4 mb-4">
    <!-- 탭 영역 시작 -->
    <div class="row shadow" style="min-height: 800px;">
        <div class="col-2">
            <nav class="nav flex-column pt-2">
                <a class="nav-link active" style="border-radius: 5px;" id="tab1" data-bs-toggle="tab" aria-current="page" href="#content1">즐겨찾기</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab2" data-bs-toggle="tab" href="#content2">내가 쓴 글</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab3" data-bs-toggle="tab" href="#content3">회원정보 변경</a>
                <a class="nav-link" style="border-radius: 5px;" id="tab4" data-bs-toggle="tab" href="#content4">예매 내역</a>
            </nav>
        </div>
        <div class="col-10 shadow">
            <div class="tab-content mt-3">
                <!-- 즐겨찾기 시작 -->
                <div class="tab-pane fade show active" id="content1">
                    <ul class="nav nav-tabs mt-3">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#content1-1" aria-current="page">즐겨찾기한 관광지</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#content1-2">즐겨찾기한 공연</a>
                        </li>
                    </ul>
                    <div class="tab-content mt-3">
                        <!-- 즐겨찾기한 관광지 시작 -->
                        <div class="tab-pane fade show active" id="content1-1">
                            <!-- 1 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                              <div class="row col-12 g-0">
                                  <div class="col-md-auto">
                                      <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                  </div>
                                  <div class="col-md-8">
                                      <div class="card-body">
                                          <h5 class="card-title">Card title</h5>
                                          <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                          <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                          <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                          <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- 2 -->
                          <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="row col-12 g-0">
                                <div class="col-md-auto">
                                    <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                        <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                        <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                        <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <!-- 3 -->
                          <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="row col-12 g-0">
                                <div class="col-md-auto">
                                    <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                        <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                        <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                        <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <!-- 4 -->
                          <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="row col-12 g-0">
                                <div class="col-md-auto">
                                    <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                        <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                        <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                        <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <!-- 5 -->
                          <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="row col-12 g-0">
                                <div class="col-md-auto">
                                    <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                        <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                        <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                        <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                    </div>
                                </div>
                            </div>
                          </div>
                        <!-- 페이지네이션 영역 시작 -->
                        <nav aria-label="Page navigation example mt-3">
                          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
                              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                              <li class="page-item active"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item"><a class="page-link" href="#">4</a></li>
                              <li class="page-item"><a class="page-link" href="#">5</a></li>
                              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                          </ul>
                        </nav>
                        <!-- 페이지네이션 영역 끝 -->
                        </div>
                        <!-- 즐겨찾기한 관광지 끝 -->
                        <!-- 즐겨찾기한 공연 시작 -->
                        <div class="tab-pane fade" id="content1-2">
                            <!-- 장르 선택 영역 시작 -->
                            <div class="mt-1">
                              <ul class="nav nav-pills-custom">
                                  <li class="nav-item"><a class="nav-link active" href="#">뮤지컬</a></li>
                                  <li class="nav-item"><a class="nav-link" href="#" style="border: none;">연극</a></li>
                                  <li class="nav-item"><a class="nav-link" href="#" style="border: none;">콘서트</a></li>
                                  <li class="nav-item"><a class="nav-link" href="#" style="border: none;">클래식</a></li>
                                  <li class="nav-item"><a class="nav-link" href="#" style="border: none;">무용</a></li>
                                  <li class="nav-item"><a class="nav-link" href="#" style="border: none;">서커스</a></li>
                              </ul>
                            </div>
                            <!-- 장르 선택 영역 끝 -->
                            <!-- 1 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                                <div class="row col-12 g-0">
                                    <div class="col-md-auto">
                                        <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Card title</h5>
                                            <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                            <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                            <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                            <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 2 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                              <div class="row col-12 g-0">
                                  <div class="col-md-auto">
                                      <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                  </div>
                                  <div class="col-md-8">
                                      <div class="card-body">
                                          <h5 class="card-title">Card title</h5>
                                          <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                          <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                          <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                          <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                      </div>
                                  </div>
                              </div>
                            </div>
                            <!-- 3 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                              <div class="row col-12 g-0">
                                  <div class="col-md-auto">
                                      <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                  </div>
                                  <div class="col-md-8">
                                      <div class="card-body">
                                          <h5 class="card-title">Card title</h5>
                                          <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                          <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                          <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                          <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                      </div>
                                  </div>
                              </div>
                            </div>
                            <!-- 4 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                              <div class="row col-12 g-0">
                                  <div class="col-md-auto">
                                      <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                  </div>
                                  <div class="col-md-8">
                                      <div class="card-body">
                                          <h5 class="card-title">Card title</h5>
                                          <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                          <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                          <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                          <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                      </div>
                                  </div>
                              </div>
                            </div>
                            <!-- 5 -->
                            <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                              <div class="row col-12 g-0">
                                  <div class="col-md-auto">
                                      <img src="../img/myImages/m_agatha.png" class="card-img rounded-start" alt="...">
                                  </div>
                                  <div class="col-md-8">
                                      <div class="card-body">
                                          <h5 class="card-title">Card title</h5>
                                          <p class="card-text" style="height: 210px; overflow: hidden; text-overflow: ellipsis;">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quod ut inventore qui harum, neque officiis cumque placeat id? Doloribus repellat eius, quae hic rerum quis nam similique ut asperiores quo.</p>
                                          <p class="text-md mb-2"><a class="me-1" href="#">2023-01-01 ~ </a><a class="me-1" href="#">2023-01-01</a></p>
                                          <p class="text-md mb-2 text-muted text-uppercase">Price <a href="#" class="text-dark">100,000 ~</a></p>
                                          <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                      </div>
                                  </div>
                              </div>
                            </div>
                          <!-- 페이지네이션 영역 시작 -->
                          <nav aria-label="Page navigation example mt-3">
                            <ul class="pagination pagination-template d-flex justify-content-center mt-3">
                                <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                            </ul>
                          </nav>
                          <!-- 페이지네이션 영역 끝 -->
                        </div>
                        <!-- 즐겨찾기한 공연 끝 -->
                    </div>
                </div>
                <!-- 즐겨찾기 끝 -->
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
                      <c:forEach var="item" items="listTour">
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
                                <li><strong><c:out value="${item.title}"/></strong></li>
                                <li><c:out value="${item.content}"/></li>
                            </ul>
                        </div>
                      </c:forEach>
                      
                      </div>
                      
                      <form name="myPageBoardPrf" action="${path}/member/myPage" method="get">
                      	<input type="hidden" name="page">
                      </form>
                      
                      <nav aria-label="Page navigation example">
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
			      		</nav>
                    </div>
                    <!-- 관광지 내가 쓴 글 끝 -->
                    <!-- 공연 내가 쓴 글 시작 -->
                    <div class="tab-pane fade" id="content2-2">
                      <div>
                        <!-- 1 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p>blahblah***</p></li>
                                    <li><p>2024.01.01</p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong>정말 재미있어요</strong></li>
                                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo amet itaque nemo quasi suscipit corrupti, consequuntur sed earum, quibusdam incidunt in assumenda aspernatur rerum cumque, porro quam. Id, minima tenetur!</li>
                            </ul>
                        </div>
                        <!-- 2 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p>angel10***</p></li>
                                    <li><p>2024.01.01</p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong>정말 재미있어요</strong></li>
                                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo amet itaque nemo quasi suscipit corrupti, consequuntur sed earum, quibusdam incidunt in assumenda aspernatur rerum cumque, porro quam. Id, minima tenetur!</li>
                            </ul>
                        </div>
                        <!-- 3 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p>sorandom***</p></li>
                                    <li><p>2024.01.01</p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong>정말 재미있어요</strong></li>
                                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo amet itaque nemo quasi suscipit corrupti, consequuntur sed earum, quibusdam incidunt in assumenda aspernatur rerum cumque, porro quam. Id, minima tenetur!</li>
                            </ul>
                        </div>
                        <!-- 4 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p>uassh***</p></li>
                                    <li><p>2024.01.01</p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong>정말 재미있어요</strong></li>
                                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo amet itaque nemo quasi suscipit corrupti, consequuntur sed earum, quibusdam incidunt in assumenda aspernatur rerum cumque, porro quam. Id, minima tenetur!</li>
                            </ul>
                        </div>
                        <!-- 5 -->
                        <div class="card mt-3 hover-animate border-0 shadow" style="padding: 0;">
                            <div class="mt-3 ms-3 me-3 d-flex justify-content-between align-items-center">
                                <p class="text-xs mb-2"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i></p>
                                <ul style="justify-content: end; display: inline-flex; list-style: none;">
                                    <li style="padding-right: 20px;"><p>wthwth***</p></li>
                                    <li><p>2024.01.01</p></li>
                                </ul>
                            </div>
                            <ul class="ms-3 p-0 me-3" style="list-style: none;">
                                <li><strong>정말 재미있어요</strong></li>
                                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo amet itaque nemo quasi suscipit corrupti, consequuntur sed earum, quibusdam incidunt in assumenda aspernatur rerum cumque, porro quam. Id, minima tenetur!</li>
                            </ul>
                        </div>
                      </div>
                      <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-template d-flex justify-content-center mt-3">
                            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </nav>
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
                        <form action="#" method="post" name="changePasswordForm">
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
                                    <input type="password" id="inputPassword1" class="form-control" aria-describedby="passwordHelpInline">
                                  </div>
                                  <div class="col-4"></div>
                                </div>
                                <!-- 변경할 비밀번호 -->
                                <div class="row g-3 align-items-center justify-content-center mt-3">
                                  <div class="col-3">
                                    <label for="inputPassword2" class="col-form-label">변경할 비밀번호</label>
                                  </div>
                                  <div class="col-5">
                                    <input type="password" id="inputPassword2" class="form-control" aria-describedby="passwordHelpInline" placeholder="8자 이상 20자 이하">
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
                                    <input type="password" id="inputPassword3" class="form-control" aria-describedby="passwordHelpInline" placeholder="한번 더 입력해주세요">
                                  </div>
                                  <div class="col-4">
                                    <span id="passwordHelpInline" class="form-text">
                                      영문과 숫자를 혼합해 입력해주세요.
                                    </span>
                                  </div>
                                </div>
                                <!-- 확인 버튼 -->
                                <button type="submit" class="btn btn-secondary mx-auto mt-4" style="background-color: #ef4562; display: flex; justify-content: center;">확인</button>
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
                        <!-- 예매 1 시작 -->
                        <div class="col-6">
                          <div class="card border-0 shadow">
                            <div class="card-body p-4">
                              <table class="w-100">
                                <tbody>
                                  <tr>
                                    <td rowspan="4"><img class="shadow" src="../img/myImages/MonteCristoPoster.jpg" alt="MonteCristoPoster" height="220px"></td>
                                    <td class="text-center">[뮤지컬] 몬테크리스토</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">2023년 12월 15일</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">1회차(19시35분)</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">R석 4매</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                              <div>
                                <table class="w-100">
                                  <tbody>
                                    <tr>
                                      <td>결제금액</td>
                                      <td>560,000원</td>
                                    </tr>
                                    <tr>
                                      <td>결제수단</td>
                                      <td>카카오페이</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- 예매 1 끝 -->
                        <!-- 예매 2 시작 -->
                        <div class="col-6">
                          <div class="card border-0 shadow">
                            <div class="card-body p-4">
                              <table class="w-100">
                                <tbody>
                                  <tr>
                                    <td rowspan="4"><img class="shadow" src="../img/myImages/MonteCristoPoster.jpg" alt="MonteCristoPoster" height="220px"></td>
                                    <td class="text-center">[뮤지컬] 몬테크리스토</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">2023년 12월 15일</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">1회차(19시35분)</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">R석 4매</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                              <div>
                                <table class="w-100">
                                  <tbody>
                                    <tr>
                                      <td>결제금액</td>
                                      <td>560,000원</td>
                                    </tr>
                                    <tr>
                                      <td>결제수단</td>
                                      <td>카카오페이</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- 예매 2 끝 -->
                      </div>
                      <div class="row mt-3">
                        <!-- 예매 1 시작 -->
                        <div class="col-6">
                          <div class="card border-0 shadow">
                            <div class="card-body p-4">
                              <table class="w-100">
                                <tbody>
                                  <tr>
                                    <td rowspan="4"><img class="shadow" src="../img/myImages/MonteCristoPoster.jpg" alt="MonteCristoPoster" height="220px"></td>
                                    <td class="text-center">[뮤지컬] 몬테크리스토</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">2023년 12월 15일</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">1회차(19시35분)</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">R석 4매</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                              <div>
                                <table class="w-100">
                                  <tbody>
                                    <tr>
                                      <td>결제금액</td>
                                      <td>560,000원</td>
                                    </tr>
                                    <tr>
                                      <td>결제수단</td>
                                      <td>카카오페이</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- 예매 1 끝 -->
                        <!-- 예매 2 시작 -->
                        <div class="col-6">
                          <div class="card border-0 shadow">
                            <div class="card-body p-4">
                              <table class="w-100">
                                <tbody>
                                  <tr>
                                    <td rowspan="4"><img class="shadow" src="../img/myImages/MonteCristoPoster.jpg" alt="MonteCristoPoster" height="220px"></td>
                                    <td class="text-center">[뮤지컬] 몬테크리스토</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">2023년 12월 15일</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">1회차(19시35분)</td>
                                  </tr>
                                  <tr>
                                    <td class="text-center">R석 4매</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="card-footer py-4 border-0" style="text-align: center; background-color: #FFF1F1;">
                              <div>
                                <table class="w-100">
                                  <tbody>
                                    <tr>
                                      <td>결제금액</td>
                                      <td>560,000원</td>
                                    </tr>
                                    <tr>
                                      <td>결제수단</td>
                                      <td>카카오페이</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- 예매 2 끝 -->
                      </div>
                          <!-- 페이지네이션 영역 시작 -->
                        <nav aria-label="Page navigation example mt-3">
                          <ul class="pagination pagination-template d-flex justify-content-center mt-3">
                              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                              <li class="page-item active"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item"><a class="page-link" href="#">4</a></li>
                              <li class="page-item"><a class="page-link" href="#">5</a></li>
                              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                          </ul>
                        </nav>
                        <!-- 페이지네이션 영역 끝 -->
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
    <script src="../vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="../vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="../vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="../vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
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
    <script src="../js/map-layers.js"> </script>
    <script src="../js/map-category.js">                               </script>
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
    <script src="../js/datepicker-category.js"> </script>
    <!-- Price Slider-->
    <script src="../vendor/nouislider/nouislider.min.js"></script>
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















