<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<html>
	<h3>이것은 테스트하기 위한 것입니다. 차후 메인페이지로 대체해야합니다</h3>
	<br><br><br><br><hr><br>
	<h3><a href="${path}/news/perform">공연뉴스검색</a></h3>
	<hr><br>
	<h3><a href="${path}/news/tour">관광지뉴스검색</a></h3>
	<hr><br>
	<h3><a href="${path}/loginpage">로그인실험페이지</a></h3>
	<hr><br>
	<h3><a href="${path}/member/enroll">회원가입페이지</a></h3>
	<hr><br>
	<c:if test="${loginMember != null}"><h3>
		로그인 상태. <br>
		아이디 : ${loginMember.id}<br>
		닉네임 : ${loginMember.name}<br>
	</h3></c:if>
	
	
	


</html>