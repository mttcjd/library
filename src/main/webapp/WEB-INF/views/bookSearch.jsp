<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookSearchGroup">
				<form action="/bookSearch" method="post" name="searchForm">
					<input type="hidden" name="reqPage" value="1">
					<span class="sbox long">
						<select name="memberId" data-val="${search.memberId }">
						</select>
					</span>
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
					<span class="sbox">
						<select name="sort" data-val="${search.sort }">
							<option value="">--정렬--</option>
							<option>제목 오름차순</option>
							<option>제목 내림차순</option>
							<option>저자 오름차순</option>
							<option>출판사 오름차순</option>
							<option>출판사 내림차순</option>
						</select>
					</span>
					<input class="tbox" name="searchVal" value="${search.searchVal }">
					<a href="javascript:searchForm.submit();" class="btn table">검색</a>
				</form>
			</div>
			<div class="bookListGroup">
				<div class="sectionTitle">검색 내역</div>
				<ul class="bookList">
					<c:if test="${empty list.bookList }">
						<li class="msg">
							검색결과가 없습니다.
						</li>
					</c:if>
					<c:forEach items="${list.bookList }" var="book">
						<li>
							<a href="/bookInfo?no=${book.bookIdx }" class="">
								<span class="libraryName">[${book.bookLib }]</span>
								<span class="bookTitle">${book.bookName }</span>
							</a>
							<div>
								<span class="categoryBox">
									<span class="subject">장르 : </span>
									<span class="content">${book.bookGenre }</span>
								</span>
								<span class="writerBox">
									<span class="subject">저자 : </span>
									<span class="content">${book.bookAuthor }</span>
								</span>
								<span class="publishBox">
									<span class="subject">발행처 : </span>
									<span class="content">${book.bookPublisher }</span>
								</span>
								<span class="yearBox">
									<span class="subject">발행일 : </span>
									<span class="content">${book.bookPubDate }</span>
								</span>
							</div>
							<c:if test="${book.bookState eq 0 }">
								<span class="bookState">대출가능</span>
							</c:if>
							<c:if test="${book.bookState eq 1 }">
								<span class="bookState accent">대출불가</span>
							</c:if>
							
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="paging">
				${list.pageNavi }
			</div>
		</section>
	</div>
<script>
	$.ajax({
		url : '/getLibrary.do',
		dataType : 'json',
		success : function(list){
			//console.log(list);
			$('select[name=memberId]').append('<option value="">--도서관 선택-- </option>');
			for(var i=0;i<list.length;i++){
				$('select[name=memberId]').append('<option value="'+list[i].memberId+'">'+list[i].memberName+'</option>');
			}
			var memberId = $('select[name=memberId]').data('val');
			$('select[name=memberId]').children('option').each(function(){
				if($(this).val()==memberId){
					$(this).prop("selected",true);
				}
			});
			
		},
		error : function(){
			console.log('실패');
		}
	});

	

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
	
	var sort = $('select[name=sort]').data('val');
	$('select[name=sort]').children('option').each(function(){
		if($(this).val()==sort){
			$(this).prop("selected",true);
		}
	});

	function list(p){
		$('input[name=reqPage]').val(p);
		searchForm.submit();
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />