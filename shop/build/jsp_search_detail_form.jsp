<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>
	function goUrl(url) {
		location.href = url;
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<center>
		<form name=searchDate action="jsp_search_result.jsp" method="get">
			<input type="hidden" name="isDetail" value="true">
			<fieldset style="width:50%">
				<legend>날짜 검색</legend>
				<select name="selectYear">
					<%
						out.println(returnOptionsReverse(2018, 1929));
					%>
				</select>년 <select name="selectMonth">
					<%
						out.println(returnOptions(1, 12, 1));
					%>
				</select>월 <select name="selectDay">
					<%
						out.println(returnOptions(1, 31, 1));
					%>
				</select>일 <input type="submit" value="검색">
			</fieldset>
		</form>
		<form name=searchCategory action="jsp_search_result.jsp" method="get">
			<input type="hidden" name="isDetail" value="true">
			<fieldset style="width:50%">
				<legend>분야별 검색</legend>
				<select name="category">
					<option value="정치">정치</option>
					<option value="경제">경제</option>
					<option value="사회">사회</option>
					<option value="과학">과학</option>
					<option value="IT">IT</option>
					<option value="예술">예술</option>
					<option value="교육">교육</option>
					<option value="기타">기타</option>

				</select> <input type="submit" value="검색">
			</fieldset>
		</form>
		<INPUT type=button value="돌아가기" onclick="goUrl('jsp_main_form.jsp')">
	</center>
</body>
</html>
<%!private String returnOptions(int startNum, int endNum, int selectNum) {
		StringBuffer count = new StringBuffer();
		for (int i = startNum; startNum <= endNum; startNum++) {
			if (startNum == selectNum) {
				count.append("<option value=" + (startNum) + " selected=\"selected\" >" + (startNum) + "</option>\n");

			}
			count.append("<option value=" + (startNum) + ">" + (startNum) + "</option>\n");
		}
		return count.toString();
	}

	private String returnOptionsReverse(int endNum, int startNum) {
		StringBuffer count = new StringBuffer();
		do
			count.append("<option value=" + (endNum) + ">" + (endNum) + "</option>\n");
		while (endNum-- >= startNum);
		return count.toString();
	}%>