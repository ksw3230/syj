<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function formCheck() {
		var st_id = document.getElementById('id');
		var st_name = document.getElementById('name');
		var st_dob = document.getElementById('dob');
		var st_email = document.getElementById('email');
		
		if(st_id == ""){
			alert('아이디를 입력하세요');
			return false;
		}
		
		if(st_name == ""){
			alert('이름을 입력하세요');
			return false;
		}
		
		if(st_dob == ""){
			alert('생년월일을 입력하세요');
			return false;
		}
		
		if(st_email == ""){
			alert('이메일을 입력하세요');
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
<h1>[STUDENT PW FIND]</h1>
<form action="pwFind_st" method="post" onsubmit="return formCheck()">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" id="id" name="st_id" value="${student.st_id }"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" id="name" name="st_name" value="${student.st_name }"></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><input type="text" id="dob" name="st_dob" value="${student.st_dob }"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" id="email" name="st_email" value="${student.st_email }"></td>
	</tr>
	<tr>
		<th><input type="submit" value="비밀번호 찾기"></th>
	</tr>
</table>
</form>
${msg}
</body>
</html>