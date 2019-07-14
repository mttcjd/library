<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />
		<c:set var="today"><fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyy-MM-dd" /></c:set>
		<section>
			<div class="bookSearchGroup">
				<form action="/rentListLibrary" method="post" name="searchForm">
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
				<div class="sectionTitle">대출 관리</div>
				<table class="list">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>저자</th>
						<th>대여인 정보</th>
						<th>대여일</th>
						<th>반납예정일</th>
						<th>반납일</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
					<c:if test="${empty list.rentList }">
						<tr>
							<td colspan="9">대출 목록이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${list.rentList }" var="rent">
						<tr>
							<td>${rent.rnum }</td>
							<td>${rent.bookName }</td>
							<td>${rent.bookAuthor }</td>
							<td>${rent.rentId } / ${rent.memberName } / ${rent.phone }</td>
							<td>${rent.rentDate }</td>
							<td>${rent.dueDate }</td>
							<td>${rent.returnDate }</td>
							
							<c:choose>
								<c:when test="${not empty rent.returnDate }"><td>반납</td></c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${dueDate < today}"><td class="red">연체</td></c:when>
										<c:otherwise><td>대출중</td></c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
							
							<td>
								<c:if test="${empty rent.returnDate }">
									<a href="#none" class="btn main return" data-idx="${rent.rentIdx }" data-book="${rent.rentBook }">반납완료</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
					<!-- 
					<tr>
						<td>1</td>
						<td>Clean Code Clean Code</td>
						<td>최희수</td>
						<td>yook123 / 이윤석 / 010-1234-5678</td>
						<td>19-05-02</td>
						<td>19-05-09</td>
						<td></td>
						<td>대출중</td>
						<td>
							<a href="#none" class="btn main">반납완료</a>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Clean Code Clean Code</td>
						<td>최희수</td>
						<td>yook123 / 이윤석 / 010-1234-5678</td>
						<td>19-05-02</td>
						<td>19-05-09</td>
						<td></td>
						<td>반납</td>
						<td>
							<a href="#none" class="btn main">반납완료</a>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Clean Code Clean Code</td>
						<td>최희수</td>
						<td>yook123 / 이윤석 / 010-1234-5678</td>
						<td>19-05-02</td>
						<td>19-05-09</td>
						<td></td>
						<td class="red">연체</td>
						<td>
							<a href="#none" class="btn main">반납완료</a>
						</td>
					</tr> -->
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
	
	$('.return').click(function(){
		var rentIdx = $(this).data('idx');
		var rentBook = $(this).data('book');
		console.log(rentIdx);
		$.ajax({
			url : '/return.do',
			data : {rentIdx:rentIdx, rentBook:rentBook},
			success : function(result){
				alert('반납 완료');
				location.reload();
			},
			error : function(){
				console.log('실패');
			}
		});
	});
	
	function list(p){
		$('input[name=reqPage]').val(p);
		searchForm.submit();
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />