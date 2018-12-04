<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="submit.jsp">
<table border=0 cellpadding=5 cellspacing=4>
<tr><td colspan="4" align="center">회원가입</td></tr>
<tr>
<td >id</td>
<td colspan="2"><input type="text" name="uid" id="uid" style="width:150px; height:20px;"></input>
</td>
</tr>
<tr>
<td >pw</td>
<td colspan="2"><input type="password" name="upw" id="upw" style="width:150px; height:20px;"></input>
</td>
<td><input type="submit" name="submit" id="submit" value="회원가입" onclick="goUrl('submit.jsp');"></td>
</tr>
</table>
</form>
</body>
</html>