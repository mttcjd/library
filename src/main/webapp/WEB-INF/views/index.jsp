<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookListGroup">
				<div class="sectionTitle">신간 내역</div>
				<ul class="bookList">
					<c:forEach items="${list }" var="book">
						<li>
							<a href="/bookInfo?no=${book.bookIdx }" class="">
								<span class="libraryName">[${book.libName }]</span>
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
<!-- 
					<li>
						<a href="bookInfo.jsp" class="">
							<span class="libraryName">[방아다리도서관]</span>
							<span class="bookTitle">자바의 모든것1</span>
						</a>
						<div>
							<span class="categoryBox">
								<span class="subject">장르 : </span>
								<span class="content">추격전</span>
							</span>
							<span class="writerBox">
								<span class="subject">저자 : </span>
								<span class="content">이윤석</span>
							</span>
							<span class="publishBox">
								<span class="subject">발행처 : </span>
								<span class="content">KH출판</span>
							</span>
							<span class="yearBox">
								<span class="subject">발행년 : </span>
								<span class="content">2010</span>
							</span>
						</div>
						<span class="bookState">대출가능</span>
					</li>
					<li>
						<a href="bookInfo.jsp" class="">
							<span class="libraryName">[방아다리도서관]</span>
							<span class="bookTitle">자바의 모든것2</span>
						</a>
						<div>
							<span class="categoryBox">
								<span class="subject">장르 : </span>
								<span class="content">추격전</span>
							</span>
							<span class="writerBox">
								<span class="subject">저자 : </span>
								<span class="content">배지영</span>
							</span>
							<span class="publishBox">
								<span class="subject">발행처 : </span>
								<span class="content">KH출판</span>
							</span>
							<span class="yearBox">
								<span class="subject">발행년 : </span>
								<span class="content">2010</span>
							</span>
						</div>
						<span class="bookState">대출가능</span>
					</li> -->
				</ul>
			</div>
		</section>
	</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />