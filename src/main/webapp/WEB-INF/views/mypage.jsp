<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">	<title>study_contact</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<div class="container">
	<header>
		<a href="index.html" class="logo">STUDY-LIBRARY</a>
		<div class="menu">
			<a href="mypage.html">주소록</a>
			<a href="boardList.html">게시판</a>
			<a href="#none">로그아웃</a>
		</div>
	</header>
	<div class="content">
		<div class="subMenu">
			<a href="mypage.html">메인</a>
			<a href="search.html">친구 찾기</a>
			<a href="noteList.html">쪽지함</a>
			<a href="myInfoChk.html">내 정보수정</a>

			<a href="leave.html">회원 탈퇴</a>
		</div>

		<section class="contactListBox">

			<div class="filterMenu">
				<a href="#none" class="on">이름순</a>
				<a href="#none">나이순</a>
				<a href="#none">최근접속일순</a>
			</div>
			<table>
				<thead>
				<tr>
					<th>No</th>
					<th>이름</th>
					<th>나이</th>
					<th>성별</th>
					<th>핸드폰번호</th>
					<th>이메일주소</th>
					<th>최근로그인</th>
					<th>쪽지</th>
					<th>삭제</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>1</td>
					<td>최희수</td>
					<td>20</td>
					<td>남</td>
					<td>01084649696</td>
					<td>ssooya90@naver.com</td>
					<td>2019-05-02 12:22:22</td>
					<td><a href="#none" class="btn">보내기</a></td>
					<td><a href="#none" class="btn remove">삭제</a></td>
				</tr>
				<tr>
					<td>1</td>
					<td>최희수</td>
					<td>20</td>
					<td>남</td>
					<td>01084649696</td>
					<td>ssooya90@naver.com</td>
					<td>2019-05-02 12:22:22</td>
					<td><a href="#none" class="btn">보내기</a></td>
					<td><a href="#none" class="btn remove">삭제</a></td>
				</tr>
				</tbody>
			</table>
			<div class="paging">
				<a href="#none">이전</a>
				<a href="#none" class="on">1</a>
				<a href="#none">2</a>
				<a href="#none">3</a>
				<a href="#none">다음</a>
			</div>

		</section>

	</div>
	<footer>
		First project in study 190513 : contact

	</footer>
</div>

<script src="../js/jquery-3.1.1.min.js"></script>
</body>
</html>