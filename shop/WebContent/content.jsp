<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="Product.DTO.ProductDTO, java.util.*, Product.DAO.ProductDAO"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
	ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) request.getAttribute("list");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="0">
		<tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					if (i % 4 == 0 && i != 0) {
			%>
		
		<tr>
			<td><a href="detail.jsp?id=<%=list.get(i).getProductId()%>"><img
					src="<%=list.get(i).getImage()%>"
					class="border border-dark rounded" class="img-thumbnail"
					width="200" height="200"></a>
				<p>
					<%=list.get(i).getProduct()%>
					<button type="button" class="btn btn-light" href="#">장바구니에 넣기</button></td>
			<%
				continue;
					}
			%>
			<td><a href="detail.jsp?id=<%=list.get(i).getProductId()%>"><img
					src="<%=list.get(i).getImage()%>"
					class="border border-dark rounded" class="img-thumbnail"
					width="200" height="200"></a>
				<p>
					<%=list.get(i).getProduct()%>
					<button type="button" class="btn btn-light" href="#">장바구니에 넣기</button></td>
			<%
				}
			%>
		</tr>
	</table>
</body>
</html>