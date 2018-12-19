<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="Login.DTO.LoginDTO" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	LoginDTO data = (LoginDTO) session.getAttribute("login");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		align="center"> <a class="navbar-brand" href="#"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent"
		align="right">

		<ul class="navbar-nav mr-auto">
			<li><br></li>
			<li class="nav-item"><a class="nav-link"
				href="product.do?cmd=ProductList" target="f">상품</a></li>
			<li class="nav-item" align="right">
				<!-- Optional JavaScript --> <!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
					integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
					crossorigin="anonymous"></script> <script
					src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
					integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
					crossorigin="anonymous"></script> <%
 	if (session.getAttribute("login") == null) {
 		out.print("<a class=\"nav-link\" onclick=\"goUrl('login.do?cmd=loginForm')\">로그인</a>");
 		out.print(
 				"</li><li class=\"nav-item\"><a class=\"nav-link\" onclick=\"goUrl('member.do?cmd=joinForm')\">회원가입</a></li>");
 	} else {

 		out.print("<a class=\"nav-link\">" + data.getId() + " 님</a>");
 		out.print("</li><li class=\"nav-item\"><a class=\"nav-link\" onclick=\"goUrl('login.do?cmd=logout')\">로그아웃</a></li>");
 	}
 %>
			
			<li class="nav-item"><a class="nav-link"
				onclick="goUrl('member.do?cmd=myInfo')">내 정보</a></li>
			<li class="nav-item"><a class="nav-link"
				onclick="goUrl('product.do?cmd=viewCart')">장바구니</a></li>
			<li class="nav-item"><a class="nav-link"
				onclick="goUrl('board.do?cmd=boardlist')">게시판</a></li>
		</ul>
	</div>

	</nav>
</body>
</html>