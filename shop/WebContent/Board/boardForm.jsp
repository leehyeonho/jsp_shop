<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- cos.jar 을 사용하기 때문에 multipart/form-data를 사용 한다.
 -->
<form action="board.do?cmd=fileupload" method="post" enctype="multipart/form-data">
<table border=1>
	<tr>
		<td colspan=2 align=center><h3>파일 업로드 폼</h3></td>
	<tr>
		<td>제목 : </td><td><input type="text" name="title"></td><br>
	</tr>
	<tr>
		<td>정보 : </td><td><input type="text" name="info"></td><br>
	</tr>
	<tr>
		<td>이미지 : </td><td><input type="file" name="fileName"></td><br>
	</tr>
	<tr>
		<td colspan=2 align=center><input type="submit" value="전송"></td>
	</tr>
</table>
</form>
</body>
</html>