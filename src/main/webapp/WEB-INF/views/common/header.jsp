<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">	
	<title>ldH Library</title>
	<link rel="Shortcut Icon" href="/resources/img/subway_favicon.ico">
	<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
	<script src="/resources/js/jquery-3.1.1.min.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="/resources/js/common.js"></script>
	
</head>
<body>
<div class="container">
	<header>
		<a href="/" class="logo">STUDY-LIBIRARY</a>
		<div class="menu">
			<c:if test="${empty sessionScope.member }">
				<a href="/login">로그인</a>
				<a href="/join">회원가입</a>
			</c:if>
			<c:if test="${not empty sessionScope.member }">
			<span>${member.memberName }님 환영합니다</span>
			<c:if test="${sessionScope.member.memberType eq 0 }">
				<a href="/alarm">알림 [1]</a>
			</c:if>
			<a href="/logout.do">로그아웃</a>

			</c:if>

		</div>
	</header>