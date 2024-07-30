<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.pro.user.vo.User"  %>
<nav>
	<div>
		<%
			User user = (User)session.getAttribute("user");
			if(user == null) {
		%>
		<div class="menu">
			<ul>
				<li>
					<a href="/user/login">로그인</a>
				</li>
				<li>
					<a href="/user/create">회원 가입</a>
				</li>
			</ul>
		</div>
		<% } else { %>
		<div class="menu">
			<ul>
				<li>
					<a href="/board/create">게시판</a>
				</li>
				<li>
					<a href="/user/logout">로그아웃</a>
				</li>
				<li>
					<a href="/user/userModify">계정 수정</a>
				</li>
			</ul>
		</div>
		<% } %>
	</div>
</nav>