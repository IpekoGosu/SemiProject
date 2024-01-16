<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<html>


	<body>
		<table border="1">
			<tr>
				<td>
					뉴스검색하기
				</td>
				<td>
					<form action="${path}/news/search" method="get">
						<input type="text" name="query">
						<button type="submit">검색</button>
					</form>
				</td>
			
			</tr>
		</table>
		<table border="1">
			<tr>
				<td>제목</td>
				<c:forEach items="${nlist}" var="item">
					<td><a href="${item.originallink}">${item.title}</a></td>
				</c:forEach>
			</tr>
			<tr>
				<td>요약</td>
				<c:forEach items="${nlist}" var="item">
					<td>${item.description}</td>
				</c:forEach>
			</tr>
			<tr>
				<td>날짜</td>
				<c:forEach items="${nlist}" var="item">
					<td>${item.pubDate}</td>
				</c:forEach>
			</tr>
		
		
		
		</table>
	
	
	</body>


</html>