<%@ page language="java" contentType="text/html; charset=UTF-8" import="Product.DAO.ProductDAO, Login.DTO.LoginDTO, Product.DTO.ProductDTO, java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
ProductDAO p = new ProductDAO();
ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) request.getAttribute("cartList");
	%>
	<% if(list!=null){
				
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
					<button type="button" class="btn btn-light" onclick="goUrl('product.do?cmd=AddCart&product_id=<%= i %>')">장바구니에 넣기</button></td>
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
					<button type="button" class="btn btn-light" onclick="goUrl('product.do?cmd=AddCart&product_id=<%= i %>')">장바구니에 넣기</button></td>
			<%
				}
			}
			%>
			
</body>
</html>