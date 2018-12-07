<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="list-group">
      <a class="list-group-item" href="index.jsp">Home</a>
      <a class="list-group-item" href="product.do?cmd=ProductList">상의</a>
      <a class="list-group-item" href="index.jsp?category=bottom">하의</a>
      <a class="list-group-item" href="index.jsp?category=accessory">악세사리</a>
      <form action="index.jsp" method="get" >
      <input type="text" name="search">
      <input type="submit" value="검색">
      </form>
</div>
</body>
</html>