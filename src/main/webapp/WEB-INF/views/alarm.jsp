<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />
		
		<section class="noteViewBox">

			<div class="noteGroup">
				<c:if test="${empty list }">
					<tr><td colspan="10">메세지가 없습니다.</td></tr>
				</c:if>
				<c:forEach items="${list }" var="alarm">
					<div class="noteBox">
						<div class="youMsg ">예약도서 : [ ${alarm.alarmBook } ] 대출가능상태로 변경됨 (${alarm.alarmDate })</div>
					</div>
				</c:forEach>
				<!-- 
				<div class="noteBox">
					<div class="youMsg ">알림메세지 표시 (19-05-22 13:00)</div>
				</div>
				<div class="noteBox">
					<div class="youMsg ">알림메세지 표시 (19-05-22 13:00)</div>
				</div>
				 -->
			</div>
		</section>
	</div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />