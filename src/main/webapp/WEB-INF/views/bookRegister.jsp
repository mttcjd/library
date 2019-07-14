<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="content">
		<jsp:include page="/WEB-INF/views/common/subMenu.jsp" />

		<section>
			<div class="bookListGroup">
				<div class="sectionTitle">도서등록</div>
				<form action="/addBook.do" method="post" name="bookForm">
					<input type="hidden" name="bookLib" value="${sessionScope.member.memberId }">
					<table class="set">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<tr>
							<th>장르</th>
							<td>
								<span class="sbox">
									<select name="bookGenre">
										<!-- <option value="">장르 선택</option>
										<option value="총류">총류</option>
										<option value="철학">철학</option>
										<option value="종교">종교</option>
										<option value="사회학">사회학</option>
										<option value="자연과학">자연과학</option>
										<option value="기술과학">기술과학</option>
										<option value="예술">예술</option>
										<option value="언어">언어</option>
										<option value="문학">문학</option>
										<option value="역사">역사</option> -->
										<jsp:include page="/WEB-INF/views/common/option.jsp" />
									</select>
								</span>
							</td>
						</tr>
						<tr>
							<th>도서명</th>
							<td><input name="bookName" class="tbox normal"></td>
						</tr>
						<tr>
							<th>출판사</th>
							<td><input name="bookPublisher" class="tbox normal"></td>
						</tr>
						<tr>
							<th>저자</th>
							<td><input name="bookAuthor" class="tbox normal"></td>
						</tr>
						<tr>
							<th>발행일</th>
							<td><input name="bookPubDate" class="tbox normal datepicker" autocomplete="off"></td>
						</tr>
						<tr>
							<th>자료위치</th>
							<td><input name="bookLocation" class="tbox normal"></td>
						</tr>
						<tr>
							<th>자료번호</th>
							<td><input name="bookSerial" class="tbox normal"></td>
						</tr>
						<tr>
							<th>대출유무</th>
							<td>
								<label>
									<input type="radio" name="bookState" value="0">
									<span>가능</span>
								</label>
								<label class="ml10">
									<input type="radio" name="bookState" value="1">
									<span>불가</span>
								</label>
							</td>
						</tr>
					</table>
					<div class="btnGroup">
						<a href="#none" class="btn back" onclick="history.back()">이전</a>
						<a href="javascript:chk();" class="btn">등록</a>
					</div>
				</form>
			</div>
		</section>
	</div>

<script>

function chk(){
	if($('select[name=bookGenre]').val()==''){
		alert("장르를 선택해주세요");
		return false;
	}
	if($('input[name=bookName]').val()==''){
		alert("도서명을 입력해주세요");
		return false;
	}
	if($('input[name=bookPublisher]').val()==''){
		alert("출판사를 입력해주세요");
		return false;
	}
	if($('input[name=bookAuthor]').val()==''){
		alert("저자를 입력해주세요");
		return false;
	}
	
	if($('input[name=bookPubDate]').val()==''){
		alert("발행일을 입력해주세요");
		return false;
	}
	
	if($('input[name=bookLocation]').val()==''){
		alert("자료위치를 입력해주세요");
		return false;
	}
	if($('input[name=bookSerial]').val()==''){
		alert("자료번호를 입력해주세요");
		return false;
	}
	if($('input[name=bookState]:checked').val()==''){
		alert("대출유무를 선택해주세요");
		return false;
	}
	bookForm.submit();
}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />