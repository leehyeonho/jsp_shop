<%@ page language="java" contentType="text/html; charset=UTF-8" import="Login.DTO.LoginDTO"
    pageEncoding="UTF-8"%>
<!doctype html>
<%
LoginDTO data = (LoginDTO)session.getAttribute("login");
%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
</style>
<script type="text/javascript">

function goUrl(url) {
	location.href = url;
}

</script>

    <title>index</title>
  </head>
  <body onload="window.name='index';">
    <h1 align="center">쇼핑몰 메인</h1>
<nav class="navbar navbar-expand-lg navbar-light bg-light" align="center">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent" align="right">
  
    <ul class="navbar-nav mr-auto" >
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          카테고리
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">상의</a>
          <a class="dropdown-item" href="#">하의</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">악세사리</a>
        </div>
      </li>
      <li><br></li>
      <li class="nav-item" align="right">
<%
if ( session.getAttribute("login") == null){
	out.print("<a class=\"nav-link\" onclick=\"goUrl('login.do?cmd=loginForm')\">로그인</a>");
	out.print("</li><li class=\"nav-item\"><a class=\"nav-link\" onclick=\"goUrl('member.do?cmd=joinForm')\">회원가입</a></li>");
} else {
	
	out.print("<a class=\"nav-link\">"+ data.getId() + " 님</a>");
	out.print("</li><li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\">로그아웃</a></li>");
}
%>
        
      
      <li class="nav-item">
        <a class="nav-link" onclick="goUrl('member.do?cmd=myInfo')">내 정보</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="goUrl('member.do?cmd=myInfo')">장바구니</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="goUrl('board.do?cmd=boardForm')">게시판</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
  
</nav>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    
    
    <hr>
    <div class="container">
    
  <div class="row">
    <div class="col-sm" align="center">
      <img src="kenzo_T.PNG" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" onclick="goUrl('detail.jsp?id=1');">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
  </div>
  <div class="row">
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
  </div>
    <div class="row">
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
    <div class="col-sm" align="center">
      <img src="jbnu_logo.jpg" class="border border-dark rounded" class="img-thumbnail" width="200" height="200">
      <button type="button" class="btn btn-light" href="#">상세정보</button>
      <button type="button" class="btn btn-light" href="#">장바구니</button>
    </div>
  </div>
</div>
<hr>
    <p class="mt-5 mb-3 text-muted" align="center">&copy; 2018-2019</p>
    
  </body>
</html>