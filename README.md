## 프론트 jsp파일 참고사항

- 프론트의 css, img, js등 정적파일들이 담긴 폴더들을  webapp아래의 resouces폴더로 모두 넣었습니다. 
  해당파일들을 접근하려면 ${path}/resources/ 이런식으로 경로설정하면 됩니다.
- view폴더는 임시로 (공연, 관광, 회원, 예매, 커뮤니티) 폴더을 만들었습니다.
- 헤더, 푸터는 다음코드로 넣으면 됩니다
    <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="웹페이지제목" name="title"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
