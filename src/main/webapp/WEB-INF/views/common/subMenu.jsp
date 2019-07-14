<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty sessionScope.member }">
	<c:if test="${sessionScope.member.memberType eq 0 }">
		<!-- 사용자 메뉴 -->
		<div class="subMenu">
			<a href="/bookSearch">도서 검색</a>
			<a href="/rentListMember">대여 내역</a>
			<!-- 
			<a href="#">도서관 찾기</a>
			<a href="#">내 정보수정</a>
			<a href="#">회원 탈퇴</a>
			 -->
		</div>
	</c:if>
	<c:if test="${sessionScope.member.memberType eq 1 }">
		<!-- 도서관 메뉴 -->
		<div class="subMenu">
			<a href="/bookManage">도서 관리</a>
			<a href="/bookLocation">위치별 관리</a>
			<a href="/bookRegister">도서 등록</a>
			<a href="/rentListLibrary">대출 내역</a>
		</div>
	</c:if>
	
</c:if>

