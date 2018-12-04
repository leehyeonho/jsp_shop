<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, Board.DTO.BoardDTO"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% ArrayList<BoardDTO> list = (ArrayList<BoardDTO>) request.getAttribute("list");
	%>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>게시판</title>
</head>
<style>
<!--
td { font-size : 9pt; }
A:link { font : 9pt; color : black; text-decoration : none; font-family : 굴림; font-size : 9pt; }
A:visited { text-decoration : none; color : black; font-size : 9pt; }
A:hover { text-decoration : underline; color : black; font-size : 9pt; }

-->
    </style>
    <script type="text/javascript">

    </script>
<body topmargin=0 leftmargin=0 text=#464646>

<center>



<hr>
<table width=580 border=1 cellpadding=2 cellspacing=1 >

<!-- 입력 부분 -->
<% for(int i=0;i<list.size();i++) {
%>
<img src="<%=list.get(i).getPath()%>" width=151 height=138></img>
<a href="jsp_view_form.jsp?id=<%= list.get(i).getId() %>">제목 : <%=list.get(i).getTitle()%> 정보 : <%=list.get(i).getInfo()%> 날짜 : <%=list.get(i).getDate()%></a>
<br>

<%
}%>
</table>
</center>
</body>
</html> 
