<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookListGroup">
				<div class="sectionTitle">대역 내역</div>
				<ul class="bookList">
					<c:if test="${empty list.rentList }">
						<li>대여 내역이 없습니다</li>
					</c:if>
					<c:forEach items="${list.rentList }" var="rent">
						<li>
							<a href="#none" class="">
								<span class="libraryName">[${rent.memberName }]</span>
								<span class="bookTitle">${rent.bookName }</span>
							</a>
							<div>
								<span class="categoryBox">
									<span class="subject">장르 : </span>
									<span class="content">${rent.bookGenre }</span>
								</span>
								<span class="writerBox">
									<span class="subject">저자 : </span>
									<span class="content">${rent.bookAuthor }</span>
								</span>
								<span class="publishBox">
									<span class="subject">발행처 : </span>
									<span class="content">${rent.bookPublisher }</span>
								</span>
								<span class="yearBox">
									<span class="subject">발행년 : </span>
									<span class="content">${rent.bookPubDate }</span>
								</span>
								<span class="rentInfo">
									<span class="rentBox">
										<span class="subject">대여일 : </span>
										<span class="content">${rent.rentDate }</span>
									</span>
									<span class="scheduledBox">
										<span class="subject">반납예정일 : </span>
										<span class="content">
											${rent.dueDate }
											<c:if test="${empty rent.returnDate && rent.rentState eq 0}">
												<button type="button" class="scheduled" data-val="${rent.rentIdx }">연장</button>
											</c:if>
										</span>
									</span>
									<span class="dueBox">
										<span class="subject">반납일 : </span>
										<span class="content">${rent.returnDate }</span>
									</span>
								</span>
							</div>
							<c:if test="${rent.rentDate > rent.dueDate}">
								<span class="bookState accent">
									연체
								</span>
							</c:if>
						</li>
					</c:forEach>
					<!-- <li>
						<a href="#none" class="">
							<span class="libraryName">[방아다리도서관]</span>
							<span class="bookTitle">클린코딩</span>
						</a>
						<div>
							<span class="categoryBox">
								<span class="subject">장르 : </span>
								<span class="content">추격전</span>
							</span>
							<span class="writerBox">
								<span class="subject">저자</span>
								<span class="content">최희수</span>
							</span>
							<span class="publishBox">
								<span class="subject">발행처</span>
								<span class="content">KH출판</span>
							</span>
							<span class="yearBox">
								<span class="subject">발행년</span>
								<span class="content">2010</span>
							</span>
							<span class="rentInfo">
								<span class="rentBox">
									<span class="subject">대여일</span>
									<span class="content">19-05-02</span>
								</span>
								<span class="scheduledBox">
									<span class="subject">반납예정일</span>
									<span class="content">19-05-09<button type="button" class="scheduled">연장</button></span>
								</span>
								<span class="dueBox">
									<span class="subject">반납일</span>
									<span class="content"></span>
								</span>
							</span>
						</div>
						<span class="bookState accent">
							연체
						</span>
					</li>
					<li>
						<a href="#none" class="">
							<span class="libraryName">[방아다리도서관]</span>
							<span class="bookTitle">책이름</span>
						</a>
						<div>
							<span class="categoryBox">
								<span class="subject">장르 : </span>
								<span class="content">추격전</span>
							</span>
							<span class="writerBox">
								<span class="subject">저자</span>
								<span class="content">최희수</span>
							</span>
							<span class="publishBox">
								<span class="subject">발행처</span>
								<span class="content">KH출판</span>
							</span>
							<span class="yearBox">
								<span class="subject">발행년</span>
								<span class="content">2010</span>
							</span>
							<span class="rentInfo">
								<span class="rentBox">
									<span class="subject">대여일</span>
									<span class="content">19-05-20</span>
								</span>
								<span class="scheduledBox">
									<span class="subject">반납예정일</span>
									<span class="content">19-05-23</span>
								</span>
								<span class="dueBox">
									<span class="subject">반납일</span>
									<span class="content">19-05-22</span>
								</span>
							</span>
						</div>
						<span class="bookState">
							반납완료
						</span>
					</li>
					<li>
						<a href="#none" class="">
							<span class="libraryName">[방아다리도서관]</span>
							<span class="bookTitle">책이름</span>
						</a>
						<div>
							<span class="categoryBox">
								<span class="subject">장르 : </span>
								<span class="content">추격전</span>
							</span>
							<span class="writerBox">
								<span class="subject">저자</span>
								<span class="content">최희수</span>
							</span>
							<span class="publishBox">
								<span class="subject">발행처</span>
								<span class="content">KH출판</span>
							</span>
							<span class="yearBox">
								<span class="subject">발행년</span>
								<span class="content">2010</span>
							</span>
							<span class="rentInfo">
								<span class="rentBox">
									<span class="subject">대여일</span>
									<span class="content">19-05-22</span>
								</span>
								<span class="scheduledBox">
									<span class="subject">반납예정일</span>
									<span class="content">19-05-29<button type="button" class="scheduled">연장</button></span>
								</span>
								<span class="dueBox">
									<span class="subject">반납일</span>
									<span class="content"></span>
								</span>
							</span>
						</div>
						<span class="bookState">
							대여중
						</span>
					</li> -->
				</ul>
				<div class="paging">
					${list.pageNavi }
				</div>
			</div>
		</section>
	</div>
<script>
$('.scheduled').click(function(){
	var idx = $(this).data('val');
	console.log(idx);
	$.ajax({
		url : '/',
		data {idx:idx},
		success : function(data){
			console.log(data);
		},
		error : function(){
			console.log('실패');
		}
	});
});
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />