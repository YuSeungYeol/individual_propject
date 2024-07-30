<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user 로그인</title>
</head>
<body>
	
    <section>
	<div>로그인</div>
        <div class="container"></div>
        <div class="container_table">
            <div class="container_table_login"><br>
                <form action="/user/loginEnd">
                    <div>
                        <label for="user-id">아이디</label>
                        <input type="text" class="form-control" id="user-id" name="user_id">
                    </div>
                    <div>
                        <label for="user-password">비밀번호</label>
                        <input type="password" class="form-control" id="user-password" name="user_pw">
                    </div>
                    <button type="submit" class="login-button" onclick="loginForm()">로그인</button>
                </form>
            </div>
        </div>
       </section>

       <script type="text/javascript">
		function loginForm() {
			let form = document.login_form;
			if (form.user_id.value == '') {
				alert('아이디를 입력하세요.');
				form.user_id.focus();	
			} else if (form.user_pw.value == '') {
				alert('비밀번호를 입력하세요.');
				form.user_pw.focus();
			} else {
				form.submit();
			}
		}
	</script>
</body>
</html>