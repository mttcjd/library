<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<div class="content">
		<section>
			<form action="/join.do" method="post" name="joinForm">
				<div class="joinBox">
					<table class="set">
						<tr>
							<th>회원 구분</th>
							<td>
								<label>
									<input type="radio" name="memberType" value="0">
									<span>사용자</span>
								</label>
								<label class="ml10">
									<input type="radio" name="memberType" value="1">
									<span>도서관</span>
								</label>
							</td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>
								<input class="tbox" name="memberId">
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>
								<input type="password" class="tbox" name="memberPw">
							</td>
						</tr>
						<!-- <tr>
							<th>비밀번호 확인</th>
							<td>
								<input class="tbox">
							</td>
						</tr> -->
						<tr>
							<th>이름</th>
							<td>
								<input class="tbox" name="memberName">
							</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td>
								<input class="tbox" name="phone">
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div class="addrBox">
									<input name="addr1" class="tbox normal" readonly>
									<a class="btn table" onclick="getAddr();">주소검색</a>
								</div>
								<div class="addrBox">
									<input name="addr2" class="tbox full" placeholder="상세주소 입력">
								</div>
							</td>
						</tr>
					</table>
					<div class="btnGroup">
						<a href="javascript:joinForm.submit();" class="btn">회원가입</a>
					</div>
				</div>
			</form>
		</section>
	</div>
<script>
	function getAddr(){
		var address = $('input[name=addr1]');
	    new daum.Postcode({
	        oncomplete: function(data) {
	            address.val('( '+data.zonecode+' ) '+data.address);
	            $('input[name=addr2]').focus();
	        }
	    }).open();
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />