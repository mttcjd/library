<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookSearchGroup">
				<input class="tbox normal" placeholder="도서관명">
				<a href="#none" class="btn table">검색</a>
			</div>
			<div class="mapArea">
				naver map 표시<br/><br/>
				1. 내 지역이 초기에 표시<br/><br/>
				2. 도서관명 검색 시 해당하는 도서관으로 지도 이동(가능하겠지?)<br/><br/>
			</div>
		</section>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />