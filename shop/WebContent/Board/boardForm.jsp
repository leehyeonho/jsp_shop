<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- cos.jar �� ����ϱ� ������ multipart/form-data�� ��� �Ѵ�.
 -->
<form action="board.do?cmd=fileupload" method="post" enctype="multipart/form-data">
<table border=1>
	<tr>
		<td colspan=2 align=center><h3>���� ���ε� ��</h3></td>
	<tr>
		<td>���� : </td><td><input type="text" name="title"></td><br>
	</tr>
	<tr>
		<td>���� : </td><td><input type="text" name="info"></td><br>
	</tr>
	<tr>
		<td>�̹��� : </td><td><input type="file" name="fileName"></td><br>
	</tr>
	<tr>
		<td colspan=2 align=center><input type="submit" value="����"></td>
	</tr>
</table>
</form>
</body>
</html>