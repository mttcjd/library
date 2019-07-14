<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookSearchGroup">
				<form action="/bookManage" method="post" name="searchForm">
					<input type="hidden" name="reqPage" value="1">
					<span class="sbox">
						<select name="searchType" data-val="${search.searchType }">
							<option value="name">제목</option>
							<option value="author">저자</option>
							<option value="publisher">출판사</option>
						</select>
					</span>
					<span class="sbox">
						<select name="genre" data-val="${search.genre }">
							<jsp:include page="/WEB-INF/views/common/option.jsp" />
						</select>
					</span>
					<input class="tbox" name="searchVal" value="${search.searchVal }">
					<a href="javascript:searchForm.submit();" class="btn table">검색</a>
				</form>
			</div>
			<div class="bookListGroup">
				<div class="sectionTitle">도서 관리</div>
				<table class="list">
					<tr>
						<th>번호</th>
						<th>장르</th>
						<th>제목</th>
						<th>저자</th>
						<th>출판사</th>
						<th>발행년도</th>
						<th>도서위치</th>
						<th>도서위치번호</th>
						<th>대출유무</th>
						<th>관리</th>
					</tr>
					<c:if test="${empty list.bookList }">
						<tr><td colspan="10">등록된 도서가 없습니다</td></tr>
					</c:if>
					<c:forEach items="${list.bookList }" var="book">
						<tr>
							<td>${book.rnum }</td>
							<td>${book.bookGenre }</td>
							<td>${book.bookName }</td>
							<td>${book.bookAuthor }</td>
							<td>${book.bookPublisher }</td>
							<td>${book.bookPubDate }</td>
							<td>${book.bookLocation }</td>
							<td>${book.bookSerial }</td>
							<td>
								<c:if test="${book.bookState eq 0 }">가능</c:if>
								<c:if test="${book.bookState eq 1 }">불가</c:if>
							</td>
							<td>
								<a href="/bookModify?no=${book.bookIdx }" class="btn main">수정</a>
								<a href="#none" class="btn remove">삭제</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="paging">
				${list.pageNavi }
			</div>
		</section>
	</div>
	
<script>
	var searchType = $('select[name=searchType]').data('val');
	$('select[name=searchType]').children('option').each(function(){
		if($(this).val()==searchType){
			$(this).prop("selected",true);
		}
	});
	
	
	var genre = $('select[name=genre]').data('val');
	$('select[name=genre]').children('option').each(function(){
		if($(this).val()==genre){
			$(this).prop("selected",true);
		}
	});

	function list(p){
		$('input[name=reqPage]').val(p);
		searchForm.submit();
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />