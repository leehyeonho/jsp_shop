<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	String category = request.getParameter("category");


if(category.equals("home")) {
out.print("<script type='text/javascript'>");
//out.print("location.href='product.do?cmd=ProductList';");
out.print("top.location.href='left.jsp';");
out.print("</script>");
}
%>
</body>
</html>