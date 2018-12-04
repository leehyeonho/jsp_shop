<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="login.do?cmd=loginProcess">
<table border=0 cellpadding=5 cellspacing=4 align="center" >
<tr align="center"><td colspan="4" align="center">로그인하세요</td></tr>
<tr>
<td >id</td>
<td colspan="2"><input type="text" name="uId" id="uId" style="width:150px; height:20px;"></input>
</td>
</tr>
<tr>
<td >pw</td>
<td colspan="2"><input type="password" name="uPw" id="uPw" style="width:150px; height:20px;"></input>
</td>
</tr>
<tr>
<td><input type="checkbox" name="remember" id="remember">기억
</td>
<td><input type="submit" name="login" id="login" value="로그인"></input>
</td>
<td><input type="button" name="submit" id="submit" value="회원가입" onclick="goUrl('submit.jsp');"></td>
</tr>
</table>
</form>


</body>
</html>