<%@ page contentType = "text/html; charset=euc-kr" %>

<%
 //  String contentPage = request.getParameter("CONTENTPAGE");
%>

<html>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <head><title>Template 페이지 연습</title></head>

 <body>

 <table width="100%" height="100%" border="1" cellpadding="2" cellspacing="0" align=center>
  <tr height="15%">
   <td colspan="3">
                <!-- 상단 영역 -->
    <jsp:include page="banner.jsp" flush="false" />

   </td>
  </tr>
  <tr height="20%">
   <td width="19%"  height="50%" valign="top">
    <!-- 좌측 영역 -->
    <jsp:include page="Login_form.jsp" flush="false" />

   </td>
   <td width="350" valign="top" colspan="2" rowspan="2">
    <!-- 본문 내용 -->
    <jsp:include page="ac.jsp" flush="false" />

   </td>
  </tr>
  <tr height="70%">
   <td >
    <!-- 하단 영역 -->
    <jsp:include page="banner.jsp" flush="false" />

      </td>
  </tr>
  <tr height=80>
   <td colspan="3">
    <!-- 하단 영역 -->
    <jsp:include page="banner.jsp" flush="false" />

      </td>
  </tr>
  </table>
 </body>
</html>