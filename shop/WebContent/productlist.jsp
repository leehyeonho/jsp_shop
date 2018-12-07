<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="Product.DTO.ProductDTO, java.util.*, Product.DAO.ProductDAO"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) ProductDAO.findAll();
%>
<head>
<script type="text/javascript">
	function goUrl(url) {
		location.href=url;
	}
	// 검색 폼 체크
	function searchCheck() {
		var form = document.searchForm;
		if (form.searchText.value == '') {
			alert('검색어를 입력하세요.');
			form.searchText.focus();
			return false;
		}
		return true;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for (int i = 0; i < list.size(); i++) {
	%>
	<img src="<%=list.get(i).getImage()%>" width=151 height=138></img>
	<p>
		<a href="jsp_view_form.jsp?id=<%=list.get(i).getProductId()%>">상품명
			: <%=list.get(i).getProduct()%> 가격 : <%=list.get(i).getPrice()%> 재고 :
			<%=list.get(i).getStock()%></a>
	<p>
		<br>

		<%
			}
		%>
		<p>
		검색<p>
		<form name="searchForm" action="searchProductList.jsp" method="get" onsubmit="return searchCheck();" >
	<p>
		<select name="searchType">
			<option value="ALL" selected="selected">전체검색</option>
			<option value="SUBJECT">제목</option>
			<option value="WRITER">작성자</option>
			<option value="CONTENTS">내용</option>
		</select>
		<input type="text" name="searchText" />
		<input type="submit" value="검색" />
	</p>
	</form>
	
</body>
</html>