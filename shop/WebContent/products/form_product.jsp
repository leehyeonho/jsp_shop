<!--
 TITLE :		상품 등록 페이지 
-->
<%@page import = "mall.util.*" %>
<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean id="pb" scope="request" class="mall.product.ProductBean" />
<jsp:useBean id="msg" scope="request" class="java.lang.String" />

<html>
<head>
<title>::쇼핑몰::</title>
<LINK href="<%=request.getContextPath()%>/_images/myweb.css" rel="stylesheet">
</head>
<body>

<%@include file="/_frames/main.jsp" %>

<%
//상품이미지 경로 조회
ServletContext sc = getServletContext();
String imagePath = sc.getInitParameter("imagePath");
%>

<script language="javascript">
	var save_off = new Image();
	save_off.src = "<%=request.getContextPath()%>/_images/buttons/save.gif";
	var save_on = new Image();
	save_on.src = "<%=request.getContextPath()%>/_images/buttons/save_on.gif";
		
	var back_off = new Image();
	back_off.src = "<%=request.getContextPath()%>/_images/buttons/back.gif";
	var back_on = new Image();
	back_on.src = "<%=request.getContextPath()%>/_images/buttons/back_on.gif";
	
	function fullSize(f) {	
		if (f != "") {
			w = 300;
			h = 300;
			var tools = 'width='+w+',height='+h+',resizable=no,scrollbars=no, resizable=yes';
			win = window.open('<%=imagePath %>' + f, '이미지보기', tools);
			win.focus();
		}
	}
</script>

<form name="productForm" action="<%=request.getContextPath()%>/ProductServlet" method="post">
<input type="hidden" name="productId" size="30" value="<%= pb.getProductId() %>" >
<input type="hidden" name="cmd" value="UPDATE">
<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD">
	<tr>
		<td><b>신규 상품 등록</b></td>
		<td width=450 align=right>
			<a href="<%=request.getContextPath()%>/ProductServlet?cmd=PRODUCT_LIST" title="back to list"
				ONMOUSEOVER="rollIn('back');" 
				ONMOUSEOUT="rollOut('back');" ><img name="back" src="<%=request.getContextPath()%>/_images/buttons/back.gif" width="41" height="13" alt="상품 리스트보기" border="0" hspace=15 vspace=5 align=middle></a>
		</td>
		<td align=right>
			<a href="javascript:document.productForm.submit();"
			ONMOUSEOVER="rollIn('save');" 
			ONMOUSEOUT="rollOut('save');" ><img name="save" src="<%=request.getContextPath()%>/_images/buttons/save.gif" width="58" height="19" alt="" border="0" hspace=15 vspace=5></a>
		</td>
	</tr>
	<tr bgcolor="#000000"><td colspan="3"><img src="<%=request.getContextPath()%>/_images/spacer.GIF" width="1" height="3" alt="" border="0"></td></tr>
</table>
<%
	//상품등록결과 출력
	if (!msg.equals("")) {
		out.print("<p><font color='red'>");
		out.print(msg);
		out.print("</font><p>");
	}
%>
<table>
	<tr>
		<td align="right">상품번호:</td>
		<td><%= pb.getProductId() %></td>
	</tr>
	<tr>
		<td align="right">상품명:</td>
		<td><input type="text" name="product" size="30" value="<%= pb.getProduct() %>"></td>
	</tr>
	<tr>
		<td align="right">모델명:</td>
		<td><input type="text" name="model" size="30" value="<%= pb.getModel() %>"></td>
	</tr>
	<tr>
		<td align="right">판매자:</td>
		<td><input type="text" name="seller" size="30" value="<%= pb.getSeller() %>"></td>
	</tr>
	<tr>
		<td align="right">가격:</td>
		<td><input type="text" name="price" size="30" value="<%= pb.getPrice() %>">원</td>
	</tr>
	<tr>
		<td align="right">판매단위:</td>
		<td><input type="text" name="unit" size="30" value="<%= pb.getUnit() %>"></td>
	</tr>
	<tr>
		<td align="right">배송기간:</td>
		<td><input type="text" name="deliveryTerm" size="30" value="<%= pb.getDeliveryTerm() %>">일이내</td>
	</tr>
	<tr>
		<td align="right">재고:</td>
		<td><input type="text" name="stock" size="30" value="<%= pb.getStock()%>"></td>
	</tr>
	<tr>
		<td align="right">상품 이미지:</td>
		<td><input type="text" name="image" size="30" value="<%=pb.getImage()%>">
		<a href="javascript:fullSize(document.productForm.image.value);"><img src="<%=request.getContextPath()%>/_images/files/expand.gif" border=0></a></td>
	</tr>
	<tr>
		<td align="right">상태:</td>
		<td><select name="status" > 
				<option value='1' <%if (pb.getStatus()==1) out.print("selected"); %>>판매가능</option>
				<option value='2' <%if (pb.getStatus()==2) out.print("selected"); %>>판매중지</option>
			</select>			
	    </td>
	</tr>	
</table>
</form>

</body>
</html>
