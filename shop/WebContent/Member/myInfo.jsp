<%@ page language="java" contentType="text/html; charset=UTF-8" import="Login.DTO.LoginDTO"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 정보 조회</title>
<%
	LoginDTO data = (LoginDTO)request.getAttribute("myInfo");
%>
<script>
function check(){
	if(frm.password.value != frm.pw2.value){
		alert('바꿀 비밀번호가 일치하지 않습니다');
		frm.password.focus();
		return false;
	}
}
</script>
</head>
<body>
<h1>내 정보 조회</h1>
<form action="myInfoPro.jsp" method="post" name="frm" onsubmit="return check()">
아이디 : <input type="text" value="<%=data.getId() %>" readonly><br>
<!-- 아이디 값은 readonly 속성을 주어서 수정할 수 없게함. -->
비밀번호(정보 변경시 입력) : <input type="password" name="passcheck"><br>
바꿀 비밀번호 : <input type="password" name="password"><br>
바꿀 비밀번호 확인 : <input type="password" name="pw2"><br>
이름 : <input type="text" value="<%=data.getuName() %>"><br>
<select name="selectYear">
							<%
								out.println(returnOptionsReverse(2018, 1929, Integer.valueOf(data.getuBday().toString().substring(0,4))));
							%>
					</select>년 <select name="selectMonth">
							<%
								out.println(returnOptions(1, 12, Integer.valueOf(data.getuBday().toString().substring(5,7))));
							%>
					</select>월 <select name="selectDay">
							<%	
								out.println(returnOptions(1, 31, Integer.valueOf(data.getuBday().toString().substring(8,10))));
							%>
					</select>일<br>
주소 : <input type="text" value="<%=data.getuAdress() %>"><br>
핸드폰번호 : <input type="text" value="<%=data.getuPhone() %>"><br>
<input type="submit" value="수정하기"><input type="reset" value="취소" onclick="location.href='../main.jsp'">
</form>
</body>
</html>
<%!private String returnOptions(int startNum, int endNum, int selectNum) {
		StringBuffer count = new StringBuffer();
		for (int i = startNum; startNum <= endNum; startNum++) {
			if (startNum == selectNum) {
				count.append("<option value=" + (startNum) + " selected=\"selected\" >" + (startNum) + "</option>\n");
				continue;

			}
			count.append("<option value=" + (startNum) + ">" + (startNum) + "</option>\n");
		}
		return count.toString();
	}

	private String returnOptionsReverse(int endNum, int startNum, int selectNum) {
		StringBuffer count = new StringBuffer();
		do {
			if (endNum == selectNum) {
				count.append("<option value=" + (endNum) + " selected=\"selected\" >" + (endNum) + "</option>\n");
				continue;

			}
			count.append("<option value=" + (endNum) + ">" + (endNum) + "</option>\n");
		}
			
		while (endNum-- >= startNum);
		return count.toString();
	}%>