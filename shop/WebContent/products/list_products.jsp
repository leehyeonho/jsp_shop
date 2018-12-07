<!--
 TITLE :		상품 리스트 페이지 
-->
<%@page import="mall.product.*, mall.util.*, java.sql.*" %>
<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean id="lo" scope="request" class="mall.util.ListObject" />

<html>
<head>
<title>::쇼핑몰::</title>
<LINK href="<%=request.getContextPath()%>/_images/myweb.css" rel="stylesheet">
</head>

<script language="javascript">	
	var search_off = new Image();
	search_off.src = "<%=request.getContextPath()%>/_images/buttons/search.gif";
	var search_on = new Image();
	search_on.src = "<%=request.getContextPath()%>/_images/buttons/search_on.gif";
</script>

<body>

<%@include file="/_frames/main.jsp" %>

<% 	
	//ListObject 첫번째 인덱스의 ProductBean 배열을 얻음
	ProductBean[] list = (ProductBean[])lo.get(0);	
%>

<form action="<%=request.getContextPath()%>/ProductServlet" method="post" name="product">
<input type="hidden" name="cmd" value="PRODUCT_LIST">
<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD">
	<tr>
		<td>&nbsp;<b>상품 리스트</b></td>
		<td align=right valign="center">				
			상품명:&nbsp;<INPUT type="text" maxLength=15 name="find" size=25>
			<a href="javascript:document.product.submit();"
				ONMOUSEOVER="rollIn('search');" 
				ONMOUSEOUT="rollOut('search');" ><img name="search" src="<%=request.getContextPath()%>/_images/buttons/search.gif" width="58" height="19" alt="Search" border="0"></a>&nbsp;&nbsp;
		</td>
	</tr>	
	<tr bgcolor="#000000">
		<td colspan="2"><img src="<%=request.getContextPath()%>/_images/spacer.gif" width="1" height="3" alt="" border="0">
		</td>
	</tr>
</table>
</form>
<table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan=2><b><%= list.length %> 개의 상품이 검색되었습니다.</b></td>
		<td colspan=2 align=right>
			</td>
	</tr>
	<tr bgcolor="silver">
		<td>&nbsp;</td>
		<td><strong>상품명</strong></td>
		<td><strong>모델명</strong></td>
		<td><strong>가격</strong></td>		
		<td>&nbsp;</td>
	</tr>
<% 
	
	for(int i=0; i<list.length; i++) {
%>
	<tr bgcolor="<%= (i%2 == 0)?"#fcfcfc":"#e5e5e5" %>">
		<td><%= i+1 %>. </td>
		<td><a href="<%=request.getContextPath()%>/ProductServlet?cmd=MODIFY&key=<%= list[i].getProductId() %>"><%= list[i].getProduct() %></a></td>
		<td><%= list[i].getModel() %> </td>
		<td><%= Money.format(list[i].getPrice())%> </td>
		<td width=150 align="center"><a href="<%=request.getContextPath()%>/ProductServlet?cmd=REMOVE&key=<%=list[i].getProductId() %>">삭제</a></td>				
	</tr>
<% 		
	}	
%>
</table>

</body>
</html>