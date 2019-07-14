<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookListGroup">
				<div class="sectionTitle">${book.bookName } 상세정보</div>
				<table class="set">
					<colgroup>
						<col width="200">
						<col width="*">

					</colgroup>
					<tr>
						<th>도서관</th>
						<td>${book.libName }</td>
					</tr>
					<tr>
						<th>장르</th>
						<td>${book.bookGenre }</td>
					</tr>
					<tr>
						<th>도서명</th>
						<td>${book.bookName }</td>
					</tr>
					<tr>
						<th>저자 / 출판사 / 출판년도</th>
						<td>${book.bookAuthor } / ${book.bookPublisher } / ${book.bookPubDate }</td>
					</tr>
					<tr>
						<th>자료위치 / 자료번호</th>
						<td>${book.bookLocation } / ${book.bookSerial }</td>
					</tr>
					<tr>
						<th>도서상태</th>
						<c:if test="${book.bookState eq 0 }">
							<td>대여가능</td>
						</c:if>
						<c:if test="${book.bookState eq 1 }">
							<td>대여중 (~${book.dueDate })</td>
						</c:if>
					</tr>
				</table>
				<div class="btnGroup">
					<a href="#none" class="btn back" onclick="history.back()">이전</a>
					<c:choose>
						<c:when test="${sessionScope.member.memberId eq book.bookReserveId}">
							<a href="#none" class="btn ban">예약중</a>
						</c:when>
						<c:when test="${sessionScope.member.memberType eq 0 && sessionScope.member.memberId ne book.rentId}">
							<c:if test="${book.bookState eq 0 }">
								<a href="javascript:rentForm.submit();" class="btn">대여</a>
							</c:if>
							<c:if test="${book.bookState eq 1 }">
								<a href="javascript:reserve();" class="btn">예약</a>
							</c:if>
							<%-- 
							<c:if test="${book.bookState eq 2 }">
								<a href="#none" class="btn ban">대여불가</a>
							</c:if>
							 --%>
						</c:when>
						<c:when test="${sessionScope.member.memberId eq book.rentId}">
							<a href="#none" class="btn ban">대여중</a>
						</c:when>
						<c:otherwise />
					</c:choose>
				</div>
			</div>
		</section>
	</div>
<form action="/rent.do" method="post" name="rentForm">
	<input type="hidden" name="rentId" value="${sessionScope.member.memberId }">
	<input type="hidden" name="rentBook" value="${param.no }">
</form>
<script>
	function reserve(){
		$('form[name=rentForm]').attr('action','/reserve.do');
		$('form[name=rentForm]').submit();
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />