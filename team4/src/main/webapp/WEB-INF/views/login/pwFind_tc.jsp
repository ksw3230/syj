<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function formCheck() {
		var tc_id = document.getElementById('id');
		var tc_name = document.getElementById('name');
		var tc_dob = document.getElementById('dob');
		var tc_email = document.getElementById('email');
		
		if(tc_id == ""){
			alert('아이디를 입력하세요');
			return false;
		}
		
		if(tc_name == ""){
			alert('이름을 입력하세요');
			return false;
		}
		
		if(tc_dob == ""){
			alert('생년월일을 입력하세요');
			return false;
		}
		
		if(tc_email == ""){
			alert('이메일을 입력하세요');
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
<h1>[TEACHER PW FIND]</h1>
<form action="pwFind_tc" method="post" onsubmit="return formCheck()">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" id="id" name="tc_id" value="${teacher.tc_id }"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" id="name" name="tc_name" value="${teacher.tc_name }"></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><input type="text" id="dob" name="tc_dob" value="${teacher.tc_dob }"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" id="email" name="tc_email" value="${teacher.tc_email }"></td>
	</tr>
	<tr>
		<th><input type="submit" value="비밀번호 찾기"></th>
	</tr>
</table>
</form>
${msg}


</body>
</html>