<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/views/include/projectHeader_nav.jsp" %>
	<session>
		<div class="create_user">
			<div class="create_user_table">
				<h2>회원가입</h2>
				<span>OOOO회원가입 페이지 입니다.
				<br>정확한 정보를 입력바랍니다.</span>
			</div>
			<div>
				<form>
				<label for="user_id">아이디</label>
				<input type="text" name="user_id" id="user_id" placeholder="아이디">
				<label for="user_pw">비밀번호</label>
				<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호">
				<label for="user_name">이름</label>
				<input type="text" name="user_name" id="user_name" placeholder="이름">		
				<label for="user_num">전화번호</label>
				<input type="text" name="user_num" id="user_num" placeholder="전화번호">
				<label for="user_birth">생년월일</label>	
				<input type="text" name="user_birth" id="user_birth" placeholder="생년월일">
				<input type="button" value="회원가입" onclick="createUser()">
				<input type="reset" value="초기화">  
				</form>
			</div>
		</div>
		<div class="login">
			<a href="/user/login">로그인</a>
		</div>
	</session>
	<script>
		function createUser(){
			const form = document.create_account_form;
			if(!form.user_id.value){
				alert("아이디를 입력하세요");
				form.user_id.focus();
			} else if(!form.user_pw.value){
				alert("비밀번호를 입력하세요");
				form.user_pw.focus();
			} else if(!form.user_name.value){
				alert("이름을 입력하세요");
				form.user_name.focus();
			} else if(!form.user_num.value){
				alert("전화번호를 입력하세요");
				form.user_num.focus();
			} else if(!form.user_birth.value){
				alert("생년월일을 입력하세요");
				form,user_birth.focus();
			} else {
				form.submit();
			}
		}
	</script>
</body>
</html>