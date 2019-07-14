<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!-- https://github.com/js-cookie/js-cookie -->
<!-- CDN 방식으로 이용 -->
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
	<div class="content">

		<section>
			<div class="loginBox">
				<form action="/login.do" method="post" name="loginForm">
					<div class="row">
						<div class="memberSelectBox">
							<label class="memberSelect">
								<input  type="radio" name="memberType" checked value="0">
								<span>사용자</span>
							</label>
							<label class="memberSelect">
								<input type="radio" name="memberType" value="1">
								<span>도서관</span>
							</label>
						</div>
					</div>
					<div class="row">
						<input name="memberId" class="tbox" placeholder="아이디">
					</div>
					<div class="row">
						<input name="memberPw" class="tbox" type="password" placeholder="비밀번호">
					</div>
					<div class="row">
						<label>
							<input type="checkbox" id="saveId"><span>아이디 저장</span>
						</label>
					</div>
					<div class="btnGroup">
						<a href="javascript:loginForm.submit();" class="btn full">로그인</a>
					</div>
				</form>
			</div>
		</section>
	</div>
<script>
	/* 쿠키에 저장된 값이 있다면 세팅 */
	$("input[name=memberId]").val(Cookies.get('key'));
	if($("input[name=memberId]").val() != ""){
	    $("#saveId").attr("checked", true);
	}
	
	/* 아이디 저장을 선택했을 때 쿠키에 저장 */
	$("#saveId").change(function(){
		if($("#saveId").is(":checked")){
		    Cookies.set('key', $("input[name=memberId]").val(), { expires: 7 });
		}else{
		      Cookies.remove('key');
		}
	});
	 
	$("input[name=memberId]").keyup(function(){
		if($("#saveId").is(":checked")){
		    Cookies.set('key', $("input[name=memberId]").val(), { expires: 7 });
		}
	});


</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />