<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">
	function goUrl(url) {
		location.href = url;
	}
	// 검색 폼 체크
	function idCheck() {
		var form = document.submitForm;
		if (form.uId.value == '') {
			alert('아이디를 입력하세요.');
			form.searchText.focus();
			return false;
		} else {
			
		}
		return true;
	}
	
	window.onload=function (){
		//1. 아이디 중복 체크
		document.getElementById("id_Valid").onclick=function(){
	        var gsWin = window.open("about:blank", "winName", "width=400,height=300,top=100,left=200");
			var fr = document.getElementById("submitForm");
	        fr.action = ".jsp";
	        fr.target = "winName";
	        fr.submit();
		}
	}
</script>

<title>Insert title here</title>
</head>
<body>
<form name="submitForm" method="post" action="member.do?cmd=joinMember">
	이름<input type="text" name="uName"><br>
	생년월일
<select name ="selectYear">
<%
	out.println(returnOptionsReverse(2018, 1929));
%>
</select>년
<select name ="selectMonth">
<%
	out.println(returnOptions(1, 12, 1));
%>
</select>월
<select name ="selectDay">
<%
	out.println(returnOptions(1,31, 1));
%>
</select>일

<br>
	아이디<input type="text" name="uId"><input type="button" id="id_Valid" value="중복확인" onclick="idCheck()"><br>
	비밀번호<input type="password" name="uPw"><br>
	주소<<input type="text" name="uAdress"><br>
	핸드폰 번호<input type="text" name="uPhone"><br>
	<input type="submit" value="회원가입"/>
	<input type="reset" value="취소"></form>
</body>
</html>
<%!
	private String returnOptions(int startNum, int endNum, int selectNum){
		StringBuffer count = new StringBuffer();
		for(int i=startNum;startNum<=endNum;startNum++) {
			if(startNum == selectNum) {
				count.append("<option value=" + (startNum) + " selected=\"selected\" >" + (startNum) + "</option>\n");

			}
			count.append("<option value=" + (startNum) + ">" + (startNum) + "</option>\n");
		}
		return count.toString();
	}
	private String returnOptionsReverse(int endNum, int startNum){
		StringBuffer count = new StringBuffer();
		do count.append("<option value=" + (endNum) + ">" + (endNum) + "</option>\n");		
		while(endNum-- >= startNum);
		return count.toString();
	}
%>