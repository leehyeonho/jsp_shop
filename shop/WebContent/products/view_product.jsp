<!--
 TITLE :		��ǰ �� ������ 
-->
<%@page import = "mall.util.*" %>
<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean id="pb" scope="request" class="mall.product.ProductBean" />

<html>
<head>
<title>::���θ�::</title>
<LINK href="<%=request.getContextPath()%>/_images/myweb.css" rel="stylesheet">
</head>

<script language="javascript">
	var save_off = new Image();
	save_off.src = "<%=request.getContextPath()%>/_images/buttons/save.gif";
	var save_on = new Image();
	save_on.src = "<%=request.getContextPath()%>/_images/buttons/save_on.gif";		
	var back_off = new Image();
	back_off.src = "<%=request.getContextPath()%>/_images/buttons/back.gif";
	var back_on = new Image();
	back_on.src = "<%=request.getContextPath()%>/_images/buttons/back_on.gif";
</script>

<body>

<%@include file="/_frames/main.jsp" %>

<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD">
	
	<tr>		
		<td>&nbsp;<b>��ǰ��</b></td>
		<td align=right valign="center">
			<a href="<%=request.getContextPath()%>/SearchServlet?cmd=SEARCH_LIST" title="back to list"
				ONMOUSEOVER="rollIn('back');" 
				ONMOUSEOUT="rollOut('back');" ><img name="back" src="<%=request.getContextPath()%>/_images/buttons/back.gif" width="41" height="13" alt="��ǰ ����Ʈ����" border="0" hspace=15 vspace=5 align=middle></a>
		</td>
	</tr>
	<tr bgcolor="#000000"><td colspan="2"><img src="<%=request.getContextPath()%>/_images/spacer.GIF" width="1" height="3" alt="" border="0"></td></tr>
</table>
<%
//��ǰ�̹��� ��� ��ȸ
ServletContext sc = getServletContext();
String imagePath = sc.getInitParameter("imagePath");
%>
<table>
	<tr>
		<td width="290" height="200" align=left><img src="<%=imagePath%><%=pb.getImage()%>"></td>		
		<td>
		<table>
			<tr>
				<td align="right">��ǰ��ȣ:</td>
				<td><%= pb.getProductId() %></td>
			</tr>
			<tr>
				<td align="right">��ǰ��:</td>
				<td><%= pb.getProduct() %></td>
			</tr>
			<tr>
				<td align="right">�𵨸�:</td>
				<td><%= pb.getModel() %></td>
			</tr>
			<tr>
				<td align="right">�Ǹ���:</td>
				<td><%= pb.getSeller() %></td>
			</tr>
			<tr>
				<td align="right">����:</td>
				<td><%= Money.format(pb.getPrice()) %>��</td>
			</tr>
			<tr>
				<td align="right">�ǸŴ���:</td>
				<td><%= pb.getUnit() %></td>
			</tr>
			<tr>
				<td align="right">��۱Ⱓ:</td>
				<td><%= pb.getDeliveryTerm() %>���̳�</td>
			</tr>
			<tr>
				<td align="right">���:</td>
				<td><%= Money.format(pb.getStock()) %></td>
			</tr>
			<tr>
				<td align="right"></td>
				<td><a href="<%=request.getContextPath()%>/CartServlet?cmd=ADD&product_id=<%=pb.getProductId()%>-"><img src="<%=request.getContextPath()%>/_images/buy-1.gif" width="97" height="28" border="0" name="Image1"></a></td>
			</tr>
		</table>
		</td>		
	</tr>	
</table>

</body>
</html>