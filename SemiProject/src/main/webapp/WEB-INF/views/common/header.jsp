<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<body>
<header class="header">
  <!-- Navbar-->
  <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
    <div class="container-fluid">
      <!-- 로고 영역 -->
      <div class="d-flex align-items-center header-logo">
        <a class="navbar-brand py-1" href="${path}/">
          <img width="90px" height="60px" style="object-fit: cover" src="${path}/resources/img/yja/myseoullogo4.png" alt="Directory logo"/>
        </a>
        <a href="${path}/" style="font-size: 30px; color: #ef4562; font-weight: bold; text-decoration: none;">마이서울</a>
      </div>
      <!-- 로고 영역 끝 -->
      <!-- 메뉴 영역 시작 -->
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ms-auto">
          <!-- 관광지 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="${path}/"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              관광지
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="tour-search.html" style="font-size: 18px;">관광지</a>
              <a class="dropdown-item" href="#" style="font-size: 18px;">맛집</a>
              <a class="dropdown-item" href="tour-best.html" style="font-size: 18px;">관광지 추천</a>
              <a class="dropdown-item" href="tour-realtime.html" style="font-size: 18px;">도시 데이터</a>
            </div>
          </li>
          <!-- 관광지 끝 -->
          <!-- 공연 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              공연
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="show-search-1.html" style="font-size: 18px;">음악</a>
              <a class="dropdown-item" href="show-search-2.html" style="font-size: 18px;">연극, 뮤지컬</a
              ><a class="dropdown-item" href="show-search-3.html" style="font-size: 18px;">무용, 서커스/마술</a>
              <a class="dropdown-item" href="show-inform.html" style="font-size: 18px;">공연 정보</a>
              <a class="dropdown-item" href="show-recommendations.html" style="font-size: 18px;">공연 추천</a>
              <a class="dropdown-item" href="show-award.html" style="font-size: 18px;">수상작</a>
            </div>
          </li>
          <!-- 공연 끝 -->
          <!-- 커뮤니티 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="community-tour.html" style="font-size: 18px;">관광지 게시판</a>
              <a class="dropdown-item" href="${path}/boardprf/list" style="font-size: 18px;">공연 게시판</a>
              <a class="dropdown-item" href="#" style="font-size: 18px;">지역 행사 게시판</a>
            </div>
          </li>
          <!-- 커뮤니티 끝 -->
          <!-- 뉴스 시작 -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="index.html"
              data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 24px; color: #ef4562;">
              뉴스
            </a>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
              <a class="dropdown-item" href="${path}/news/tour" style="font-size: 18px;">관광지 뉴스</a>
              <a class="dropdown-item" href="${path}/news/perform" style="font-size: 18px;">공연 뉴스</a>
            </div>
          </li>
          <!-- 뉴스 끝 -->
          <!-- 프로필(마이페이지) 영역 -->
          <!-- 로그인/아웃/프로필(마이페이지) 서버측 구현 필요 -->
          <c:if test="${loginMember != null}">
	          <li class="nav-item profile" id="profile-button" style="display: flex; align-items: center; margin-right: 20px;">
	            <a class="btn btn-primary" href="profile.html"
	              style="background-color: #ef4562 !important; color: white !important; border: none; font-family: Concert One, sans-serif; font-weight: bolder; font-size: 15px;">
		          <c:out value="${loginMember.name}"></c:out>의 Page
	            </a>
	          </li>
          </c:if>
          <!-- 프로필(마이페이지) 영역 끝 -->
          <c:if test="${loginMember == null}">
          <!-- 로그인 영역 -->
          <li class="nav-item login-button" id="login-button" style="display: flex; align-items: center;">
            <a class="btn btn-primary" href="${path}/loginpage"
              style="background-color: #ef4562; border: none; font-family: Concert One, sans-serif; font-weight: bolder; font-size: 15px;">
              Log in
            </a>
          </li>
          <!-- 로그인 영역 끝 -->
          </c:if>
          <c:if test="${loginMember != null}">
          <!-- 로그아웃 영역 -->
          <li class="nav-item login-button" id="login-button" style="display: flex; align-items: center;">
            <a class="btn btn-primary" href="${path}/logout"
              style="background-color: #ef4562; border: none; font-family: Concert One, sans-serif; font-weight: bolder; font-size: 15px;">
              Logout
            </a>
          </li>
          <!-- 로그아웃 영역 끝 -->
          </c:if>
        </ul>
      </div>
      <!-- 메뉴 영역 끝 -->
    </div>
  </nav>
  <!-- /Navbar -->
</header>
</body>



	


</html>