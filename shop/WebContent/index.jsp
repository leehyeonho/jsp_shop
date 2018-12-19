<%@ page language="java" contentType="text/html; charset=UTF-8" import="Login.DTO.LoginDTO, Product.DTO.ProductDTO, java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
LoginDTO data = (LoginDTO)session.getAttribute("login");
ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) request.getAttribute("ProductList");
%>
<html lang="kr">
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
function resizeIframe(obj) { obj.style.height = (obj.contentWindow.document.body.scrollHeight + 20)+ 'px'; }

</script>

    <title>NOH LOOK & FIT</title>
  </head>
  <body>
    <h1 align="center"><a href="product.do?cmd=ProductList">NOH LOOK & FIT</a></h1>
    <div id="TOP" style="width:100%;height:100px;">
            <jsp:include page="/top.jsp" flush="false" />
        </div>
        <table class="table" width="80%" align="center" border="0">
            <tr>
                <td width="800" valign="top">
                    <table class="table" border="0" width="100%" height="475" border="1" cellpadding="0" cellspacing="0">
                        <tr>
                        <% 
                        		
                        		%>
                        			<td><div id="container">


<iframe name="f" src="content.jsp" width="100%" height="100%" marginwidth="0" marginheight="0" frameborder="no" onload="resizeIframe(this);"></iframe>
</div></td>
                            		<%
                        		
                        		%>
                            
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    
    <hr>
    
<hr>
    <p class="mt-5 mb-3 text-muted" align="center">&copy; 2018-2019</p>
    
  </body>
</html>