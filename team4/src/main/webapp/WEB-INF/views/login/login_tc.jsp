<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
function formCheck(){
	 var id = document.getElementById('id');
	 var pw = document.getElementById('pw');
	 
	 if(id.value.length < 3 || id.value.length > 10){
		 alert('이이디는 3~10 글자를 입력하세요');
		 return false;
	 }
	 if(pw.value.length < 3 || pw.value.length > 10){
		 alert('비밀번호는 3~10 글자를 입력하세요');
		 return false;
	 }
	 
	 return true;
}

function toJoin(){
	location.href="../join/join_tc";
}

function toId(){
	var url = "../login/idFind_tc";
    var name = "idFind";
    var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

function toPw(){
	var url = "../login/pwFind_tc";
    var name = "pwFind";
    var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    window.open(url, name, option);
}
</script>
</head>
<body>
<h1>[TEACHER LOGIN]</h1>
<form action="login_tc" method="post" onsubmit="return formCheck()">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" id="id" name="tc_id"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" id="pw" name="tc_pw"></td>
	</tr>
	<tr>
		<th><input type="button" id="join" onclick="toJoin()" value="회원가입"></th>
		<th><input type="button" id="idFind" onclick="toId()" value="아이디 찾기"></th>
		<th><input type="button" id="pwFind" onclick="toPw()" value="비번 찾기"></th>
	</tr>
	<tr>
		<th><input type="submit" value="로그인"></th>
	</tr>
</table>
</form>
${msg }	
</body>
</html>
