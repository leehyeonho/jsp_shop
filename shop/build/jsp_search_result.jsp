<%@ page language="java" contentType="text/html; charset=UTF-8" import="data.Constants, java.util.*,post.PostClass"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String msg = "";
String searchValue = request.getParameter("searchValue");
String category = request.getParameter("category");


PostClass Post = new PostClass();
List<Map> view = new ArrayList<Map>();

if(request.getParameter("isDetail") == null) { //상세검색이 아닌 경우
	
	if(category.equals("title")) {				//제목 검색
		msg = "제목 검색 결과";
		view = Post.searchTitle(searchValue);	
	} else if(category.equals("id")) {			//작성자 검색
		msg = "작성자 검색 결과";
		view = Post.searchWriter(searchValue);
	} else if(category.equals("total")) {
		msg = "전체 검색 결과";
		view = Post.searchTotal(searchValue);
	}
	
	
} else {										//상세검색인 경우
	
	if(request.getParameter("category") == null) {	//상세검색(날짜)
		msg = "상세 검색(날짜) 결과";
		
		String month = request.getParameter("selectMonth");
		String day = request.getParameter("selectDay");
		String date = "";
		
		if(Integer.valueOf(month) < 10) month = "0" + month;
		if(Integer.valueOf(day) < 10) day = "0" + day;
		date = new StringBuffer(request.getParameter("selectYear")).append("-")
		.append(month).append("-")
		.append(day).toString();
		
		view = Post.searchDate(date);
	} else {									//상세검색(분야)
	msg = "상세 검색(분야) 결과";
	view = Post.searchCategory(category);
	}

}



	

	
%>
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
<% if(view.isEmpty()) {
	msg = "검색 결과가 없습니다.";
out.print("<script type='text/javascript'>");
out.print("alert('" + msg + "'); location.href='jsp_main_form.jsp';");

out.print("</script>");
}
%>
<center>
<table>

<tr>
<td><%= msg %></td>
</tr>
<tr>
<td>제목</td>
<td>작성자</td>
<td>날짜</td>
<td>분야</td>
</tr>

<%
for (int i = 0; i < view.size(); i++) {
	Map row = view.get(i);
	

%><tr>
<td>
	<%= row.get(Constants.TITLE) %></td>
	<td>
	<%= row.get(Constants.WRITERID) %>
	</td>
	<td>
	<%= row.get(Constants.DATE) %>
	</td>
	<td>
	<%= row.get(Constants.CATEGORY) %>
	</td>
	</tr>
	<% } %>
	<tr>
</tr>
</table>
<INPUT type=button
				value="돌아가기" onclick="goUrl('jsp_main_form.jsp')">
</center>
</body>
</html>